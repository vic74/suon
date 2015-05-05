unit PlanRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutcxEditAdapters,
  cxContainer, Menus, FIBDataSet, pFIBDataSet, StdCtrls, cxButtons,
  cxGridExportLink, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, BaseForm,
  dxSkinsdxBarPainter, dxBar, cxCalc, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxCheckBox, dxSkinVS2010;

type
  TPlanRepForm = class(TDezForm)
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
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
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
    ds_UNFORESEEN_EXP: TpFIBDataSet;
    src_UNFORESEEN_EXP: TDataSource;
    quart1: TcxCalcEdit;
    itmlc1Item1: TdxLayoutItem;
    quart2: TcxCalcEdit;
    itmlc1Item11: TdxLayoutItem;
    quart3: TcxCalcEdit;
    itmlc1Item12: TdxLayoutItem;
    quart4: TcxCalcEdit;
    itmlc1Item13: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmlc1Item14: TdxLayoutItem;
    btn_save: TdxBarButton;
    dlgSave1: TSaveDialog;
    chk_manager: TcxCheckBox;
    litm_lc1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
    procedure grlc1Group1Button0Click(Sender: TObject);
    procedure SetRight;
    procedure v1DataControllerFilterChanged(Sender: TObject);
    procedure v1DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure chk_managerPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure SumRec;
    procedure SaveUnforseen;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
  end;

var
  PlanRepForm: TPlanRepForm;

implementation

uses cmDBUnit, AppUtils, LoadingSplash, dezCommon;
{$R *.dfm}

procedure TPlanRepForm.btn_execClick(Sender: TObject);
begin
  OpenDs;
end;

procedure TPlanRepForm.btn_saveClick(Sender: TObject);
begin
  SaveUnforseen;
end;

procedure TPlanRepForm.btn_xlsClick(Sender: TObject);
begin
  if ds_trplan.IsEmpty then
    Exit;
  if dlgSave1.Execute then
    ExportGridToExcel(dlgSave1.FileName, grd1, True, True, True, 'xls');
end;

procedure TPlanRepForm.chk_managerPropertiesEditValueChanged(Sender: TObject);
begin
  if chk_manager.Checked = True then
  begin
    btn_save.Enabled:= False;
    cbb_manager.EditValue:= null;
    cbb_manager.Enabled:= False;
  end else
  begin
    btn_save.Enabled:= True;
    cbb_manager.Enabled:= True;
  end;
end;

procedure TPlanRepForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TPlanRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPlanRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  SetRight;
  ds_street.CloseOpen(False);
  ds_kontr.CloseOpen(False);
  ds_worker.Open;
  CustomizeCombo(cbb_manager);
end;

procedure TPlanRepForm.grlc1Group1Button0Click(Sender: TObject);
begin
  // показать справку по непредвидке
end;

procedure TPlanRepForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if AButtonIndex = 1 then begin
    with TcxLookupComboBox(Sender) do
    begin
      EditValue := null;
      PostEditValue;
    end;
  end;
end;

procedure TPlanRepForm.OpenDs;
var
  s: string;
  i: integer;
begin
  SplashVisibility(true,'Дождитесь окончания операции...');
  try
    with ds_trplan do
    begin
      Close;
      // год
      if edt_year.EditValue <> '' then
        MainWhereClause := 'TP.Y=:Y';
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
      if cbb_manager.EditValue<>null then begin
        if MainWhereClause <> '' then
          MainWhereClause := MainWhereClause + ' and mh.worker=:manager'
        else
          MainWhereClause := 'mh.worker=:manager';
      end;
      // params
      if edt_year.EditValue <> '' then
        ParamByName('Y').AsVariant := edt_year.EditValue;
      if cbb_street.EditValue <> null then
        ParamByName('street').AsVariant := cbb_street.EditValue;
      if ParamExist('kontr',i) then
        ParamByName('kontr').AsVariant := ActiveKontragent;
      if cbb_manager.EditValue<>null then
        ParamByName('manager').AsVariant:=cbb_manager.EditValue;

        OrderClause:='s.name,h.nomer,TP.kontragent desc,TP.MLIST';
        s:= MainWhereClause;
      if MainWhereClause <> '' then
        Open;
    end;
    if ActiveUserType = 0 then
    with ds_UNFORESEEN_EXP do begin
      Close;
      if (chk_manager.Checked) then
        MainWhereClause:='Y=:Y' else
        MainWhereClause:='Y=:Y and WORKER=:WORKER';
      ParamByName('Y').AsVariant := edt_year.EditingValue;
      if ParamExist('WORKER',i) then
        ParamByName('WORKER').AsVariant := cbb_manager.EditValue;
      Open;
      quart1.EditValue:=0;
      quart2.EditValue:=0;
      quart3.EditValue:=0;
      quart4.EditValue:=0;
      while not Eof do
      begin
         quart1.EditValue:=quart1.EditValue+FN('QUART1').AsVariant;
         quart2.EditValue:=quart2.EditValue+FN('QUART2').AsVariant;
         quart3.EditValue:=quart3.EditValue+FN('QUART3').AsVariant;
         quart4.EditValue:=quart4.EditValue+FN('QUART4').AsVariant;
       Next;
      end;
    end;
    SumRec;
    v1.ViewData.Expand(True);
  finally
    SplashVisibility(False);
  end;
end;

procedure TPlanRepForm.SaveUnforseen;
var
  Q : TFIBQuery;
begin
  if (cbb_manager.EditValue=Null) or (edt_year.EditingValue=Null) then begin
    Application.MessageBox('Не указан год или менеджер!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  Q:=GetQueryForUse(cmDB.WT,
    'update or insert into UNFORESEEN_EXP (WORKER, QUART1, QUART2, QUART3, ' +
    'QUART4, Y)' + #13#10 +
    'values (:WORKER, :QUART1, :QUART2, :QUART3, :QUART4, :Y)' + #13#10 +
    'matching (WORKER,Y)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('Y').AsVariant:=edt_year.EditingValue;
    Q.ParamByName('WORKER').AsVariant:=cbb_manager.EditValue;
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

procedure TPlanRepForm.SetRight;
begin
  if ActiveUserType = 1 then begin
    cbb_manager.EditValue:= null;
    itm_manager.Visible:= False;
    grlc1Group1.Visible:= False;
  end else begin
    cbb_manager.Visible:= True;
  end;
end;

procedure TPlanRepForm.SumRec;
var
  i: Integer;
  street, house, h: Variant;
  sumAll, sumOst, sumFact: Variant;
  ARecordIndex: Integer;
begin
  sumAll := 0;
  sumOst := 0;
  sumFact := 0;
 // SplashVisibility(True, 'Пересчет итогов.');
 // SetCapt('Подождите...');
  try
    with v1 do
    begin
      //DisableControls;
      //First;
      for i := 0 to v1.DataController.FilteredRecordCount - 1 do
      begin
         ARecordIndex := v1.DataController.FilteredRecordIndex[I];
         h:= v1.DataController.Values[ARecordIndex, clv1HOUSE.Index];
        if h <> house then
        begin
          sumAll := sumAll + v1.DataController.Values[ARecordIndex, clv1SUMALL.Index];
          sumOst := sumOst + v1.DataController.Values[ARecordIndex, clv1SUMOST.Index];
          sumFact := sumFact + v1.DataController.Values[ARecordIndex, clv1sumFact.Index];
        end;
        house := h;

        //Next;
      end;
      //EnableControls;
    end;
  finally
  //  SplashVisibility(False);
  end;
  with v1.DataController.Summary do
  begin
    FooterSummaryValues[5] := sumAll;
    FooterSummaryValues[7] := sumOst;
    FooterSummaryValues[6] := sumFact;
    FooterSummaryValues[0] := FooterSummaryValues[0] + quart1.Value;
    FooterSummaryValues[1] := FooterSummaryValues[1] + quart2.Value;
    FooterSummaryValues[2] := FooterSummaryValues[2] + quart3.Value;
    FooterSummaryValues[3] := FooterSummaryValues[3] + quart4.Value;
    {FooterSummaryItems[8].Format:='0.00;-0.00';
    FooterSummaryValues[8] :=FooterSummaryValues[3]-
    (FooterSummaryValues[4]+FooterSummaryValues[5]+
    FooterSummaryValues[6]+FooterSummaryValues[7]);}

    //Итого:
  end;
end;

procedure TPlanRepForm.v1DataControllerFilterChanged(Sender: TObject);
begin
  // ShowMessage(IntToStr(ds_trplan.VisibleRecordCount));
  SumRec;
end;

procedure TPlanRepForm.v1DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
  var AIndex, ARowIndex: integer;
begin
//  if TcxGridDBColumn(Arguments.SummaryItem.ItemLink).Options.CellMerging then
//  begin
//      AIndex := TcxGridDBColumn(Arguments.SummaryItem.ItemLink).Index;
//      with ASender.DataController do
//      begin
//        ARowIndex := GetRowIndexByRecordIndex(Arguments.RecordIndex,False);
//        if RecordCount = ARowIndex + 1 then
//          exit;
//        ARowIndex := GetRowInfo(ARowIndex + 1).RecordIndex;
//        if Values[Arguments.RecordIndex, AIndex] = Values[ARowIndex, AIndex] then
//          OutArguments.Done := True;
//      end;
//  end;
end;

initialization

RegisterClass(TPlanRepForm);

end.

