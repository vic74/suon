unit Process5FrmSum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue, Menus, StdCtrls,
  BaseForm,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  dxSkinDevExpressStyle;

type
  TProcess5FormSum = class(TDezModalForm)
    clc_SUM: TcxCalcEdit;
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Sum: Variant;
  end;

var
  Process5FormSum: TProcess5FormSum;

implementation

uses AppUtils;

{$R *.dfm}

procedure TProcess5FormSum.btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TProcess5FormSum.btn_OkClick(Sender: TObject);
begin
  if clc_SUM.EditingValue = null then
     raise EMyException.Create('”кажите сумму!');
  ModalResult:= mrOk;
end;

procedure TProcess5FormSum.FormShow(Sender: TObject);
begin
  clc_SUM.EditValue := Sum;
end;

end.
