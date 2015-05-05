unit GetGraphPeriodFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxPropertiesStore,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TGetGraphPeriodForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    cbb_month: TcxComboBox;
    itm_month: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    btn_ok: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    btn_cancel: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    procedure btn_okClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetGraphPeriodForm: TGetGraphPeriodForm;

implementation

uses AppUtils;

{$R *.dfm}

procedure TGetGraphPeriodForm.btn_okClick(Sender: TObject);
begin
  if msk_Y.Text<>'' then
  ModalResult:=mrOk else
  begin
    Application.MessageBox('”кажите год!', 'ќшибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ModalResult:=mrNone;
  end;
end;

procedure TGetGraphPeriodForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
end;

end.
