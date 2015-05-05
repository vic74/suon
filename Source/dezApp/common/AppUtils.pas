unit AppUtils;

interface

uses Classes, Forms, SysUtils, Variants,Controls, Windows, cxPropertiesStore,
  Fibdatabase, dxmdaset, FIBDataSet, pFIBProps, cxStorage,
  Data.DBConsts, cxGridExportLink, cxExport, cxGraphics,
  FIBQuery, pFIBCacheQueries, Dialogs, Winapi.ShlObj, System.IOUtils,
  dxLayoutLookAndFeels, dxLayoutControl,dxBar, EncdDecd,
  cxGridCustomTableView,  cxGridDBTableView, SHFolder, tlhelp32,
  cxDBLookupComboBox,cxDropDownEdit,cxEdit,Graphics, ShellApi,
  cxExportPivotGridLink,cxCustomPivotGrid, cxDBPivotGrid,
  cxGridCustomView, cxGrid, DB, SrvSaveListFrm, KAZip;
type
  EMyException = class(Exception);

  TGridHelper = class helper for  TcxGridDBTableView
    function FN(FName: string) :Variant;

  end;

  TFibDSHelper = class helper for TFIBDataSet
    procedure SetWriteOpt(dsOpen: Boolean = true; SQL: string = '';
     Table: string = ''; KeyFields: string = 'CODE'; GeneratorName: string = '');
  end;

  TMemDataHelper = class helper for TdxMemData
    ///	<summary>
    ///	  процедура удаляет все имеющиеся поля из временной таблицы
    ///	</summary>
    procedure ClearField;
    ///	<summary>
    ///	  процедура создания поля во временной таблице
    ///	</summary>
    procedure AddField(aFieldName: string; aFieldType: TFieldType = ftString;
                       aDisplayName: string =''; AFieldSize: Integer = 0;
                       aVisible: Boolean = true; aIndex: Integer = 0);
    ///	<summary>
    ///	  <para>
    ///	    упрощенная функция возврата значения поля таблицы.
    ///	  </para>
    ///	  <para>
    ///	    аналог стандартной функции FieldByName
    ///	  </para>
    ///	</summary>
    function FN(const FieldName: string): TField;
    procedure ClearData;
  end;

 TcxMyGridTableViewExport = class(TcxGridTableViewExport)
  protected
    fHead: TStrings;
    procedure AddFooterMessage(var ATop, ALeft: Integer; AText: string); virtual;
    procedure AddHeaderMessage(var ATop, ALeft: Integer; ARec: Integer; AText: string); virtual;
    function GetCopyrightMessage: string; virtual;
    procedure CreateFooter(var ATop, ALeft: Integer); override;
    procedure CreateHeader(var ATop, ALeft: Integer); override;
    constructor Create(AFileName: string; AExportType: Integer; AGridView: TcxCustomGridView;
      AGrid: TcxCustomGrid; AViewInfo: TcxCustomGridViewInfo; aHead: TStrings); virtual;
  end;

  {TFormHelper = class helper for TCustomForm
  protected
    procedure CreateMD;
  public
    class var
      PropertiesStore: TcxPropertiesStore;
      md: TdxMemData;
    procedure Restore;
    procedure Store;

    //constructor Create(AOwner: TComponent); overload;
    //class constructor Create; overload; override;
  end;}

function CreateForm(AForm: string; AHelpIndex: integer): TForm;
function FindChild(AName: string): TForm;
procedure LoadForm(prop: TcxPropertiesStore; FName: string);
procedure SetMes(mes: string = '');
function GetSelected(FieldName: string; grid: TcxGrid): string;
procedure SetWaitCursor(wait: Boolean = false);
//dxMemData
procedure CreateField(AMemData: TDataSet; AFieldName: string;
  AFieldType: TFieldType; AFieldSize: Integer = 0);
procedure ClearField(AMemData: TDataSet);
function GetWord(S: String; Nomer: integer; Ch: char): String;

procedure SrvMark(AMark: Boolean; ds: TDataSet);
procedure LoadSrv(DB: TFIBDatabase; ds: TdxMemData);
function DSCreate(DB: TFIBDatabase): TFIBDataSet;
procedure SrvListSave(ds: TDataSet);
function GetSrvList(ds: TDataSet): string;
procedure SetSrvList(S: string; ds: TDataSet);
procedure SrvListLoad(ds: TDataSet);
procedure CheckFlag(ds: TDataSet);
function DateName(days: Integer): string;
function GetYM(M, Y: Integer): string;
function NextYM(YM: string): string;
function GetMonthCaption(YM: string): string;
procedure GetListDsValue(Q: TDataSet; list: TStringList; Ffield: string;
  Cnt: Integer = 1000; Quote: Boolean = false);
procedure DSOptoins(ds: TFIBDataSet; SQL, Table, KeyFields,
  GeneratorName: string; dsOpen: Boolean = true);
function GetTBaseName(num: Integer): string;
function GetPeriod(M, Y: string; lastDay: Boolean = false): TDateTime;
procedure CreateAtype(mt: TDataSet; AType: string);
procedure GridOptionsDef(v: TcxGridDBTableView);
function GetFNameTBase(AIndex: Integer): string;
function GetFileVersionEx(const FileName: string): string;
function GetFileDateTime(FileName: string): TDateTime;
procedure SetSkin(AForm: TForm);
procedure CloseAllForm;
procedure CreateRType(ds: TDataSet);
function GetWorkerFio(code: Integer): string;
procedure GetHouseManager(var mCODE, mNAME :variant; kontr,house :variant);
function GetFileName: string;
function GetFileSize(FileName: string): Longint;
function CheckLimitSize(FName: string; AType: string; limit: Integer): Boolean;
function CreateZipFile: Boolean;
function ZipFileEx(Path, FileName: string): Boolean;
procedure CheckTran(wt: Boolean = true);
function RetDate(inDate: TDateTime; inTip: Integer): Integer;
{$REGION 'Редактирование в гриде'}
///<summary>Разрешение/запрет редатирования в гриде</summary>
{$ENDREGION}
procedure GridEditDisable(ADisable: Boolean; v: TcxGridDBTableView);
function CreateSprForm(ClassForm: string): Variant;
procedure AddButton(AForm :TForm);
procedure RemoveBtn (AName :string);
procedure CreateWall(mt: TDataSet);
procedure HouseFieldEx(ds: TDataSet; AField :string);
procedure ConfigureCombo(combo : TcxLookupComboBox);
procedure GetDir(var dirCODE, dirNAME :Variant; kontr :variant);
function gFN(v :TcxGridDBTableView; FName :string) :variant;
		{$REGION 'Генератор для тр'}
		///<summary>генератор номера для документов доп.соглашение</summary>
		{$ENDREGION}
function GenNumTR(cod :Variant) :Variant;
procedure IncGenTR(cod :Variant);
procedure CheckHouse(m :TdxMemData; HouseField, AField :string);
procedure IncPopMenu(Form :TForm);

		{$REGION 'Формирование структуры таблиц БДР'}
      ///<summary>Формирование структуры таблиц БДР</summary>
		{$ENDREGION}
procedure MakeBDRTableStruct(Srv: string; T: TdxMemData);
procedure MakeBDRFactTableStruct(Srv: string; T: TdxMemData);
// получение логина пароля к диспетчеру
procedure DispLogin(var fUser, fPSWD, fServer, fBase: Variant);
procedure DispKontragent;
//
procedure SetFormOptions(multiform :boolean);
procedure RemoveAll(path: string);
function GetGenCode(GeneratorName: string): Variant;
function GetSpecialFolderPath(folder : integer) : string;
//
procedure MyExportGridToFile(AFileName: string; AExportType: Integer;
  AGrid: TcxGrid; AExpand, ASaveAll, AUseNativeFormat: Boolean;
  const ASeparator, ABeginString, AEndString: string; const AFileExt: string; Header: TStrings);
procedure ExportInExcel(grd: TcxGrid; Header: TStrings; isNative: Boolean = false);
procedure SimpleExportInExcel(grd: TcxGrid);
procedure SimpleExportPivotInExcel(grd: TcxDBPivotGrid);
function KillTask(ExeFileName: string): Integer;
//
/// <summary>
/// функция возвращает путь к системным папкам
/// <example>
/// <code lang="delphi">
/// s:= GetSpecialPath(CSIDL_APPDATA);
///
/// </code>
///
/// </example>
/// </summary>
function GetSpecialPath(CSIDL: word): string;
 const
   NoManagerByHouse = 'За домом не закреплен ни один менеджер СЭ!'+#10#13+
                      ' Закрепите менеджера в справочнике домов за данным домом. ';

var
  ServName: AnsiString;
  BaseNameStr :AnsiString;
  AppPath: AnsiString;
  LSkin: TdxLayoutLookAndFeelList;
  LCxSkin: TdxLayoutCxLookAndFeel;
  KZ: TKAZip;
  mform :boolean = false;
  NativeFormat: Boolean = True;
  //
  Disp_User: Variant;   //пользователь диспетчера
  Disp_PSWD: Variant;   //пароль для входа в диспетчер
  Disp_Kontr: Variant;  //код подрядчика из диспетчера
implementation

uses MainFrm, NameFrm, cmDBUnit, LoadingSplash, dezCommon;


function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                    OpenProcess(PROCESS_TERMINATE,
                                BOOL(0),
                                FProcessEntry32.th32ProcessID),
                                0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure MyExportGridToFile(AFileName: string; AExportType: Integer;
  AGrid: TcxGrid; AExpand, ASaveAll, AUseNativeFormat: Boolean;
  const ASeparator, ABeginString, AEndString: string; const AFileExt: string; Header: TStrings);
var
  AView: TcxCustomGridView;
  AGridExport: TcxGridCustomExport;
begin
  if AGrid <> nil then
  begin
    if AFileExt <> '' then
      AFileName := ChangeFileExt(AFileName, '.' + AFileExt);
    AView := AGrid.ActiveLevel.GridView;
    AGridExport := TcxMyGridTableViewExport.Create(AFileName, AExportType, AView, AGrid, nil, Header);
    AGridExport.SaveAll := ASaveAll;
    AGridExport.Expand := AExpand;
    AGridExport.UseNativeFormat := AUseNativeFormat;
    AGridExport.AddSeparators([ASeparator, ABeginString, AEndString]);
    AGrid.BeginUpdate;
    try
      try
        AGridExport.DoExport;
      finally
        AGridExport.Free;
      end;
    finally
      AGrid.EndUpdate;
    end;
  end;
end;

procedure DispLogin(var fUser, fPSWD, fServer, fBase: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,
    'SELECT P.DISP_LOGIN, P.DISP_PSWD, DI.SERVER, DI.BASE, DI.LOGIN, DI.PASS  FROM WORKER W' +#13#10+
    'left outer join PIPLE P on P.CODE = W.PIPLE' +#13#10+
    'left outer join DISP$INFO DI on 1=1' +#13#10+
    'WHERE W.CODE = :CODE');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= ActiveWorker;
    Q.ExecQuery;
    fUser:= Q.FN('LOGIN').AsVariant;
    Disp_User:= Q.FN('DISP_LOGIN').AsVariant;
    Disp_PSWD:= Q.FN('DISP_PSWD').AsVariant;
    fPSWD:= Q.FN('PASS').AsVariant;
    fServer:= Q.FN('SERVER').AsVariant;
    fBase:= Q.FN('BASE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure DispKontragent;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,
    'select DISP_ID from KONTRAGENT where CODE=:CODE');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= ActiveKontragent;
    Q.ExecQuery;
    Disp_Kontr:= Q.FN('DISP_ID').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure ExportInExcel(grd: TcxGrid; Header: TStrings; isNative: Boolean);
var
  FName: string;
  dlgSave: TSaveDialog;
begin
  dlgSave:= TSaveDialog.Create(nil);
  try
    if dlgSave.Execute then begin
        MyExportGridToFile(dlgSave.FileName, cxExportToExcel, grd, true, True, isNative, '', '', '', 'xls', Header);
        FName:= ChangeFileExt(dlgSave.FileName, '.xls');
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
  finally
    dlgSave.Free;
  end;
end;

procedure SimpleExportInExcel(grd: TcxGrid);
var
  FName: string;
  dlgSave: TSaveDialog;
begin
  dlgSave:= TSaveDialog.Create(nil);
  try
    if dlgSave.Execute then begin
        ExportGridToExcel(dlgSave.FileName,grd);

        FName:= ChangeFileExt(dlgSave.FileName, '.xls');
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
  finally
    dlgSave.Free;
  end;
end;

procedure SimpleExportPivotInExcel(grd: TcxDBPivotGrid);
var
  FName: string;
  dlgSave: TSaveDialog;
begin
  dlgSave:= TSaveDialog.Create(nil);
  try
    if dlgSave.Execute then begin
        cxExportPivotGridToExcel(dlgSave.FileName,grd);

        FName:= ChangeFileExt(dlgSave.FileName, '.xls');
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
  finally
    dlgSave.Free;
  end;
end;

function GetGenCode(GeneratorName: string): Variant;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDb.RT,
                   'SELECT NEXT VALUE FOR '+GeneratorName+' FROM RDB$DATABASE');
  Q.Options:=[qoStartTransaction];
  try
    Q.ExecQuery;
    Result:= Q.FN('GEN_ID').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function GetSpecialPath(CSIDL: word): string;
var s:  string;
begin
  SetLength(s, MAX_PATH);
  if not SHGetSpecialFolderPath(0, PChar(s), CSIDL, true)
  then s := '';
  result := IncludeTrailingBackslash(PChar(s));
end;

function GetSpecialFolderPath(folder : integer) : string;
const
  SHGFP_TYPE_CURRENT = 0;
var
  path: array [0..MAX_PATH] of char;
begin
  if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
    Result := path
  else
    Result := '';
end;

procedure RemoveAll(path: string);
var
  sr: TSearchRec;
  fName: string;
begin
  if FindFirst(path + '\*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if sr.Attr and faDirectory = 0 then
      begin
        fName:= path + '\' + sr.Name;
        DeleteFile(PWideChar(fName));
      end
      else
      begin
        if pos('.', sr.name) <= 0 then
          RemoveAll(path + '\' + sr.name);
      end;
    until
      FindNext(sr) <> 0;
  end;
  SysUtils.FindClose(sr);
  RemoveDirectory(PChar(path));
end;

procedure MakeBDRFactTableStruct(Srv: string; T: TdxMemData);

  procedure MakeStruct2;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'House',ftInteger);    //код дома
    CreateField(T,'F',ftString, 256);  //фильтр
    CreateField(T, 'AccCNT', ftInteger); //число лицевых счетов
    CreateField(T,'A',ftBoolean);  //дом в управлении ДЕЗ
    CreateField(T,'F0',ftInteger);     //№ п/п
    CreateField(T,'F1',ftString,256);  //Адрес
    CreateField(T,'F2',ftString,32);  //ДУ
    CreateField(T,'F3',ftFloat);       //Площадь
    for I := 4 to 40 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //добавляем индекс
    with T.Indexes.Add do
    begin
      FieldName := 'F';
    end;
    T.Open;
  end;

  procedure MakeStruct1;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'House',ftInteger);    //код дома
    CreateField(T,'F',ftString, 256);  //фильтр
    CreateField(T,'A',ftBoolean);  //фильтр
    CreateField(T,'F0',ftInteger);     //№ п/п
    CreateField(T,'F1',ftString,256);  //Адрес
    CreateField(T,'F2',ftString,32);   //№ ДУ
    CreateField(T,'F3',ftFloat);       //Площадь
    for I := 4 to 27 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //добавляем индекс
    with T.Indexes.Add do
    begin
      FName := 'F';
    end;
    T.Open;
  end;

  procedure MakeStruct3;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'House', ftInteger);  //код дома
    CreateField(T,'F', ftString, 256);  //фильтр
    CreateField(T,'A', ftBoolean);  //фильтр
    CreateField(T,'F0', ftInteger);     //№ п/п
    CreateField(T,'F1', ftString,256);  //Адрес
    CreateField(T,'F2', ftString,32);   //№ ДУ
    CreateField(T,'F3', ftFloat);       //Площадь
    for I := 4 to 32 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //добавляем индекс
    with T.Indexes.Add do
    begin
      FName := 'F';
    end;

    T.Open;
  end;

begin
  if Srv='6' then MakeStruct2
  else if Srv='8' then MakeStruct3
  else MakeStruct1;
end;

procedure MakeBDRTableStruct(Srv: string; T: TdxMemData);

  procedure MakeStruct2;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'D',ftInteger);    //фильтр по договору
    CreateField(T,'A',ftInteger);    //код дома
    CreateField(T,'House',ftInteger);    //код дома
    CreateField(T,'F',ftString, 256);  //фильтр
    CreateField(T,'AccCount', ftInteger); //число лицевых счетов
    CreateField(T,'DRTZ', ftCurrency); //площадь дератизации
    CreateField(T,'DZI', ftCurrency); //площадь дератизации
    CreateField(T,'F0',ftInteger);     //№ п/п
    CreateField(T,'F1',ftString,256);  //Адрес
    CreateField(T,'F2',ftString,32);   //№ ДУ
    CreateField(T,'F3',ftString,32);   //Тариф
    for I := 4 to 41 do begin            //остальные
      FName:='F'+IntToStr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //контрагенты
    for I := 1 to 8 do
    begin
      FName:='K'+IntToStr(i);
      CreateField(T,FName,ftInteger);
      FName:='KName'+IntToStr(i);
      CreateField(T,FName,ftString,256);
    end;
    //добавляем индекс
    with T.Indexes.Add do
      FieldName := 'F';
    with T.Indexes.Add do
      FieldName := 'A';
    T.Open;
  end;

  procedure MakeStruct1;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'D',ftInteger);
    CreateField(T,'A',ftInteger);
    CreateField(T,'House',ftInteger);    //код дома
    CreateField(T,'F',ftString, 256);  //фильтр
    CreateField(T,'F0',ftInteger);     //№ п/п
    CreateField(T,'F1',ftString,256);  //Адрес
    CreateField(T,'F2',ftString,32);   //№ ДУ
    CreateField(T,'F3',ftString,32);   //Тариф
    for I := 4 to 22 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //добавляем индекс
    with T.Indexes.Add do
    begin
      FieldName := 'F';
    end;
    with T.Indexes.Add do
    begin
      FieldName := 'A';
    end;
    T.Open;
  end;

  procedure MakeStruct3;
  var
    i :Integer;
    FName :string;
  begin
    T.Close;
    T.Indexes.Clear;
    ClearField(T);
    CreateField(T,'D',ftInteger);
    CreateField(T,'A',ftInteger);
    CreateField(T,'House',ftInteger);    //код дома
    CreateField(T,'F',ftString, 256);  //фильтр
    CreateField(T,'F0',ftInteger);     //№ п/п
    CreateField(T,'F1',ftString,256);  //Адрес
    CreateField(T,'F2',ftString,32);   //№ ДУ
    CreateField(T,'F3',ftString,32);   //Тариф
    for I := 4 to 28 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(T,FName,ftCurrency);
    end;
    //добавляем индекс
    with T.Indexes.Add do
      FieldName := 'F';
    with T.Indexes.Add do
    begin
      FieldName := 'A';
    end;
    T.Open;
  end;

begin
  if Srv='6' then MakeStruct2
  else if Srv='8' then MakeStruct3
  else MakeStruct1;
end;

procedure IncPopMenu(Form :TForm);
var
  i :integer;
begin
  for i:=0 to Form.ComponentCount-1 do
  with Form do begin
    if Components[i].ClassType=TcxGrid then
    begin
      (Components[i] as TcxGrid).OnEnter:=MainForm.GrdEnter;
    end;
  end;
end;

procedure CheckHouse(m :TdxMemData; HouseField, AField :string);
var
  Q: TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT, 'select CODE,A from house');
  try
    Q.ExecQuery;
    while not Q.Eof do begin
      if m.Locate(HouseField,Q.FN('CODE').AsVariant,[]) then
      begin
        m.Edit;
        m.FieldByName(AField).AsVariant:=Q.FN('A').AsVariant;
        m.Post;
      end;
      Q.Next;                   
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure IncGenTR(cod :Variant);
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'UPDATE GENLIST SET NUM=NUM+1 WHERE CODE=:COD');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('COD').AsVariant:=cod;
  try
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

function GenNumTR(cod :Variant) :Variant;
var
  Q :TFIBQuery;
  pref ,num, len :Variant;
  numlen,razn :Variant;
  nom :string;
  i :Integer;
begin
  if cod=null then begin
    Result:='0';
    Exit;
  end;
  Q:=GetQueryForUse(cmDB.RT,'select CODE, PREF, NUM, LEN' + #13#10 +
                            'from GENLIST' + #13#10 +
                            'where CODE = :COD ');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('COD').AsVariant:=cod;
  try
    Q.ExecQuery;
    pref:=Q.FN('PREF').AsVariant;
    num:= Q.FN('NUM').AsVariant;
    len:= Q.FN('LEN').AsVariant;
    //
    if num = null then Exit;
    if (len <> null) and (len>0) then begin
      numlen:=Length(VarToStr(num));
      razn:=len-numlen;
      if razn>0 then
      for i:=0 to razn -1 do begin
        nom:=nom+'0';
      end;
      Result:=VarToStr(pref)+FormatDateTime('yy',Date)+'-'+nom+VarToStr(num);
    end;
    IncGenTR(cod);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure GetHouseManager(var mCODE, mNAME :variant; kontr,house :variant);
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmdb.RT,
        'select m.worker,(p.f||'' ''||p.i||'' ''||p.o) fio' + #13#10 +
        'from mhouse m' + #13#10 +
        'left outer join worker w on w.code=m.worker' + #13#10 +
        'left outer join piple p on p.code=w.piple' + #13#10 +
        'where m.house=:house and m.kontragent=:kontr');
  Q.ParamByName('kontr').asVariant:=kontr;
  Q.ParamByName('house').asVariant:=house;
  Q.ExecQuery;
  mCODE:=Q.FN('worker').AsVariant;
  mNAME:=Q.FN('fio').AsVariant;
  FreeQueryForUse(Q);
end;

function gFN(v :TcxGridDBTableView; FName :string) :variant;
begin
  if (v.GetColumnByFieldName(FName).EditValue=Unassigned)
  //   and (v.GetColumnByFieldName(FName).EditValue<>0)
  then Result:=null else
  Result:=v.GetColumnByFieldName(FName).EditValue;
end;

procedure GetDir(var dirCODE, dirNAME :Variant; kontr :variant);
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmdb.RT,
        'select k.DIRECTOR,(p.f||'' ''||p.i||'' ''||p.o) fio' + #13#10 +
        'from kontragent k' + #13#10 +
        'left outer join worker w on w.code=k.director' + #13#10 +
        'left outer join piple p on p.code=w.piple' + #13#10 +
        'where k.code=:kontr');
  Q.ParamByName('kontr').asVariant:=kontr;
  Q.ExecQuery;
  dirCODE:=Q.FN('DIRECTOR').AsVariant;
  dirNAME:=Q.FN('fio').AsVariant;
  FreeQueryForUse(Q);
end;

procedure ConfigureCombo(combo : TcxLookupComboBox);
begin
  combo.Properties.DropDownListStyle := lsEditList;
  combo.Properties.IncrementalFiltering := False;
  combo.Properties.IncrementalSearch := False;
  combo.Properties.ListOptions.CaseInsensitive := True;
  combo.Properties.GridMode := False; //GridMode will not work!
end;

// вызываем форму справочника
function CreateSprForm(ClassForm: string): Variant;
var
  FClass: TFormClass;
  sprform: TForm;
begin
  Result := null;
  try
    FClass := TFormClass(FindClass(ClassForm));
  except
    on E: EClassNotFound do
      Exit;
  end;
  sprform := FClass.Create(Application);
  sprform.FormStyle := fsStayOnTop;
  sprform.WindowState := wsNormal;
  sprform.Position := poMainFormCenter;
  sprform.Visible := false;
  SetSkin(sprform);
  if sprform.ShowModal = 1 then
    Result := sprform.Tag;
  // у форм на onClose стоит caFree поэтому не освобождаю
end;

procedure RemoveBtn (AName :string);
 var i :Integer;
 s :string;
begin
 with MainForm do
 begin
  with bm1 do
  begin
    BeginUpdate;
    try
     for I := 0 to br_tool.ItemLinks.VisibleItemCount - 1 do
     begin
       s:=br_tool.ItemLinks.Items[i].Item.Description;
       if br_tool.ItemLinks.Items[i].Item.Description=AName then
       begin
        br_tool.ItemLinks.Delete(i);
        Break;
       end;
     end;
    finally
      EndUpdate;
    end;
  end;
 end;
end;

procedure SetFormOptions(multiform :boolean);
begin
  //MDI стиль с кнопками для всех форм
  mform:=true;
  exit;

  if multiform then
    mform:=true
  else
    mform:=False;
end;

procedure AddButton(AForm :TForm);
var
  i :Integer;
  form :TForm;
begin
 with MainForm do
 begin
  with bm1 do
  begin
    BeginUpdate;
    try
      for I := 0 to br_tool.ItemLinks.AvailableItemCount - 1 do
      begin
       (br_tool.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
      end;

      with br_tool.ItemLinks.AddButton do
      begin
        if Length(Aform.Caption)>19 then
        Item.Caption := Copy(Aform.Caption,0,15)+'...' else
        Item.Caption := Aform.Caption;
        Item.Hint := Aform.Caption;
        Item.Glyph:=GetFormImage;
        Item.Description:=AForm.Name;
        (Item as TdxBarButton).PaintStyle:=psCaption;
        (Item as TdxBarButton).Lowered:=True;
        UserPaintStyle :=psCaption;
        //(Item as TdxBarButton).OnClick:=btn1Click;
      end;
    finally
      EndUpdate;
    end;
  end;
 end;
 //form:=(FindComponent(Aname) as TForm);
 SetSkin(AForm);
end;

procedure GridEditDisable(ADisable: Boolean; v: TcxGridDBTableView);
begin
  with v.OptionsData do
  begin
    Appending := ADisable;
    Deleting := ADisable;
    DeletingConfirmation := ADisable;
    Editing := ADisable;
    Inserting := ADisable;
  end;
end;

// функция возврата значения элемента даты (год, месяц, день, квартал):
function RetDate(inDate: TDateTime; inTip: Integer): Integer;
var
  xYear, xMonth, xDay: word;
begin
  Result := 0;
  DecodeDate(inDate, xYear, xMonth, xDay);
  case inTip of
    1:
      Result := xYear; // год
    2:
      Result := xMonth; // месяц
    3:
      Result := xDay; // день
    4:
      if xMonth < 4 then
        Result := 1
      else // квартал
        if xMonth < 7 then
        Result := 2
      else if xMonth < 10 then
        Result := 3
      else
        Result := 4;
  end;
end;

function GetFileDateTime(FileName: string): TDateTime;
var
  intFileAge: Longint;
begin
  intFileAge := FileAge(FileName);
  if intFileAge = -1 then
    Result := 0
  else
    Result := FileDateToDateTime(intFileAge)
end;

procedure CheckTran(wt: Boolean = true);
begin
  if wt then
  begin
    if not cmDB.wt.Active then
      cmDB.wt.StartTransaction;
  end
  else
  begin
    if not cmDB.RT.Active then
      cmDB.RT.StartTransaction;
  end;
end;

{ -------------------------------------------------------------------------------
  ZipFile|архивируем файл
  ------------------------------------------------------------------------------- }
function ZipFile(FName: string): string;
begin
  KZ := TKAZip.Create(Application);
  if CreateZipFile then // если архив создан, то добавляем файлы в архив
  begin
    KZ.Entries.AddFile(FName);
    KZ.Close;
    KZ.Free;
    Result := ExtractFilePath(Application.ExeName) + 'temp\dbFile.zip';
  end
  else
    Result := '';
end;

{ -------------------------------------------------------------------------------
  CreateZipFile|Создаем архив
  ------------------------------------------------------------------------------- }
function CreateZipFile: Boolean;
var
  FS: TFileStream;
  zipArhiv: string;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'temp') then
    if CreateDir(ExtractFilePath(Application.ExeName) + 'temp') then
    begin
      KZ.OverwriteAction := oaOverwrite;
      zipArhiv := ExtractFilePath(Application.ExeName) + 'temp\dbFile.zip';
      FS := TFileStream.Create(zipArhiv, fmOpenReadWrite or FmCreate);
      Try
        KZ.CreateZip(FS);
      Finally
        FS.Free;
      End;
      KZ.Open(zipArhiv);
      Result := true;
    end
    else
      Result := false;
end;

function ZipFileEx(Path, FileName: string): Boolean;
var
  FS: TFileStream;
  zipArhiv, fFile: string;
begin
  Result := false;
  if not DirectoryExists(Path) then
  if not CreateDir(Path) then
    raise EMyException.Create('Не удается создать директорию!');
   KZ := TKAZip.Create(Application);
   try
     KZ.OverwriteAction := oaOverwrite;
     zipArhiv := Path + ChangeFileExt(FileName,'.zip');;
     FS := TFileStream.Create(zipArhiv, fmOpenReadWrite or FmCreate);
     Try
       KZ.CreateZip(FS);
     Finally
       FS.Free;
     End;
     KZ.Open(zipArhiv);
     fFile:= AnsiString(Path + FileName);
     KZ.Entries.AddFile(fFile,AnsiString('report.xls'));
     KZ.Close;
     Result := true;
   finally
     KZ.Free;
   end;
end;

{ -------------------------------------------------------------------------------
  Получаем размер файла
  ------------------------------------------------------------------------------- }
function GetFileSize(FileName: string): Longint;
var
  SearchRec: TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, SearchRec) = 0 then
    Result := SearchRec.Size
  else
    Result := -1; { возвращаем ошибку, это может быть число меньше нуля }
end;

function ConvertSize(AType: string; aSize: real): real;
begin
  // kb,mb,gb
  if AType = 'kb' then
    Result := aSize / (1 shl 10); // килобайты
  if AType = 'mb' then
    Result := aSize / (1 shl 20); // мегабайты
  if AType = 'gb' then
    Result := aSize / (1 shl 30); // гигабайты
end;

{ -------------------------------------------------------------------------------
  CheckLimitSize|Проверка не превышает ли файл указанного рамера
  fName - путь к файлу
  aType - тип размера (kb,mb,gd)
  limit - лимит размера
  ------------------------------------------------------------------------------- }
function CheckLimitSize(FName: string; AType: string; limit: Integer): Boolean;
var
  aSize: Longint;
begin
  Result := false;
  aSize := GetFileSize(FName);
  if aSize > 0 then
  begin
    if ConvertSize(AType, aSize) > limit then
      Result := true;
  end;
end;

function GetFileName: string;
var
  dlg: TOpenDialog;
  FName: string;
begin
  FName := '';
  dlg := TOpenDialog.Create(Application);
  if dlg.Execute then
    FName := dlg.FileName;
  Result := FName;
  dlg.Free;
end;

function GetWorkerFio(code: Integer): string;
var
  Q: TFIBQuery;
  SQL: string;
begin
  Result := '';
  if not cmDB.RT.Active then
    cmDB.RT.StartTransaction;
  SQL :=
    'SELECT (p.f||'#39#32#39'||p.i||'#39#32#39'||p.o) fio' +
    ' FROM WORKER w' + ' left outer join PIPLE p on p.code=w.piple' +
    ' where w.code=:cod';
  Q := GetQueryForUse(cmDB.RT, SQL);
  Q.ParamByName('cod').AsVariant := code;
  Q.ExecQuery;
  Result := Q.FN('fio').AsString;
  FreeQueryForUse(Q);
end;

{ -------------------------------------------------------------------------------
  GridOptionsDef|Установка настроек грида по умолчанию
  ------------------------------------------------------------------------------- }
procedure GridOptionsDef(v: TcxGridDBTableView);
begin
  v.OptionsBehavior.FocusFirstCellOnNewRecord := true;
  v.OptionsBehavior.GoToNextCellOnEnter := true;
  v.OptionsBehavior.ImmediateEditor := false;

  v.OptionsView.GroupByBox := false;
  v.OptionsView.Indicator := true;
end;

function GetPeriod(M, Y: string; lastDay: Boolean = false): TDateTime;
var
  nextm, nexty: string;
  d: TDateTime;
begin
  if Length(M) = 1 then
    M := '0' + M;
  if lastDay = true then
  begin
    if M = '12' then
    begin
      nextm := '01';
      nexty := IntToStr(StrToInt(Y) + 1);
    end
    else
    begin
      nextm := IntToStr(StrToInt(M) + 1);
      nexty := Y;
    end;
    d := StrToDateTime('01.' + nextm + '.' + nexty);
    Result := d - 1;
  end
  else
    Result := StrToDateTime('01.' + M + '.' + Y);
end;

function GetFNameTBase(AIndex: Integer): string;
begin
  case AIndex of
    0:
      Result := 'Total_SQ'; // - площадь общая
    1:
      Result := 'Living_SQ'; // - площадь жилая
    2:
      Result := 'Commerce_SQ'; // - площадь нежилая
    3:
      Result := 'Cellar_SQ'; // - площадь подвалов
    4:
      Result := 'Lodger_CNT'; // - количество жильцов
    5:
      Result := 'Flat_CNT'; // - количество квартир
    6:
      Result := 'AccCode_CNT'; // - количество лицевых счетов
    7:
      Result := 'Entrance_CNT'; // - количество подъездов
    8:
      Result := 'Lift_CNT'; // - количество лифтов
    9:
      Result := 'Garbage_CNT'; // - количество мусоропроводов
  else
    Result := '';
  end;
end;

function GetTBaseName(num: Integer): string;
begin
  case num of
    0:
      Result := 'площадь общая';
    1:
      Result := 'площадь жилая';
    2:
      Result := 'площадь нежилая';
    3:
      Result := 'площадь подвалов';
    4:
      Result := 'количество жильцов';
    5:
      Result := 'количество квартир';
    6:
      Result := 'количество лицевых счетов';
    7:
      Result := 'количество подъездов';
    8:
      Result := 'количество лифтов';
    9:
      Result := 'количество мусоропроводов';
  else
    Result := ''

  end;
end;

procedure CreateRType(ds: TDataSet);
  procedure AddType(ACode: Integer; AName: string);
  begin
    with ds do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  CreateField(ds, 'Code', ftInteger);
  CreateField(ds, 'Name', ftString, 128);
  ds.Open;
  AddType(0, 'техническое обслуживание');
  AddType(1, 'текущий ремонт');
  AddType(2, 'капитальный ремонт');
end;

procedure DSOptoins(ds: TFIBDataSet; SQL, Table, KeyFields,
  GeneratorName: string; dsOpen: Boolean = true);
begin
  with ds do
  begin
    if SQL <> '' then
      SelectSQL.Text := SQL;
    AutoUpdateOptions.AutoReWriteSqls := true;
    AutoUpdateOptions.CanChangeSQLs := true;
    AutoUpdateOptions.UpdateOnlyModifiedFields := true;
    AutoUpdateOptions.UpdateTableName := Table;
    AutoUpdateOptions.KeyFields := KeyFields;
    AutoUpdateOptions.GeneratorName := GeneratorName;
    AutoUpdateOptions.WhenGetGenID := wgBeforePost;
    AutoCommit := true;
    if dsOpen = true then
      Open;
  end;
end;

{ -------------------------------------------------------------------------------
  GetListDsValue|собираем значения через запятую
  Cnt - кол-во значений в строке
  Quote - в кавычках (да/нет)
  ------------------------------------------------------------------------------- }
procedure GetListDsValue(Q: TDataSet; list: TStringList; Ffield: string;
  Cnt: Integer = 1000; Quote: Boolean = false);
var
  S: string;
  i: Integer;
begin
  i := 0;
  S := '';
  while not Q.Eof do
  begin
    inc(i);
    if Quote = true then
      S := S + #39 + Q.FieldByName(Ffield).AsString + #39 + ','
    else
      S := S + Q.FieldByName(Ffield).AsString + ',';
    if (i = Cnt) then
    begin
      if S <> '' then
        Delete(S, Length(S), 1);
      list.Add(S);
      i := 0;
      S := '';
    end;
    Q.Next;
  end;
  if S <> '' then
  begin
    Delete(S, Length(S), 1);
    list.Add(S);
  end;
end;

function GetMonthCaption(YM: string): string;
const
  M: array [1 .. 12] of string[5] = ('янв.', 'фев.', 'март', 'апр.', 'май',
    'июнь', 'июль', 'авг.', 'сент.', 'окт.', 'нояб.', 'дек.');
var
  i: Integer;
begin
  i := StrToInt(Copy(YM, 3, 2));
  Result := string(M[i]) + ' ' + Copy(YM, 1, 2);
end;

function GetYM(M, Y: Integer): string;
begin
  Result := IntToStr(M);
  if Length(Result) = 1 then
    Result := '0' + Result;
  Result := Copy(IntToStr(Y), 3, 2) + Result;
end;

function NextYM(YM: string): string;
var
  M, Y: Integer;
begin
  M := StrToInt(Copy(YM, 3, 2));
  Y := 2000 + StrToInt(Copy(YM, 1, 2));
  inc(M);
  if M = 13 then
  begin
    inc(Y);
    M := 1;
  end;
  Result := GetYM(M, Y);
end;

{ -------------------------------------------------------------------------------
  DateName|Правильное окончание даты
  ------------------------------------------------------------------------------- }
function DateName(days: Integer): string;
var
  S: Integer;
begin
  S := StrToInt(Copy(IntToStr(days), Length(IntToStr(days)), 1));
  case S of
    1:
      Result := IntToStr(days) + ' день';
    2:
      Result := IntToStr(days) + ' дня';
    3:
      Result := IntToStr(days) + ' дня';
    4:
      Result := IntToStr(days) + ' дня';
  else
    Result := IntToStr(days) + ' дней';
  end;
end;

{ CheckFlag|Отметка выбранной услуги }
procedure CheckFlag(ds: TDataSet);
begin
  ds.Edit;
  ds.FieldByName('flag').AsBoolean := not ds.FieldByName('flag').AsBoolean;
  ds.Post;
end;

{ -------------------------------------------------------------------------------
  SetSrvList|Установка списка услуг
  ------------------------------------------------------------------------------- }
procedure SetSrvList(S: string; ds: TDataSet);
begin
  with ds do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      if Pos(';' + FieldByName('Srv').AsString + ';', S) <> 0 then
        FieldByName('flag').AsBoolean := true
      else
        FieldByName('flag').AsBoolean := false;
      Post;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

{ -------------------------------------------------------------------------------
  SrvListLoad|Загружаем сохраненный список услуг
  ------------------------------------------------------------------------------- }
procedure SrvListLoad(ds: TDataSet);
var
  Form: TSrvSaveListForm;
  S: string;
begin
  S := '';
  Form := TSrvSaveListForm.Create(Application);
  if Form.ShowModal = 1 then
    S := Form.GetSrvList;
  Form.Free;
  if S <> '' then
    SetSrvList(S, ds);
end;

{ -------------------------------------------------------------------------------
  GetSrvList | Получаем выбранный список услуг
  ------------------------------------------------------------------------------- }
function GetSrvList(ds: TDataSet): string;
begin
  Result := ';';
  with ds do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('flag').AsBoolean = true then
        Result := Result + FieldByName('Srv').AsString + ';';
      Next;
    end;
    First;
    EnableControls;
  end;
  if Result = ';' then
    Result := '';
end;

{ -------------------------------------------------------------------------------
  SrvListSave | Сохраняем список услуг
  ------------------------------------------------------------------------------- }
procedure SrvListSave(ds: TDataSet);
var
  Form: TNameForm;
begin
  Form := TNameForm.Create(Application);
  Form.SrvList := GetSrvList(ds);
  Form.ShowModal;
  Form.Free;
end;

{ -------------------------------------------------------------------------------
  DSCreate | Создаем временный датасет и возвращаем ссылку на него
  ------------------------------------------------------------------------------- }
function DSCreate(DB: TFIBDatabase): TFIBDataSet;
var
  DST: TFIBDataSet;
begin
  DST := TFIBDataSet.Create(nil);
  DST.Database := DB;
  DST.Transaction := DB.DefaultTransaction;
  Result := DST;
end;

{ -------------------------------------------------------------------------------
  LoadSrv | Загружаем список служб
  ------------------------------------------------------------------------------- }
procedure LoadSrv(DB: TFIBDatabase; ds: TdxMemData);
var
  fDS: TFIBDataSet;
begin
  fDS := DSCreate(DB);
  // DSTemp.Close;
  fDS.SelectSQL.Text := 'SELECT -1 Flag, Srv, NAME FROM SRVLIST ORDER BY Name';
  fDS.Open;
  // DSTemp.RecordCount;
  ds.LoadFromDataSet(fDS);
  fDS.Free;
end;

{ -------------------------------------------------------------------------------
  SrvMark|Отметьть/снять отметки видов услуг
  ------------------------------------------------------------------------------- }
procedure SrvMark(AMark: Boolean; ds: TDataSet);
begin
  with ds do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      if ds.FieldByName('flag').AsBoolean <> AMark then
      begin
        Edit;
        ds.FieldByName('flag').AsBoolean := AMark;
        Post;
      end;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

{ -------------------------------------------------------------------------------
  CreateField|Добавляем поля в MemData
  ------------------------------------------------------------------------------- }
procedure CreateField(AMemData: TDataSet; AFieldName: string;
  AFieldType: TFieldType; AFieldSize: Integer = 0);
begin
  if (AMemData = nil) or (AFieldName = '') then
    Exit;
  with AMemData.FieldDefs.AddFieldDef do
  begin
    Name := AFieldName;

    DataType := AFieldType;
    if AFieldSize > 0 then
      Size := AFieldSize;
    CreateField(AMemData);
  end;
end;

procedure ClearField(AMemData: TDataSet);
var
  i: Integer;
begin
  for i := 0 to AMemData.FieldCount - 1 do
  AMemData.Fields[0].Free;
  AMemData.FieldDefs.Update;
end;
{ -------------------------------------------------------------------------------
  SetWaitCursor|Установка курсора ожидания
  ------------------------------------------------------------------------------- }
procedure SetWaitCursor(wait: Boolean = false);
begin
  if wait = true then
  begin
    Screen.Cursors[5] := LoadCursorFromFile
      (PWideChar(ExtractFilePath(Application.ExeName) + 'config\busy.ani'));
    Screen.Cursor := 5;
  end
  else
    Screen.Cursor := 0;
end;

{ <implementation on>

  GetSelected-\> возвращаем значение поля выделенной строки из
  грида                                                                                           }
function GetSelected(FieldName: string; grid: TcxGrid): string;
var
  Column: TcxGridDBColumn;
  ColumnIndex: Integer;
  RecordIndex: Integer;
  Text: String;
begin
  Column := TcxGridDBTableView(grid.FocusedView).GetColumnByFieldName
    (FieldName);
  ColumnIndex := Column.Index;
  RecordIndex := TcxGridDBTableView(grid.FocusedView)
    .DataController.FocusedRecordIndex;
  Text := TcxGridDBTableView(grid.FocusedView).DataController.GetDisplayText
    (RecordIndex, ColumnIndex);
  Result := Text;
end;

{ -------------------------------------------------------------------------------
  CreateForm|Создание дочерней формы
  ------------------------------------------------------------------------------- }
function CreateForm(AForm: string; AHelpIndex: integer): TForm;
var
  FClass: TFormClass;
begin
  Result:=nil;
  if FindChild(AForm) <> nil then
  begin
    FindChild(AForm).BringToFront;
  end
  else
  begin
    try
      FClass := TFormClass(FindClass('T' + AForm));
    except
      on E: EClassNotFound do
        Exit;
    end;
    //CloseAllForm;
    try
      //SplashVisibility(true, 'Загружаются данные');
      //SetCapt('подождите...');
      Result := FClass.Create(Application);
      Result.FormStyle := fsMDIChild;
      Result.WindowState := wsMaximized;
      if AHelpIndex<>0 then
        Result.HelpContext:=AHelpIndex;
      //AddButton(Form);
      SetSkin(Result);
      IncPopMenu(Result);
    finally
      //SplashVisibility(false);
    end;
  end;
end;



{ -------------------------------------------------------------------------------
  SetSkin|Устанавливаем скин для формы
  ------------------------------------------------------------------------------- }
procedure SetSkin(AForm: TForm);
var
  i: Integer;
begin
  for i := 0 to AForm.ComponentCount - 1 do
  begin
    if AForm.Components[i].ClassType = TdxLayoutControl then
    begin
      TdxLayoutControl(AForm.Components[i]).LookAndFeel := LCxSkin;
    end;
  end;
end;

procedure CloseAllForm;
var
  i: Integer;
begin
  for i := 0 to Application.mainform.MDIChildCount - 1 do
  begin
    Application.mainform.MDIChildren[i].Close;
  end;
end;

{ -------------------------------------------------------------------------------
  FindChild|Поиск дочерней формы
  ------------------------------------------------------------------------------- }
function FindChild(AName: string): TForm;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Application.mainform.MDIChildCount - 1 do
  begin
    if Application.mainform.MDIChildren[i].Name = AName then
      Result := Application.mainform.MDIChildren[i];
  end;
end;

procedure SetMes(mes: string = '');
begin
  with mainform do
    stb1.Panels[2].Text := mes;
  Application.ProcessMessages;
end;

{ -------------------------------------------------------------------------------
  LoadForm|Сохраняем параметры формы
  ------------------------------------------------------------------------------- }
procedure LoadForm(prop: TcxPropertiesStore; FName: string);
var
  path: string;
begin
  //path:= GetSpecialPath(CSIDL_APPDATA);
  {if path = '' then
     path:= ExtractFilePath(Application.ExeName)+ 'config\' else
     begin
       path:= path+'SUON\config\';
       if not DirectoryExists(path) then
       TDirectory.CreateDirectory(path);
     end;
  prop.StorageName := IncludeTrailingBackslash(path) + FName+'.cfg';
  if FileExists(IncludeTrailingBackslash(path) + FName+'.cfg') then
    prop.RestoreFrom;}
  prop.StorageName := ExtractFilePath(Application.ExeName) + 'config\' + FName;
  if FileExists(ExtractFilePath(Application.ExeName) + 'config\' + FName) then
    prop.RestoreFrom;
end;

procedure CreateWall(mt: TDataSet);

  procedure AddWallType(ACode: Integer; AName: string);
  begin
    with mt do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  CreateField(mt, 'Code', ftInteger);
  CreateField(mt, 'Name', ftString, 128);
  mt.Open;

    AddWallType(0, 'Панельные');
    AddWallType(1, 'Крупноблочные');
    AddWallType(2, 'Шлакоблочные');
    AddWallType(3, 'Кирпичные');
end;

procedure HouseFieldEx(ds: TDataSet; AField :string);
  procedure AddType(ACode: Integer; AName: string);
  begin
    with ds do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(ds, 'Code', ftInteger);
  CreateField(ds, 'Name', ftString, 128);
  ds.Open;
  if AField='GAZ' then
  begin
    AddType(0, 'газ');
    AddType(1, 'электрооборудование');
  end;
  if AField='Fasad' then
  begin
    AddType(0, 'панельная с окраской');
    AddType(1, 'панельный без окраски');
    AddType(2, 'кирпичный');
  end;
  if AField='Krov' then
  begin
    AddType(0, 'мягкая');
    AddType(1, 'мягкая с утеплителем');
    AddType(2, 'мягкая с профнастилом');
    AddType(3, 'ж\б');
    AddType(4, 'шиферная');
    AddType(5, 'металлическая');
  end;
  if AField='Voda' then
  begin
    AddType(0, 'бойлер');
    AddType(1, 'теплообменник');
  end;
  if AField='Hat' then
  begin
    AddType(0, 'панельное');
    AddType(1, 'отоп. приборы');
    AddType(2, 'капитальный ремонт');
  end;
end;

procedure CreateAtype(mt: TDataSet; AType: string);

  procedure AddType(ACode: Integer; AName: string);
  begin
    with mt do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  // mt_ktype
  CreateField(mt, 'Code', ftInteger);
  CreateField(mt, 'Name', ftString, 128);
  mt.Open;
  if AType = 'ktype' then
  begin
    AddType(0, 'Управляющая компания');
    AddType(1, 'Подрядная организация');
  end;
  if AType = 'itype' then
  begin
    AddType(0, 'Управляющая компания');
    AddType(1, 'Подрядная организация');
    AddType(2, 'Общий');
  end;
end;

{ -------------------------------------------------------------------------------
  FileVersionInfo
  ------------------------------------------------------------------------------- }
function GetFileVersionEx(const FileName: string): string;
type
  PDWORD = ^DWORD;
  PLangAndCodePage = ^TLangAndCodePage;

  TLangAndCodePage = packed record
    wLanguage: word;
    wCodePage: word;
  end;

  PLangAndCodePageArray = ^TLangAndCodePageArray;
  TLangAndCodePageArray = array [0 .. 0] of TLangAndCodePage;
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
  if (Length(FileName) = 0) or (not FileExists(FileName)) then
    Exit;
  loc_InfoBufSize := GetFileVersionInfoSize(PChar(FileName), loc_InfoBufSize);
  if loc_InfoBufSize > 0 then
  begin
    loc_VerBuf := nil;
    loc_InfoBuf := AllocMem(loc_InfoBufSize);
    try
      if not GetFileVersionInfo(PChar(FileName), 0, loc_InfoBufSize,
        loc_InfoBuf) then
        Exit;
      if not VerQueryValue(loc_InfoBuf, '\\VarFileInfo\\Translation',
        Pointer(lpTranslate), DWORD(cbTranslate)) then
        Exit;
      for i := 0 to (cbTranslate div SizeOf(TLangAndCodePage)) - 1 do
      begin
        if VerQueryValue(loc_InfoBuf, PChar(Format
              ('StringFileInfo\0%x0%x\FileVersion',
              [PLangAndCodePageArray(lpTranslate)[i].wLanguage,
              PLangAndCodePageArray(lpTranslate)[i].wCodePage])),
          Pointer(loc_VerBuf), DWORD(loc_VerBufSize)) then
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

{ TGridHelper }

function TGridHelper.FN(FName: string): Variant;
begin
  Result := TcxGridDBColumn(DataController.GetItemByFieldName(FName)).EditValue;
  if Result = Unassigned then
     Result:= null;
end;

{constructor TFormHelper.Create(AOwner: TComponent);
begin
  //inherited Create(AOwner);
  //Restore;
end;}

{procedure TFormHelper.CreateMD;
begin
  md:= TdxMemData.Create(self);
  CreateField(md,'STORE', ftBlob);
  md.Open;
end;

procedure TFormHelper.Restore;
var
  AStream: TMemoryStream;
  i: integer;
  FName: string;
begin
  for i := 0 to Self.ComponentCount -1 do begin
      if Self.Components[i].ClassType = TcxPropertiesStore then begin
        PropertiesStore:= Self.Components[i] as TcxPropertiesStore;
      end;
  end;
  if PropertiesStore = nil then Exit;
  CreateMD;
  //PropertiesStore.StorageType:= stStream;
  FName:= ExtractFilePath(Application.ExeName) + 'config\' + Self.Name+'.bin';
  if FileExists(FName) then
  begin
    md.LoadFromBinaryFile(FName);
    md.Last;
    AStream := Tmemorystream.Create;
    TblobField(md.FieldByName('STORE')).SaveToStream(AStream);

    // stream may be a TMemoryStream initialized from the registry
    try
      //DecodeStream(AStream);
      AStream.Position:=0;
      //AStream.LoadFromFile(FName);

      //PropertiesStore.StorageType:= stStream;
      PropertiesStore.StorageStream := AStream;
      PropertiesStore.RestoreFrom;
    finally
      AStream.Free;
      md.Free;
    end;
  end;
end;

procedure TFormHelper.Store;
var
  AStream: Tmemorystream;
  FName: string;
  i: integer;
begin
  for i := 0 to Self.ComponentCount -1 do begin
      if Self.Components[i].ClassType = TcxPropertiesStore then begin
        PropertiesStore:= Self.Components[i] as TcxPropertiesStore;
      end;
  end;
  if PropertiesStore = nil then Exit;
  CreateMD;
  FName:= ExtractFilePath(Application.ExeName) + 'config\' + Self.Name+'.bin';
  AStream := Tmemorystream.Create;
  // stream may be a TMemoryStream saved to registry binary data
  try
    //PropertiesStore.StorageType:= stStream;
    PropertiesStore.StorageStream := AStream;
    PropertiesStore.StoreTo;
    AStream.Position:=0;
    md.Append;
    TBlobField(md.FieldByName('STORE')).LoadFromStream(AStream);
    md.Post;
    md.SaveToBinaryFile(FName);
  finally
    AStream.Free;
    md.Free;
  end;
end;}

function GetWord(S: String; Nomer: integer; Ch: char): String;
var
  WPoz,i: integer;
begin
  WPoz:=1; Result:='';
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

{ TMemDataHelper }


procedure TMemDataHelper.AddField(aFieldName: string; aFieldType: TFieldType;
  aDisplayName: string; AFieldSize: Integer; aVisible: Boolean;
  aIndex: Integer);
var
  AField : TField;
begin
  if FindField(aFieldName) = nil then
  if SupportedFieldType(aFieldType) then
  begin
    if aIndex = 0 then
        aIndex := FieldCount;

    AField:= DefaultFieldClasses[aFieldType].Create(nil);
    AField.Name := Name + aFieldName;
    AField.FieldName := aFieldName;
    AField.DisplayLabel :=aDisplayName;
    if AField is TStringField then
        TStringField(AField).Size := AFieldSize;
    if AField is TBlobField then
        TBlobField(AField).Size := AFieldSize;
    if AField is TFloatField then
    begin
      TFloatField(AField).Currency := false;
      TFloatField(AField).Precision := 2
    end;
    AField.DataSet := self;
    AField.Calculated := False;
    AField.Lookup := False;
    AField.Visible := aVisible;
  end;
end;

procedure TMemDataHelper.ClearData;
begin
  Close;
  Open;
end;

procedure TMemDataHelper.ClearField;
var
  i: Integer;
begin
  Close;
  for i := 0 to FieldCount - 1 do
    Fields[0].Free;
  FieldDefs.Update;
end;

function TMemDataHelper.FN(const FieldName: string): TField;
begin
  Result := FindField(FieldName);
  if Result = nil then DatabaseErrorFmt(SFieldNotFound, [FieldName], Self);
end;


{ TcxMyGridTableViewExport }

procedure TcxMyGridTableViewExport.AddFooterMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  if CanShowMultiSummaries(True) then
    ARowCount := GetFooterLineCount(DataController.Summary.FooterSummaryItems)
  else
    ARowCount := RecordRowCount;
  R.Bottom := ATop + ARowCount * (DefaultRowHeight + cxGridFooterCellIndent);
  R := Rect(ALeft, R.Bottom, RecordWidth, R.Bottom + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taRightJustify, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.AddHeaderMessage(var ATop, ALeft: Integer; ARec: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount, Cnt: Integer;
begin
  inherited;
  if ARec>1 then
     Cnt:= (DefaultRowHeight*ARec+(DefaultRowHeight + cxGridFooterCellIndent))*-1 else
     Cnt:= (DefaultRowHeight+(DefaultRowHeight + cxGridFooterCellIndent))*-1;
  R.Top := Cnt;
  R := Rect(ALeft, R.Top, RecordWidth, R.Top + DefaultRowHeight);
  //cmDb.Style_Export
  Styles.GetViewParams(-1, nil, cmDb.Style_Export, AParams);            //.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taCenter, cxBordersAll, FooterCellBorderColor);
end;

constructor TcxMyGridTableViewExport.Create(AFileName: string;
  AExportType: Integer; AGridView: TcxCustomGridView; AGrid: TcxCustomGrid;
  AViewInfo: TcxCustomGridViewInfo; aHead: TStrings);
begin
  inherited Create(AFileName, AExportType, AGridView, AGrid, AViewInfo);
  fHead:= aHead;
end;

procedure TcxMyGridTableViewExport.CreateFooter(var ATop, ALeft: Integer);
begin
  inherited;
  AddFooterMessage(ATop, ALeft, GetCopyrightMessage);
end;

procedure TcxMyGridTableViewExport.CreateHeader(var ATop, ALeft: Integer);
var
  i, n: Integer;
begin
  inherited;
  n:=0;
  for i:=fHead.Count-1 downto 0 do begin
    AddHeaderMessage(ATop, ALeft, n+1, fHead[i]);
    inc(n);
  end;
end;

function TcxMyGridTableViewExport.GetCopyrightMessage: string;
begin
  Result := 'Сохранен '+DateTimeToStr(Date)+' '+TimeToStr(Time);
end;

{ TFibDSHelper }

procedure TFibDSHelper.SetWriteOpt(dsOpen: Boolean; SQL, Table, KeyFields,
  GeneratorName: string);
begin
  if SQL <> '' then
    SelectSQL.Text := SQL;
  AutoUpdateOptions.AutoReWriteSqls := true;
  AutoUpdateOptions.CanChangeSQLs := true;
  AutoUpdateOptions.UpdateOnlyModifiedFields := true;
  if Table='' then Table:=GetWord(self.Name,2,'_');
  AutoUpdateOptions.UpdateTableName := Table;
  if KeyFields='' then KeyFields:='CODE';
  AutoUpdateOptions.KeyFields := KeyFields;
  if GeneratorName='' then GeneratorName:=GetWord(Self.Name,2,'_')+'_GEN';
  AutoUpdateOptions.GeneratorName := GeneratorName;
  AutoUpdateOptions.WhenGetGenID := wgBeforePost;
  AutoCommit := true;
  if dsOpen = true then
     Open;
end;

end.





