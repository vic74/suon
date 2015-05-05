unit TRProcess1Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, AddUSETRFrm,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle, KontragentRepository;

type
  TTRProcess1Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    Group1: TdxLayoutGroup;
    Group2: TdxLayoutGroup;
    Group3: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    ds_TRPLAN: TpFIBDataSet;
    src_TRPLAN: TDataSource;
    ds_TRFACT: TpFIBDataSet;
    src_TRFACT: TDataSource;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NCALC: TcxGridDBColumn;
    clv1NCALCDATE: TcxGridDBColumn;
    clv1NSUMMA: TcxGridDBColumn;
    clv1NDOP: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1PLANCODE: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2Y: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MLISTNAME: TcxGridDBColumn;
    clv2SUMY: TcxGridDBColumn;
    clv2SUM1: TcxGridDBColumn;
    clv2SUM2: TcxGridDBColumn;
    clv2SUM3: TcxGridDBColumn;
    clv2SUM4: TcxGridDBColumn;
    clv2SUMALL: TcxGridDBColumn;
    clv2SUMOST: TcxGridDBColumn;
    clv2SUMFACT: TcxGridDBColumn;
    clv2FSUM1: TcxGridDBColumn;
    clv2FSUM2: TcxGridDBColumn;
    clv2FSUM3: TcxGridDBColumn;
    clv2FSUM4: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KONTNAME: TcxGridDBColumn;
    clv2MANAGER: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2SHOWCODE: TcxGridDBColumn;
    clv2FACTCODE: TcxGridDBColumn;
    group5: TdxLayoutGroup;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    cbb_mlist: TcxLookupComboBox;
    itm_mlist: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    ds_mlist: TpFIBDataSet;
    ds_street: TpFIBDataSet;
    src_mlist: TDataSource;
    src_street: TDataSource;
    src_house: TDataSource;
    src_kontr: TDataSource;
    clv1STATE: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    cbb_manager: TcxLookupComboBox;
    itm_manager: TdxLayoutItem;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    clv2DU: TcxGridDBColumn;
    clv2DUNAME: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    lbl1: TcxLabel;
    itmlc1Item1: TdxLayoutItem;
    ppm1: TcxGridPopupMenu;
    ppm2: TcxGridPopupMenu;
    clv2NOTE: TcxGridDBColumn;
    cbb_Firm: TcxLookupComboBox;
    litm_lc1Item1: TdxLayoutItem;
    clv1FIRM: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Group2Button0Click(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_execClick(Sender: TObject);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure group5CaptionClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure cbb_housePropertiesEditValueChanged(Sender: TObject);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    {$REGION 'TRPLAN'}
    ///<summary>��������� ������ �� ����� �� ������� TRPLAN</summary>
    {$ENDREGION}
    procedure LoadPlan;
    {$REGION 'TRFACT'}
    ///<summary>�������� ������ �� ����� �� ������� TRFACT</summary>
    {$ENDREGION}
    procedure LoadFact;
    {$REGION '��������'}
    ///<summary>�������� ���������� ��������� �������������</summary>
    {$ENDREGION}
    function CheckParam :Boolean;
		{$REGION 'NewRec'}
		///<summary>��������� ��������� ������ � TRFACT �� ��������� � ������</summary>
		{$ENDREGION}
    procedure InsertNewRec;
		{$REGION '���������� ���������'}
		///<summary>���������� FIBDataSet ��� ������ � ������ ��������������</summary>
		{$ENDREGION}
    procedure PrepareDS;
		{$REGION 'Insert TRFAKT'}
		///<summary>��������� ������ �� TRPLAN � TRFAKT</summary>
		{$ENDREGION}
    procedure InsertFakt;
		{$REGION 'Insert TRPLAN'}
		///<summary><para>������� ������ �� TRFAKT </para>
    ///<para>��������� TRPLAN.FACTCODE=null</para></summary>
		{$ENDREGION}
    procedure InsertPlan;
		{$REGION '����� ����'}
		///<summary>������������ ������� ��������� ������� ����� where street=street</summary>
		{$ENDREGION}
    procedure ReopenHouse;
		{$REGION '�������� ����������'}
		///<summary>������� ��������� ������ ��������� �������������</summary>
		{$ENDREGION}
    function CheckInsertParam :Boolean;
    function GetManager(house :variant): Variant;
  public
    { Public declarations }
  end;

var
  TRProcess1Form: TTRProcess1Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, dezInfo, dezCommon;

{$R *.dfm}

function TTRProcess1Form.GetManager(house :variant): Variant;
var
  obj :TdzManager;
  mCode, mName :Variant;
begin
  obj:=TdzManager.Create;
  try
    obj.GetHouseManager(mCode,mName,cbb_kontr.EditValue,house);
    Result:=mCode;
  finally
    obj.Free;
  end;
end;

procedure TTRProcess1Form.btn_addClick(Sender: TObject);
begin
  InsertNewRec;
end;

procedure TTRProcess1Form.btn_execClick(Sender: TObject);
begin
  LoadPlan;
  LoadFact;
end;

procedure TTRProcess1Form.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  ds_TRFACT.Close;
  ds_TRPLAN.Close;
  ds_house.Close;
end;

procedure TTRProcess1Form.cbb_housePropertiesEditValueChanged(Sender: TObject);
begin
  cbb_manager.EditValue:=GetManager(cbb_house.EditValue);
end;

procedure TTRProcess1Form.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  ReopenHouse;
end;

function TTRProcess1Form.CheckInsertParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), '������', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  if ds_TRFACT.State in [dsInactive] then
     raise EMyException.Create('����������� ������!');
  Result:=true;
  if cbb_manager.EditValue=null then
  begin
    Rez('������� ���������!',cbb_manager);
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    Rez('������� ���!',cbb_house);
    Exit;
  end;
  if cbb_mlist.EditValue=null then
  begin
    Rez('������� ��� ������!',cbb_mlist);
    Exit;
  end;
  if cbb_kontr.EditValue=null then
  begin
    Rez('������� ��������� �����������!',cbb_mlist);
    Exit;
  end;
end;

function TTRProcess1Form.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), '������', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=false;
  if VarIsType(msk_Y.EditingValue,[varNull, varEmpty]) then
     raise dezException.Create('������� ���!');
  if VarIsType(cbb_Firm.EditValue,[varNull, varEmpty]) then
     raise dezException.Create('������� �����������!');
  Result:=True;
end;

procedure TTRProcess1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TTRProcess1Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  PrepareDS;
end;

procedure TTRProcess1Form.Group2Button0Click(Sender: TObject);
begin
  InsertNewRec;
end;

procedure TTRProcess1Form.group5CaptionClick(Sender: TObject);
begin
  group5.Expanded:= not group5.Expanded;
end;

procedure TTRProcess1Form.InsertFakt;
var
  F :TAddUSETRForm;
begin
  //SplashVisibility(true,'��������� ��������� ��������');
  if VarIsType(v2.FN('CODE'),[varEmpty, varNull]) then Exit;
  if VarIsType(cbb_Firm.EditValue,[varEmpty, varNull]) then Exit;
  try
    F:=TAddUSETRForm.Create(self);
    if F.ShowModal=mrOk then begin
      with ds_TRFACT do begin
        Append;
        FN('DATA').AsVariant:= Date;
        FN('HOUSE').AsVariant:= gFN(v2,'HOUSE');
        FN('MLIST').AsVariant:= gFN(v2,'MLIST');
        if VarIsType(F.cbb_kontr.EditValue,[varEmpty, varNull]) then
          FN('KONTRAGENT').AsVariant:= gFN(v2,'KONTRAGENT') else
          FN('KONTRAGENT').AsVariant:=F.cbb_kontr.EditValue;
        FN('MANAGER').AsVariant:= F.cbb_manager.EditValue;
        FN('STATE').AsVariant:= 0;
        FN('PLANCODE').AsVariant:= gFN(v2,'CODE');
        FN('DPLACE').AsVariant:=gFN(v2,'NOTE');
        FN('FIRM').AsVariant:= cbb_Firm.EditValue;
        Post;
      end;
    end else Exit;
    //����� ����� � ������
    with ds_TRPLAN do begin
      Edit;
      FN('FACTCODE').AsVariant:=ds_TRFACT.FN('CODE').AsVariant;
      Post;
    end;
  finally
    //SplashVisibility(false);
    F.Free;
  end;
    LoadFact;
    LoadPlan;
end;

procedure TTRProcess1Form.InsertNewRec;
var
  manager :Variant;
begin
  if not CheckInsertParam then Exit;
  //manager:=GetManager(cbb_house.EditValue);
  with ds_TRFACT do begin
    Append;
      FN('DATA').AsVariant:= Date;
      FN('HOUSE').AsVariant:= cbb_house.EditValue;
      FN('MLIST').AsVariant:= cbb_mlist.EditValue;
      FN('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
      //cbb_manager.EditValue:=manager;
      FN('MANAGER').AsVariant:= cbb_manager.EditValue;
      FN('STATE').AsVariant:= 0;
    Post;
  end;
end;

procedure TTRProcess1Form.InsertPlan;
var
  Q :TFIBQuery;
  code, plan :Variant;
begin
  code:=ds_TRFACT.FN('CODE').AsVariant;
  plan:=ds_TRFACT.FN('PLANCODE').AsVariant;
  if code=null then Exit;
  if plan<>null then begin
    Q:=GetQueryForUse(cmdb.WT,'UPDATE TRPLAN SET FACTCODE=null '+
                              'WHERE FACTCODE=:cod');
    Q.Options := [qoStartTransaction, qoAutoCommit];
    Q.ParamByName('cod').AsVariant := code;
    try
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  //������� ������ �� �����
  ds_TRFACT.Delete;
  //������������� ����
  LoadPlan;
end;

procedure TTRProcess1Form.LoadFact;
begin
  if not CheckParam then exit;
  SplashVisibility(true,'�������� ������ �� �����.');
  try
    with ds_TRFACT do
    begin
      Close;
      MainWhereClause:='TF.STATE=0 and TF.FIRM=:FIRM';
      ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
      Open;
    end;
  finally
    SplashVisibility(false);
  end;
end;

procedure TTRProcess1Form.LoadPlan;
begin
  if not CheckParam then exit;
  SplashVisibility(true,'�������� ������ �� �����.');
  try
    with ds_TRPLAN do
    begin
      Close;
      MainWhereClause:='tp.STATE<>1 and coalesce(tp.FACTCODE,0)=0 and tp.Y=:Y and tp.mlist<>1 and TP.FIRM = :FIRM';
      ParamByName('Y').AsVariant:=msk_Y.EditValue;
      ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
      Open;
    end;
  finally
    SplashVisibility(false);
  end;
end;

procedure TTRProcess1Form.ReopenHouse;
begin
  if ds_house.State = dsInactive then
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue<>null then
    begin
      ParamByName('FIRM').AsVariant:=cbb_Firm.EditValue;
      Open;
      //
      Filtered:= False;
      Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
      Filtered:= True;
    end;
  end else with ds_house do
  begin
    Filtered:= False;
    Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
    Filtered:= True;
  end;
end;

procedure TTRProcess1Form.PrepareDS;
begin
  DSOptoins(ds_TRPLAN,'','TRPLAN','CODE','TRPLAN_GEN',false);
  DSOptoins(ds_TRFACT,'','TRFACT','CODE','TRFACT_GEN',false);
  ds_street.Open;
  ds_mlist.Open;
  {$REGION 'Kontragent'}
  src_kontr.DataSet:= fController.GetActiveKontrShort();
  {$ENDREGION}
  ds_worker.Open;
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
end;

procedure TTRProcess1Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_INSERT :InsertNewRec;
    VK_F3     :InsertPlan;
  end;
end;

procedure TTRProcess1Form.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : InsertFakt;
  end;
  if (ssShift in Shift) and (ssCtrl in Shift) and (key=81) then
  ShowMessage(TpFIBDataSet(TcxGridDBTableView(Sender).DataController.DataSet).ReadySelectText);
end;

initialization
 RegisterClass(TTRProcess1Form);
end.
