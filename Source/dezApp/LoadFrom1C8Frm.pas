unit LoadFrom1C8Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  System.DateUtils,
  FIBDataSet, pFIBDataSet, cxCheckBox, cxDropDownEdit, cxMaskEdit, cxBarEditItem,
  cxCurrencyEdit, dxSkinDevExpressStyle;

type
  TLoadFrom1C8Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    lgrplc1Group4: TdxLayoutGroup;
    lgrplc1Group5: TdxLayoutGroup;
    BarManager1: TdxBarManager;
    doc1: TdxBarDockControl;
    LItemlc1Item1: TdxLayoutItem;
    br1: TdxBar;
    btn_Refresh1: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItemlc1Item11: TdxLayoutItem;
    src_NGPROOM1: TDataSource;
    ds_NGPROOM1: TpFIBDataSet;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SQ: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    doc2: TdxBarDockControl;
    LItemlc1Item12: TdxLayoutItem;
    br2: TdxBar;
    btn_Refresh2: TdxBarButton;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    LItemlc1Item13: TdxLayoutItem;
    src_Kontragent1: TDataSource;
    ds_Kontragent1: TpFIBDataSet;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    lgrplc1Group6: TdxLayoutGroup;
    lgrplc1Group7: TdxLayoutGroup;
    lc1Item1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    lgrplc1Group8: TdxLayoutGroup;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    LItemlc1Item2: TdxLayoutItem;
    doc3: TdxBarDockControl;
    LItemlc1Item21: TdxLayoutItem;
    doc4: TdxBarDockControl;
    LItemlc1Item22: TdxLayoutItem;
    br3: TdxBar;
    br4: TdxBar;
    btn_Refresh3: TdxBarButton;
    bItm_Y: TcxBarEditItem;
    btn_Refresh3_1: TdxBarButton;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    LItemlc1Item23: TdxLayoutItem;
    ds_DOG1C: TpFIBDataSet;
    src_DOG1C: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3ACTIVE: TcxGridDBColumn;
    clv3KONTRAGENT1: TcxGridDBColumn;
    clv3KNAME: TcxGridDBColumn;
    clv3CALCSUMTYPE: TcxGridDBColumn;
    clv3DOGTYPE: TcxGridDBColumn;
    clv3NGPROOM1: TcxGridDBColumn;
    clv3CSTNAME: TcxGridDBColumn;
    clv3NDNAME: TcxGridDBColumn;
    ds_HOUSEDOG1C: TpFIBDataSet;
    src_HOUSEDOG1C: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4M: TcxGridDBColumn;
    clv4Y: TcxGridDBColumn;
    clv4HOUSE: TcxGridDBColumn;
    clv4SNAME: TcxGridDBColumn;
    clv4NOMER: TcxGridDBColumn;
    clv4DOG1C: TcxGridDBColumn;
    BarCombo1: TdxBarCombo;
    doc5: TdxBarDockControl;
    LItemlc1Item24: TdxLayoutItem;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    LItemlc1Item25: TdxLayoutItem;
    ds_DOG1CNGP: TpFIBDataSet;
    src_DOG1CNGP: TDataSource;
    clv5CODE: TcxGridDBColumn;
    clv5NAME: TcxGridDBColumn;
    clv5ACTIVE: TcxGridDBColumn;
    clv5KONTRAGENT1: TcxGridDBColumn;
    clv5KNAME: TcxGridDBColumn;
    clv5CALCSUMTYPE: TcxGridDBColumn;
    clv5CSTNAME: TcxGridDBColumn;
    clv5DOGTYPE: TcxGridDBColumn;
    clv5NDNAME: TcxGridDBColumn;
    clv5SNAME: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5SQ: TcxGridDBColumn;
    clv5NOTE: TcxGridDBColumn;
    clv5NGPROOM1: TcxGridDBColumn;
    br5: TdxBar;
    btn_Refresh5: TdxBarButton;
    doc6: TdxBarDockControl;
    LItemlc1Item26: TdxLayoutItem;
    br6: TdxBar;
    bc_M: TdxBarCombo;
    b_Y: TcxBarEditItem;
    btn_Refresh6: TdxBarButton;
    v6: TcxGridDBTableView;
    l6: TcxGridLevel;
    grd6: TcxGrid;
    LItemlc1Item27: TdxLayoutItem;
    ds_OBOROT1C: TpFIBDataSet;
    src_OBOROT1C: TDataSource;
    clv6CODE: TcxGridDBColumn;
    clv6M: TcxGridDBColumn;
    clv6Y: TcxGridDBColumn;
    clv6DOG1C: TcxGridDBColumn;
    clv6DNAME: TcxGridDBColumn;
    clv6ACTIVE: TcxGridDBColumn;
    clv6KONTRAGENT1: TcxGridDBColumn;
    clv6KNAME: TcxGridDBColumn;
    clv6CALCSUMTYPE: TcxGridDBColumn;
    clv6CNAME: TcxGridDBColumn;
    clv6DOGTYPE: TcxGridDBColumn;
    clv6DTNAME: TcxGridDBColumn;
    clv6SALDO: TcxGridDBColumn;
    clv6NACH: TcxGridDBColumn;
    clv6OPL: TcxGridDBColumn;
    clv6SALDO1: TcxGridDBColumn;
    b_Active: TcxBarEditItem;
    doc7: TdxBarDockControl;
    LItemlc1Item28: TdxLayoutItem;
    br7: TdxBar;
    v7: TcxGridDBTableView;
    l7: TcxGridLevel;
    grd7: TcxGrid;
    LItemlc1Item29: TdxLayoutItem;
    bc_M2: TdxBarCombo;
    b_Y2: TcxBarEditItem;
    btn_Refresh7: TdxBarButton;
    b_Active1: TcxBarEditItem;
    ds_HOUSEOBOROT1C: TpFIBDataSet;
    src_HOUSEOBOROT1C: TDataSource;
    clv7CODE: TcxGridDBColumn;
    clv7M: TcxGridDBColumn;
    clv7Y: TcxGridDBColumn;
    clv7HOUSE: TcxGridDBColumn;
    clv7SNAME: TcxGridDBColumn;
    clv7NOMER: TcxGridDBColumn;
    clv7DOG1C: TcxGridDBColumn;
    clv7DNAME: TcxGridDBColumn;
    clv7ACTIVE: TcxGridDBColumn;
    clv7KONTRAGENT1: TcxGridDBColumn;
    clv7KNAME: TcxGridDBColumn;
    clv7CALCSUMTYPE: TcxGridDBColumn;
    clv7CNAME: TcxGridDBColumn;
    clv7DOGTYPE: TcxGridDBColumn;
    clv7DTNAME: TcxGridDBColumn;
    clv7SALDO: TcxGridDBColumn;
    clv7NACH: TcxGridDBColumn;
    clv7OPL: TcxGridDBColumn;
    clv7SALDO1: TcxGridDBColumn;
    btn_Excel1: TdxBarButton;
    btn_Excel2: TdxBarButton;
    btn_Excel3: TdxBarButton;
    btn_Excel3_1: TdxBarButton;
    btn_Excel4: TdxBarButton;
    btn_Excel5: TdxBarButton;
    btn_Excel7: TdxBarButton;
    dvSaldo1C: TcxGridDBColumn;
    dvNach1C: TcxGridDBColumn;
    dvOpl1C: TcxGridDBColumn;
    dvKShortName: TcxGridDBColumn;
    dvSaldo1C1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_Refresh1Click(Sender: TObject);
    procedure btn_Refresh2Click(Sender: TObject);
    procedure ReopenHouses;
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_Refresh3_1Click(Sender: TObject);
    procedure ds_DOG1CAfterOpen(DataSet: TDataSet);
    procedure btn_Refresh5Click(Sender: TObject);
    procedure btn_Refresh3Click(Sender: TObject);
    procedure btn_Refresh6Click(Sender: TObject);
    procedure btn_Refresh7Click(Sender: TObject);
    procedure btn_Excel1Click(Sender: TObject);
    procedure btn_Excel2Click(Sender: TObject);
    procedure btn_Excel3Click(Sender: TObject);
    procedure btn_Excel3_1Click(Sender: TObject);
    procedure btn_Excel4Click(Sender: TObject);
    procedure btn_Excel5Click(Sender: TObject);
    procedure btn_Excel7Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetDefault;
    procedure OpenOborot;
    procedure OpenHouseOborot;
  public
    { Public declarations }
  end;

var
  LoadFrom1C8Form: TLoadFrom1C8Form;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TLoadFrom1C8Form.btn_Excel1Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TLoadFrom1C8Form.btn_Excel2Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd2);
end;

procedure TLoadFrom1C8Form.btn_Excel3Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd3);
end;

procedure TLoadFrom1C8Form.btn_Excel3_1Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd4);
end;

procedure TLoadFrom1C8Form.btn_Excel4Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd5);
end;

procedure TLoadFrom1C8Form.btn_Excel5Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd6);
end;

procedure TLoadFrom1C8Form.btn_Excel7Click(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd7);
end;

procedure TLoadFrom1C8Form.btn_Refresh1Click(Sender: TObject);
begin
  ds_NGPROOM1.CloseOpen(false);
  btn_Excel1.Enabled:= not ds_NGPROOM1.IsEmpty;
end;

procedure TLoadFrom1C8Form.btn_Refresh2Click(Sender: TObject);
begin
  ds_Kontragent1.CloseOpen(false);
  btn_Excel2.Enabled:= not ds_Kontragent1.IsEmpty;
end;

procedure TLoadFrom1C8Form.btn_Refresh3Click(Sender: TObject);
begin
  ds_DOG1C.CloseOpen(false);
  btn_Excel3.Enabled:= not ds_DOG1C.IsEmpty;
end;

procedure TLoadFrom1C8Form.btn_Refresh3_1Click(Sender: TObject);
begin
  ReopenHouses;
end;

procedure TLoadFrom1C8Form.btn_Refresh5Click(Sender: TObject);
begin
  ds_DOG1CNGP.CloseOpen(false);
  btn_Excel4.Enabled:= not ds_DOG1CNGP.IsEmpty;
end;

procedure TLoadFrom1C8Form.btn_Refresh6Click(Sender: TObject);
begin
  OpenOborot;
end;

procedure TLoadFrom1C8Form.btn_Refresh7Click(Sender: TObject);
begin
  OpenHouseOborot;
end;

procedure TLoadFrom1C8Form.ds_DOG1CAfterOpen(DataSet: TDataSet);
begin
  ReopenHouses;
end;

procedure TLoadFrom1C8Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TLoadFrom1C8Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  SetDefault;
end;

procedure TLoadFrom1C8Form.OpenHouseOborot;
begin
  with ds_HOUSEOBOROT1C do begin
    Close;
    if b_Active1.EditValue = true then
      MainWhereClause:='O.M=:M and O.Y=:Y and D."ACTIVE"=1' else
      MainWhereClause:='O.M=:M and O.Y=:Y';
      ParamByName('M').AsVariant:= bc_M2.ItemIndex;
      ParamByName('Y').AsVariant:= b_Y2.EditValue;
      OrderClause:= 'S.NAME, H.NOMER';
    Open;
  end;
  btn_Excel7.Enabled:= not ds_HOUSEOBOROT1C.IsEmpty;
end;

procedure TLoadFrom1C8Form.OpenOborot;
begin
  with ds_OBOROT1C do begin
    Close;
    if b_Active.EditValue = true then
      MainWhereClause:='O.M=:M and O.Y=:Y and D."ACTIVE"=1' else
      MainWhereClause:='O.M=:M and O.Y=:Y';
      ParamByName('M').AsVariant:= bc_M.ItemIndex;
      ParamByName('Y').AsVariant:= b_Y.EditValue;
    Open;
  end;
  btn_Excel5.Enabled:= not ds_OBOROT1C.IsEmpty;
end;

procedure TLoadFrom1C8Form.ReopenHouses;
begin
  with ds_HOUSEDOG1C do begin
    Close;
    MainWhereClause:= 'M=:M and Y=:Y and HD.DOG1C=:DOG1C';
    ParamByName('M').AsVariant:= BarCombo1.ItemIndex;
    ParamByName('Y').AsVariant:= bItm_Y.EditValue;
    ParamByName('DOG1C').AsVariant:= v3.FN('CODE');
    OrderClause:= 'S.NAME, H.NOMER';
    Open;
  end;
  btn_Excel3_1.Enabled:= not ds_HOUSEDOG1C.IsEmpty;
end;

procedure TLoadFrom1C8Form.SetDefault;
begin
  if b_Y2.EditValue=Null then
  begin
    BarCombo1.ItemIndex:= MonthOf(Date);
    bItm_Y.EditValue:= YearOf(Date);
    bc_M.ItemIndex:= MonthOf(Date);
    b_Y.EditValue:= YearOf(Date);
    bc_M2.ItemIndex:= MonthOf(Date);
    b_Y2.EditValue:= YearOf(Date);
  end;
end;

procedure TLoadFrom1C8Form.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReopenHouses;
end;

procedure TLoadFrom1C8Form.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP : ReopenHouses;
    VK_DOWN : ReopenHouses;
  end;
end;

initialization
 RegisterClass(TLoadFrom1C8Form);
end.
