unit KapRemOsmFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  dxLayoutLookAndFeels, BaseForm, AppUtils, FIBDataSet, pFIBDataSet,
  cxPropertiesStore, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridExportLink, EXLReportExcelTLB, EXLReportBand, EXLReport, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxLayoutContainer;

type
  TKapRemOsmForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_exec: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_showresult: TpFIBDataSet;
    src_showresult: TDataSource;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1SHOWHOUSE: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1BUILDYEAR: TcxGridDBColumn;
    clv1FLOOR_CNT: TcxGridDBColumn;
    clv1ENTRANCE_CNT: TcxGridDBColumn;
    clv1FLAT_CNT: TcxGridDBColumn;
    clv1TOTAL_SQ: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MLNAME: TcxGridDBColumn;
    clv1V: TcxGridDBColumn;
    clv1JWORK: TcxGridDBColumn;
    vb1: TcxGridDBBandedTableView;
    clvb1CODE: TcxGridDBBandedColumn;
    clvb1SHOWHOUSE: TcxGridDBBandedColumn;
    clvb1STREETNAME: TcxGridDBBandedColumn;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1BUILDYEAR: TcxGridDBBandedColumn;
    clvb1FLOOR_CNT: TcxGridDBBandedColumn;
    clvb1ENTRANCE_CNT: TcxGridDBBandedColumn;
    clvb1FLAT_CNT: TcxGridDBBandedColumn;
    clvb1TOTAL_SQ: TcxGridDBBandedColumn;
    clvb1MLIST: TcxGridDBBandedColumn;
    clvb1MLNAME: TcxGridDBBandedColumn;
    clvb1V: TcxGridDBBandedColumn;
    clvb1JWORK: TcxGridDBBandedColumn;
    clvb1NOTE: TcxGridDBBandedColumn;
    clvb1_11: TcxGridDBBandedColumn;
    clvb1_12: TcxGridDBBandedColumn;
    clvb1_13: TcxGridDBBandedColumn;
    clvb1_14: TcxGridDBBandedColumn;
    clvb1_15: TcxGridDBBandedColumn;
    clvb1_16: TcxGridDBBandedColumn;
    clvb1_17: TcxGridDBBandedColumn;
    clvb1_18: TcxGridDBBandedColumn;
    clvb1_19: TcxGridDBBandedColumn;
    clvb1_20: TcxGridDBBandedColumn;
    clvb1_21: TcxGridDBBandedColumn;
    clvb1_22: TcxGridDBBandedColumn;
    clvb1_23: TcxGridDBBandedColumn;
    clvb1_24: TcxGridDBBandedColumn;
    clvb1_25: TcxGridDBBandedColumn;
    clvb1_26: TcxGridDBBandedColumn;
    clvb1_27: TcxGridDBBandedColumn;
    clvb1_28: TcxGridDBBandedColumn;
    stl1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    xls1: TEXLReport;
    btn_xls: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_execClick(Sender: TObject);
    procedure vb1CustomDrawBandHeader(Sender: TcxGridBandedTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridBandHeaderViewInfo;
      var ADone: Boolean);
    procedure btn_xlsClick(Sender: TObject);
  private
    { Private declarations }
    Akt: Variant;
    procedure OpenDs;
    procedure GetAkt;
    procedure ExportXls;
  public
    { Public declarations }
  end;

var
  KapRemOsmForm: TKapRemOsmForm;

implementation

uses cmDBUnit, ShHouseGetFrm, LoadingSplash;
{$R *.dfm}

procedure TKapRemOsmForm.btn_execClick(Sender: TObject);
begin
  GetAkt;
  // ExportGridToExcel('c:\temp\test.xls',grd1,True,True,true);
end;

procedure TKapRemOsmForm.btn_xlsClick(Sender: TObject);
begin
  //ExportXls;
  SimpleExportInExcel(grd1);
end;

procedure TKapRemOsmForm.ExportXls;
begin
  if ds_showresult.IsEmpty then Exit;

  ds_showresult.DisableControls;
  xls1.Template := ExtractFilePath(Application.ExeName) + 'rep\kaprem.xls';
  xls1.Show();
  ds_showresult.EnableControls;
end;

procedure TKapRemOsmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TKapRemOsmForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
end;

procedure TKapRemOsmForm.GetAkt;
var
  F: TShHouseGetForm;
begin
  F := TShHouseGetForm.CreateModal(Self);
  if F.ShowModal = mrOk then
  begin
    SplashVisibility(true, 'Загружаются данные');
    Akt := F.code;
    OpenDs;
    SplashVisibility(False);
  end;
  F.Free;
end;

procedure TKapRemOsmForm.OpenDs;
begin
  if Akt = null then
    Exit;
  with ds_showresult do
  begin
    Close;
    MainWhereClause := 'sr.showhouse=:Akt and sr.rtype=2';
    ParamByName('Akt').AsVariant := Akt;
    OrderClause := 's.name,sr.house';
    Open;
  end;
end;

procedure TKapRemOsmForm.vb1CustomDrawBandHeader
  (Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
begin
  AViewInfo.MultiLinePainting := true;
end;

initialization

RegisterClass(TKapRemOsmForm);

end.
