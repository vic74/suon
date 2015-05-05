unit ShowHousePlanFrm;

interface

uses
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cmDBUnit, AppUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsdxRibbonPainter, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutControl, cxClasses, dxRibbon, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TShowHousePlanForm = class(Tdxcustomribbonform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm2: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowHousePlanForm: TShowHousePlanForm;

implementation

{$R *.dfm}

procedure TShowHousePlanForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShowHousePlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

initialization
 RegisterClass(TShowHousePlanForm);
end.
