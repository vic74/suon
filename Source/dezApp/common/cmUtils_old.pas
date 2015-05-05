unit cmUtils;

interface

 uses SysUtils,cxGridCustomTableView,
      cxGridTableView, cxGridDBTableView, cxGridCustomView,
      dxBar,TypInfo, Variants,FIBQuery,FIBDataSet,FIBDatabase,
      dxRibbonForm,dxRibbon,DB,Masks,
      cxPropertiesStore,Dialogs,
      cxGrid, Classes, Forms, Windows, Messages, Registry;

 //тип синтаксиса скрипта
 type TScriptSyntax = (ssPascal, ssCpp, ssJava, ssVB);


 //Возвращает номер версии Delphi из имени файла
 function GetDelphiVersionFromFileName(FileName: string): string;

 //определения синтаксиса скриптов
 function GetScriptSyntax(List: TStrings): TScriptSyntax;
 function GetScriptExt(ScriptSyntax: TScriptSyntax): string;
 function GetScriptSyntaxByExt(FileName: string): TScriptSyntax;
 function ScriptFileExists(FileName: string): string;

 //используются при сканировании скриптов
 function IsUsesTeg(TegStr: string): boolean;
 function IsProcTeg(TegStr: string): boolean;
 function IsScipTeg(Name: string): boolean;

 //строковые утилиты
 function WordCount(S: String; Ch: char): integer;
 function GetWord(S: String; Nomer: integer; Ch: char): String;
 function ReplaceWord(Source,FindWord,NewWord: string): string;

 //получение системной информации
 function GetSystemDirectory: string;
 function WinVersionCode: smallint;
 function GetBIOSDate(WinVer: byte): string;
 function GetVolumeInfo: LongWord;
 function GetUniqueCode: string;

 //доступ к каталогам
 function GetHelpDir: string;
 function GetConfigHelpFileName: string;

 //возвращает версию файла
 //function GetFileVersion(FileName: string): string;
 //if version File1 < File2 returns 1,
 //if version File1 > File2 returna -1,
 //if version compare returns 0.
 //function CompareFileVersion(FileName1,FileName2: string): smallint;
 function GetFileVersionEx(const FileName: string): string;

 //запись сообщения в файл
 procedure SaveLog(FileName,Text: string);

 //работа со строками текста
 function cmReplace(Source,Find,Dest: string): string;
 function ExtractFirstWord(var Source: string; Rzd: string): string;
 function ExtractLastWord(var Source: string; Rzd: string): string;

function CorrectFloat(S: string): string;
 function GetSelected(FieldName :string;grid :TcxGrid) :string;
procedure SetStringPropertyIfExists(AComp: TComponent; APropName: string;
  AValue: string);
  procedure AddButton(AForm :TForm);
  procedure RemoveBtn (AName :string);
  procedure SetSheme(form : TForm);
    var ColorSheme,UserCod :string;
  function DateName(days :integer) :string;
  procedure SetWaitCursor(wait :Boolean=false);
  procedure SetTabActive(tab :string; active :Boolean);
  function GetStrValue(Q :TFIBQuery; Ffield :string;Quote :Boolean=false) :string;
  function GetPeriodYm(ym: string; lastday :Boolean) :TDate;
  function GetYM(M,Y: integer): string;
  procedure DownButton(AName :string);
  procedure SetPerm(userCod,AForm :string);
  function GetDsStrValue(Q :TDataSet;
                       Ffield :string;
                       Cnt :Integer=1000;
                       Quote :Boolean=false) :string;
  procedure FindFiles(StartFolder, Mask: string; List: TStringList;
  ScanSubFolders: Boolean = True);
  procedure LoadForm(prop :TcxPropertiesStore; FName :string);
  function DSCreate(db :TFibdatabase) :TFIBDataSet;
  procedure DSFree(Ds :TFIBDataSet);
  procedure CreateField(AMemData: TDataSet; AFieldName: string;
                                              AFieldType: TFieldType);
  function GetSrvList(DS :TDataSet;Source :TDataSource): string;
  procedure SetSrvList(S: string;DS :TDataSet;Source :TDataSource);
const

 msgMethodNotFound = 'Метод %s не найден.';
const
  crMyCursor = 5;
implementation

uses MainFrm;

{-------------------------------------------------------------------------------
SetSrvList|Загружаем список услуг
-------------------------------------------------------------------------------}
procedure SetSrvList(S: string;DS :TDataSet;Source :TDataSource);
begin
 Source.DataSet:=nil;
 with DS do
  begin
   First;
   while not Eof do
     begin
      Edit;
      if Pos(';'+FieldByName('Srv').AsString+';', S)<>0 then
      FieldByName('Flag').AsBoolean:=true else
      FieldByName('Flag').AsBoolean:=false;
      Post;
      Next;
     end;
   First;
  end;
 Source.DataSet:=DS;
end;
{-------------------------------------------------------------------------------
GetSrvList | установка списка видов начислений
-------------------------------------------------------------------------------}
function GetSrvList(DS :TDataSet;Source :TDataSource): string;
begin
 Result:=';';
 if DS.IsEmpty then Exit;
 Source.DataSet:=nil;
 with DS do
  begin
   First;
   while not Eof do
    begin
     if FieldByName('Flag').AsBoolean=true then
       Result:=Result+FieldByName('Srv').AsString+';';
     Next;
    end;
   First;
  end;
 Source.DataSet:=DS;
 if Result=';' then Result:='';
end;
{-------------------------------------------------------------------------------
CreateField|Добавляем поля в MemData
-------------------------------------------------------------------------------}
procedure CreateField(AMemData: TDataSet; AFieldName: string;
                                              AFieldType: TFieldType);
begin
  if (AMemData = nil) or (AFieldName = '') then
    Exit;
  with AMemData.FieldDefs.AddFieldDef do
  begin
    Name := AFieldName;
    DataType := AFieldType;
    CreateField(AMemData);
  end;
end;
{-------------------------------------------------------------------------------
DSCreate | Создаем временный датасет и возвращаем ссылку на него
-------------------------------------------------------------------------------}
function DSCreate(db :TFibdatabase) :TFIBDataSet;
var
  DST :TFIBDataSet;
begin
  DST:=TFIBDataSet.Create(nil);
  DST.Database:=db;
  DST.Transaction:=db.DefaultTransaction;
  Result:=DST;
end;
{-------------------------------------------------------------------------------
DSFree | Уничтожаем созданный датасет
-------------------------------------------------------------------------------}
procedure DSFree(Ds :TFIBDataSet);
begin
  Ds.Free;
end;

procedure LoadForm(prop :TcxPropertiesStore; FName :string);
begin
  prop.StorageName:=ExtractFilePath(Application.ExeName)+'config\'+FName;
  if FileExists(ExtractFilePath(Application.ExeName)+'config\'+FName) then
  prop.RestoreFrom;
end;

function GetYM(M,Y: integer): string;
begin
 Result:=IntToStr(M);
 if Length(Result)=1 then Result:='0'+Result;
 Result:=Copy(IntToStr(Y),3,2)+Result;
end;

 function GetPeriodYm(ym: string; lastday :Boolean) :TDate;
 var
  m,nextm,y,nexty :string;
  d3 :TDate;
 begin
  if lastday=true then  //последний день месяца
  begin
    m:=Copy(ym,3,2);
    y:=Copy(ym,1,2);
    if m='12'then
    begin
      nextm:='01';
      nexty:=IntToStr(StrToInt(y)+1);
    end else
    begin
      nextm:=IntToStr(StrToInt(m)+1);
      nexty:=y;
    end;
    d3:=StrToDate('01.'+nextm+'.'+nexty);
    Result:=d3-1;
  end else
  begin
    m:=Copy(ym,3,2);
    y:=Copy(ym,1,2);
    Result:=StrToDate('01.'+m+'.'+y);
  end;
 end;

//Поиск файлов по маске по всему дереву каталогов, начиная с указанного
procedure FindFiles(StartFolder, Mask: string; List: TStringList;
  ScanSubFolders: Boolean = True);
var
  SearchRec: TSearchRec;
  FindResult: Integer;
begin
  List.BeginUpdate;
  try
    StartFolder := IncludeTrailingBackslash(StartFolder);
    FindResult := FindFirst(StartFolder + '*.*', faAnyFile, SearchRec);
    try
      while FindResult = 0 do
        with SearchRec do
        begin
          if (Attr and faDirectory) <> 0 then
          begin
            if ScanSubFolders and (Name <> '.') and (Name <> '..') then
              FindFiles(StartFolder + Name, Mask, List, ScanSubFolders);
          end
          else
          begin
            if MatchesMask(Name, Mask) then
              List.Add(StartFolder + Name);
          end;
          FindResult := FindNext(SearchRec);
        end;
    finally
      FindClose(SearchRec.FindHandle);
    end;
  finally
    List.EndUpdate;
  end;
end;

procedure SetPerm(userCod,AForm :string);
var
  i :Integer;
  ClassRef: TClass;
  ls :TStringList;
  Form :TForm;
begin
  ls:=TStringList.Create;
  if (Application.FindComponent(AForm) as TForm)<> nil then
  begin
    Form:=Application.FindComponent(AForm) as TForm;
    if userCod<>'2' then
    begin
      for I := 0 to Form.ComponentCount - 1 do
      begin
        ClassRef := Form.Components[i].ClassType;
        while ClassRef <> nil do
        begin
          if ClassRef.ClassName='TdxBarItem' then
          begin
            //пользователи
            if UserCod='4' then
            if (Form.Components[i] as TdxBarItem).Name='btn_UserForm' then
            (Form.Components[i] as TdxBarItem).Visible:=ivAlways else
            if (Form.Components[i] as TdxBarItem).Name='btn_UserForm' then
            (Form.Components[i] as TdxBarItem).Visible:=ivNever;
            //новый отчет
            if (Form.Components[i] as TdxBarItem).Name='btn_newrep' then
            (Form.Components[i] as TdxBarItem).Visible:=ivNever;
          end;
          if ClassRef.ClassName='TdxRibbonTab' then
          begin
            {ls.Add(AForm.Components[i].Name+'='+
                                  (AForm.Components[i] as TdxRibbonTab).Caption+'='+
                          VarToStr((AForm.Components[i] as TdxRibbonTab).Visible));}
          end;
          if ClassRef.ClassName='TdxBar' then
          begin
            {ls.Add(AForm.Components[i].Name+'='+
              (AForm.Components[i] as TdxBar).Caption+'='+
              VarToStr((AForm.Components[i] as TdxBar).Visible)+'-'+
              (AForm.Components[i] as TdxBar).GetParentComponent.Name);}
           // (form1.Components[i] as TdxBar).Visible:=False;
           if (Form.Components[i] as TdxBar).Name='barPerm'  then
              (Form.Components[i] as TdxBar).Visible:=False;
          end;
         ClassRef := ClassRef.ClassParent;
        end;
      end;
    end;
  end;
  ls.Free;
end;

procedure DownButton(AName :string);
var
  i :Integer;
begin
    { for I := 0 to MainForm.bar2.ItemLinks.AvailableItemCount - 1 do
     begin
      if MainForm.bar2.ItemLinks.Items[i].Item.Description=AName then
       (MainForm.bar2.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=true else
       (MainForm.bar2.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
     end;}
end;

procedure SetTabActive(tab :string; active :Boolean);
var
  i :integer;
begin
 for i := 0 to MainForm.ComponentCount - 1 do
    (MainForm.FindComponent(tab) as TdxRibbonTab).Active:=active;

end;

function GetStrValue(Q :TFIBQuery; Ffield :string;Quote :Boolean=false) :string;
var
  s :string;
begin
  while not Q.Eof do
  begin
    if Quote=true then
    s:=s+#39+Q.FN(Ffield).AsString+#39+',' else
    s:=s+Q.FN(Ffield).AsString+',';
    Q.Next;
  end;
  if s<>'' then Delete(s,Length(s),1);
  Result:=s;
end;

function GetDsStrValue(Q :TDataSet;Ffield :string;Cnt :Integer=1000;
                                                  Quote :Boolean=false) :string;
var
  s :string;
begin
  while not Q.Eof do
  begin
    if Quote=true then
    s:=s+#39+Q.FieldByName(Ffield).AsString+#39+',' else
    s:=s+Q.FieldByName(Ffield).AsString+',';
    Q.Next;
  end;
  if s<>'' then Delete(s,Length(s),1);
  Result:=s;
end;

procedure SetWaitCursor(wait :Boolean=false);
begin
 if wait=true then
 begin
   Screen.Cursors[5]:=LoadCursorFromFile
          (PWideChar(ExtractFilePath(Application.ExeName)+'common\busy.ani'));
   Screen.Cursor := 5;
 end else Screen.Cursor:=0;
end;

function DateName(days :integer) :string;
var
  s :integer;
begin
  s:=StrToInt(Copy(IntToStr(days),Length(IntToStr(days)),1));
  case s of
   1: Result:=IntToStr(days)+' день';
   2: Result:=IntToStr(days)+' дня';
   3: Result:=IntToStr(days)+' дня';
   4: Result:=IntToStr(days)+' дня';
   else Result:=IntToStr(days)+' дней';
  end;

end;

procedure SetStringPropertyIfExists(AComp: TComponent; APropName: string;
  AValue: string);
var
  PropInfo: PPropInfo;
  TK: TTypeKind;
begin
  PropInfo := GetPropInfo(AComp.ClassInfo, APropName);
  if PropInfo <> nil then
  begin
    TK := PropInfo^.PropType^.Kind;
    if (TK = tkString) or (TK = tkLString) or (TK = tkWString) then
      SetStrProp(AComp, PropInfo, AValue);
  end;
end;



procedure RemoveBtn (AName :string);
 var i :Integer;
 s :string;
begin
 {with MainForm do
 begin
  with barmen1 do
  begin
    BeginUpdate;
    try
     for I := 0 to bar2.ItemLinks.AvailableItemCount - 1 do
     begin
       if bar2.ItemLinks.Items[i].Item.Description=AName then
       begin
        bar2.ItemLinks.Delete(i);
        Break;
       end;
     end;
    finally
      EndUpdate;
    end;
  end;
 end;}
end;

procedure SetSheme(form : TForm);
var
  n :Integer;
begin
   with form do
   begin
     for n := 0 to ComponentCount - 1 do
     begin
       if (Components[n].ClassType = TcxGrid) then
       (Components[n] as TcxGrid).LookAndFeel.SkinName:=ColorSheme;
       if (Components[n].ClassType =TdxBarManager)  then
       (Components[n] as TdxBarManager).LookAndFeel.SkinName:=ColorSheme;
       if (Components[n].ClassType =TdxRibbon)  then
       (Components[n] as TdxRibbon).ColorSchemeName:=ColorSheme;
     end;
   end;
end;

procedure AddButton(AForm :TForm);
var
  i :Integer;
  form :TForm;
begin
 {with MainForm do
 begin
  with barmen1 do
  begin
    BeginUpdate;
    try
      for I := 0 to bar2.ItemLinks.AvailableItemCount - 1 do
      begin
       (bar2.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
      end;

      with bar2.ItemLinks.AddButton do
      begin
        Item.Caption := Aform.Caption;
        Item.Glyph:=GetFormImage;
        Item.Description:=AForm.Name;
        (Item as TdxBarButton).PaintStyle:=psCaption;
        (Item as TdxBarButton).Lowered:=True;
        UserPaintStyle :=psCaption;
      end;
    finally
      EndUpdate;
    end;
  end;
 end;
 //form:=(FindComponent(Aname) as TForm);
 SetSheme(AForm);}
end;

{==============================================================================
 GetSelected-> возвращаем значение поля выделенной строки из грида
===============================================================================}
function GetSelected(FieldName :string;grid :TcxGrid) :string;
var
    Column: TcxGridDBColumn;
    ColumnIndex: Integer;
    RecordIndex: Integer;
    Text: String;
begin
 Column := TcxGridDBTableView(grid.FocusedView).GetColumnByFieldName(FieldName);
 ColumnIndex := Column.Index;
 RecordIndex := TcxGridDBTableView(grid.FocusedView).
                                    DataController.FocusedRecordIndex;
 Text := TcxGridDBTableView(grid.FocusedView).DataController.
                                 GetDisplayText (RecordIndex,ColumnIndex);
 Result:=Text;
end;

function CorrectFloat(S: string): string;
 var Poz: integer;
begin
 //устанавливаем нужный десятичный разделитель
 if DecimalSeparator='.' then Poz:=Pos(',',S) else Poz:=Pos('.',S);
 if Poz<>0 then S[Poz]:=DecimalSeparator;
 //возвращаем откорректированное значение
 Result:=S;
end;

function cmReplace(Source,Find,Dest: string): string;
 var i: integer;
begin
 Result:=Source;
 Find:=AnsiUpperCase(Find);
 repeat
  i:=Pos(Find,AnsiUpperCase(Result));
  if i<>0 then
   begin
    Delete(Result,i,Length(Find));
    Insert(Dest,Result,i);
   end;
 until i=0;
end;

function ExtractFirstWord(var Source: string; Rzd: string): string;
 var Poz: integer;
begin
 Poz:=Pos(Rzd,Source);
 if Poz=0 then begin
                Result:=Source;
                Source:='';
               end
          else begin
                Result:=Copy(Source,1,Poz-1);
                Delete(Source,1,Poz+Length(Rzd)-1);
               end;
end;

function ExtractLastWord(var Source: string; Rzd: string): string;
 var S: string;
     Len: integer;
begin
 S:=Source;
 while S<>'' do Result:=ExtractFirstWord(S, Rzd);
 Len:=Length(Source)-(Length(Result)+Length(Rzd));
 if Len>0 then Source:=Copy(Source,1,Len) else Source:='';
end;

function ScriptFileExists(FileName: string): string;
 const AExt: array[0..3] of ShortString = ('.pas','.cpp','.js','.bas');
 var Ext: string;
     i: integer;
begin
 Result:=FileName;
 //если расширение скрипта задано
 Ext:=ExtractFileExt(FileName);
 if Ext<>'' then if FileExists(FileName) then Exit;
 //поиск по всем возможным расширениям
 for i:=0 to 3 do
  begin
   Result:=ChangeFileExt(FileName,AExt[i]);
   if FileExists(Result) then Exit;
  end;
 Result:='';
end;

function GetScriptSyntax(List: TStrings): TScriptSyntax;
 var S: string;
begin
 Result:=ssPascal;
 if List.Count=0 then Exit;
 S:=Trim(List[0]);
 if not SameText('#language', GetWord(S,1,' ')) then Exit;
 if SameText('C++Script', GetWord(S,2,' ')) then Result:=ssCpp
 else if SameText('JScript', GetWord(S,2,' ')) then Result:=ssJava
 else if SameText('BasicScript', GetWord(S,2,' ')) then Result:=ssVB;
end;

function GetScriptExt(ScriptSyntax: TScriptSyntax): string;
begin
 case ScriptSyntax of
  ssCpp: Result:='.cpp';
  ssJava: Result:='.js';
  ssVB: Result:='.bas';
  else Result:='.pas';
 end;
end;

function GetScriptSyntaxByExt(FileName: string): TScriptSyntax;
 var Ext: string;
begin
 Ext:=UpperCase(ExtractFileExt(FileName));
 if Ext='.CPP' then Result:=ssCpp
 else if Ext='.JS' then Result:=ssJava
 else if Ext='.BAS' then Result:=ssVB
 else Result:=ssPascal;
end;

function IsUsesTeg(TegStr: string): boolean;
begin
 Result:=SameText(TegStr, 'uses') or
         SameText(TegStr, 'include') or
         SameText(TegStr, 'import') or
         SameText(TegStr, 'imports');
end;

function IsProcTeg(TegStr: string): boolean;
begin
 Result:=SameText(TegStr, 'function') or
         SameText(TegStr, 'procedure') or
         SameText(TegStr, 'void') or
         SameText(TegStr, 'sub');
end;

function IsScipTeg(Name: string): boolean;
 const Words: array[0..5] of ShortString = ('comment','uses','include','import',
                                            'imports','language');
 var i: integer;
begin
 for i:=0 to 5 do
  begin
   Result:=Pos(UpperCase(Words[i]), UpperCase(Name))<>0;
   if Result then Break;
  end;
end;

{function GetFileVersion(FileName: string): string;
 var VersionInfo: TcmVersionInfo;
begin
 Result:='';
 VersionInfo:=TcmVersionInfo.Create(nil);
 try
  VersionInfo.FileName:=FileName;
  Result:=VersionInfo.FileVersion;
 finally
  VersionInfo.Free;
 end;
end;

function CompareFileVersion(FileName1,FileName2: string): smallint;
  var Version1,Version2: string;
      Count1,Count2,Count: integer;
      Num1,Num2,i: integer;
begin
 Result:=0;
 Version1:=GetFileVersion(FileName1);
 Version2:=GetFileVersion(FileName2);
 Count1:=WordCount(Version1,'.');
 Count2:=WordCount(Version2,'.');
 if Count1<Count2 then Count:=Count1 else Count:=Count2;
 for i:=1 to Count do
  begin
   Num1:=StrToInt(GetWord(Version1,i,'.'));
   Num2:=StrToInt(GetWord(Version2,i,'.'));
   if Num1<Num2 then Result:=1;
   if Num1>Num2 then Result:=-1;
   if Result<>0 then Exit;
  end;
end;}

procedure SaveLog(FileName,Text: string);
 var f: TextFile;
begin
 AssignFile(f, FileName);
 if FileExists(FileName) then Reset(f) else Rewrite(f);
 Append(f);
 Writeln(f,Text);
 Flush(f);
 CloseFile(f);
end;

function GetConfigHelpFileName: string;
begin
 Result:=GetHelpDir+'CoolDsgn.hlp';
end;

function GetAppIniFileName: string;
begin
 Result:=ChangeFileExt(ParamStr(0),'.ini');
end;

function GetHelpDir: string;
begin
 Result:=ExtractFilePath(ParamStr(0));
 Delete(Result,Length(Result),1);
 while Result[Length(Result)]<>'\' do Delete(Result,Length(Result),1);
 Result:=Result+'help\';
end;

function GetDelphiVersionFromFileName(FileName: string): string;
 const Digit='0123456789';
 var Name: string;
     i: integer;
begin
 Result:='';
 Name:=ExtractFileName(FileName);
 i:=Pos('.',Name);
 if i<>0 then Name:=Copy(Name,1,i-1);
 for i:=Length(Name) downto 1 do
  if Pos(Name[i],Digit)<>0 then Result:=Name[i]+Result else Break;
end;

//.......................string utilites........................................
function WordCount(S: String; Ch: char): integer;
  var i: integer;
      //SetFlag: boolean;
   begin
    Result:=0;
    if S='' then Exit;
    {if S[1]=Ch then begin
                     Delete(S,1,1);
                     if S='' then Exit;;
                    end;
    if S[Length(S)]=Ch then Delete(S,Length(S),1);}
    Result:=1; //SetFlag:=false;
    for i:=1 to Length(S) do
     if S[i]=Ch then begin
                      {if not SetFlag then} Inc(Result);
                      {SetFlag:=true;}
                     end {else SetFlag:=false};
   end;

function GetWord(S: String; Nomer: integer; Ch: char): String;
  var WPoz,i: integer;
      //SetFlag: boolean;
   begin
    WPoz:=1; Result:='';
    //while (S<>'') and (S[1]=Ch) do Delete(S,1,1);
    //while (S<>'') and (S[Length(S)]=Ch) do Delete(S,Length(S),1);
    //SetFlag:=false;
    for i:=1 to Length(S) do
      begin
       if S[i]=Ch then begin
                        {if not SetFlag then} Inc(WPoz);
                        //SetFlag:=true;
                       end
                  else if WPoz=Nomer then begin
                                           Result:=Result+S[i];
                                           //SetFlag:=false;
                                          end {else SetFlag:=false};
       if WPoz>Nomer then Break;
      end;
   end;

function ReplaceWord(Source,FindWord,NewWord: string): string;
 var Poz: integer;
begin
 repeat
  Poz:=Pos(FindWord,Source);
  if Poz<>0 then
   begin
    Delete(Source,Poz,Length(FindWord));
    Insert(NewWord,Source,Poz);
   end
 until Poz=0;
 Result:=Source;
end;

//...................получение системной информации.............................
function GetSystemDirectory: string;
 var PRes: PChar;
     Res: word;
begin
 Result:='';
 PRes := StrAlloc(255);
 Res := GetWindowsDirectory(PRes, 255);
 if Res<>0 then Result:=StrPas(PRes);
end;

function WinVersionCode: smallint;
 var lpVersionInformation : TOSVersionInfo;
     BRes: boolean;
begin
 Result:=-1;
 lpVersionInformation.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
 BRes := GetVersionEx(lpVersionInformation);
 if BRes then Result:=lpVersionInformation.dwPlatformId;
end;

function GetBIOSDate(WinVer: byte): string;
var p : pointer;
    s : string[255];
begin
 Result := '';
 if WinVer=2 then
   begin
    with TRegistry.Create do
     try
      RootKey := HKEY_LOCAL_MACHINE;
      if OpenKeyReadOnly('HARDWARE\DESCRIPTION\System') then
        Result:= ReadString('SystemBiosDate');
     finally
      Free;
     end;
   end else
   try
    s[0] := #8;
    p := Pointer($0FFFF5);
    Move(p^,s[1],8);
    Result := copy(s,1,2) + '/' + copy(s,4,2) + '/' +copy (s,7,2);
   except
   end;
end;


function GetVolumeInfo: DWord;
var
  VolumeName,
  FileSystemName : array [0..MAX_PATH-1] of Char;
  VolumeSerialNo : DWord;
  MaxComponentLength,FileSystemFlags: Cardinal;
begin
  GetVolumeInformation('C:\',VolumeName,MAX_PATH,@VolumeSerialNo,
  MaxComponentLength,FileSystemFlags, FileSystemName, MAX_PATH);
  Result:=LongWord(VolumeSerialNo);
end;

function GetUniqueCode: string;
begin
 Result:=GetBIOSDate(WinVersionCode)+'-'+IntToHex(GetVolumeInfo,8);
end;

function GetFileVersionEx(const FileName: string): string;
type
  PDWORD = ^DWORD;
  PLangAndCodePage = ^TLangAndCodePage;
  TLangAndCodePage = packed record
    wLanguage: WORD;
    wCodePage: WORD;
  end;
  PLangAndCodePageArray = ^TLangAndCodePageArray;
  TLangAndCodePageArray = array[0..0] of TLangAndCodePage;
var
  loc_InfoBufSize: DWORD;
  loc_InfoBuf: PChar;
  loc_VerBufSize: DWORD;
  loc_VerBuf: PChar;
  cbTranslate: DWORD;
  lpTranslate: PDWORD;
  i: DWORD;
begin
  Result := '';
  if (Length(FileName) = 0) or (not Fileexists(FileName)) then
    Exit;
  loc_InfoBufSize := GetFileVersionInfoSize(PChar(FileName), loc_InfoBufSize);
  if loc_InfoBufSize > 0 then
  begin
    loc_VerBuf := nil;
    loc_InfoBuf := AllocMem(loc_InfoBufSize);
    try
      if not GetFileVersionInfo(PChar(FileName), 0, loc_InfoBufSize, loc_InfoBuf)
        then
        exit;
      if not VerQueryValue(loc_InfoBuf, '\\VarFileInfo\\Translation',
        Pointer(lpTranslate), DWORD(cbTranslate)) then
        exit;
      for i := 0 to (cbTranslate div SizeOf(TLangAndCodePage)) - 1 do
      begin
        if VerQueryValue(
          loc_InfoBuf,
          PChar(Format(
          'StringFileInfo\0%x0%x\FileVersion', [
          PLangAndCodePageArray(lpTranslate)[i].wLanguage,
            PLangAndCodePageArray(lpTranslate)[i].wCodePage])),
            Pointer(loc_VerBuf),
          DWORD(loc_VerBufSize)
          ) then
        begin
          Result := loc_VerBuf;
          Break;
        end;
      end;
    finally
      FreeMem(loc_InfoBuf, loc_InfoBufSize);
    end;
  end;
end;

end.
