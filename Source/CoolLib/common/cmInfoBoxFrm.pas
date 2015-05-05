unit cmInfoBoxFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinsDefaultPainters, Menus, cxButtons,
  BaseForm,
  dxGDIPlusClasses, cxImage, dxSkinMcSkin, dxSkinDevExpressStyle;

type
  TcmInfoBoxForm = class(TDezModalForm)
    Message: TLabel;
    Timer: TTimer;
    Image1: TcxImage;
    Image2: TcxImage;
    Button1: TcxButton;
    Button2: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function GetErrorPicture: boolean;
    procedure SetErrorPicture(const Value: boolean);
  public
   property ErrorPicture: boolean read GetErrorPicture write SetErrorPicture;
   procedure SetTimeOut(TimeOut: integer);
  end;

var
  cmInfoBoxForm: TcmInfoBoxForm;


implementation

{$R *.dfm}

procedure TcmInfoBoxForm.Button1Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TcmInfoBoxForm.Button2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TcmInfoBoxForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_RETURN: ModalResult:=mrOK;
  VK_ESCAPE: ModalResult:=mrCancel;
 end;
end;

function TcmInfoBoxForm.GetErrorPicture: boolean;
begin
  Result:=Image1.Visible;
end;

procedure TcmInfoBoxForm.SetErrorPicture(const Value: boolean);
begin
  Image1.Visible:=not Value;
  Image2.Visible:=Value;
end;

procedure TcmInfoBoxForm.SetTimeOut(TimeOut: integer);
begin
 if TimeOut=0 then Exit;
 Timer.Tag:=TimeOut;
 Button1.Caption:='('+IntToStr(Timer.Tag)+') Ok';
 Timer.Enabled:=true;
end;

procedure TcmInfoBoxForm.TimerTimer(Sender: TObject);
begin
 Timer.Tag:=Timer.Tag-1;
 if Timer.Tag<=0 then ModalResult:=mrOk
                 else Button1.Caption:='('+IntToStr(Timer.Tag)+') Ok';
end;

end.
