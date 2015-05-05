unit imDogAddDateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue, Menus, StdCtrls,
  BaseForm,
  cxButtons, cxCheckBox, cxMaskEdit, cxTextEdit, cxDropDownEdit;

type
  TimDogAddDateForm = class(TDezModalForm)
    cbb_month: TcxComboBox;
    msk_Y: TcxMaskEdit;
    chk_copy: TcxCheckBox;
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
    function CheckParam :Boolean;
    procedure SetDate;
  public
    { Public declarations }
    iDate :Variant;
    iCopy :Boolean;
  end;

var
  imDogAddDateForm: TimDogAddDateForm;

implementation

{$R *.dfm}

procedure TimDogAddDateForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TimDogAddDateForm.btn_OkClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  SetDate;
  ModalResult:=mrOk;
end;

function TimDogAddDateForm.CheckParam: Boolean;
begin
  Result:=true;
  if msk_Y.Text='' then begin
    Application.MessageBox('”кажите год!', 'ќшибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Result := false;
    Exit;
  end;
end;

procedure TimDogAddDateForm.FormCreate(Sender: TObject);
begin
  //
end;

procedure TimDogAddDateForm.SetDate;
var
  s :string;
begin
  s:='01.'+IntToStr(cbb_month.ItemIndex+1)+'.'+msk_Y.Text;
  iDate:=StrToDate(s);
  iCopy:=chk_copy.Checked;
end;

end.
