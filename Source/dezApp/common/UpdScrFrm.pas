unit UpdScrFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, BaseForm,
  dxLayoutcxEditAdapters, cxTextEdit, cxMemo, dxLayoutControl, cxProgressBar,
  dxLayoutLookAndFeels, dxGDIPlusClasses, cxImage, dxSkinsForm, dxSkinMcSkin,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinOffice2010Blue, dxLayoutContainer;

type
  TUpdScrForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    prb1: TcxProgressBar;
    itm_prb: TdxLayoutItem;
    txt1: TcxTextEdit;
    itm_txt: TdxLayoutItem;
    img1: TcxImage;
    itm_img: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    chk: TcxImage;
    itm_chk: TdxLayoutItem;
    sk1: TdxSkinController;
    grplc1Group2: TdxLayoutGroup;
    dwl: TcxImage;
    itm_dwl: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    unpack: TcxImage;
    itm_unpack: TdxLayoutItem;
    install: TcxImage;
    itm_install: TdxLayoutItem;
    laf1: TdxLayoutCxLookAndFeel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure UnShadow;
  public
    { Public declarations }
    procedure ChkUpd(txt :string; img :TcxImage);

  end;

var
  UpdScrForm: TUpdScrForm;

implementation

{$R *.dfm}

procedure TUpdScrForm.ChkUpd(txt :string; img :TcxImage);
begin
  UnShadow;
  txt1.Text:=txt;
  img.Visible:=True;
  img.Style.Shadow:=True;
  Application.ProcessMessages;
end;

procedure TUpdScrForm.UnShadow;
var
  i :Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType=TcxImage then
    (Components[i] as TcxImage).Style.Shadow:=False;
  end;
end;

procedure TUpdScrForm.FormCreate(Sender: TObject);
begin
  chk.Visible:=False;
  dwl.Visible:=False;
end;

end.
