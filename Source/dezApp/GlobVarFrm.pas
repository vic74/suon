unit GlobVarFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonForm,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  cxStyles, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxRibbon, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, AppUtils,
  dxLayoutLookAndFeels, dxRibbonSkins,
  dxLayoutControlAdapters, dxLayoutContainer;

type
  TGlobVarForm = class(Tdxcustomribbonform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    Itm_grd1: TdxLayoutItem;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    btn_cancel: TcxButton;
    Item_cancel: TdxLayoutItem;
    btn_ok: TcxButton;
    Item_ok: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    ds1: TpFIBDataSet;
    src1: TDataSource;
    clv1Code: TcxGridDBColumn;
    clv1Caption: TcxGridDBColumn;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    strep1: TcxStyleRepository;
    styl_select1: TcxStyle;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GlobVarForm: TGlobVarForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TGlobVarForm.FormCreate(Sender: TObject);
begin
  DSOptoins(ds1,'','GLOBALPLANVAR','ID','');
end;

initialization
 RegisterClass(TGlobVarForm);
end.
