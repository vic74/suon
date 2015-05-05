unit AddWorkSpesMatFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, DB, FIBDataSet, pFIBDataSet,
  FIBQuery,pFIBCacheQueries, BaseForm,
  cxMemo, cxCurrencyEdit, cxSpinEdit, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, KServisMaterialFrm, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TAddWorkSpesMatForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    cbb_mat: TcxLookupComboBox;
    itm_mat: TdxLayoutItem;
    btn_sprmat: TcxButton;
    itm_sprmat: TdxLayoutItem;
    edsp_quant: TcxSpinEdit;
    itm_quant: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    cedt_price: TcxCurrencyEdit;
    itm_price: TdxLayoutItem;
    mmo_prim: TcxMemo;
    itm_prim: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    txt_ed: TcxTextEdit;
    itm_ed: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_sprmatClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure GetPrice;
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  AddWorkSpesMatForm: TAddWorkSpesMatForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TAddWorkSpesMatForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TAddWorkSpesMatForm.btn_okClick(Sender: TObject);
begin
  if CheckParam then
  ModalResult:=mrOk  else
  ModalResult:=mrNone;
end;

function TAddWorkSpesMatForm.CheckParam :Boolean;
begin
  Result:=True;
  if (cbb_mat.EditValue=null) or (cbb_mat.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите материал.',true);
    Result:=False;
  end;
  if (edsp_quant.EditValue=null) or (edsp_quant.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите кол-во.',true);
    Result:=False;
  end;
  if (cedt_price.EditValue=null) or (cedt_price.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите цену.',true);
    Result:=False;
  end;
end;

procedure TAddWorkSpesMatForm.btn_sprmatClick(Sender: TObject);
var
  F :TKServisMaterialForm;
begin
  F:=TKServisMaterialForm.CreateModal(Self,true);
  SetSkin(F);
  if F.ShowModal=mrOk then

  cbb_mat.EditValue:= F.v1.GetColumnByFieldName('Code').EditValue;
            //CreateSprForm('TKServisMaterialForm');
end;

procedure TAddWorkSpesMatForm.cbb_matPropertiesEditValueChanged(
  Sender: TObject);
begin
  GetPrice;
end;

procedure TAddWorkSpesMatForm.GetPrice;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select ED, PRICE from CLASSMAT where Code=:cod');
  try
    Q.ParamByName('Cod').AsVariant:=cbb_mat.EditValue;
    Q.ExecQuery;
    txt_ed.EditValue:=Q.FN('ED').AsVariant;
    cedt_price.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAddWorkSpesMatForm.FormCreate(Sender: TObject);
begin

  ds_ServisMaterial.CloseOpen(true);
end;

procedure TAddWorkSpesMatForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  ModalResult:=mrCancel;
end;

end.
