unit FinPlanSpecFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels, DB,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, dxSkinsdxBarPainter, dxBar, cxClasses, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, FIBQuery, pFIBCacheQueries,
  pFIBProps, cxDBExtLookupComboBox, cxCalc, cxCalendar, DateUtils,
  dxmdaset, cxDBLookupComboBox, cxBarEditItem, cxMaskEdit,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMemo, cxProgressBar;

type
  TFinPlanSpecForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lc1Group1: TdxLayoutGroup;
    lc1Group2: TdxLayoutGroup;
    lc1Group3: TdxLayoutGroup;
    lc1SplitterItem1: TdxLayoutSplitterItem;
    lc1SplitterItem2: TdxLayoutSplitterItem;
    lc1Group4: TdxLayoutGroup;
    BarM: TdxBarManager;
    doc1: TdxBarDockControl;
    lc1Item1: TdxLayoutItem;
    BarMBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    doc2: TdxBarDockControl;
    lc1Item2: TdxLayoutItem;
    BarMBar2: TdxBar;
    btn_DATEADD: TdxBarButton;
    dxBarButton5: TdxBarButton;
    btn_DATEDELETE: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litmlc1Item3: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    litm2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    litm3: TdxLayoutItem;
    ds_FinPlan: TpFIBDataSet;
    src_FinPlan: TDataSource;
    clCODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    ds_FINPLANDATE: TpFIBDataSet;
    src_FINPLANDATE: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2FINPLAN: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    ds_FINPLANSPEC: TpFIBDataSet;
    src_FINPLANSPEC: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3FINPLANDATE: TcxGridDBColumn;
    clv3FINPLANSTATE: TcxGridDBColumn;
    clv3FSCODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3SUMMA: TcxGridDBColumn;
    br3: TdxBar;
    doc3: TdxBarDockControl;
    litmlc1Item31: TdxLayoutItem;
    lGrplc1Group5: TdxLayoutGroup;
    btn_AddSate: TdxBarButton;
    lc1Group5: TdxLayoutGroup;
    lc1Group6: TdxLayoutGroup;
    lc1Group7: TdxLayoutGroup;
    lc1Group8: TdxLayoutGroup;
    lc1Group9: TdxLayoutGroup;
    lc1SplitterItem3: TdxLayoutSplitterItem;
    lc1Group10: TdxLayoutGroup;
    lc1Group11: TdxLayoutGroup;
    dxBarButton2: TdxBarButton;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    lc1Item3: TdxLayoutItem;
    ds_FinPlanParam: TpFIBDataSet;
    src_FinPlanParam: TDataSource;
    clv4NAME: TcxGridDBColumn;
    clv4_PLAN_SUM: TcxGridDBColumn;
    cl44_FACT_SUM: TcxGridDBColumn;
    clv4FSCODE: TcxGridDBColumn;
    clv4CODE: TcxGridDBColumn;
    clv4FINPLANPARAM: TcxGridDBColumn;
    clv4FINPLANDATE: TcxGridDBColumn;
    lc1Group12: TdxLayoutGroup;
    Doc4: TdxBarDockControl;
    Bar4Item: TdxLayoutItem;
    br4: TdxBar;
    tbl_Month: TdxMemData;
    src_Month: TDataSource;
    sqMonth: TcxBarEditItem;
    sqYear: TcxBarEditItem;
    sqGridView: TcxGridDBTableView;
    sqGridLevel: TcxGridLevel;
    sqGrid: TcxGrid;
    lc1Item4: TdxLayoutItem;
    tbl_SQ: TdxMemData;
    src_SQ: TDataSource;
    Memo: TcxMemo;
    lc1Item5: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
    lc1Item7: TdxLayoutItem;
    dxBarButton3: TdxBarButton;
    sqGridViewColumn1: TcxGridDBColumn;
    sqGridViewColumn2: TcxGridDBColumn;
    sqGridViewColumn3: TcxGridDBColumn;
    sqGridViewColumn4: TcxGridDBColumn;
    sqGridViewColumn5: TcxGridDBColumn;
    sqGridViewColumn6: TcxGridDBColumn;
    sqGridViewColumn7: TcxGridDBColumn;
    ds_FinPlanSrv: TpFIBDataSet;
    src_FinPlanSrv: TDataSource;
    clvFinPlanSrv: TcxGridDBColumn;
    clvSUMMA1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure clv1SRVDOGPropertiesEditValueChanged(Sender: TObject);
    procedure v1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure v1DataControllerDataChanged(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_DATEADDClick(Sender: TObject);
    procedure btn_DATEDELETEClick(Sender: TObject);
    procedure ds_FINPLANDATEBeforePost(DataSet: TDataSet);
    procedure clv3SUMMAPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AddSateClick(Sender: TObject);
    procedure clv4_PLAN_SUMPropertiesEditValueChanged(Sender: TObject);
    procedure cl44_FACT_SUMPropertiesEditValueChanged(Sender: TObject);
    procedure clv2DATAPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure RecDelete;
    procedure PostOrRollBak;
    procedure AddDate;
    procedure DeleteDate;
    procedure InsertSpec(value: Variant);
    procedure InsertParamSpec(value, fact: Variant);
    procedure EditSpec(value: Variant);
    procedure CreateState;
    procedure CreateMonth;
    //обмен сообщениями
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
  public
    { Public declarations }
  end;

var
  FinPlanSpecForm: TFinPlanSpecForm;

implementation

uses cmDBUnit, FinPlanSpecEditFrm, ScanBDR;

{$R *.dfm}


procedure TFinPlanSpecForm.AddDate;
begin
  try
    v2.DataController.Append;
  except on e: Exception  do
     dezException.Create(e.Message);
  end;
end;

procedure TFinPlanSpecForm.btn_AddSateClick(Sender: TObject);
begin
  CreateState;
end;

procedure TFinPlanSpecForm.btn_DATEADDClick(Sender: TObject);
begin
  AddDate;
end;

procedure TFinPlanSpecForm.btn_DATEDELETEClick(Sender: TObject);
begin
  DeleteDate;
end;

procedure TFinPlanSpecForm.btn_DeleteClick(Sender: TObject);
begin
  RecDelete;
end;

procedure TFinPlanSpecForm.cl44_FACT_SUMPropertiesEditValueChanged(
  Sender: TObject);
var
  Edit, Plan: TcxCustomEdit;
  NewValue, PlanValue: Variant;
  AIndex: Integer;
begin
  Edit:= Sender as TcxCustomEdit;
  //Plan:= TcxCalcEdit(clv4_PLAN_SUM);
  NewValue := Edit.EditingValue;
  PlanValue:= v4.GetColumnByFieldName('PLAN_SUM').EditValue;

  AIndex := v4.Controller.FocusedRowIndex; // запоминаем позицию
  //внесение записи
  InsertParamSpec(PlanValue, NewValue);
  v4.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TFinPlanSpecForm.clv1SRVDOGPropertiesEditValueChanged(
  Sender: TObject);
begin
  PostOrRollBak;
end;

procedure TFinPlanSpecForm.clv2DATAPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post(true);
end;

procedure TFinPlanSpecForm.clv3SUMMAPropertiesEditValueChanged(Sender: TObject);
var
  Edit: TcxCustomEdit;
  NewValue: Variant;
  AIndex: Integer;
begin
  Edit:= Sender as TcxCustomEdit;
  NewValue := Edit.EditingValue;
  AIndex := v3.Controller.FocusedRowIndex; // запоминаем позицию
  //внесение записи
  if v3.GetColumnByFieldName('CODE').EditValue = null then
     InsertSpec(NewValue)
  else
     EditSpec(NewValue);
  v3.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TFinPlanSpecForm.clv4_PLAN_SUMPropertiesEditValueChanged(
  Sender: TObject);
var
  Edit, Fact: TcxCustomEdit;
  NewValue, FactValue: Variant;
  AIndex: Integer;
begin
  Edit:= Sender as TcxCustomEdit;
  //Fact:= TcxCustomEdit(cl44_FACT_SUM);
  NewValue := Edit.EditingValue;
  FactValue:= v4.GetColumnByFieldName('FACT_SUM').EditValue;

  AIndex := v4.Controller.FocusedRowIndex; // запоминаем позицию
  //внесение записи
  InsertParamSpec(NewValue, FactValue);
  v4.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TFinPlanSpecForm.CreateMonth;
var
  i :Integer;

  procedure AddRec(ACode: Integer; AName: string);
  begin
    with tbl_month do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  //структура таблицы
  CreateField(tbl_month,'Code',ftInteger);
  CreateField(tbl_month,'Name',ftString,64);
  tbl_month.Open;
  //заполнение таблицы
  for i := 1 to 12 do
    AddRec(i,LongMonthNames[i]);
  //инициализация параметров
  sqYear.EditValue:=CurrentYear();
  sqMonth.EditValue:=MonthOf(Date);
end;

procedure TFinPlanSpecForm.CreateState;
var
  F: TFinPlanSpecEditForm;
begin
  F:= TFinPlanSpecEditForm.Create(self);
  try
    F.ShowModal;
    ds_FINPLANSPEC.CloseOpen(false);
  finally
    FreeAndNil(F);
  end;
end;

procedure TFinPlanSpecForm.DeleteDate;
var
  S: string;
begin
  try
    S:= 'Вы действительно хотите удалить данные за период '+VarToStr(v2.GetColumnByFieldName('DATA').EditValue);
    if Application.MessageBox(PChar(S), 'Предупреждение', MB_YESNO +
      MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
    begin
      v2.DataController.DeleteFocused;
    end;
  except on e: Exception  do
    begin
      v2.DataController.Cancel;
      dezException.Create(e.Message);
    end;
  end;
end;

procedure TFinPlanSpecForm.ds_FINPLANDATEBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('FINPLAN').AsVariant = null then
     DataSet.FieldByName('FINPLAN').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
end;

procedure TFinPlanSpecForm.dxBarButton1Click(Sender: TObject);
begin
  v1.DataController.Append;
  clv1SRVDOG.Focused:= True;
end;

procedure TFinPlanSpecForm.dxBarButton3Click(Sender: TObject);
var
  Obj: THouseList;
  BDR: TBDRCompareList;
begin
  Obj:=THouseList.Create;
  Obj.OnMessage:=Msg;
  Obj.CreateHouseList;
  BDR:=TBDRCompareList.Create(sqMonth.EditValue, sqYear.EditValue, Obj);
  BDR.OnMessage:=Msg;
  BDR.Execute(tbl_SQ);
  BDR.Free;
  Obj.Free;
end;

procedure TFinPlanSpecForm.EditSpec(value: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT, 'update FINPLANSPEC set SUMMA = :SUMMA where (CODE = :CODE);');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= v3.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('SUMMA').AsVariant:= value;
    Q.ExecQuery;
    ds_FINPLANSPEC.CloseOpen(false);
    //ds_FINPLANPARAM.CloseOpen(false);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinPlanSpecForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFinPlanSpecForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMonth;
  OpenDS;
end;

procedure TFinPlanSpecForm.InsertParamSpec(value, fact: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,
    'update or insert into FINPLANPARAMSPEC (CODE, FINPLANDATE, FINPLANPARAM, PLAN_SUM, FACT_SUM)'+#10#13+
    'values (:CODE, :FINPLANDATE, :FINPLANPARAM, :PLAN_SUM, :FACT_SUM)'+#10#13+
    'matching (CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('FINPLANDATE').AsVariant:= v2.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('FINPLANPARAM').AsVariant:= ds_FINPLANPARAM.FieldByName('FSCODE').AsVariant;
    Q.ParamByName('PLAN_SUM').AsVariant:= value;
    Q.ParamByName('FACT_SUM').AsVariant:= fact;
    Q.ParamByName('CODE').AsVariant:= v4.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    ds_FINPLANPARAM.CloseOpen(false);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinPlanSpecForm.InsertSpec(value: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,
    'insert into FINPLANSPEC (FINPLANDATE, FINPLANSTATE, SUMMA) values (:FINPLANDATE, :FINPLANSTATE, :SUMMA);');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('FINPLANDATE').AsVariant:= v2.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('FINPLANSTATE').AsVariant:= ds_FINPLANSPEC.FieldByName('FSCODE').AsVariant;
    Q.ParamByName('SUMMA').AsVariant:= value;
    Q.ExecQuery;
    ds_FINPLANSPEC.CloseOpen(false);
    //ds_FINPLANPARAM.CloseOpen(false);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinPlanSpecForm.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TFinPlanSpecForm.OpenDS;
begin
  ds_FinPlanSrv.Open; //типы финпланов
  DSOptoins(ds_FinPlan,'','FINPLAN','CODE', 'FINPLAN_GEN');
  DSOptoins(ds_FINPLANDATE,'','FINPLANDATE','CODE', 'FINPLANDATE_GEN',False);
  DSOptoins(ds_FINPLANSPEC,'','FINPLANSPEC','CODE', 'FINPLANSPEC_GEN',False);
  DSOptoins(ds_FINPLANPARAM,'','FINPLANPARAMSPEC','CODE', 'FINPLANPARAMSPEC_GEN',False);

  cmDb.ds_SrvDogFinPlan.CloseOpen(false);
end;

procedure TFinPlanSpecForm.PostOrRollBak;
begin
  try
    v1.DataController.Post(True);
  except
    on e: Exception do
        dezException.Create(e.Message);
  end;
end;

procedure TFinPlanSpecForm.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TFinPlanSpecForm.RecDelete;
var
  S: string;
begin
  S:= 'Вы действительно хотите удалить финплан по договору'+#10#13+'№ '+v1.GetColumnByFieldName('NOMER').EditValue;
  if Application.MessageBox(PChar(S), 'Предупреждение', MB_YESNO +
    MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    try
      v1.DataController.DeleteFocused;
    except
      on e: Exception do begin
         v1.DataController.Cancel;
         dezException.Create(e.Message);
      end;
    end;
  end;
end;

procedure TFinPlanSpecForm.v1DataControllerDataChanged(Sender: TObject);
begin
  btn_Edit.Enabled:= False;
end;

procedure TFinPlanSpecForm.v1Editing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  btn_Edit.Enabled:= True;
end;

initialization
 RegisterClass(TFinPlanSpecForm);
end.
