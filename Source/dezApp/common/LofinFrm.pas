unit LofinFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinLondonLiquidSky, dxSkinscxPCPainter, cxContainer, cxEdit,
  FIBQuery, pFIBCacheQueries, BaseForm, pFIBProps,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet,IniFiles, cxPropertiesStore,
  dxLayoutLookAndFeels, AppUtils, dxSkinMcSkin, dxSkinsDefaultPainters, cmDBUnit,
  dxSkinOffice2010Blue, cxLabel, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxCheckBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdTelnet;

type
  TLoginForm = class(TDezModalForm)
    lGrp: TdxLayoutGroup;
    lcontr1: TdxLayoutControl;
    lGrp1: TdxLayoutGroup;
    lGrp2: TdxLayoutGroup;
    cbb_user: TcxLookupComboBox;
    Item_cbUser: TdxLayoutItem;
    edt_pass: TcxTextEdit;
    Item_pass: TdxLayoutItem;
    btn_Ok: TcxButton;
    Item_bntOk: TdxLayoutItem;
    btn_cancel: TcxButton;
    Item_btnCancel: TdxLayoutItem;
    lGrp3: TdxLayoutGroup;
    DS1: TpFIBDataSet;
    ds2: TDataSource;
    cbb_base: TcxComboBox;
    ItemBase: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    LaFls1: TdxLayoutLookAndFeelList;
    LafScin1: TdxLayoutSkinLookAndFeel;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    txt_usr: TcxTextEdit;
    Itm_usr: TdxLayoutItem;
    grp4: TdxLayoutGroup;
    cbb_kontr: TcxLookupComboBox;
    litlcontr1Item1: TdxLayoutItem;
    ds_KONTR: TDataSource;
    cbb_PIPLE: TcxLookupComboBox;
    litlcontr1Item11: TdxLayoutItem;
    ds_PIPLE: TDataSource;
    chk_pswd: TcxCheckBox;
    litlcontr1Item12: TdxLayoutItem;
    grplcontr1Group1: TdxLayoutGroup;
    grplcontr1Group2: TdxLayoutGroup;
    ds_kontragent: TpFIBDataSet;
    idtl1: TIdTelnet;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_passKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_basePropertiesEditValueChanged(Sender: TObject);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_PIPLEPropertiesEditValueChanged(Sender: TObject);
    procedure chk_pswdPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    //SFD: TglSmallFontsDefence;
    currRole, currWorker: Variant;
    currPass: Variant;
    procedure CreateParams(var Params: TCreateParams); override;
    function GetDbName(Sect :string) :string;
    function ScanPassword: boolean;
    procedure LoadSettings(ini :TIniFile);
    procedure LoadUsers;
    function ConnectDb(basename :string; user: string='sysdba';
                              pass :string='victris') :Boolean;
    procedure GetWorkerParam(usr :string);
    function GetUpdate :Boolean;
    procedure SavePass(pswd: string);
    //
    procedure PrepareDS;
    procedure LoadConfig;
    function GetWorker: Integer;
    procedure GetPipleList;
    function CheckUser: Boolean;
    procedure GetKontrs;
    function GetRole: Variant;
    procedure SetUserCotext(worker: variant);
  public
    { Public declarations }
    ini :TIniFile;
  end;

var
  LoginForm: TLoginForm;

implementation

uses  cmUtils, dezCommon, SplashFrm, VersionInfo, ApplicationVersionHelper,
  LoadingSplash;

{$R *.dfm}

procedure TLoginForm.btn_cancelClick(Sender: TObject);
begin
 ModalResult:=2;
end;

procedure TLoginForm.btn_OkClick(Sender: TObject);
var
  DBName,User,Pass :string;
begin
 //DBName:=VarToStrDef(cbb_base.EditValue,'');
 //User:=txt_usr.Text;  //cbb_user.Text;
 //Pass:=edt_pass.Text;
 // with cbb_kontr.Properties.Grid.DataController do begin
 //   currRole:= Values[FocusedRecordIndex, 1]; //AROLE
 // end;
  currRole:= GetRole;
 if CheckUser then
 begin
    if currRole = 1 then
       User:= 'SYSDBA' else User:= 'B03';
    SetActiveWorker(currWorker, currRole, User);
    SetUserCotext(currWorker);
    //if User<>'SYSDBA' then  SavePass(Pass);
    if ParamStr(1) <> 'noupdate' then begin
      if not GetUpdate then begin
        SplashVisibility(True,'запуск приложения...');
        ModalResult:=1;
      end else begin
      Application.MessageBox(
        'Требуется перезапустить программу для применения обновления.'
        + #13#10 + 'Закройте это сообщение и запустите "Суон Комфорт"',
        'Внимание', MB_OK + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST);
        ModalResult:=mrClose;
      end;
    end else  begin
       SplashVisibility(True,'запуск приложения...');
       ModalResult:=1;
       BaseNameStr:=cbb_base.Text;
    end;
 end else
    ModalResult:=mrNone;
end;

procedure TLoginForm.cbb_basePropertiesEditValueChanged(Sender: TObject);
begin
  LoadConfig;
end;

procedure TLoginForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
 // GetPipleList;
   with cbb_kontr.Properties.Grid.DataController do begin
    currRole:= Values[FocusedRecordIndex, 1]; //AROLE
  end;
end;

procedure TLoginForm.cbb_PIPLEPropertiesEditValueChanged(Sender: TObject);
begin
  with cbb_PIPLE.Properties.Grid.DataController do begin
    //currRole := Values[FocusedRecordIndex, 2]; //AROLE
    currPass:= Values[FocusedRecordIndex, 1]; //pswd
  end;
  GetKontrs;
end;

function TLoginForm.GetWorker: Integer;
var
  Q, Q1 :TFIBQuery;
begin
  Result:= -1;
  Q:=GetQueryForUse(cmDb.RT,'SELECT CODE, AROLE from WORKER w where piple=:piple and kontragent = :kontr and w.ISACTIVE = 1');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('piple').AsVariant:= cbb_user.EditValue;
    Q.ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
    Q.ExecQuery;
    if Q.FN('CODE').AsVariant<>null then begin
       currRole:= Q.FN('AROLE').AsInteger;
       currWorker:= Q.FN('CODE').AsInteger;
       Result:= currWorker;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TLoginForm.GetWorkerParam(usr :string);
var
  Q, Q1 :TFIBQuery;
begin
  if not cmDB.RT.Active then cmDB.RT.StartTransaction;

  Q:=cmDB.GetQuery('select CODE,AROLE from WORKER where USERNAME=:usr');
  Q.ParamByName('usr').AsString:=UpperCase(usr);
  Q.ExecQuery;
  SetActiveWorker(Q.FN('CODE').AsInteger, Q.FN('AROLE').AsInteger, usr);
  cmDB.FreeQuery(Q);
end;

procedure TLoginForm.edt_passKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_RETURN then
 btn_OkClick(nil);
end;

procedure TLoginForm.SavePass(pswd: string);
var
  Q, Q1: TFIBQuery;
  code: Variant;
begin
  Q1:= GetQueryForUse(cmDb.RT,'select PIPLE from WORKER WHERE CODE=:CODE');
  try
    Q1.ParamByName('CODE').AsVariant:= ActiveWorker;
    Q1.ExecQuery;
    code:= Q1.FN('PIPLE').AsVariant;
  finally
    FreeQueryForUse(Q1);
  end;

  Q:= GetQueryForUse(cmDb.WT,'update PIPLE set PSWD = :PSWD where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    if code<>null then begin
      Q.ParamByName('CODE').AsVariant:= code;
      Q.ParamByName('PSWD').AsVariant:= pswd;
      Q.ExecQuery;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TLoginForm.ScanPassword: boolean;
var
  AValue :string;
begin
  with cbb_user.Properties.Grid.DataController do
    AValue := Values[FocusedRecordIndex, 2];
  Result:=AValue=edt_pass.Text;
end;

procedure TLoginForm.SetUserCotext(worker: variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'execute procedure SET_CONTEXT(:USER_ID)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('USER_ID').AsVariant:= currWorker;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //if Assigned(SFD) then
  //   FreeAndNil(SFD);
 Ini.Free;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
var
  FileName, Vers, DBName :string;
  i: Integer;
  id: Boolean;
begin
  Vers:= Application.Version['FileVersion'];
  grp4.Caption:='Версия  '+ Vers+
               '  от  '+DateToStr(GetFileDateTime(Application.ExeName));

//  idtl1.Host:= '192.168.1.212';
//  idtl1.Port:=3050;
//  try
//    idtl1.Connect;
//  except
//    raise Exception.Create('Error Message');
//  end;

  cbb_base.ItemIndex:=0;
  LoadConfig;
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
  SplashVisibility(false);
end;

function TLoginForm.CheckUser: Boolean;
var
  pass: string;
begin
  currWorker:= cbb_kontr.EditValue;
  Result:= currPass=edt_pass.Text;
  if not Result then
    Application.MessageBox('Невозможно подключиься к базе данных!' + #13#10 +
      '   Проверте правильность ввода пароля.', 'Ошибка', MB_OK + MB_ICONSTOP);
end;

procedure TLoginForm.chk_pswdPropertiesEditValueChanged(Sender: TObject);
begin
  if chk_pswd.Checked then
     edt_pass.Properties.EchoMode:= eemNormal else
     edt_pass.Properties.EchoMode:= eemPassword;
end;

function TLoginForm.ConnectDb(basename :string;user: string='sysdba';
                              pass :string='victris') :Boolean;
var
  DbName:string;
begin
  Result:=False;
  if basename<>'' then
  begin
      DbName:=GetDbName(basename);
      try
        cmDB.OpenDataBase(DbName,User,Pass,'RDB$ADMIN');
        Result:=cmDB.Connected;
      Except
        on E : Exception do
        begin
          cmShowMessage('Не возможно подключится к базе данных!'#10#13+
                       'Проверьте правильность ввода '#10#13+
                       'имени пользователя или пароля.',true);
          btn_Ok.Enabled:=False;
          Result:=False;
        end;
      end;
  end;
end;

procedure TLoginForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle OR WS_EX_APPWINDOW;
end;

procedure TLoginForm.LoadUsers;
var
  basename: string;
begin
  basename:=VarToStrDef(cbb_base.EditValue,'');
  if basename<>'' then
  begin
      try
        if ConnectDb(basename) then
        begin
          DS1.SelectSQL.Text:=
                  'select 0 Code,RDB$OWNER_NAME NAME,0 psw from RDB$ROLES';
          DS1.CloseOpen(false);
        end;
      finally

      end;
  end;
end;

procedure TLoginForm.PrepareDS;
begin
  //cmDb.ds_KONTRAGENT.CloseOpen(false);
  //cmDb.ds_PIPLE.CloseOpen(false);
  DS1.CloseOpen(false);
end;

function TLoginForm.GetDbName(Sect :string) :string;
var
  FileName :string;
begin
  FileName:=ExtractFilePath(Application.ExeName)+'config\conf.ini';
  if FileExists(FileName) then
  begin
    Ini := TIniFile.Create(FileName);
    try
      Result:= ini.ReadString('Base',Sect,'');
      ServName:=AnsiString(ini.ReadString('FBServ','ServName','localhost'));
      if ini.ReadInteger('FormOptions','MultiForm',0)=1 then
      SetFormOptions(true) else
      SetFormOptions(false);
    finally

    end;
  end else
  Result:='';
end;


procedure TLoginForm.GetKontrs;
begin
  with ds_kontragent do begin
    Close;
    ParamByName('piple').AsVariant:= cbb_PIPLE.EditValue;
    Open;
  end;
end;

procedure TLoginForm.GetPipleList;
begin
 { with DS1 do begin
    Close;
    ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
    Open;
  end;
  cbb_PIPLE.Refresh;}
end;

function TLoginForm.GetRole: Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT, 'Select AROLE, KONTRAGENT from Worker where CODE=:code');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('code').AsVariant:= cbb_kontr.EditValue;
    Q.ExecQuery;
    Result:= Q.FN('AROLE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TLoginForm.GetUpdate: Boolean;
var
  F :TSplashForm;
  path :string;
begin
  Result:=false;
  self.FormStyle:=fsNormal;
  path :=ExtractFilePath(Application.ExeName);

  F:=TSplashForm.Create(self);
  lcontr1.Enabled:=false;
  try
    F.upType:=ActiveUserType;

    Result:= F.CheckUpdate;
  finally
    F.Free;
    lcontr1.Enabled:=true;
  end;
  self.FormStyle:=fsStayOnTop;
end;

procedure TLoginForm.LoadConfig;
var
  FileName, DBName :string;
begin
  FileName:=ExtractFilePath(Application.ExeName)+'config\conf.ini';
  if FileExists(FileName) then
  begin
    Ini := TIniFile.Create(FileName);
    try

      LoadSettings(Ini);
      DBName:=VarToStrDef(cbb_base.EditValue,'');
      if ConnectDb(DBName) then begin
        PrepareDS;
        LoadForm(prop1,Self.Name);
        //GetPipleList;
        GetKontrs;
      end;
      //LoadUsers;
    finally
      //Ini.Free;
    end;
  end else
  begin
    ShowMessage('Не найден файл конфигурации!');
    ModalResult:=2;
  end;
end;

procedure TLoginForm.LoadSettings(ini :TIniFile);
begin
  ini.ReadSection('Base',cbb_base.Properties.Items);
end;

end.
