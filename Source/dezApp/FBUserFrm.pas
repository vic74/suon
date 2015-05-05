unit FBUserFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, dxLayoutControl, cxTextEdit,
  BaseForm,
  cxMaskEdit, Menus, StdCtrls, cxButtons, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TFBUserForm = class(TDezModalForm)
    grp_root: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    msedt1: TcxMaskEdit;
    Itm_edt: TdxLayoutItem;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    msedt_pass: TcxMaskEdit;
    Itm_pass: TdxLayoutItem;
    btn_cancel: TcxButton;
    Itm_cancel: TdxLayoutItem;
    btn_Ok: TcxButton;
    Itm_Ok: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    procedure msedt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure msedt_passKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FBUser, FBpass :string;
  end;

var
  FBUserForm: TFBUserForm;

implementation

{$R *.dfm}

procedure TFBUserForm.btn_OkClick(Sender: TObject);
begin
  FBUser:=msedt1.Text;
  FBpass:=msedt_pass.Text;
  if (FBUser<>'') and (FBpass<>'') then
  ModalResult:=mrOk else
  begin
    ShowMessage('Заполнены не все параметры!');
    ModalResult:=mrNone;
  end;
end;

procedure TFBUserForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { if Key=VK_RETURN then
  if msedt1.Text<>'' then
  ModalResult:=mrOk;
  if Key=VK_ESCAPE then
  ModalResult:=mrCancel;}
end;

procedure TFBUserForm.msedt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  ActiveControl:=msedt_pass;
end;

procedure TFBUserForm.msedt_passKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  ActiveControl:=btn_Ok;
end;

end.
