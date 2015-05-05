unit RLiftDocFrm;

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
  KontragentRepository, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinVS2010;

type
  TRLiftDocForm = class(TDezForm)
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
    btn_edt: TcxButton;
    itm_edt: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    src_KONTRAGENT: TDataSource;
    ds_serviswork: TpFIBDataSet;
    src_serviswork: TDataSource;
    btn_w: TcxButton;
    itm_w: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    ds_tb: TpFIBDataSet;
    src_tb: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1DOCNOMER: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1SERVISWORK: TcxGridDBColumn;
    clv1SWNAME: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    src_mat: TDataSource;
    ds_mat: TpFIBDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_wClick(Sender: TObject);
    procedure cbb_srvPropertiesChange(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_edtClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure grp2Button0Click(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenHouse;
    procedure OpenDS;
    function CheckParam :Boolean;
    procedure AddRec(isEdit: Boolean=false);
    procedure FillEdt;
  public
    { Public declarations }
  end;

var
  RLiftDocForm: TRLiftDocForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, KServisWorkFrm, AddMatFrm;

{$R *.dfm}

procedure TRLiftDocForm.btn_addClick(Sender: TObject);
begin
  AddRec();
end;

procedure TRLiftDocForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_tb.Delete;
end;

procedure TRLiftDocForm.btn_edtClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TRLiftDocForm.btn_wClick(Sender: TObject);
var
  F :TAddMatForm;
begin
  F:=TAddMatForm.CreateModal(Self,true);
  if F.ShowModal=mrOk then
  begin
    if F.v1.GetColumnByFieldName('Code').EditValue<>null then
    cbb_srv.EditValue:=F.v1.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

procedure TRLiftDocForm.AddRec(isEdit: Boolean);
begin
  if not CheckParam then Exit;
  with ds_tb do
  begin
    if isEdit then Edit else
    Append;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('DOCNOMER').AsVariant:=msk_num.EditValue;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('STREET').AsVariant:=cbb_street.EditValue;
    FN('KONTRAGENT').AsVariant:=cbb_kontr.EditValue;
    FN('MLIST').AsVariant:=cbb_srv.EditValue;
    FN('SUMMA').AsVariant:=ced_sum.EditValue;
    FN('NOTE').AsVariant:=mmo_note.EditValue;
    Post;
  end;
end;

procedure TRLiftDocForm.cbb_srvPropertiesChange(Sender: TObject);
var
  aItemListOr : TcxFilterCriteriaItemList;
  sText : String;
  i : Integer;
  combo : TcxLookupComboBox;
begin
  inherited;
  if not (Sender is TcxLookupComboBox) then
    exit;
  combo := TcxLookupComboBox(Sender);
  with combo.Properties.Grid.DataController do begin
    Filter.Active := False;
    Filter.Options := [fcoCaseInsensitive];
    Filter.Root.Clear;
    sText := cbb_srv.Text;
    if sText <> '' then begin
      sText := '%' + sText + '%';
      aItemListOr := Filter.Root.AddItemList( fboOr );
      for i:=0 to ItemCount-1 do begin
        aItemListOr.AddItem(GetItem(i), foLike, sText, sText);
      end;
    end;
    Filter.Active := True;
    combo.Properties.DropDownRows := 8;
  end;
end;

procedure TRLiftDocForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

function TRLiftDocForm.CheckParam: Boolean;
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

procedure TRLiftDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TRLiftDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TRLiftDocForm.grp2Button0Click(Sender: TObject);
begin
  dt1.EditValue:=null;
  msk_num.EditValue:=null;
  cbb_street.EditValue:=null;
  cbb_kontr.EditValue:=null;
  cbb_srv.EditValue:=null;
  ced_sum.EditValue:=null;
  mmo_note.EditValue:=null;
end;

procedure TRLiftDocForm.OpenDS;
begin
  ds_street.Open;
  src_KONTRAGENT.DataSet:= fController.DS;
  fController.GetActiveKontrShort();
  ds_mat.Open;
  //ds_serviswork.Open;
  DSOptoins(ds_tb,'','TRLWORKBDR','CODE','TRLWORKBDR_GEN');
  ConfigureCombo(cbb_srv);
end;

procedure TRLiftDocForm.OpenHouse;
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='street =:st';
    ParamByName('st').AsVariant:=cbb_street.EditValue;
    OrderClause:='nomer';
    Open;
  end;
end;

procedure TRLiftDocForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdt;
end;

procedure TRLiftDocForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdt;
    VK_DOWN :FillEdt;
  end;
end;

procedure TRLiftDocForm.FillEdt;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  with ds_tb do
  begin
    dt1.EditValue:=FN('DATA').AsVariant;
    msk_num.EditValue:=FN('DOCNOMER').AsVariant;
    cbb_street.EditValue:=FN('STREET').AsVariant;
    cbb_house.EditValue:=FN('HOUSE').AsVariant;
    cbb_kontr.EditValue:=FN('KONTRAGENT').AsVariant;
    cbb_srv.EditValue:=FN('MLIST').AsVariant;
    ced_sum.EditValue:=FN('SUMMA').AsVariant;
    mmo_note.EditValue:=FN('NOTE').AsVariant;
  end;
end;

initialization
 RegisterClass(TRLiftDocForm);
end.
