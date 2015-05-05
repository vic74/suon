unit cmMessageBoxFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Forms, Classes, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinsDefaultPainters, Menus, StdCtrls, cxButtons,
  BaseForm,
  dxGDIPlusClasses, Controls, cxImage, dxSkinMcSkin;

type
  TcmMessageBoxForm = class(TDezModalForm)
    Message: TLabel;
    cxImage1: TcxImage;
    Button1: TcxButton;
    Button2: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  public
  end;

var
  cmMessageBoxForm: TcmMessageBoxForm;


implementation

{$R *.dfm}

procedure TcmMessageBoxForm.Button1Click(Sender: TObject);
begin
  ModalResult:=mrOK;
end;

procedure TcmMessageBoxForm.Button2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TcmMessageBoxForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_RETURN: ModalResult:=mrOK;
  VK_ESCAPE: ModalResult:=mrCancel;
 end;
end;

end.
