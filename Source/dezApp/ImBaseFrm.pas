unit ImBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxMemo,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControlAdapters, dxLayoutContainer;

type
  TImBaseForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_left: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_IMMKD: TpFIBDataSet;
    src_IMMKD: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1ATYPE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1COST: TcxGridDBColumn;
    clv1SQ: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_ATYPE: TcxComboBox;
    itm_ATYPE: TdxLayoutItem;
    ced_Cost: TcxCalcEdit;
    itm_Cost: TdxLayoutItem;
    ced_SQ: TcxCalcEdit;
    itm_SQ: TdxLayoutItem;
    mmo_Note: TcxMemo;
    itm_Note: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    btn_Add: TcxButton;
    itm_Add: TdxLayoutItem;
    btn_Edit: TcxButton;
    itm_Edit: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    clv1ATYPENAME: TcxGridDBColumn;
    clv1DTYPE: TcxGridDBColumn;
    clv1DTYPENAME: TcxGridDBColumn;
    cbb_Dtype: TcxComboBox;
    itm_dtype: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure OpenDS;
    procedure GetHouse;
    function CheckParam :Boolean;
    procedure AddRec(isEdit :boolean);
    procedure FillEdit;
  public
    { Public declarations }
    obj :Variant;
  end;

var
  ImBaseForm: TImBaseForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TImBaseForm.AddRec(isEdit: boolean);
begin
  if not CheckParam then Exit;  
  with ds_IMMKD do begin
    if isEdit then Edit else
    Append;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('NOTE').AsVariant:=mmo_Note.EditValue;
    FN('COST').AsVariant:=ced_Cost.EditValue;
    FN('SQ').AsVariant:=ced_SQ.EditValue;
    FN('ATYPE').AsVariant:=cbb_ATYPE.ItemIndex;
    FN('DTYPE').AsVariant:=cbb_DTYPE.ItemIndex;
    Post;
  end;
end;

procedure TImBaseForm.btn_AddClick(Sender: TObject);
begin
  AddRec(false);
end;

procedure TImBaseForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue <> Unassigned then
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_IMMKD.Delete;
end;

procedure TImBaseForm.btn_EditClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TImBaseForm.cbb_streetPropertiesChange(Sender: TObject);
begin
  //GetHouse;
end;

procedure TImBaseForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  GetHouse;
end;

function TImBaseForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_street.EditValue=null then
  begin
    cmShowMessage('Не указана улица!',true);
    cbb_street.SetFocus;
    Result:=False;
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом!',true);
    cbb_house.SetFocus;
    Result:=False;
    Exit;
  end;
end;

procedure TImBaseForm.FillEdit;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  with ds_IMMKD do begin
    cbb_street.EditValue:=FN('STREET').AsVariant;
    cbb_house.EditValue:=FN('HOUSE').AsVariant;
    mmo_Note.EditValue:=FN('NOTE').AsVariant;
    ced_Cost.EditValue:=FN('COST').AsVariant;
    ced_SQ.EditValue:=FN('SQ').AsVariant;
    cbb_ATYPE.ItemIndex:=FN('ATYPE').AsVariant;
    cbb_DTYPE.ItemIndex:=FN('DTYPE').AsVariant;
  end;
end;

procedure TImBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImBaseForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TImBaseForm.GetHouse;
begin
  //cbb_house.EditValue:=null;
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue = null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='Nomer';
    Open;
  end;
end;

procedure TImBaseForm.OpenDS;
begin
  DSOptoins(ds_IMMKD,'','IMMKD','CODE','IMMKD_GEN');
  ds_STREET.Open;
end;

procedure TImBaseForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TImBaseForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  obj:=gFN(v1,'CODE');
  ModalResult :=mrOk;
end;

procedure TImBaseForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdit;
    VK_DOWN :FillEdit;
    VK_RETURN : begin
                  obj :=gFN(v1,'CODE');
                  ModalResult :=mrOk;
                end;
  end;
end;

initialization
 RegisterClass(TImBaseForm);
end.
