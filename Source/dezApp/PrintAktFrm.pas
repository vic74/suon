unit PrintAktFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControl, Menus, DB,
  FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TPrintAktForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    btn_ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    ds_street: TpFIBDataSet;
    ds_house: TpFIBDataSet;
    src_street: TDataSource;
    src_house: TDataSource;
    cbb_stype: TcxComboBox;
    itm_stype: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  PrintAktForm: TPrintAktForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TPrintAktForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TPrintAktForm.btn_okClick(Sender: TObject);
begin
  if CheckParam then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TPrintAktForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue=null then Exit;
    ParamByName('code').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

function TPrintAktForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_street.EditValue=null then
  Result:=False;
  if cbb_house.EditValue=null then
  Result:=False;
end;

procedure TPrintAktForm.FormCreate(Sender: TObject);
begin
  OpenDS;
end;

procedure TPrintAktForm.OpenDS;
begin
  ds_street.Open;
end;

end.
