unit UpgradeFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinMcSkin, dxSkinsdxRibbonPainter,
  dxRibbonForm,
  cxClasses, dxRibbon, cxControls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxGraphics,
  cxLookAndFeels, dxSkinsDefaultPainters, dxSkinOffice2010Blue, dxRibbonSkins;

type
  TUpgradeForm = class(Tdxcustomribbonform)
    RibbonTab: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    btn1: TcxButton;
    rch1: TcxRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpgradeForm: TUpgradeForm;

implementation

{$R *.dfm}

end.
