unit TRLFinPlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxPropertiesStore, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  dxLayoutLookAndFeels, FIBDataSet, pFIBDataSet,FIBQuery,pFIBCacheQueries,
  BaseForm, dxSkinsdxBarPainter, dxBar, dxLayoutControlAdapters,
  dxLayoutContainer, ClosePeriodFrm, dxSkinDevExpressStyle, EXLReportExcelTLB,
  EXLReportBand, EXLReport, cxCurrencyEdit, cxNavigator;

type
  TTRLFinPlanForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itml_grd: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_plan: TpFIBDataSet;
    src_plan: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1SUMOST: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_delhouse: TdxBarButton;
    btn_AddHouse: TdxBarButton;
    btn_Calc: TdxBarButton;
    doc1: TdxBarDockControl;
    itmlc1Item1: TdxLayoutItem;
    clv1HOUSE: TcxGridDBColumn;
    btn_Excel: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    xlr1: TEXLReport;
    clv1SummAll: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddHouseClick(Sender: TObject);
    procedure ds_planAfterOpen(DataSet: TDataSet);
    procedure btn_delhouseClick(Sender: TObject);
    procedure btn_CalcClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    Y: Variant;
    procedure OpenDs;
    procedure MakePlan;
    function CheckParam :Boolean;
    procedure ShowEditForm;
    procedure DeleteSum;
    procedure AddHouse;
    procedure DeleteHouse;
    procedure RecalcSum;
    //
    procedure ExportExcel;
  public
    { Public declarations }
  end;

var
  TRLFinPlanForm: TTRLFinPlanForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, TRLFinPlanEditFrm, LoadingSplash,
  FinHouseNewFrm, dezInfo;

{$R *.dfm}

procedure TTRLFinPlanForm.DeleteHouse;
begin
  if gFN(v1,'HOUSE') = null then
    raise EMyException.Create('Не указан дом!');
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'О программе', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDYES then
  begin
    ds_plan.Delete;
  end;
end;

procedure TTRLFinPlanForm.AddHouse;
var
  F: TFinHouseNewForm;
begin
  F:=TFinHouseNewForm.Create(self);
  try
    F.Y:=Y;
    F.AType:=1; //lift
    F.DS:=ds_plan;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TTRLFinPlanForm.RecalcSum;
begin
  SplashVisibility(true,'Дождитесь окончания операции ...');
  try
    FinYPlan.RecalcOst(Y,1); //лифт
    MakePlan;
  finally
    SplashVisibility(false);
  end;
end;

procedure TTRLFinPlanForm.btn_AddHouseClick(Sender: TObject);
begin
  AddHouse;
end;

procedure TTRLFinPlanForm.btn_CalcClick(Sender: TObject);
begin
  ScanClosePeriod(1, edt_Year.EditValue);
  RecalcSum;
end;

procedure TTRLFinPlanForm.btn_delhouseClick(Sender: TObject);
begin
  DeleteHouse;
end;

procedure TTRLFinPlanForm.btn_ExcelClick(Sender: TObject);
begin
  ExportExcel;
end;

procedure TTRLFinPlanForm.btn_execClick(Sender: TObject);
begin
  SplashVisibility(true, '');
   MakePlan;
  SplashVisibility(false, '');
end;

function TTRLFinPlanForm.CheckParam :Boolean;
  procedure ShowError(mess :string);
  begin
    cmShowMessage(mess,true);
    Result:=False;
  end;
begin
  Result:=True;
  if edt_year.EditValue=null then
  begin
    ShowError('Не указан год!');
    Exit;
  end;
end;

procedure TTRLFinPlanForm.MakePlan;
begin
  if CheckParam then
  begin
    Y:= edt_year.EditValue;
    with ds_plan do
    begin
      Close;
      //ParamByName('street').AsVariant:=cbb_street.EditValue;
      MainWhereClause:='tp.y=:year';
      ParamByName('year').AsVariant:=edt_year.EditValue;
      Open;
    end;
  end;
end;

procedure TTRLFinPlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRLFinPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;

procedure TTRLFinPlanForm.OpenDs;
begin
  ds_street.Open;
  //DSOptoins(ds_plan,'','TRLFINPLAN','Y;HOUSE','',false);
end;

procedure TTRLFinPlanForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
  ShowEditForm;
  if key=VK_DELETE then
  if cmMessageBox('Удалить суммы по текущей записи?') then
  DeleteSum;
end;

procedure TTRLFinPlanForm.DeleteSum;
var
  Q :TFIBQuery;
begin
  if v1.GetColumnByFieldName('Code').EditValue=null then Exit;
  CheckTran;
  Q:=GetQueryForUse(cmDB.WT,
                  'delete from TRLFINPLAN where (Y = :Y) and (HOUSE = :HOUSE)');
  Q.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
  Q.ParamByName('HOUSE').AsVariant:=v1.GetColumnByFieldName('Code').EditValue;
  Q.ExecQuery;
  cmDB.WT.Commit;
  ds_plan.CloseOpen(True);
end;

procedure TTRLFinPlanForm.ds_planAfterOpen(DataSet: TDataSet);
begin
  btn_delhouse.Enabled:= not ds_plan.Eof;
  btn_AddHouse.Enabled:= not ds_plan.Eof;
  btn_Calc.Enabled:= not ds_plan.Eof;
end;

procedure TTRLFinPlanForm.ExportExcel;
begin
  v1.BeginUpdate(lsimImmediate);
  try
  with xlr1 do begin
    Template:= AppPath+'rep\finplan.xls';
    // Dictionary
    Dictionary.Clear;
    with Dictionary.Add do
    begin
      FieldName:='Y';
      ValueAsString:=edt_year.EditValue;
    end;
    // Range
    with Bands.AddBand(xlrbtTitle) do
      Range:='A1:H3';
    with Bands.AddBand(xlrbtMasterData) do
      Range:='A4:H4';
    with Bands.AddBand(xlrbtSummary) do
    Range:='A5:H5';
    Show;
  end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TTRLFinPlanForm.ShowEditForm;
var
  Form :TTRLFinPlanEditForm;
begin
  Form := TTRLFinPlanEditForm.Create(Application);
  with Form do
  begin
    house:=v1.FN('HOUSE');
    year:=edt_year.EditValue;
    street:=v1.FN('SNAME');
    nomer:=v1.FN('NOMER');
    ShowModal;
    if ModalResult=mrOk then
    ds_plan.CloseOpen(false);
  end;
  Form.Free;
end;

  initialization
  RegisterClass(TTRLFinPlanForm);
end.
