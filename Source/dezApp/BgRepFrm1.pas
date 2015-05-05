unit BgRepFrm1;

interface

uses
  dxRibbonForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinscxPCPainter, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, AppUtils, cxPropertiesStore, BaseForm,
  dxRibbonSkins, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TBgRepForm1 = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BgRepForm1: TBgRepForm1;

implementation

{$R *.dfm}


procedure TBgRepForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBgRepForm1.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

initialization
 RegisterClass(TBgRepForm1);
end.
