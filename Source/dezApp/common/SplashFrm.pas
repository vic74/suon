unit SplashFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  BaseForm,
  FIBQuery,pFIBCacheQueries, pFIBProps,Masks,
   DB, FIBDataSet, pFIBDataSet, dxmdaset, DSContainer, ComCtrls;

type
  TSplashForm = class(TDezModalForm)
    lbl1: TLabel;
    btn1: TButton;
    ds1: TpFIBDataSet;
    mTable: TdxMemData;
    pb1: TProgressBar;
    lbl2: TLabel;
    cont1: TDataSetsContainer;
    lbl3: TLabel;
    procedure lbl2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cont1ReadBlobField(Field: TBlobField; BlobSize, Progress: Integer;
      var Stop: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cont1WriteBlobField(Field: TBlobField; BlobSize,
      Progress: Integer; var Stop: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    upProc :Variant;  //процесс загрузки
    procedure FindFiles(StartFolder, Mask: string; table: TdxMemData;
        ScanSubFolders: Boolean = True);
    procedure GetBaseInfo;
    procedure DownLoad;
    procedure ChangeDate(AFileName: string; newDate :TDate);
    procedure CreateMem;
  public
    MainFileUpdate :Boolean;
    upSearch :string; //путь к файлам
    upType :SmallInt; //тип обновления
    function CheckUpdate: Boolean;
		{$REGION 'соощение'}
		///<summary>atype = 0 - проверка 1 - подтверждение 2 - ошибка</summary>
		{$ENDREGION}
    procedure AddMes(i,atype :integer; mes :string);
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}
procedure TSplashForm.FindFiles(StartFolder, Mask: string; table: TdxMemData;
  ScanSubFolders: Boolean = True);
var
  SearchRec: TSearchRec;
  FindResult: Integer;
  Ext,FName,UpdPath :String;
  function GetPath(s1, s2: string): string;
  var
    s :string;
  begin
    System.Delete(s2,1,length(s1));
    Result:=s2;
  end;
begin
  try
    StartFolder := IncludeTrailingBackslash(StartFolder);
    FindResult := FindFirst(StartFolder + '*.*', faAnyFile, SearchRec);
    try
      while FindResult = 0 do
        with SearchRec do
        begin
          if (SearchRec.Attr and faDirectory) = faDirectory then
          begin
            if ScanSubFolders and (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
              FindFiles(StartFolder + SearchRec.Name, Mask, Table, ScanSubFolders);
          end
          else
          begin
            if MatchesMask(Name, Mask) then
            begin
              UpdPath:=GetPath(ExtractFilePath(Application.ExeName),StartFolder);
              EXT:=ExtractFileExt(SearchRec.Name);
              FName:=Copy(SearchRec.Name, 1, Length(SearchRec.Name) - Length(Ext));
                table.Append;
                table.FieldByName('PATH').AsVariant:=StartFolder;
                table.FieldByName('NAME').AsVariant:=FName;
                table.FieldByName('EXT').AsVariant:=Ext;
                table.FieldByName('FILEDATA').AsVariant:=FileDateToDateTime(Time);
                table.FieldByName('SIZE').AsVariant:=Size;
                table.FieldByName('UPPATH').AsVariant:=UpdPath;

                table.Post;
            end;
          end;
          FindResult := FindNext(SearchRec);
        end;
    finally
      FindClose(SearchRec);
    end;
  finally

  end;
end;

procedure TSplashForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cont1.IsGlobalContainer:=false;
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
  Hide;
  CreateMem;
  upSearch:=ExtractFilePath(Application.ExeName);
end;

procedure TSplashForm.GetBaseInfo;
var
  Q :TFIBQuery;
  Kontr :Variant;
  procedure Appendrec;
  begin
    mTable.Append;
     mTable.FieldByName('CODE').AsVariant:=Q.FN('CODE').AsVariant;
     mTable.FieldByName('NAME').AsVariant:=Q.FN('FILENAME').AsVariant;
     mTable.FieldByName('EXT').AsVariant:=Q.FN('FILEEXT').AsVariant;
     mTable.FieldByName('FILEDATA').AsVariant:=Q.FN('FILEDATE').AsVariant;
     mTable.FieldByName('SIZE').AsVariant:=Q.FN('FILESIZE').AsVariant;
     mTable.FieldByName('UPPATH').AsVariant:=Q.FN('UPPATH').AsVariant;
     mTable.FieldByName('FLAG').AsVariant:=1;
    mTable.Post;
  end;
begin
  Kontr:=upType;
  Q:=GetQueryForUse(cmDB.RT,
        'select CODE, AVERSION, DATA, FILESIZE, FILENAME,' + #13#10 +
        'FILEEXT, FILEDATE, UTYPE, DESCRIPTION, UPPATH, DEZ, PO' + #13#10 +
        'from UPDATEAPP');
  Q.Options:=[qoStartTransaction];
  case kontr of
    0 : Q.MainWhereClause:='DEZ=1'; //ДЕЗ
    1 : Q.MainWhereClause:='PO =1'; //ПО
    else Exit;
  end;
  Q.ExecQuery;
  while not Q.Eof do begin
    if mTable.Locate('UPPATH;NAME;EXT',VarArrayOf([Q.FN('UPPATH').AsVariant,
                                               Q.FN('FILENAME').AsVariant,
                                               Q.FN('FILEEXT').AsVariant]),[loCaseInsensitive]) then
    begin  //если нашли файл то сравниваем даты
      if mTable.FieldByName('FILEDATA').AsVariant<Q.FN('FILEDATE').AsVariant then
      begin
         mTable.Edit;
         mTable.FieldByName('CODE').AsVariant:=Q.FN('CODE').AsVariant;
         mTable.FieldByName('FLAG').AsVariant:=1;
         mTable.Post;
      end;
    end else //если не нашли добавляем
        begin
          Appendrec;
        end;
    Q.Next;
  end;

end;

procedure TSplashForm.DownLoad;
var
  APath,PATH,NewPATH,FilePath :string;
  stop :Boolean;
  function LoadMainFile :boolean;
  var
    MainPath :string;
  begin
    Result:=true;
    MainPath:=ds1.FN('UPPATH').AsString+ds1.FN('FILENAME').AsString+
                                            ds1.FN('FILEEXT').AsString+'_tmp';
    try
      TBlobField(ds1.FN('AFILE')).SaveToFile(MainPath);
      // переименовываем основной
      if MoveFile(PWideChar(PATH),PWideChar(NewPATH)) then
      // переименовываем новый на место основного
      begin
        if not MoveFile(PWideChar(MainPath),PWideChar(PATH)) then
        //пишем в лог
      end;
    except
       Result :=false;
       //ошибку в лог
    end;
  end;
begin
  APath:=ExtractFilePath(Application.ExeName);
  try
   MainFileUpdate:=false;
  mTable.First;
  while not mTable.Eof do begin
    if mTable.FieldByName('FLAG').AsVariant=1 then
    begin
      ds1.Close;
      ds1.ParamByName('COD').AsVariant:=mTable.FieldByName('CODE').AsVariant;
      ds1.Open;
      if not DirectoryExists(APath+ds1.FN('UPPATH').AsString) then
      CreateDir(APath+ds1.FN('UPPATH').AsString);
      PATH:=ds1.FN('UPPATH').AsString+ds1.FN('FILENAME').AsString+
                                            ds1.FN('FILEEXT').AsString;

      NewPATH:=ds1.FN('UPPATH').AsString+ds1.FN('FILENAME').AsString+'.old';
      try
        if ds1.FN('DESCRIPTION').AsString<>'' then begin
          if lbl2.Caption<>'' then
            lbl2.Caption:=lbl2.Caption+#10#13+'загружаем  '+
              ds1.FN('DESCRIPTION').AsString
          else
          lbl2.Caption:='загружаем  '+ds1.FN('DESCRIPTION').AsString;
        end else
            begin
              if lbl2.Caption<>'' then
                lbl2.Caption:=lbl2.Caption+#10#13+'загружаем  '+
                ds1.FN('FILENAME').AsString
              else
                lbl2.Caption:='загружаем  '+ds1.FN('FILENAME').AsString;
            end;
        Application.ProcessMessages;
        //prb1.Properties.Text:='загружаем файл '+Q.FN('FILENAME').AsString+
        //      Q.FN('FILEEXT').AsString;
        if FileExists(NewPATH) then
        begin
          try
            //mmo1.Lines.Add('удаляем '+NewPATH);
            if not DeleteFile(NewPATH) then
            //mmo1.Lines.Add('не удалился');
          except

          end;
        end;
        upProc:=0; //обнуляем процент

        if AnsiUpperCase(ds1.FN('FILENAME').AsString+ds1.FN('FILEEXT').AsString)=
           AnsiUpperCase(ExtractFileName(Application.ExeName)) then
        begin
          if not LoadMainFile then exit;
        end else
        TBlobField(ds1.FN('AFILE')).SaveToFile(PATH);
        ChangeDate(PATH,ds1.FN('FILEDATE').AsDateTime);
        if AnsiUpperCase(ds1.FN('FILENAME').AsString+ds1.FN('FILEEXT').AsString)=
          AnsiUpperCase(ExtractFileName(Application.ExeName)) then MainFileUpdate:=true;
      except
        on E:Exception do
        begin
         //mmo1.Lines.Add('переименовываем файл '+Q.FN('FILENAME').AsString+
         //     Q.FN('FILEEXT').AsString);

         if MoveFile(PWideChar(PATH),PWideChar(NewPATH)) then
         begin
           TBlobField(ds1.FN('AFILE')).SaveToFile(PATH);
           ChangeDate(PATH,ds1.FN('FILEDATE').AsDateTime);
           if LowerCase(ds1.FN('FILENAME').AsString+ds1.FN('FILEEXT').AsString)=
             LowerCase(ExtractFileName(Application.ExeName)) then MainFileUpdate:=true;
         end else
         //mmo1.Lines.Add('не переименовался '+Q.FN('FILENAME').AsString+
         //     Q.FN('FILEEXT').AsString);
        end;
      end;
    end;
    mTable.Next;
  end;
  finally

  end;
end;

procedure TSplashForm.ChangeDate(AFileName: string; newDate :TDate);
var
  i: TDate;
  H: Integer;
  f: TFileTime;
  s: TSystemTime;
begin
  H := CreateFile(PChar(AFileName), $0100, 0, nil, OPEN_EXISTING,
    FILE_FLAG_BACKUP_SEMANTICS, 0);

  i := newDate;

  DateTimeToSystemTime(i, S);
  SystemTimeToFileTime(S, F);
  LocalFileTimeToFileTime(F, F);
  SetFileTime(H, @f, @f, @f);
  CloseHandle(H);
end;

function TSplashForm.CheckUpdate: Boolean;
begin
  Result:=false;
  //Splash :=TSplashForm.Create(nil);

  try
    FindFiles(upSearch,'*.*',mTable,true);
    GetBaseInfo;
    if mTable.IsEmpty then begin
      Result:=False;
      Exit;
    end;
    //splash.Visible:=true;
    Show;
    Application.ProcessMessages;
    DownLoad;
    Result :=MainFileUpdate;
  finally
    //Splash.Visible:=false;
    Close;
  end;
end;

{------------------------------------------------------------------------------}


procedure TSplashForm.AddMes(i,atype :integer; mes :string);
var
  s :string;
  ln :Integer;
begin
  {ln:=lbl2.HTMLText.Count;
  case atype of
    0 : begin //проверка
          s:='<UL><B><FONT color="#00FFFF" size="8">'+mes+
                                                    '</FONT></B></UL>';
          lbl2.HTMLText.Insert(ln,s);
        end;

    1 : begin //подтверждение
          s:='<UL><B> <FONT color="#008000" size="8">'+mes+
                                                     '</FONT></B></UL>';
          lbl2.HTMLText.Strings[i]:=s;
        end;
    2 : begin //ошибка
          s:='<UL><B> <SHAD><FONT color="#FF0000" size="8">'+mes+
                                                     '</FONT></SHAD>.</B></UL>';
          lbl2.HTMLText.Strings[i]:=s;
        end;
  end;}
  Application.ProcessMessages;
end;

procedure TSplashForm.btn1Click(Sender: TObject);
begin
  Close;
end;

procedure TSplashForm.cont1ReadBlobField(Field: TBlobField; BlobSize,
  Progress: Integer; var Stop: Boolean);
begin
  pb1.Min:=0;
  pb1.Max:=BlobSize;
  pb1.Position:=Progress;
  Application.ProcessMessages;
end;

procedure TSplashForm.cont1WriteBlobField(Field: TBlobField; BlobSize,
  Progress: Integer; var Stop: Boolean);
begin
  pb1.Min:=0;
  pb1.Max:=BlobSize;
  pb1.Position:=Progress;
  Application.ProcessMessages;
end;

procedure TSplashForm.CreateMem;
begin
  CreateField(mTable,'CODE',ftInteger);
  CreateField(mTable,'FLAG',ftInteger);
  CreateField(mTable,'PATH',ftString,256);
  CreateField(mTable,'NAME',ftString,256);
  CreateField(mTable,'EXT',ftString,32);
  CreateField(mTable,'SIZE',ftInteger);
  CreateField(mTable,'FILEDATA',ftDateTime);
  CreateField(mTable,'LASTCHANGE',ftDateTime);
  CreateField(mTable,'DESCRIPTION',ftString,1024);
  CreateField(mTable,'DEZ',ftInteger);
  CreateField(mTable,'PO',ftInteger);
  CreateField(mTable,'UPPATH',ftString,256);
  mTable.Open;
end;

procedure TSplashForm.lbl2Click(Sender: TObject);
begin
    AddMes(0,0,' Соединение с базой данных.');
    sleep(6000);
    AddMes(0,1,' Соединение с базой данных.');

    AddMes(1,0,' Проверка обновления.');
    sleep(6000);
    AddMes(1,1,' Проверка обновления.');
    AddMes(2,0,' Загрузка основного модуля программы.');
end;

end.
