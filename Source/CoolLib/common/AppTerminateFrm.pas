unit AppTerminateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue,
  BaseForm,
  dxSkinsDefaultPainters, cxImage, cxProgressBar, dxGDIPlusClasses, dxSkinMcSkin;

type
  TAppTerminateForm = class(TDezModalForm)
    Timer: TTimer;
    Panel1: TPanel;
    Msg: TLabel;
    Panel2: TPanel;
    ProgressBar: TcxProgressBar;
    Image: TcxImage;
    procedure TimerTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}
procedure TAppTerminateForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_ESCAPE, VK_RETURN: ModalResult:=mrOk;
 end;
end;

procedure TAppTerminateForm.ImageClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TAppTerminateForm.TimerTimer(Sender: TObject);
begin
 with ProgressBar do begin
  Position:=Position+1;
  if Position>=Properties.Max then ModalResult:=mrOk;
 end;
end;

end.
