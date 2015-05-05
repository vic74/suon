unit WorkerFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery, pFIBCacheQueries,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  AppUtils, cxPropertiesStore, dxSkinscxPCPainter, dxLayoutControl, cmDBUnit,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, dxSkinsdxBarPainter, dxBar, IB_Services, FBUserFrm,
  ImgList, BaseForm, dxmdaset, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxRibbonSkins, dxLayoutContainer, dxSkinDevExpressStyle, cxNavigator,
  cxCheckBox, KontragentRepository, dxSkinVS2010;

type
  TWorkerForm = class(TDezForm)
    prop1: TcxPropertiesStore;
    grp_root: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    cbb_kontr: TcxLookupComboBox;
    Itm_cbbKontr: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    src_kontr: TDataSource;
    ds_isp: TpFIBDataSet;
    src_isp: TDataSource;
    ds_ppl: TpFIBDataSet;
    src_ppl: TDataSource;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    clCODE: TcxGridDBColumn;
    clKONTRAGENT: TcxGridDBColumn;
    clPIPLE: TcxGridDBColumn;
    clUSERNAME: TcxGridDBColumn;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Delete: TdxBarButton;
    doc1: TdxBarDockControl;
    Itmlcntr1Item1: TdxLayoutItem;
    fibss1: TpFIBSecurityService;
    il1: TcxImageList;
    clARole: TcxGridDBColumn;
    ds_roles: TpFIBDataSet;
    src_roles: TDataSource;
    clv1USETR: TcxGridDBColumn;
    clv1GENLIST: TcxGridDBColumn;
    m_TR: TdxMemData;
    src_TR: TDataSource;
    ds_GenList: TpFIBDataSet;
    src_GenList: TDataSource;
    ppm1: TcxGridPopupMenu;
    clv1ISACTIVE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_kontrPropertiesChange(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure clv1USETRPropertiesEditValueChanged(Sender: TObject);
    procedure clv1ISACTIVEPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDs;
    procedure FBUserAdd(AName :string);
    procedure GrandRole(usr :string);
    procedure CreateTR;
  public
    { Public declarations }
  end;

var
  WorkerForm: TWorkerForm;

implementation

{$R *.dfm}


procedure TWorkerForm.btn_AddClick(Sender: TObject);
var
  F :TFBUserForm;
begin
  //если нет записей или имя пользователя уже присвоено - то выходим
  if ds_worker.IsEmpty then Exit;
  if ds_worker.FN('USERNAME').AsString<>'' then Exit;

  F:=TFBUserForm.Create(Application);
  F.ShowModal;
  if F.ModalResult=mrOk then
  begin
    if Trim(F.FBUser)='' then Exit;
    fibss1.Params.Values['user_name']:=cmDB.DB.DBParams.Values['user_name'];
    fibss1.Params.Values['password']:=cmDB.DB.DBParams.Values['password'];
    fibss1.Active:=True;
    fibss1.DisplayUser(F.FBUser);
    if fibss1.UserInfoCount>0 then
    begin
      ShowMessage('Пользователь уже существует!'+#10#13+
                   'Выберите другое имя пользователя');
      Exit;
    end;
    try
      fibss1.SecurityAction:=ActionAddUser;
      fibss1.UserName:=F.FBUser;
      fibss1.Password:=F.FBpass;
      fibss1.AddUser;
      GrandRole(F.FBUser);
      FBUserAdd(F.FBUser);
    finally
      fibss1.Active:=False;
    end;
  end;
  F.Free;
end;

procedure TWorkerForm.GrandRole(usr :string);
var
  Q :TFIBQuery;
begin
  if not cmDB.WT.Active then cmDB.WT.StartTransaction;
  Q:=GetQueryForUse(cmDB.WT,'GRANT RDB$ADMIN TO '+usr);
  Q.ExecQuery;
  cmdb.WT.Commit;
end;

procedure TWorkerForm.FBUserAdd(AName :string);
begin
  v1.BeginUpdate;
  with ds_worker do
  begin
    Edit;
    FN('USERNAME').AsString:=AName;
    Post;
  end;
  v1.EndUpdate;
end;
{-------------------------------------------------------------------------------
  btn_DeleteClick|Удаляем пользователя
-------------------------------------------------------------------------------}
procedure TWorkerForm.btn_DeleteClick(Sender: TObject);
var
  AUser :string;
begin
  //если нет записей или имя пользователя не присвоено - то выходим
  if ds_worker.IsEmpty then Exit;
  AUser:=ds_worker.FN('USERNAME').AsString;
  if AUser='' then Exit;
  if Application.MessageBox('Вы действительно хотите удалить пользователя' +
    #13#10 + '   базы данных?', 'Внимание!', MB_YESNO + MB_ICONWARNING +
    MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    fibss1.Active:=True;
    fibss1.DisplayUser(AUser);
    if fibss1.UserInfoCount>0 then
    begin
      try
        fibss1.SecurityAction:=ActionDeleteUser;
        fibss1.UserName:=AUser;
        fibss1.DeleteUser;
        FBUserAdd('');
      finally
        fibss1.Active:=False;
      end;
    end;
  end;
end;

procedure TWorkerForm.cbb_kontrPropertiesChange(Sender: TObject);
begin
 if cbb_kontr.EditValue=null then Exit;
  with ds_worker do
  begin
    Close;
    MainWhereClause:='KONTRAGENT=:kontr';
    ParamByName('kontr').AsInteger:=cbb_kontr.EditValue;
    Open;
  end;
end;

procedure TWorkerForm.clv1ISACTIVEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TWorkerForm.clv1USETRPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TWorkerForm.CreateTR;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with m_TR do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(m_TR,'CODE',ftInteger);
  CreateField(m_TR,'NAME',ftString,128);
  m_TR.Open;
  AddType(0,'не определено');
  AddType(1,'отв. исполнитель');
  AddType(2,'сметчик');
end;

procedure TWorkerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TWorkerForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
  fController:= TKontragentController.Create;
  OpenDs;
  DSOptoins(ds_worker,'','WORKER','CODE','WORKER_GEN');
  fibss1.ServerName:=ServName;
  fibss1.Protocol:=TCP;
  CreateTR;
end;

procedure TWorkerForm.OpenDs;
begin
  {$REGION 'Kontrgent'}
  src_kontr.DataSet:= fController.GetActiveKontrWithDez(True, True);
  {$ENDREGION}
  ds_isp.Open;
  ds_ppl.Open;
  ds_roles.Open;
  ds_GenList.Open;
  //cmDB.ds_worker.Open;
end;

initialization
 RegisterClass(TWorkerForm);
end.
