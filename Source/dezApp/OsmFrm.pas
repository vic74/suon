unit OsmFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxPropertiesStore, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,frxFIBComponents,
  dxLayoutLookAndFeels, FIBDataSet, pFIBDataSet,FIBQuery,pFIBCacheQueries,
  BaseForm, cxGridCustomPopupMenu, cxGridPopupMenu, frxClass, frxExportXLS,
  frxExportRTF, dxSkinsdxBarPainter, dxBar, dxLayoutControlAdapters,
  dxLayoutContainer, ClosePeriodFrm, dxSkinDevExpressStyle, EXLReportExcelTLB,
  EXLReportBand, EXLReport, cxCurrencyEdit, dxSkinVS2010;

type
  TOsmForm = class(TDezForm)
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
    ppm1: TcxGridPopupMenu;
    fr: TfrxReport;
    frxls1: TfrxXLSExport;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    wExp1: TfrxRTFExport;
    cbb_manager: TcxLookupComboBox;
    itmlc1Item1: TdxLayoutItem;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    clv1HOUSE: TcxGridDBColumn;
    brm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmlc1Item11: TdxLayoutItem;
    btn_delhouse: TdxBarButton;
    btn_AddHouse: TdxBarButton;
    btn_Calc: TdxBarButton;
    xlr1: TEXLReport;
    btn_Excel: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    clvAllSum: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_printClick(Sender: TObject);
    procedure btn_delhouseClick(Sender: TObject);
    procedure ds_planAfterOpen(DataSet: TDataSet);
    procedure btn_AddHouseClick(Sender: TObject);
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
    procedure PrintRep;
    //
    procedure DeleteHouse;
    procedure AddHouse;
    procedure RecalcSum;
    //
    procedure ExportExcel;
  public
    { Public declarations }
  end;

var
  OsmForm: TOsmForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, TRFinPlanEditFrm, LoadingSplash,
  FinHouseNewFrm, dezInfo;

{$R *.dfm}

procedure TOsmForm.AddHouse;
var
  F: TFinHouseNewForm;
begin
  F:=TFinHouseNewForm.Create(self);
  try
    F.Y:=Y;
    F.AType:=0; //общестрой
    F.DS:=ds_plan;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TOsmForm.btn_AddHouseClick(Sender: TObject);
begin
  AddHouse;
end;

procedure TOsmForm.btn_CalcClick(Sender: TObject);
begin
  ScanClosePeriod(1, edt_Year.EditValue);
  v1.BeginUpdate;
  try
    RecalcSum;
  finally
    v1.EndUpdate;
  end;
end;

procedure TOsmForm.btn_delhouseClick(Sender: TObject);
begin
  DeleteHouse;
end;

procedure TOsmForm.btn_ExcelClick(Sender: TObject);
begin
  ExportExcel;
end;

procedure TOsmForm.btn_execClick(Sender: TObject);
begin
  SplashVisibility(true, '');
  MakePlan;
  SplashVisibility(false, '');
end;

procedure TOsmForm.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

function TOsmForm.CheckParam :Boolean;
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

procedure TOsmForm.MakePlan;
var
  manager :variant;
  i :integer;
begin
  if CheckParam then
  begin
    Y:=edt_year.EditValue;
    manager:=cbb_manager.EditValue;
      with ds_plan do
      begin
        Close;
        MainWhereClause:='tp.y=:year';
        if manager<>null then
        MainWhereClause:= MainWhereClause+'  and m.worker=:manager';
        if ParamExist('manager',i) then
        ParamByName('manager').AsVariant:=manager;
        ParamByName('year').AsVariant:=edt_year.EditValue;
        Open;
      end;
  end;
end;

procedure TOsmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TOsmForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;

procedure TOsmForm.OpenDs;
begin
  ds_street.Open;
  ds_worker.Open;
  //DSOptoins(ds_plan,'','TRFINPLAN','Y;HOUSE','',false);
end;

procedure TOsmForm.PrintRep;
var
  Q: TfrxFIBQuery;
  fdb: TfrxFIBDatabase;
begin
  fr.LoadFromFile('rep\ftr.fr3');
   fr.Variables['varYEAR'] := edt_year.EditValue;
  Q := fr.FindObject('Q') as TfrxFIBQuery;
  Q.ParamByName('year').Value:=edt_year.EditValue;
  fdb := fr.FindObject('fdb') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
end;

procedure TOsmForm.RecalcSum;
var
  Q: TFIBQuery;
begin
  SplashVisibility(true,'Дождитесь окончания операции ...');
  try
    //FinYPlan.RecalcOst(Y,0); //общестрой
    //MakePlan; //разнос остатков
    //пересчет отстатков
    Q:=cmDB.GetQuery('execute procedure SYS_MAKETRFINPLAN(:Y)', cmDB.WT);
    Q.ParamByName('Y').AsInteger:=Y;
    Q.ExecQuery;
    cmDb.FreeQuery(Q);
    cmDB.WT.Commit;
  finally
    SplashVisibility(false);
  end;
end;

procedure TOsmForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
  ShowEditForm;
  if key=VK_DELETE then
  if cmMessageBox('Удалить суммы по текущей записи?') then
  DeleteSum;
end;

procedure TOsmForm.DeleteHouse;
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

procedure TOsmForm.DeleteSum;
var
  Q :TFIBQuery;
begin
  if v1.GetColumnByFieldName('HOUSE').EditValue=null then Exit;
  CheckTran;
  Q:=GetQueryForUse(cmDB.WT,
                  'delete from TRFINPLAN where (Y = :Y) and (HOUSE = :HOUSE)');
  Q.ParamByName('Y').AsVariant:=v1.GetColumnByFieldName('Y').EditValue;
  Q.ParamByName('HOUSE').AsVariant:=v1.GetColumnByFieldName('HOUSE').EditValue;
  Q.ExecQuery;
  cmDB.WT.Commit;
  ds_plan.CloseOpen(True);
end;

procedure TOsmForm.ds_planAfterOpen(DataSet: TDataSet);
begin
  btn_delhouse.Enabled:= not ds_plan.Eof;
  btn_AddHouse.Enabled:= not ds_plan.Eof;
  btn_Calc.Enabled:= not ds_plan.Eof;
end;

procedure TOsmForm.ExportExcel;
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
      Range:='A1:I3';
    with Bands.AddBand(xlrbtMasterData) do
      Range:='A4:I4';
    with Bands.AddBand(xlrbtSummary) do
    Range:='A5:I5';
    Show;
  end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TOsmForm.ShowEditForm;
var
  Form :TTRFinPlanEditForm;
begin
  Form := TTRFinPlanEditForm.Create(Application);
  with Form do
  begin
    TableName:='TRFINPLAN';
    house:=v1.GetColumnByFieldName('HOUSE').EditValue;
    year:=edt_year.EditValue;
    street:=cbb_street.Text;
    nomer:=v1.GetColumnByFieldName('nomer').EditValue;
    ShowModal;
    if ModalResult=mrOk then
    ds_plan.CloseOpen(false);
  end;
  Form.Free;
end;

  initialization
  RegisterClass(TOsmForm);
end.
