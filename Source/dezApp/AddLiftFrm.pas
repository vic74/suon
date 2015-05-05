unit AddLiftFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons, cxMemo, cxSpinEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, DB, FIBDataSet, pFIBDataSet, dxSkinsCore, dxSkinOffice2010Blue,
  BaseForm,
  dxSkinscxPCPainter, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TAddLiftForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    edt_code: TcxMaskEdit;
    itm_code: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    edsp_entrance: TcxSpinEdit;
    itm_entrance: TdxLayoutItem;
    edt_y: TcxMaskEdit;
    itm_y: TdxLayoutItem;
    edsp_kost: TcxSpinEdit;
    itm_kost: TdxLayoutItem;
    edsp_gruz: TcxSpinEdit;
    itm_gruz: TdxLayoutItem;
    mmo_note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_street: TpFIBDataSet;
    ds_house: TpFIBDataSet;
    src_street: TDataSource;
    src_house: TDataSource;
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReopenHouse;
    function CheckParams :Boolean;
  public
    { Public declarations }
  end;

var
  AddLiftForm: TAddLiftForm;

implementation

uses cmDBUnit, cmUtils;

{$R *.dfm}

procedure TAddLiftForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TAddLiftForm.btn_okClick(Sender: TObject);
begin
  if CheckParams then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TAddLiftForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  ReopenHouse;
end;

function TAddLiftForm.CheckParams: Boolean;
begin
  Result:=True;
  if edt_code.EditValue=null then
  begin
    cmShowMessage('Укажите регистрационный номер!',true);
    Result:=False;
    Exit;
  end;
  if (cbb_street.EditValue=null) or (cbb_street.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите улицу!',true);
    Result:=False;
    Exit;
  end;
  if (cbb_house.EditValue=null) or (cbb_house.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите дом!',true);
    Result:=False;
    Exit;
  end;
  if edsp_entrance.EditingValue=null then
  begin
    cmShowMessage('Укажите подъезд!',true);
    Result:=False;
    Exit;
  end;
  if edt_y.EditValue=null then
  begin
    cmShowMessage('Укажите год ввода в эксплуатацию!',true);
    Result:=False;
    Exit;
  end;
  if edsp_kost.EditValue=null then
  begin
    cmShowMessage('Укажите кол-во остановок!',true);
    Result:=False;
    Exit;
  end;
  if edsp_gruz.EditValue=null then
  begin
    cmShowMessage('Укажите грузоподъемность!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TAddLiftForm.FormCreate(Sender: TObject);
begin
  ds_street.Open;
end;

procedure TAddLiftForm.ReopenHouse;
begin
  with ds_house do
  begin
    Close;
    if (cbb_street.EditValue<>null) or (cbb_street.EditValue<>Unassigned) then
    begin
      MainWhereClause:='street=:street';
      ParamByName('street').AsVariant:=cbb_street.EditValue;
      Open;
    end;
  end;
end;

end.
