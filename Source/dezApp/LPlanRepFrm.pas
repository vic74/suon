unit LPlanRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutcxEditAdapters,
  cxContainer, Menus, FIBDataSet, pFIBDataSet, StdCtrls, cxButtons,
  cxGridExportLink, FibQuery, pFIBCacheQueries, pFIBProps,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, BaseForm, cxCalc,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TLPlanRepForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    grp_2: TdxLayoutGroup;
    cbb_firm: TcxLookupComboBox;
    itm_firm: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_trplan: TpFIBDataSet;
    src_trplan: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MLISTNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    clv1SUMALL: TcxGridDBColumn;
    clv1SUMOST: TcxGridDBColumn;
    clv1FSUM1: TcxGridDBColumn;
    clv1FSUM2: TcxGridDBColumn;
    clv1FSUM3: TcxGridDBColumn;
    clv1FSUM4: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1SHOWCODE: TcxGridDBColumn;
    clv1sumFact: TcxGridDBColumn;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    btn_xls: TcxButton;
    itm_xls: TdxLayoutItem;
    stl_1: TcxStyleRepository;
    cxstyl_group: TcxStyle;
    cxstyl_grfooter: TcxStyle;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    cbb_manager: TcxLookupComboBox;
    itm_manager: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    quart1: TcxCalcEdit;
    quart2: TcxCalcEdit;
    quart3: TcxCalcEdit;
    quart4: TcxCalcEdit;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    itmlc1Item3: TdxLayoutItem;
    itmlc1Item4: TdxLayoutItem;
    btn_save: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    src_UNFORESEEN_L_EXP: TDataSource;
    ds_UNFORESEEN_L_EXP: TpFIBDataSet;
    dlgSave1: TSaveDialog;
    dlgOpen1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1DataControllerFilterChanged(Sender: TObject);
    procedure v1DataControllerFilterBeforeChange
      (Sender: TcxDBDataFilterCriteria;
      ADataSet: TDataSet; const AFilterText: string);
    procedure btn_saveClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure SumRec;
    procedure SaveUnforseen;
    procedure SetRight;
  public
    { Public declarations }
  end;

var
  LPlanRepForm: TLPlanRepForm;

implementation

uses cmDBUnit, AppUtils, LoadingSplash, dezCommon;
{$R *.dfm}

procedure TLPlanRepForm.btn_execClick(Sender: TObject);
begin
  OpenDs;
end;

procedure TLPlanRepForm.btn_saveClick(Sender: TObject);
begin
  SaveUnforseen;
end;

procedure TLPlanRepForm.btn_xlsClick(Sender: TObject);
begin
  if ds_trplan.IsEmpty then
    Exit;
  if dlgSave1.Execute then
    ExportGridToExcel(dlgSave1.FileName, grd1, True, True, True, 'xls');
end;

procedure TLPlanRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLPlanRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  SetRight;
  ds_street.CloseOpen(False);
  //ds_kontr.CloseOpen(False);
  ds_worker.Open;
end;

procedure TLPlanRepForm.OpenDs;
var i: Integer;
begin
  SplashVisibility(true,'Дождитесь окончания операции.');
  try
    with ds_trplan do
    begin
      Close;
      // год
      if edt_year.EditValue <> '' then
        MainWhereClause := 'TP.Y=:Y and h.lift_cnt>0 ';
      // улица
      if cbb_street.EditValue <> null then
        if MainWhereClause <> '' then
          MainWhereClause := MainWhereClause + ' and h.street=:street'
        else
          MainWhereClause := 'h.street=:street';
      // подрядчик
      if ActiveUserType = 1 then begin
        if MainWhereClause <> '' then
          MainWhereClause := MainWhereClause + ' and tp.kontragent=:kontr'
        else
          MainWhereClause := 'tp.kontragent=:kontr';
      end;
      //менеджер
      {if cbb_manager.EditValue<>null then
        if MainWhereClause <> '' then
          MainWhereClause := MainWhereClause + ' and TP.manager=:manager'
        else
          MainWhereClause := 'TP.manager=:manager'; }
      // params
      if edt_year.EditValue <> '' then
        ParamByName('Y').AsVariant := edt_year.EditValue;
      if cbb_street.EditValue <> null then
        ParamByName('street').AsVariant := cbb_street.EditValue;
      if ParamExist('kontr',i) then
        ParamByName('kontr').AsVariant := ActiveKontragent;
      {if cbb_manager.EditValue<>null then
        ParamByName('manager').AsVariant:=cbb_manager.EditValue; }

        OrderClause:='s.name,h.nomer,TP.kontragent desc,TP.MLIST';
      if MainWhereClause <> '' then
        Open;
    end;
    if ActiveUserType = 0 then
    with ds_UNFORESEEN_L_EXP do begin
      Close;
      MainWhereClause:='Y=:Y --and WORKER=:WORKER';
      ParamByName('Y').AsVariant := edt_year.EditingValue;
      //ParamByName('WORKER').AsVariant := cbb_manager.EditValue;
      Open;
      //
      quart1.EditValue:=FN('QUART1').AsVariant;
      quart2.EditValue:=FN('QUART2').AsVariant;
      quart3.EditValue:=FN('QUART3').AsVariant;
      quart4.EditValue:=FN('QUART4').AsVariant;
    end;
    SumRec;
    v1.ViewData.Expand(True);
  finally
    SplashVisibility(False);
  end;
end;

procedure TLPlanRepForm.v1DataControllerFilterBeforeChange
  (Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  // ds_trplan.Filtered:=false;
  // ds_trplan.Filter:=AFilterText;
  // ds_trplan.Filtered:=True;
end;

procedure TLPlanRepForm.v1DataControllerFilterChanged(Sender: TObject);
begin
  // ShowMessage(IntToStr(ds_trplan.VisibleRecordCount));
  SumRec;
end;

procedure TLPlanRepForm.SumRec;
var
  i: Integer;
  street, house: Variant;
  sumAll, sumOst, sumFact: Variant;
begin
  sumAll := 0;
  sumOst := 0;
  sumFact := 0;
 // SplashVisibility(True, 'Пересчет итогов.');
 // SetCapt('Подождите...');
  try
    with ds_trplan do
    begin
      DisableControls;
      First;
      for i := 0 to VisibleRecordCount - 1 do
      begin
        if FN('House').AsVariant <> house then
        begin
          sumAll := sumAll + FN('SUMALL').AsCurrency;
          sumOst := sumOst + FN('SUMOST').AsCurrency;
          sumFact := sumFact + FN('SUMFACT').AsCurrency;
        end;
        house := FN('House').AsVariant;
        Next;
      end;
      EnableControls;
    end;
  finally
  //  SplashVisibility(False);
  end;
  with v1.DataController.Summary do
  begin
    FooterSummaryValues[0] := sumAll;
    FooterSummaryValues[2] := sumOst;
    FooterSummaryValues[3] := sumFact;

    FooterSummaryValues[4] := FooterSummaryValues[4] + quart1.value;
    FooterSummaryValues[5] := FooterSummaryValues[5] + quart2.value;
    FooterSummaryValues[6] := FooterSummaryValues[6] + quart3.value;
    FooterSummaryValues[7] := FooterSummaryValues[7] + quart4.value;
    {FooterSummaryItems[8].Format:='0.00;-0.00';
    FooterSummaryValues[8] :=FooterSummaryValues[3]-
    (FooterSummaryValues[4]+FooterSummaryValues[5]+
    FooterSummaryValues[6]+FooterSummaryValues[7]);}

    //Итого:
  end;
end;

procedure TLPlanRepForm.SaveUnforseen;
var
  Q : TFIBQuery;
begin
  if (cbb_manager.EditValue=Null) or (edt_year.EditingValue=Null) then begin
    Application.MessageBox('Не указан год или менеджер!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  Q:=GetQueryForUse(cmDB.WT,
    'update or insert into UNFORESEEN_L_EXP (QUART1, QUART2, QUART3, ' +
    'QUART4, Y)' + #13#10 +
    'values (:QUART1, :QUART2, :QUART3, :QUART4, :Y)' + #13#10 +
    'matching (Y)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('Y').AsVariant:=edt_year.EditingValue;
    //Q.ParamByName('WORKER').AsVariant:=cbb_manager.EditValue;
    Q.ParamByName('QUART1').AsVariant:= QUART1.EditingValue;
    Q.ParamByName('QUART2').AsVariant:= QUART2.EditingValue;
    Q.ParamByName('QUART3').AsVariant:= QUART3.EditingValue;
    Q.ParamByName('QUART4').AsVariant:= QUART4.EditingValue;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  OpenDs;
end;

procedure TLPlanRepForm.SetRight;
begin
  if ActiveUserType = 1 then begin
    //cbb_manager.EditValue:= null;
    //itm_manager.Visible:= False;
    grlc1Group1.Visible:= False;
  end else begin
    //cbb_manager.Visible:= True;
  end;
end;

initialization

RegisterClass(TLPlanRepForm);

end.
