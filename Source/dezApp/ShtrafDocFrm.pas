unit ShtrafDocFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, FIBDataSet, pFIBDataSet, StdCtrls,
  cxButtons, cxMemo, cxCalc, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dezCommon, KontragentRepository,
  dxSkinDevExpressStyle, dxSkinVS2010;

type
  TShtrafDocForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    msk_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    ced_sum: TcxCalcEdit;
    itm_sum: TdxLayoutItem;
    mmo_note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    src_KONTRAGENT: TDataSource;
    ds_OUTCASHBDR: TpFIBDataSet;
    src_OUTCASHBDR: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1DOCNOMER: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure grp2Button0Click(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_srvPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
    procedure OpenHouse;
    function CheckParam :Boolean;
    procedure AddRec(isEdit :Boolean=false);
    procedure FillEdt;
  public
    { Public declarations }
  end;

var
  ShtrafDocForm: TShtrafDocForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TShtrafDocForm.AddRec(isEdit: Boolean);
begin
  if not CheckParam then Exit;
  with ds_OUTCASHBDR do
  begin
    if isEdit then Edit else
    Append;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('DOCNOMER').AsVariant:=msk_num.EditValue;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('STREET').AsVariant:=cbb_street.EditValue;
    FN('KONTRAGENT').AsVariant:=cbb_kontr.EditValue;
    FN('HOUSESRV').AsVariant:=cbb_srv.EditValue;
    FN('SUMMA').AsVariant:=ced_sum.EditValue;
    FN('NOTE').AsVariant:=mmo_note.EditValue;
    Post;
  end;
end;

procedure TShtrafDocForm.btn_addClick(Sender: TObject);
begin
  AddRec();
end;

procedure TShtrafDocForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_OUTCASHBDR.Delete;
end;

procedure TShtrafDocForm.btn_editClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  AddRec(true);
end;

procedure TShtrafDocForm.cbb_srvPropertiesEditValueChanged(Sender: TObject);
begin
  //
end;

procedure TShtrafDocForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

function TShtrafDocForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    ShowMessage(mes);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=True;
  if dt1.EditValue=null then
  begin
    rez('Укажите дату операции',dt1);
    Exit;
  end;
  if msk_num.EditValue=null then
  begin
    rez('Укажите номер документа',msk_num);
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    rez('Укажите дом',cbb_house);
    Exit;
  end;
  if cbb_kontr.EditValue=null then
  begin
    rez('Укажите подрядную организацию',cbb_kontr);
    Exit;
  end;
  if cbb_srv.EditValue=null then
  begin
    rez('Укажите услугу',cbb_srv);
    Exit;
  end;
  if ced_sum.EditValue=null then
     ced_sum.EditValue:=0;
end;

procedure TShtrafDocForm.FillEdt;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  with ds_OUTCASHBDR do
  begin
    dt1.EditValue:=FN('DATA').AsVariant;
    msk_num.EditValue:=FN('DOCNOMER').AsVariant;
    cbb_street.EditValue:=FN('STREET').AsVariant;
    cbb_house.EditValue:=FN('HOUSE').AsVariant;
    cbb_kontr.EditValue:=FN('KONTRAGENT').AsVariant;
    cbb_srv.EditValue:=FN('HOUSESRV').AsVariant;
    ced_sum.EditValue:=FN('SUMMA').AsVariant;
    mmo_note.EditValue:=FN('NOTE').AsVariant;
  end;
end;

procedure TShtrafDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TShtrafDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TShtrafDocForm.grp2Button0Click(Sender: TObject);
begin
  dt1.EditValue:=null;
  msk_num.EditValue:=null;
  cbb_street.EditValue:=null;
  cbb_kontr.EditValue:=null;
  cbb_srv.EditValue:=null;
  ced_sum.EditValue:=null;
  mmo_note.EditValue:=null;
end;

procedure TShtrafDocForm.OpenDS;
begin
  ds_street.Open;
  //ds_house.Open;
  ds_HOUSESRV.CloseOpen(true);
  {$REGION 'Kontragent'}
  src_KONTRAGENT.DataSet:= fController.DS;
  if ActiveUserType = 1 then begin
    fController.GetById(ActiveKontragent);
    cbb_kontr.EditValue:= ActiveKontragent;
    cbb_kontr.Enabled:= False;
  end else
    fController.GetActiveKontrShort();
  {$ENDREGION}
  if ActiveUserType = 0 then
  DSOptoins(ds_OUTCASHBDR,'','OUTCASHBDR','CODE','OUTCASHBDR_GEN') else begin
    DSOptoins(ds_OUTCASHBDR,'','OUTCASHBDR','CODE','OUTCASHBDR_GEN', False);
    ds_OUTCASHBDR.MainWhereClause:='oc.KONTRAGENT=:kontr';
    ds_OUTCASHBDR.ParamByName('kontr').AsVariant:= ActiveKontragent;
    ds_OUTCASHBDR.Open;
  end;
end;

procedure TShtrafDocForm.OpenHouse;
begin
  with ds_house do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='street=:st';
    ParamByName('st').AsVariant:=cbb_street.EditValue;
    OrderClause:='NOMER';
    Open;
  end;
end;

procedure TShtrafDocForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdt;
end;

procedure TShtrafDocForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdt;
    VK_DOWN :FillEdt;
  end;
end;

initialization
 RegisterClass(TShtrafDocForm);
end.
