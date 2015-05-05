unit AddWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cmDBUnit, dezCommon, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, DB, FIBDataSet, pFIBDataSet,
  dxLayoutLookAndFeels, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cmUtils, dxLayoutControlAdapters,
  BaseForm,
  dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils, KontragentRepository,
  dxSkinDevExpressStyle;

type
  TAddWorkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    itm_street: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    itm_house: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    src_kontr: TDataSource;
    mmo_prim: TcxMemo;
    itm_prim: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fKontrController: TKontragentController;
    procedure ReopenHouse;
    function ChekParam: Boolean;
  public
    { Public declarations }
  end;

var
  AddWorkForm: TAddWorkForm;

implementation

uses AppUtils;
{$R *.dfm}

procedure TAddWorkForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TAddWorkForm.btn_okClick(Sender: TObject);
begin
  if ChekParam then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TAddWorkForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  ReopenHouse;
end;

function TAddWorkForm.ChekParam: Boolean;
begin
  Result:=True;
  if cbb_house.EditValue = null then
  begin
    cmShowMessage('Не указан дом.', true);
    Result := False;
    Exit;
  end;
  if cbb_kontr.EditValue = null then
  begin
    cmShowMessage('Не указана подрядная организация', true);
    Result := False;
    Exit;
  end;
  if dt1.EditValue=null then
  begin
    cmShowMessage('Укажите дату!', true);
    Result := False;
    Exit;
  end;
end;

procedure TAddWorkForm.FormCreate(Sender: TObject);
begin
  fKontrController:= TKontragentController.Create;
  ds_street.Open;
  src_kontr.DataSet:= fKontrController.DS;
  if ActiveUserType = 0 then
    //ds_kontr.Open
    fKontrController.GetActiveKontragents()
  else
    fKontrController.GetById(ActiveKontragent);
end;

procedure TAddWorkForm.FormDestroy(Sender: TObject);
begin
  fKontrController.Free;
end;

procedure TAddWorkForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  ModalResult:=mrCancel;
end;

procedure TAddWorkForm.ReopenHouse;
begin
  if cbb_street.EditValue = null then
    Exit;
  try
    with ds_house do
    begin
      Close;
      MainWhereClause := 'STREET = :CODE';
      ParamByName('CODE').AsVariant := cbb_street.EditValue;
      OrderClause := 'NOMER';
      Open;
    end;
  finally

  end;
end;

end.
