unit DispLoginFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit;

type
  TDispLoginForm = class(TForm)
    Login: TcxTextEdit;
    Pass: TcxTextEdit;
    btn_Ok: TcxButton;
    lbl1: TLabel;
    lbl2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DispLoginForm: TDispLoginForm;

implementation

{$R *.dfm}

end.
