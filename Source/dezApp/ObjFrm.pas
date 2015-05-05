unit ObjFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, cxCalendar, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, cxBarEditItem, dxBarExtItems,
  cxGridBandedTableView, cxGridDBBandedTableView, cxImageComboBox, FIBDataSet,
  pFIBDataSet, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxCheckBox, cxButtonEdit, cxCalc, cxTextEdit, frxClass, dxSkinDevExpressStyle,
  cxNavigator, cxDropDownEdit, frxExportRTF, KontragentRepository;

type
  TObjForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    bdt1: TdxBarDateCombo;
    bI_d1: TcxBarEditItem;
    bI_d2: TcxBarEditItem;
    bI_PO: TcxBarEditItem;
    btn_Refresh: TdxBarButton;
    ds_obj: TpFIBDataSet;
    src_Obj: TDataSource;
    src_kontr: TDataSource;
    br2: TdxBar;
    btn_SaveSmeta: TdxBarButton;
    dlgSave1: TSaveDialog;
    fds_TRFACT: TpFIBDataSet;
    lgrplc1Group1: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    LItemlc1Item11: TdxLayoutItem;
    src_trfact: TDataSource;
    lc1Item1: TdxLayoutItem;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv1TRDOPSTATE: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
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
    clv1PLANCODE: TcxGridDBColumn;
    clv1TRDOPSOG: TcxGridDBColumn;
    clv1TRDOP: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1DPLACE: TcxGridDBColumn;
    l3: TcxGridLevel;
    clv3SMETA: TcxGridDBColumn;
    ds_SMETA: TpFIBDataSet;
    doc1: TdxBarDockControl;
    LItemlc1Item2: TdxLayoutItem;
    br3: TdxBar;
    btn_NewRhase: TdxBarButton;
    btn_accept: TdxBarButton;
    sbI1: TdxBarSubItem;
    sbI2: TdxBarSubItem;
    btn_Akt1: TdxBarButton;
    btn_Akt2: TdxBarButton;
    btn_PrintAkt: TdxBarButton;
    dxbrsprtr1: TdxBarSeparator;
    btn_EditPhase: TdxBarButton;
    btn_AcceptEdit: TdxBarButton;
    btn_DelPhase: TdxBarButton;
    btn_DelAccept: TdxBarButton;
    btn_EditAkt1: TdxBarButton;
    btn_EditAkt2: TdxBarButton;
    dxbrsprtr2: TdxBarSeparator;
    btn_DelAkt1: TdxBarButton;
    btn_DelAkt2: TdxBarButton;
    vb2: TcxGridDBBandedTableView;
    clvb2CODE: TcxGridDBBandedColumn;
    clvb2TRFACT: TcxGridDBBandedColumn;
    clvb2POFACTDATE: TcxGridDBBandedColumn;
    clvb2PHASE: TcxGridDBBandedColumn;
    clvb2PODATE: TcxGridDBBandedColumn;
    clvb2PORESULT: TcxGridDBBandedColumn;
    clvb2POPLANDATE: TcxGridDBBandedColumn;
    clvb2OSDATE: TcxGridDBBandedColumn;
    clvb2OSRESULT: TcxGridDBBandedColumn;
    clvb2OSDOC: TcxGridDBBandedColumn;
    clvb2FACTCOST: TcxGridDBBandedColumn;
    clvb2DOC: TcxGridDBBandedColumn;
    clvb2AKTTYPE: TcxGridDBBandedColumn;
    report: TfrxReport;
    ds_AKT2: TpFIBDataSet;
    ds_AKT1: TpFIBDataSet;
    clv3FSTATENAME: TcxGridDBColumn;
    ds_TRlFACT: TpFIBDataSet;
    src_TRlFACT: TDataSource;
    ds_objL: TpFIBDataSet;
    src_objl: TDataSource;
    ds_AKT2Lift: TpFIBDataSet;
    ds_AKT1Lift: TpFIBDataSet;
    dtb_type: TcxBarEditItem;
    cbb_type: TdxBarCombo;
    btn_Excel: TdxBarButton;
    frxrtfxprt1: TfrxRTFExport;
    itm_InviteOnly: TcxBarEditItem;
    itm_OpenOnly: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_RefreshClick(Sender: TObject);
    procedure vb1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure vb1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_SaveSmetaClick(Sender: TObject);
    procedure btn_NewRhaseClick(Sender: TObject);
    procedure btn_acceptClick(Sender: TObject);
    procedure btn_EditPhaseClick(Sender: TObject);
    procedure btn_AcceptEditClick(Sender: TObject);
    procedure btn_DelPhaseClick(Sender: TObject);
    procedure btn_DelAcceptClick(Sender: TObject);
    procedure btn_Akt1Click(Sender: TObject);
    procedure btn_EditAkt1Click(Sender: TObject);
    procedure btn_Akt2Click(Sender: TObject);
    procedure btn_EditAkt2Click(Sender: TObject);
    procedure btn_DelAkt1Click(Sender: TObject);
    procedure btn_DelAkt2Click(Sender: TObject);
    procedure btn_PrintAktClick(Sender: TObject);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ds_objAfterOpen(DataSet: TDataSet);
    procedure cbb_typeChange(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure itm_InviteOnlyPropertiesEditValueChanged(Sender: TObject);
    procedure itm_InviteOnlyPropertiesChange(Sender: TObject);
    procedure itm_InviteOnlyCurChange(Sender: TObject);
  private
    { Private declarations }
    stype: Integer;
    fController: TKontragentController;
    procedure PrepareDS;
    procedure OpenDS;
    procedure SetRight;
    procedure MakeData;
    procedure GetMainData;
    procedure GetLiftData;
    procedure EditByOS;
    procedure SetSmetaBntEnable;
    procedure SaveToHDD;
    procedure CreatePhase; //�������� ����� ������
    procedure EditPhase;   //�������������� ����� ������
    procedure DeletePhase; //�������� ����� ������
    procedure AcceptWork;  //�������� ������
    procedure EditWork;    //�������������� ���������� � �������� ������
    procedure DeleteWork;  //�������� ���������� � �������� ������
    procedure CreateAkt1;  //������� ��� �������� ��������
    procedure EditAkt1;    //������������� ��� �������� ��������
    procedure DeleteAkt1;  //������� ��� �������� ��������
    procedure PrintAkt1;   //������ ��� �������� ��������

    procedure CreateAkt2;  //������� ��� ������������������� ������� �����
    procedure EditAkt2;    //������������� ��� ������������������� ������� �����
    procedure DeleteAkt2;  //������� ��� ������������������� ������� �����
    procedure PrintAkt2;   //������ ��� ������������������� ������� �����

    procedure SetRightForPhase; //��������� ����������� ������� ���� ��� ������ �����
    procedure ChangeSmetaSQL;
  public
    { Public declarations }
  end;

var
  ObjForm: TObjForm;

implementation

uses cmDBUnit, dezCommon, ObjPoEditFrm, ObjOSEditFrm, ObjAkt1Frm, ObjAkt2Frm,
  SQLList;

{$R *.dfm}


procedure TObjForm.AcceptWork;
var
  F: TObjOSEditForm;
begin
  F:= TObjOSEditForm.Create(self);
  try
    F.Code:= vb2.GetColumnByFieldName('CODE').EditValue;
    F.TrFact:= v3.GetColumnByFieldName('CODE').EditValue;
    F.stype:= stype;
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.btn_acceptClick(Sender: TObject);
begin
  AcceptWork;
end;

procedure TObjForm.btn_AcceptEditClick(Sender: TObject);
begin
  EditWork;
end;

procedure TObjForm.btn_Akt1Click(Sender: TObject);
begin
  CreateAkt1;
end;

procedure TObjForm.btn_Akt2Click(Sender: TObject);
begin
  CreateAkt2;
end;

procedure TObjForm.btn_DelAcceptClick(Sender: TObject);
begin
  DeleteWork;
end;

procedure TObjForm.btn_DelAkt1Click(Sender: TObject);
begin
  DeleteAkt1;
end;

procedure TObjForm.btn_DelAkt2Click(Sender: TObject);
begin
  DeleteAkt2;
end;

procedure TObjForm.btn_DelPhaseClick(Sender: TObject);
begin
  DeletePhase;
end;

procedure TObjForm.btn_EditAkt1Click(Sender: TObject);
begin
  EditAkt1;
end;

procedure TObjForm.btn_EditAkt2Click(Sender: TObject);
begin
  EditAkt2;
end;

procedure TObjForm.btn_EditPhaseClick(Sender: TObject);
begin
  EditPhase;
end;

procedure TObjForm.btn_ExcelClick(Sender: TObject);
begin
  SimpleExportInExcel(grd3);
end;

procedure TObjForm.btn_NewRhaseClick(Sender: TObject);
begin
  CreatePhase;
end;

procedure TObjForm.btn_PrintAktClick(Sender: TObject);
begin
  case vb2.GetColumnByFieldName('AktType').EditValue of
    0 : PrintAkt2;          //��� ������������������� ������� �����
    1 : PrintAkt1; //��� �������� ��������
    else
      raise dezException.Create('������ ����������� ���� ����!');
  end;
end;

procedure TObjForm.btn_RefreshClick(Sender: TObject);
begin
  MakeData;
end;

procedure TObjForm.btn_SaveSmetaClick(Sender: TObject);
begin
  SaveToHDD;
end;

procedure TObjForm.cbb_typeChange(Sender: TObject);
begin
  stype:= cbb_type.ItemIndex;
end;

procedure TObjForm.ChangeSmetaSQL;
var
  tableName : string;
begin
  case stype of
    0: tableName := 'TRFACT';
    1: tableName := 'TRLFACT';
  end;
  with ds_SMETA do begin
    Close;
    SelectSQL.Text:= 'SELECT CODE, SMETA, FNAME FROM '+tableName+' WHERE CODE = :COD';
  end;
end;

procedure TObjForm.CreateAkt1;
var
  F: TObjAkt1Form;
  code: Variant;
  fio: string;
begin
  code:= vb2.GetColumnByFieldName('CODE').EditValue;
  fio:= VarToStrDef(v3.GetColumnByFieldName('FIO').EditValue,'');
  F:= TObjAkt1Form.Create(Self, code, false, fio, stype);
  F.stype:= stype;
  F.fDS:= ds_obj;
  try
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.CreateAkt2;
var
  F: TObjAkt2Form;
  code: Variant;
begin
  code:= vb2.GetColumnByFieldName('CODE').EditValue;
  F:= TObjAkt2Form.Create(Self, code, False, stype);
  F.fDS:= ds_obj;
  F.stype:= stype;
  try
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.CreatePhase;
var
  F: TObjPoEditForm;
begin
  F:= TObjPoEditForm.Create(self, null, False, stype);
  F.stype:= stype;
  try
    F.TrFact:= v3.GetColumnByFieldName('CODE').EditValue;
    if F.ShowModal = mrOk then begin
       //refresh dataset
      ds_obj.CloseOpen(false);

    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.DeleteAkt1;
var
  Q: TFIBQuery;
  i: Integer;

  function GetSQL: string;
  begin
    case stype of
      0: Result:='delete from TRFACT$OBJ$TYPE where (ID = :ID)';
      1: Result:='delete from TRLFACT$OBJ$TYPE where (ID = :ID)';
    end;
  end;

begin
  if MessageBox(Handle, '�� ������������ ������ ������� ���?',
    '��������������', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    Q:=GetQueryForUse(cmDb.WT, GetSQL);
    i:= vb2.Controller.FocusedRowIndex;
    try
      Q.Options:=[qoStartTransaction, qoAutoCommit];
      Q.ParamByName('ID').AsVariant:= vb2.GetColumnByFieldName('OSDOC').EditValue;
      Q.ExecQuery;
      ds_obj.CloseOpen(False);

    finally
      vb2.Controller.FocusRecord(i, true);

      FreeQueryForUse(Q);
    end;
  end;
end;

procedure TObjForm.DeleteAkt2;
var
  Q: TFIBQuery;
  i: Integer;

  function GetSQL: string;
  begin
    case stype of
      0: Result:='delete from TRFACT$OBJ$TYPE where (ID = :ID)';
      1: Result:='delete from TRLFACT$OBJ$TYPE where (ID = :ID)';
    end;
  end;

begin
  if MessageBox(Handle, '�� ������������ ������ ������� ���?',
    '��������������', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    Q:=GetQueryForUse(cmDb.WT, GetSQL);
    i:= vb2.Controller.FocusedRowIndex;
    try
      Q.Options:=[qoStartTransaction, qoAutoCommit];
      Q.ParamByName('ID').AsVariant:= vb2.GetColumnByFieldName('OSDOC').EditValue;
      Q.ExecQuery;
      ds_obj.CloseOpen(False);
    finally
      vb2.Controller.FocusRecord(i, true);
      FreeQueryForUse(Q);
    end;
  end;
end;

procedure TObjForm.DeletePhase;
begin
  if (vb2.GetColumnByFieldName('CODE').EditValue <> null)
  and (vb2.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
  if MessageBox(Handle,
    '�� ������������ ������ ������� ���� ������?',
    '��������������', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  ds_obj.Delete;
end;

procedure TObjForm.DeleteWork;
begin
  if (vb2.GetColumnByFieldName('CODE').EditValue <> null)
  and (vb2.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
  if MessageBox(Handle,
    '�� ������������ ������ ������� ���������� � �������� ������?',
    '��������������', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  with ds_obj do begin
    Edit;
    FN('OSDATE').AsVariant:= null;
    FN('OSRESULT').AsVariant:= null;
    FN('OSDOC').AsVariant:= null;
    FN('FACTCOST').AsVariant:= null;
    Post;
  end;
end;

procedure TObjForm.ds_objAfterOpen(DataSet: TDataSet);
begin
  SetRightForPhase;
end;

procedure TObjForm.EditAkt1;
var
  F: TObjAkt1Form;
  code: Variant;
  fio: string;
begin
  fio:= VarToStrDef(v3.GetColumnByFieldName('FIO').EditValue,'');
  code:= vb2.GetColumnByFieldName('CODE').EditValue;
  F:= TObjAkt1Form.Create(Self, code, true,fio);
  F.stype:= stype;
  try
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.EditAkt2;
var
  F: TObjAkt2Form;
  code: Variant;
begin
  code:= vb2.GetColumnByFieldName('CODE').EditValue;
  F:= TObjAkt2Form.Create(Self, code, true, stype);
  F.stype:= stype;
  try
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.EditByOS;
var
  F: TObjOSEditForm;
begin
  F:= TObjOSEditForm.Create(self);
  try
    F.Code:= v3.GetColumnByFieldName('CODE1').EditValue;
    F.TrFact:= v3.GetColumnByFieldName('CODE').EditValue;
    F.stype:= stype;
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.EditPhase;
var
  F: TObjPoEditForm;
begin
  F:= TObjPoEditForm.Create(self, vb2.GetColumnByFieldName('CODE').EditValue, true, stype);
  try
    F.TrFact:= v3.GetColumnByFieldName('CODE').EditValue;
    F.stype:= stype;
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.EditWork;
var
  F: TObjOSEditForm;
begin
  F:= TObjOSEditForm.Create(self);
  try
    F.Code:= vb2.GetColumnByFieldName('CODE').EditValue;
    F.TrFact:= vb2.GetColumnByFieldName('TRFACT').EditValue;
    F.stype:= stype;
    if F.ShowModal = mrOk then
       //refresh dataset
       ds_obj.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TObjForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:= caFree;
end;

procedure TObjForm.FormCreate(Sender: TObject);
begin
  stype:= 0;
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  PrepareDS;
  SetRight;  //����� �������
end;

procedure TObjForm.GetLiftData;
var
  i: Integer;
begin
  with ds_obj do begin
    Close;
    SelectSQL.Text:= ObjForm_ObjL;
  end;
  OpenDS;

  with fds_TRFACT do begin
    Close;
    SelectSQL.Text:= ObjForm_TRLFACT;
    MainWhereClause:=
        '(case' +#13#10+
        '          when tf.STATE = 0 then tf.DATA' +#13#10+
        '          when tf.STATE = 1 then tf.DDATE' +#13#10+
        '          when tf.STATE = 2 then tf.NCALCDATE' +#13#10+
        '          when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
        '          when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
        '          when tf.STATE = 5 then tf.ZD' +#13#10+
        '        end) BETWEEN :d1 and :d2 and tf.STATE>2';
    if bI_PO.EditValue<>-1 then
    MainWhereClause:= MainWhereClause + ' and TF.KONTRAGENT=:kontr';
    ParamByName('d1').AsVariant:= bI_d1.EditValue;
    ParamByName('d2').AsVariant:= bI_d2.EditValue;
    if ParamExist('kontr',i) then
       ParamByName('kontr').AsVariant:= bI_PO.EditValue;
    Open;
  end;
  SetRightForPhase;
  //v3.DataController.DataSource := src_TRlFACT;
  //vb2.DataController.DataSource:= src_objl;
end;

procedure TObjForm.GetMainData;
var
  i: Integer;
  s: WideString;

  function GetTrcode(state: variant) : WideString;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.RT, 'select TRFACT from GETLISTTRFACTFOROBJ(:STATE)');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('STATE').AsVariant := state;
      Q.ExecQuery;
      Result:= Q.FN('TRFACT').AsWideString;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  ds_obj.Close;
  fds_TRFACT.Close;
  case stype of
    0: begin
      ds_obj.SelectSQL.Text:= ObjForm_Obj;
      fds_TRFACT.SelectSQL.Text:= ObjForm_TRFACT;
    end;
    1: begin
      ds_obj.SelectSQL.Text:= ObjForm_ObjL;
      fds_TRFACT.SelectSQL.Text:= ObjForm_TRLFACT;
    end;
  end;
  OpenDS;

  with fds_TRFACT do begin
    //Close;
    //SelectSQL.Text:= ObjForm_TRFACT;
    MainWhereClause:=
        '(case' +#13#10+
        '          when tf.STATE = 0 then tf.DATA' +#13#10+
        '          when tf.STATE = 1 then tf.DDATE' +#13#10+
        '          when tf.STATE = 2 then tf.NCALCDATE' +#13#10+
        '          when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
        '          when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
        '          when tf.STATE = 5 then tf.ZD' +#13#10+
        '        end) BETWEEN :d1 and :d2 and tf.STATE>2';
    if bI_PO.EditValue<>-1 then
    MainWhereClause:= MainWhereClause + ' and TF.KONTRAGENT=:kontr';
    if itm_InviteOnly.EditValue = true then begin
       if itm_OpenOnly.EditValue = true then
          s:= GetTrcode(5) else
          s:= GetTrcode(null);
          if s<>'' then begin
             System.Delete(s,Length(s),1);
             MainWhereClause:= MainWhereClause + ' and TF.CODE in ('+s+')';
          end;
    end;
    ParamByName('d1').AsVariant:= bI_d1.EditValue;
    ParamByName('d2').AsVariant:= bI_d2.EditValue;
    if ParamExist('kontr',i) then
       ParamByName('kontr').AsVariant:= bI_PO.EditValue;
       //ShowMessage(fds_TRFACT.ReadySelectText);
    Open;
  end;
  SetRightForPhase;
  //v3.DataController.DataSource := src_trfact;
  //vb2.DataController.DataSource:= src_Obj;
end;

procedure TObjForm.itm_InviteOnlyCurChange(Sender: TObject);
begin
  itm_OpenOnly.Enabled := itm_InviteOnly.EditValue = true;
end;

procedure TObjForm.itm_InviteOnlyPropertiesChange(Sender: TObject);
begin
  itm_OpenOnly.Enabled := itm_InviteOnly.EditValue = true;
end;

procedure TObjForm.itm_InviteOnlyPropertiesEditValueChanged(Sender: TObject);
begin
  itm_OpenOnly.Enabled := itm_InviteOnly.EditValue = true;
end;

procedure TObjForm.MakeData;
var
  i: integer;
begin
  vb2.BeginUpdate(lsimImmediate);
  try
    GetMainData;
  finally
    vb2.EndUpdate;
  end;
end;

procedure TObjForm.OpenDS;
begin
  case stype of
    0: DSOptoins(ds_obj,'','TRFACT$OBJ','CODE','TRFACT$OBJ_GEN', false);
    1: DSOptoins(ds_obj,'','TRLFACT$OBJ','CODE','TRLFACT$OBJ_GEN', false);
  end;
end;

procedure TObjForm.PrepareDS;
begin
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontrShort();
  //bI_PO.EditValue:= ds_kontr.FN('CODE').AsVariant;
  OpenDS;
end;

procedure TObjForm.PrintAkt1;
var
  Q: TFIBQuery;
  ds: TpFIBDataSet;

  function GetAktData: boolean;
  begin
    Q.ParamByName('CODE').AsVariant:=vb2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    Result:= Q.RecordCount>0;
  end;

  function GetQuery: string;
  begin
    case stype of
      0: begin
           ds:= ds_obj;
           Result:= 'select * from TRFACT$OBJ$TYPE' +sLineBreak+'where TRFACT_OBJECT=:CODE';
         end;
      1: begin
           ds:= ds_obj;
           Result:= 'select * from TRLFACT$OBJ$TYPE' +sLineBreak+'where TRLFACT_OBJECT=:CODE';
         end;
    end;
  end;

begin
  Q:= GetQueryForUse(cmDb.RT, GetQuery);
  Q.Options:=[qoStartTransaction];
  try
    if GetAktData then
    with report do begin
      LoadFromFile(AppPath+'rep\akt1.fr3');
      // variables
      //������������ ���
      Variables['POSTOS']:=#39+ VarToStrDef(Q.FN('POSTOS').AsVariant,' ') +#39;
      Variables['FIOOS']:=#39+ VarToStrDef(Q.FN('FIOOS').AsVariant,' ') +#39;
      //������������� ��
      Variables['KNAME']:=#39+ VarToStrDef(v3.FN('KNAME'),' ') +#39;
      Variables['POST']:=#39+ VarToStrDef(Q.FN('POST').AsVariant,' ') +#39;
      Variables['FIO']:=#39+ VarToStrDef(Q.FN('FIO').AsVariant,' ') +#39;
      //�����
      Variables['SNAME']:=#39+ VarToStrDef(v3.FN('SNAME') ,' ') +#39;
      Variables['NOMER']:=#39+ VarToStrDef(v3.FN('NOMER') ,' ') +#39;
      // ���� ������ ����� �� ������� ��
      Variables['PODATE']:=#39+ VarToStrDef(ds.FN('POFACTDATE').AsVariant,' ') +#39;
      // ���� ����������� ����� ������ �� �� ���������� �������
      Variables['POPLANDATE']:=#39+ VarToStrDef(ds.FN('POPLANDATE').AsVariant,' ') +#39;
      //���� ������� ������
      Variables['OSDATE']:=#39+ VarToStrDef(ds.FN('OSDATE').AsVariant,' ') +#39;
      //
      Variables['INSPECTION']:=#39+ VarToStrDef(Q.FN('INSPECTION').AsVariant,' ') +#39;
      Variables['RESOLUTION']:=#39+ VarToStrDef(Q.FN('RESOLUTION').AsVariant,' ') +#39;
      //
      ShowReport;
    end else
      raise dezException.Create('����������� ������ ��� ������!');
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TObjForm.PrintAkt2;
var
  Q: TFIBQuery;
  ds: TpFIBDataSet;

  function GetAktData: boolean;
  begin
    Q.ParamByName('CODE').AsVariant:=vb2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    Result:= Q.RecordCount>0;
  end;

  function GetQuery: string;
  begin
    case stype of
      0: begin
           ds:= ds_obj;
           Result:= 'select * from TRFACT$OBJ$TYPE' +sLineBreak+'where TRFACT_OBJECT=:CODE';
         end;
      1: begin
           ds:= ds_obj;
           Result:= 'select * from TRLFACT$OBJ$TYPE' +sLineBreak+'where TRLFACT_OBJECT=:CODE';
         end;
    end;
  end;

begin

  Q:= GetQueryForUse(cmDb.RT, GetQuery);
  Q.Options:=[qoStartTransaction];
  try
    if GetAktData then
    with report do begin
      LoadFromFile(AppPath+'rep\akt2.fr3');
      // variables
      //��� ����� �� ���������� �������
      Variables['MNAME']:=#39+VarToStrDef(v3.FN('MNAME'),' ')+#39;
      //���� ������� ����� �� �� ���������� �������
      Variables['OSDATE']:= #39+ VarToStrDef(ds.FN('OSDATE').AsVariant, ' ') +#39;
      //������������ ���
      Variables['POSTOS']:=#39+ VarToStrDef(Q.FN('POSTOS').AsVariant,' ') +#39;
      Variables['FIOOS']:=#39+ VarToStrDef(v3.FN('FIO'),' ') +#39;
      //������������� ��
      Variables['KNAME']:=#39+ VarToStrDef(v3.FN('KNAME'),' ') +#39;
      Variables['POST']:=#39+ VarToStrDef(Q.FN('POST').AsVariant,' ') +#39;
      Variables['FIO']:=#39+ VarToStrDef(Q.FN('FIO').AsVariant,' ') +#39;
      Variables['COMMIS']:= #39+ VarToStrDef(Q.FN('COMMIS').AsVariant, ' ') +#39;
      //�����
      Variables['SNAME']:=#39+ VarToStrDef(v3.FN('SNAME') ,' ') +#39;
      Variables['NOMER']:=#39+ VarToStrDef(v3.FN('NOMER') ,' ') +#39;
      //� ������������������� � ������� ������������ ��������� ������
      Variables['WORKLIST']:=#39+ VarToStrDef(Q.FN('WORKLIST').AsVariant, ' ') +#39;
      // ������ ��������� �� �������
      Variables['NCALC']:= #39+ VarToStrDef(v3.FN('NCALC'), ' ') +#39;
      // ��� ���������� ����� ���������
      Variables['MATLIST']:=#39+ VarToStrDef(Q.FN('MATLIST').AsVariant, ' ') +#39;
      // ���� ������ ����� �� ������� ��
      Variables['PODATE']:=#39+ VarToStrDef(ds.FN('POFACTDATE').AsVariant,' ') +#39;
      // ���� ����������� ����� ������ �� �� ���������� �������
      Variables['POPLANDATE']:=#39+ VarToStrDef(ds.FN('POPLANDATE').AsVariant,' ') +#39;
      //  ������� � ������� ��������
      Variables['QUALITY']:=#39+ VarToStrDef(Q.FN('QUALITY').AsVariant,' ') +#39;
      // ����������� ������������ ����������� ����� �� ����������
      Variables['RESOLUTION']:=#39+ VarToStrDef(Q.FN('RESOLUTION').AsVariant,' ') +#39;
      ShowReport;
    end else
      raise dezException.Create('����������� ������ ��� ������!');
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TObjForm.SaveToHDD;
begin
  with ds_SMETA do begin
    Close;
    ParamByName('COD').AsVariant:= v3.GetColumnByFieldName('CODE').EditValue;
    Open;
  end;
  dlgSave1.FileName:= ds_SMETA.FN('FNAME').AsString;
  //dlgSave1.DefaultExt:= ExtractFileExt(fds_TRFACT.FN('FNAME').AsString);
  if dlgSave1.Execute then
    TBlobField(ds_SMETA.FN('SMETA')).SaveToFile(dlgSave1.FileName);
end;

procedure TObjForm.SetRight;
begin
  if ActiveUserType = 1 then
     bI_PO.EditValue:= ActiveKontragent;
     bI_PO.Enabled:= ActiveUserType = 0;
end;

procedure TObjForm.SetRightForPhase;
var
  i, n: Integer;
  sb: TdxBarSubItem;
begin
  //���������� �����
  SetSmetaBntEnable;
  // STATE>4   ������ ���������
  if v3.FN('STATE') > 4 then begin
    //������ ������������ ��� ������
    for I := 0 to br3.ItemLinks.Count -1 do
    if br3.ItemLinks[i].Item is TdxBarSubItem then begin
      sb:= br3.ItemLinks[i].Item as TdxBarSubItem;
      for n := 0 to sb.ItemLinks.Count -1 do
        if sb.ItemLinks[n].Item is TdxBarButton then
           sb.ItemLinks[n].Item.Enabled:= False;
    end;
    //������ ����
    btn_PrintAkt.Enabled:= true;
    Exit;
  end;
  //���� ��� �������
  if ds_obj.IsEmpty then begin
    //������ ������������ ��� ������
    for I := 0 to br3.ItemLinks.Count -1 do
    if br3.ItemLinks[i].Item is TdxBarSubItem then begin
      sb:= br3.ItemLinks[i].Item as TdxBarSubItem;
      for n := 0 to sb.ItemLinks.Count -1 do
        if sb.ItemLinks[n].Item is TdxBarButton then
           sb.ItemLinks[n].Item.Enabled:= False;
    end;
    //������ ����
    btn_PrintAkt.Enabled:= False;
    //��������� ������ ������
    btn_NewRhase.Enabled:= True; //������� ���� ������
    Exit;
  end;
  //
  if v3.FN('NDOP') = null then begin
    sbI2.Enabled:= False;
  end else begin
    sbI2.Enabled:= True;
    //������� ���� ������
    btn_NewRhase.Enabled:= True;
    // �������� �����
    btn_Akt1.Enabled:= vb2.GetColumnByFieldName('AKTTYPE').EditValue = null;
    btn_Akt2.Enabled:= vb2.GetColumnByFieldName('AKTTYPE').EditValue = null;
    // �������������� �����
    btn_EditAkt1.Enabled:= vb2.GetColumnByFieldName('AKTTYPE').EditValue = 1;
    btn_EditAkt2.Enabled:= vb2.GetColumnByFieldName('AKTTYPE').EditValue = 0;
    //������� ������ ���
    btn_DelAkt1.Enabled:= (vb2.GetColumnByFieldName('AKTTYPE').EditValue = 1) and
                          (ActiveUserType = 0);
    btn_DelAkt2.Enabled:= (vb2.GetColumnByFieldName('AKTTYPE').EditValue = 0) and
                          (ActiveUserType = 0);
  end;
  // ������� ������
  btn_accept.Enabled:= (vb2.GetColumnByFieldName('CODE').EditValue <> null) and //���� ���� ������ �� ����� ������
                       (ActiveUserType = 0) and  //������ ��
                       (vb2.GetColumnByFieldName('OSDATE').EditValue = null); // ���� ��� �� �������
  // ������������� ���� ������
  btn_EditPhase.Enabled:= (vb2.GetColumnByFieldName('CODE').EditValue <> null) and //���� ���� ������ �� ����� ������
                          (vb2.GetColumnByFieldName('OSDATE').EditValue = null); // ���� ��� �� �������
  //������� ���� ������
  btn_DelPhase.Enabled:= (vb2.GetColumnByFieldName('CODE').EditValue <> null) and //���� ���� ������ �� ����� ������
                          (vb2.GetColumnByFieldName('OSDATE').EditValue = null); // ���� ��� �� �������
  //�������������� �������� ������
  btn_AcceptEdit.Enabled:= (vb2.GetColumnByFieldName('OSDATE').EditValue <> null) and // ���� ������ �������
                           (ActiveUserType = 0); //������ ��
  //������� �������� ������
  btn_DelAccept.Enabled:= (vb2.GetColumnByFieldName('OSDATE').EditValue <> null) and // ���� ������ �������
                           (ActiveUserType = 0); //������ ��
  //������ ����
  btn_PrintAkt.Enabled:= vb2.GetColumnByFieldName('AKTTYPE').EditValue <> null;
end;

procedure TObjForm.SetSmetaBntEnable;
begin
  btn_SaveSmeta.Enabled:= v3.GetColumnByFieldName('SMETA').EditValue = 1;
end;

procedure TObjForm.v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP : SetRightForPhase;
    VK_DOWN : SetRightForPhase;
  end;
end;

procedure TObjForm.vb1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetRightForPhase;
end;

procedure TObjForm.vb1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP : SetRightForPhase;
    VK_DOWN : SetRightForPhase;
  end;
end;

initialization
 RegisterClass(TObjForm);
end.
