unit cmDBUnit;

interface

uses
  SysUtils, Classes, Forms,
  FIB, FIBDatabase, pFIBDatabase, FIBQuery, frxGZip,
  pFIBCacheQueries, IB_Services, AppTerminateFrm, cmUtils, Vcl.Dialogs,
  pFIBScripter, pFIBErrorHandler, DB, FIBDataSet, pFIBDataSet, cxStyles,
  DSContainer, ImgList, Controls, cxGraphics, cxClasses, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView, cxGrid;

type
  TcmDb = class(TDataModule)
    DB: TpFIBDatabase;
    RT: TpFIBTransaction;
    WT: TpFIBTransaction;
    SecSrv: TpFIBSecurityService;
    Scripter: TpFIBScripter;
    Backup: TpFIBBackupService;
    Restore: TpFIBRestoreService;
    db1: TpFIBDatabase;
    trn1: TpFIBTransaction;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    src_kat: TDataSource;
    ds_kategory: TpFIBDataSet;
    ds_events: TpFIBDataSet;
    src_events: TDataSource;
    str1: TcxStyleRepository;
    styl1: TcxStyle;
    cxStyle1: TcxStyle;
    iml1: TcxImageList;
    stl_ReadOnly: TcxStyle;
    stl_green: TcxStyle;
    stl_blue: TcxStyle;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    FibContainer1: TDataSetsContainer;
    Style_Export: TcxStyle;
    ErrorHandler1: TpFibErrorHandler;
    ds_KONTRAGENT: TpFIBDataSet;
    ds_PIPLE: TpFIBDataSet;
    ds_SrvDogFinPlan: TpFIBDataSet;
    src_SrvDogFinPlan: TDataSource;
    GridRep: TcxGridViewRepository;
    v_FinPlanLookUp: TcxGridDBTableView;
    cl_CODE: TcxGridDBColumn;
    cl_NOMER: TcxGridDBColumn;
    clKONTRAGENT: TcxGridDBColumn;
    clNAME: TcxGridDBColumn;
    clD1: TcxGridDBColumn;
    clD2: TcxGridDBColumn;
    ds_FIRM: TpFIBDataSet;
    src_FIRM: TDataSource;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    ds_SRV: TpFIBDataSet;
    src_SRV: TDataSource;
    ds_SrvDog: TpFIBDataSet;
    src_SrvDog: TDataSource;
    ds_SIGNDOG: TpFIBDataSet;
    src_SIGNDOG: TDataSource;
    ds_HouseLookUp: TpFIBDataSet;
    src_HouseLookUp: TDataSource;
    src_SERVISWORK: TDataSource;
    ds_SERVISWORK: TpFIBDataSet;
    ds_CLASSMAT: TpFIBDataSet;
    src_smat: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure EHFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError;
      KindIBError: TKindIBError; var DoRaise: Boolean);
    procedure DBLostConnect(Database: TFIBDatabase; E: EFIBError;
      var Actions: TOnLostConnectActions);
    procedure ScripterExecuteError(Sender: TObject; StatementNo, Line: Integer;
      Statement: TStrings; SQLCode: Integer; const Msg: string; var doRollBack,
      Stop: Boolean);
    procedure DBAfterConnect(Sender: TObject);
    procedure DBErrorRestoreConnect(Database: TFIBDatabase; E: EFIBError;
      var Actions: TOnLostConnectActions);
    procedure FibContainer1DataSetEvent(DataSet: TDataSet;
      Event: TKindDataSetEvent);
    procedure FibContainer1DataSetError(DataSet: TDataSet;
      Event: TKindDataSetError; E: EDatabaseError; var Action: TDataAction);
    procedure ErrorHandler1FIBErrorEvent(Sender: TObject; ErrorValue: EFIBError;
      KindIBError: TKindIBError; var DoRaise: Boolean);
  private
    proc  :Integer;
    AttemptRest :Integer;
    fTerminated: boolean;
    fBackUpResult: boolean;
    fRestoreResult: boolean;
    fLogFileName: string;
    function GetConnected: boolean;
    procedure BackupMessage(Sender: TObject; const Text: string);
    procedure RestoreMessage(Sender: TObject; const Text: string);
  public
    //соединение с БД
    property Connected: boolean read GetConnected;
    procedure OpenDataBase(ADBName,UserName,Password,RoleName: string); overload;
    procedure CreateDataBase(ADBName,UserName,Password: string);
    procedure CloseDataBase;
    //работа с SecurityService
    function GetServerName: string;
    procedure OpenSecurityService(ADBName,UserName,Password,LibName: string;
                                  Protocol: TProtocol = TCP);
    //выполнение "быстрых" запросов
    function GetQuery(SQL: string; T: TFIBTransaction = nil): TFIBQuery;
    procedure FreeQuery(AQuery: TFIBQuery);
    function GetSQLValue(ASQL: string; T: TFIBTransaction = nil): string;
    procedure ExecQuery(ASQL: string; T: TFIBTransaction = nil);
    //buckup\restore базы данных
    function BackupDataBase(AServerName, ADataBaseName, ABackupName,
      APassword, ALogFileName: string): boolean;
    function RestoreDataBase(AServerName, ADataBaseName, ABackupName,
      APassword, ALogFileName: string): boolean;
  end;

  //исключение СУОН Комфорт
  dezException = class(Exception)

  end;

var
  cmDb: TcmDb;

implementation

{$R *.dfm}

//------------------------------------------------------------------------------
// Фильтр для паковки BLOB полей.
//------------------------------------------------------------------------------
{ Методы паковки BLOB полей}
procedure PackBuffer(var Buffer: PChar; var BufSize: LongInt);
var
  srcStream, dstStream: TMemoryStream;
begin
  srcStream:=TMemoryStream.Create;
  dstStream:=TMemoryStream.Create;
  try
    srcStream.WriteBuffer(Buffer^, BufSize);
    srcStream.Position := 0;
    frxDeflateStream(srcStream, dstStream);
    srcStream.Free;
    srcStream := nil;
    BufSize := dstStream.Size;
    dstStream.Position := 0;
    ReallocMem(Buffer, BufSize);
    dstStream.ReadBuffer(Buffer^, BufSize)
  finally
    if Assigned(srcStream) then srcStream.Free;
    dstStream.Free;
  end;
end;

procedure UnpackBuffer(var Buffer: PChar; var BufSize: LongInt);
var
  srcStream,dstStream: TStream;
begin
   srcStream := TMemoryStream.Create;
   dstStream := TMemoryStream.Create;
   try
     srcStream.WriteBuffer(Buffer^, BufSize);
     srcStream.Position := 0;
     frxInflateStream(srcStream, dstStream);
     srcStream.Free;
     srcStream:=nil;
     BufSize := dstStream.Size;
     dstStream.Position := 0;
     ReallocMem(Buffer, BufSize);
     dstStream.ReadBuffer(Buffer^, BufSize);
   finally
     if assigned(srcStream) then srcStream.Free;
     dstStream.Free;
   end;
end;

{.......................TcmDB......................................}
procedure TcmDb.CreateDataBase(ADBName, UserName, Password: string);
begin
 if Connected then CloseDataBase;
 with DB do
  begin
   DBParams.Clear;
   DBParams.Add('USER '#39+UserName+#39);
   DBParams.Add('PASSWORD '#39+Password+#39);
   DBParams.Add('PAGE_SIZE = 4096');
   DBParams.Add('DEFAULT CHARACTER SET WIN1251');
   DBName:=ADBName;
   SQLDialect:=3;
   CreateDataBase;
  end;
end;

procedure TcmDb.DataModuleCreate(Sender: TObject);
begin
 //регистрация упаковщиков для BLOB полей
 DB.RegisterBlobFilter(-15, @PackBuffer, @UnpackBuffer);
 fTerminated:=false;
 AttemptRest:=0;
end;


procedure TcmDb.DBAfterConnect(Sender: TObject);
begin
  ds_worker.Open;
  ds_kategory.Open;
  AttemptRest:=0;
end;

procedure TcmDb.DBErrorRestoreConnect(Database: TFIBDatabase; E: EFIBError;
  var Actions: TOnLostConnectActions);
begin
  Inc(AttemptRest);
  if AttemptRest>3 then
  begin
    cmCriticalMessage('Восстановление соединения невозможно.'#13+
                      ' Проверьте соединение с интернетом!'#13+
                      '     Приложение будет закрыто.');
    Actions := laTerminateApp;
  end;
end;

procedure TcmDb.DBLostConnect(Database: TFIBDatabase; E: EFIBError;
  var Actions: TOnLostConnectActions);
begin
 if cmMessageBox('Внимание! Потеряно соединение с базой данных.'#13+
                ' Попытаться восстановить соединение?') then
  Actions := laWaitRestore else
  Actions := laTerminateApp;
 {if not fTerminated then begin
  fTerminated:=true;
  Actions := laTerminateApp;
  cmCriticalMessage('Внимание! Потеряно соединение с базой данных.'#13+
                  'Приложение будет закрыто.');
 end;}
end;

procedure TcmDb.EHFIBErrorEvent(Sender: TObject; ErrorValue: EFIBError;
  KindIBError: TKindIBError; var DoRaise: Boolean);
begin
  if KindIBError = keLostConnect then begin
    DoRaise := false;
    Abort;
  end;
end;

procedure TcmDb.ErrorHandler1FIBErrorEvent(Sender: TObject;
  ErrorValue: EFIBError; KindIBError: TKindIBError; var DoRaise: Boolean);
begin
  if KindIBError = keException then begin //обработка firebird exception
    case ErrorHandler1.ExceptionNumber of
      17: begin // TRFACT_AU0
            //MessageDlg(ErrorValue.Message,  mtError, [mbOK], 0);
            DoRaise:=true;
            //raise dezException.Create(ErrorValue.Message);
          end;
    end;
  end;
end;

procedure TcmDb.ExecQuery(ASQL: string; T: TFIBTransaction = nil);
var
  Q: TFIBQuery;
begin
  if T=nil then
    T:=WT;
  Q:=GetQuery(ASQL, T);
  Q.ExecQuery;
  T.Commit;
  FreeQueryForUse(Q);
end;

procedure TcmDb.FibContainer1DataSetError(DataSet: TDataSet;
  Event: TKindDataSetError; E: EDatabaseError; var Action: TDataAction);
var
  s: string;
begin
  if Event = deOnPostError then begin
    Action:= daFail;
    DataSet.Cancel;
  end;
end;

procedure TcmDb.FibContainer1DataSetEvent(DataSet: TDataSet;
  Event: TKindDataSetEvent);
begin
  //
end;

procedure TcmDb.FreeQuery(AQuery: TFIBQuery);
begin
 FreeQueryForUse(AQuery);
end;

function TcmDb.GetConnected: boolean;
begin
 Result:=DB.Connected;
end;

function TcmDb.GetQuery(SQL: string; T: TFIBTransaction = nil): TFIBQuery;
begin
 if T=nil then T:=RT;
 T.Active:=true;
 Result:=GetQueryForUse(T, SQL);
end;

function TcmDb.GetServerName: string;
 var Poz: integer;
begin
 Result:='localhost';
 Poz:=Pos(':',DB.DatabaseName);
 if DB.DatabaseName[Poz+1]<>'\' then
  Result:=Copy(DB.DatabaseName, 1, Poz-1);
end;

function TcmDb.GetSQLValue(ASQL: string; T: TFIBTransaction): string;
var
  SQL: TFIBQuery;
begin
  Result:='';
  SQL:=GetQuery(ASQL, T);
  try
    SQL.ExecQuery;
    if SQL.RecordCount<>0 then
      Result:=SQL.Fields[0].AsString;
  finally
    SQL.Free;
  end;
end;

procedure TcmDb.OpenDataBase(ADBName, UserName, Password, RoleName: string);
begin
  //проверка наличия dll
  with DB do
  begin
    if Connected then
      CloseDataBase;
    ConnectParams.UserName:=UserName;
    ConnectParams.Password:=Password;
    ConnectParams.RoleName:=RoleName;
    DB.SQLDialect:=3;
    DBName:=ADBName;
    DB.Connected:=true;
  end;
end;

procedure TcmDb.BackupMessage(Sender: TObject; const Text: string);
const
  FinishStr = 'gbak:closing file, committing, and finishing';
begin
  if fLogFileName<>'' then
    cmSaveLog(fLogFileName, Text);
  if not fBackUpResult then
    fBackUpResult:=Copy(Text,1,Length(FinishStr))=FinishStr;
end;

procedure TcmDb.CloseDataBase;
var
  i: integer;
begin
  if not DB.Connected then
    Exit;
  //закрываем все активные транзакции к БД
  for i:=0 to DB.TransactionCount - 1 do
    if TpFIBTransaction(DB.Transactions[i]).InTransaction then
      TpFIBTransaction(DB.Transactions[i]).Rollback;
  DB.CloseDataSets;
  DB.Close;
end;

procedure TcmDb.OpenSecurityService(ADBName,UserName,Password,LibName: string;
                                       Protocol: TProtocol);
begin
 SecSrv.Active:=false;
 SecSrv.ServerName:=AnsiString(ADBName);
 SecSrv.LibraryName:=LibName;
 SecSrv.Protocol:=Protocol;
 SecSrv.Params.Values['User_Name']:=UserName;
 SecSrv.Params.Values['password']:=Password;
 SecSrv.Active:=true;
end;

function TcmDb.BackupDataBase(AServerName, ADataBaseName, ABackupName, APassword,
  ALogFileName: string): boolean;
begin
  fBackupResult:=false;
  fLogFileName:=ALogFileName;

  if AServerName='' then
    Backup.Protocol:=Local
  else
    Backup.Protocol:=TCP;
  Backup.ServerName:=AServerName;
  Backup.DatabaseName:=ADataBaseName;

  Backup.BackupFile.Clear;
  Backup.BackupFile.Add(ABackupName);

  Backup.Params.Values['user_name']:='sysdba';
  Backup.Params.Values['password']:=APassword;
  Backup.OnTextNotify:=BackupMessage;
  try
    Backup.Active:=true;
    Backup.ServiceStart;
  finally
    Backup.Active:=false;
  end;
  Result:=fBackUpResult;
end;

function TcmDb.RestoreDataBase(AServerName, ADataBaseName, ABackupName,
  APassword, ALogFileName: string): boolean;
begin
  fRestoreResult:=false;
  fLogFileName:=ALogFileName;

  if AServerName='' then
    Restore.Protocol:=Local
  else
    Restore.Protocol:=TCP;
  Restore.ServerName:=AServerName;

  Restore.DatabaseName.Clear;
  Restore.DatabaseName.Add(ADataBaseName);
  Restore.BackupFile.Clear;
  Restore.BackupFile.Add(ABackupName);

  Restore.Params.Values['user_name']:='sysdba';
  Restore.Params.Values['password']:=APassword;
  Restore.OnTextNotify:=RestoreMessage;

  try
    Restore.Active:=true;
    Restore.ServiceStart;
  finally
    Restore.Active:=false;
  end;
  Result:=fRestoreResult;
end;

procedure TcmDb.RestoreMessage(Sender: TObject; const Text: string);
const
  FinishStr = 'gbak:finishing, closing, and going home';
begin
  if fLogFileName<>'' then
    cmSaveLog(fLogFileName, Text);
  if not fRestoreResult then
    fRestoreResult:=Copy(Text,1,Length(FinishStr))=FinishStr;
end;

procedure TcmDb.ScripterExecuteError(Sender: TObject; StatementNo,
  Line: Integer; Statement: TStrings; SQLCode: Integer; const Msg: string;
  var doRollBack, Stop: Boolean);
begin
 {SysLog.Msg('->');
 SysLog.Msg('<@E:!Ошибка при обновлении метаданных:/>');
 SysLog.Msg(Msg);
 SysLog.Msg('<@G:SQL оператор:/>');
 SysLog.Msg(Statement.Text);
 SysLog.Msg('<-'#13' ');}
end;

end.
