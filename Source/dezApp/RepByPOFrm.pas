unit RepByPOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxDockControlPainter, cxPC, dxDockControl, dxDockPanel, cxClasses,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit, System.DateUtils,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPScxCommon, dxSkinDevExpressStyle, KontragentRepository;

type
  TRepByPOForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    docm1: TdxDockingManager;
    docs1: TdxDockSite;
    dpnl1: TdxDockPanel;
    dpnl2: TdxDockPanel;
    dlst1: TdxLayoutDockSite;
    dlst2: TdxLayoutDockSite;
    group1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    group2: TdxLayoutGroup;
    lc2: TdxLayoutControl;
    grouplc1Group1: TdxLayoutGroup;
    lc1Group1: TdxLayoutGroup;
    cbb1: TcxLookupComboBox;
    itmlc1Item12: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itmlc1Item13: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itmlc1Item14: TdxLayoutItem;
    cbb_type: TcxComboBox;
    itmlc1Item15: TdxLayoutItem;
    btn_exec: TcxButton;
    itmlc1Item16: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc2Item1: TdxLayoutItem;
    ds_TO: TpFIBDataSet;
    src_TO: TDataSource;
    fld_TOFACTSUM: TFIBBCDField;
    fld_TOHOUSESRVNAME: TFIBStringField;
    fld_TOADDR: TFIBStringField;
    grouplc1Group3: TdxLayoutGroup;
    src_kontr: TDataSource;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    cbb_M1: TcxComboBox;
    itmlc1Item17: TdxLayoutItem;
    cbb_M2: TcxComboBox;
    itmlc1Item18: TdxLayoutItem;
    msk_Y1: TcxMaskEdit;
    itmlc1Item19: TdxLayoutItem;
    grouplc1Group2: TdxLayoutGroup;
    msk_Y2: TcxMaskEdit;
    itmlc1Item110: TdxLayoutItem;
    grouplc1Group4: TdxLayoutGroup;
    fld_KNAME: TFIBStringField;
    grouplc1Group5: TdxLayoutGroup;
    cbb_filtr: TcxComboBox;
    itmlc1Item11: TdxLayoutItem;
    EngineController1: TdxPSEngineController;
    ComponentPrinter1: TdxComponentPrinter;
    GridReportLink1: TdxGridReportLink;
    btn_print: TcxButton;
    itmlc1Item111: TdxLayoutItem;
    ds_TR: TpFIBDataSet;
    fld_TRSNAME: TFIBStringField;
    fld_TRNOMER: TFIBStringField;
    fld_TRFMNAME: TFIBStringField;
    fld_TRFKNAME: TFIBStringField;
    fld_TRSUMMA: TFIBBCDField;
    src_TR: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure grouplc1Group3Button0Click(Sender: TObject);
    procedure lc1Group1Button0Click(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure cbb_filtrPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
    procedure OpenHouse;
    procedure MakeClause(var Clause: string);
    function CheckPeriod: Boolean;
    //
    procedure LoadTO;
    procedure LoadTR;
    procedure GroupedColumns;
  public
    { Public declarations }
  end;

var
  RepByPOForm: TRepByPOForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TRepByPOForm.btn1Click(Sender: TObject);
begin
  v1.BeginGroupingUpdate;
  try
    GroupedColumns;
  finally
    v1.EndGroupingUpdate;
  end;
end;

procedure TRepByPOForm.btn_execClick(Sender: TObject);
begin
  case cbb_type.ItemIndex of
    0: LoadTO;
    1: LoadTR;
  end;
end;

procedure TRepByPOForm.btn_printClick(Sender: TObject);
var
  S, atype, aPeriod: string;
begin
  if cbb_type.ItemIndex = 0 then
  atype:='' else
  atype:=' по '+ cbb_type.Text;
  case cbb_type.ItemIndex of
    0: atype:=' по техническому обслуживанию.';
    1: atype:= ' по текущему ремонту.';
  end;
  aPeriod:= 'за период '+ cbb_M1.Text+' '+msk_Y1.Text;
  aPeriod:=aPeriod+' - '+ cbb_M2.Text+' '+msk_Y2.Text;
  S:= 'Работы выполненые контрагентом '+atype+#13+aPeriod;
  with GridReportLink1.PrinterPage do begin
    PageHeader.CenterTitle.Clear;
    PageHeader.CenterTitle.Add(S);
    //Margins.Top:= 27;
    //Header:=5;
  end;
  ComponentPrinter1.Preview();
end;

procedure TRepByPOForm.cbb_filtrPropertiesEditValueChanged(Sender: TObject);
begin
  v1.BeginGroupingUpdate;
  try
    GroupedColumns;
  finally
    v1.EndGroupingUpdate;
  end;
end;

procedure TRepByPOForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

function TRepByPOForm.CheckPeriod: Boolean;
begin
  Result:= False;
    if (msk_Y1.EditingValue = null) or (msk_Y2.EditingValue = null) then
     Exit;
  Result:= True;
end;

procedure TRepByPOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:= caFree;
end;

procedure TRepByPOForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TRepByPOForm.GroupedColumns;
var
  K, T: TcxGridDBColumn;
  I: Integer;
  ASummaryGroup: TcxDataSummaryGroup;
  ASummaryItems: TcxDataSummaryItem;

  procedure ClearGroups;
  var
    I: Integer;
  begin
    v1.DataController.Summary.SummaryGroups.Clear;
    for I := 0 to v1.ColumnCount -1 do
      v1.Columns[i].GroupIndex:= -1;
  end;

  procedure AddGroup(fName: string);
  begin
    with v1.GetColumnByFieldName(fName) do begin
      GroupIndex:=0;
      Visible:= True;
    end;
  end;

  procedure GroupTR;
  begin
    with TcxGridDBTableSummaryItem(ASummaryGroup.SummaryItems.Add) do
    begin
      FieldName := 'SUMMA';
      Kind := skSum;
      Format:= ',0.00;-,0.00';
    end;

    with TcxGridTableSummaryGroupItemLink(ASummaryGroup.Links.Add) do
    begin
      Column := v1.GetColumnByFieldName('FMName');
    end;
    with TcxGridTableSummaryGroupItemLink(ASummaryGroup.Links.Add) do
    begin
      Column := v1.GetColumnByFieldName('FKName');
    end;
    case cbb_filtr.ItemIndex of
      0: ClearGroups;
      1: AddGroup('FMName');
      2: AddGroup('FKName');
    end;
  end;

  procedure GroupTO;
  begin
    with TcxGridDBTableSummaryItem(ASummaryGroup.SummaryItems.Add) do
    begin
      FieldName := 'FACTSUM';
      Kind := skSum;
      Format:= ',0.00;-,0.00';
    end;

    with TcxGridTableSummaryGroupItemLink(ASummaryGroup.Links.Add) do
    begin
      Column := v1.GetColumnByFieldName('HOUSESRVNAME');
    end;
    with TcxGridTableSummaryGroupItemLink(ASummaryGroup.Links.Add) do
    begin
      Column := v1.GetColumnByFieldName('KNAME');
    end;
    case cbb_filtr.ItemIndex of
      0: ClearGroups;
      1: AddGroup('HOUSESRVNAME');
      2: AddGroup('KNAME');
    end;
  end;
begin
  if v1.ColumnCount < 1 then Exit;
  ClearGroups;
  v1.DataController.Summary.SummaryGroups.Clear;
  ASummaryGroup:= v1.DataController.Summary.SummaryGroups.Add;
  case cbb_type.ItemIndex of
    0: GroupTO;
    1: GroupTR;
  end;
end;

procedure TRepByPOForm.grouplc1Group3Button0Click(Sender: TObject);
begin
  cbb1.EditValue:= null;
end;

procedure TRepByPOForm.lc1Group1Button0Click(Sender: TObject);
begin
  cbb_street.EditValue:= null;
  cbb_house.EditValue:= null;
end;

procedure TRepByPOForm.LoadTO;
var
  Clause: string;
  i, n: Integer;
  C: TcxGridDBColumn;
begin
  v1.BeginUpdate(lsimImmediate);
  v1.ClearItems;
  try
    MakeClause(Clause);
  finally
    v1.EndUpdate;
  end;
  with v1 do begin
    //BeginUpdate(lsimImmediate);
    try
      //ClearItems;
      DataController.DataSource:= src_TO;
      DataController.CreateAllItems();
      ApplyBestFit();
    finally
      //EndUpdate;
    end;
  end;
  with v1.GetColumnByFieldName('FACTSUM') do begin
    Summary.FooterKind:= skSum;
    Summary.FooterFormat:=',0.00;-,0.00';
  end;
  GroupedColumns;
end;

procedure TRepByPOForm.LoadTR;
var
  Clause: string;
  i, n: Integer;
  C: TcxGridDBColumn;
begin
  MakeClause(Clause);
  v1.BeginUpdate(lsimImmediate);
  v1.ClearItems;
  try
    with ds_TR do begin
      DisableControls;
      try
        Close;
        MainWhereClause:=Clause;
        if ParamExist('kontr',i) then
          ParamByName('kontr').AsVariant:=cbb1.EditValue;
        if ParamExist('house',i) then
          ParamByName('house').AsVariant:= cbb_house.EditValue;
        GroupByClause:='tf.KONTRAGENT, k.name, s.name, h.nomer, tf.MLIST, m.name, tf.HOUSE';
        Open;
      finally
        EnableControls;
      end;
    end;
  finally
    v1.EndUpdate;
  end;
  with v1 do begin
    //BeginUpdate(lsimImmediate);
    try
      //ClearItems;
      DataController.DataSource:= src_TR;
      DataController.CreateAllItems();
      ApplyBestFit();
    finally
      //EndUpdate;
    end;
  end;
  with v1.GetColumnByFieldName('SUMMA') do begin
    Summary.FooterKind:= skSum;
    Summary.FooterFormat:=',0.00;-,0.00';
  end;
  GroupedColumns;
end;

procedure TRepByPOForm.MakeClause(var Clause: string);
  //получаем даты
  procedure MakeData(var D1,D2: TDateTime);
  begin
    D1:= StartOfAMonth(msk_Y1.EditValue, (cbb_M1.ItemIndex+1));
    D2:= EndOfAMonth(msk_Y2.EditValue, (cbb_M2.ItemIndex+1));
    //D2:= D2-1;
  end;
  // условие по ТО
  procedure MakeClauseTO;
  var
    D1, D2: TDateTime;
    clause1, clause2 : string;
    i: Integer;
  begin
    MakeData(D1,D2);
    // --------------------- clause1
    Clause1:=
        'cast('+#39+'01.'+#39+'||f.m||'+#39+'.'+#39+'||f.y as date) between '+
          #39+DateToStr(D1)+#39+' and '+#39+DateToStr(D2)+#39+' and FDL.FACTSUM>0';
    //kontragent
    if cbb1.EditValue<>null then
    Clause1:= Clause1+#10#13+'and FDL.KONTRAGENT= '+VarToStr(cbb1.EditValue);
    //house
    if cbb_house.EditValue<>null then
    Clause1:= Clause1+#10#13+'and FDL.HOUSE= '+VarToStr(cbb_house.EditValue);
    // srv
    Clause1:= Clause1+#10#13+' and f.HOUSESRV not in (0,1,2)';
    // ---------------------- clause2
    Clause2:=
        'cast('+#39+'01.'+#39+'||f.m||'+#39+'.'+#39+'||f.y as date) between '+
          #39+DateToStr(D1)+#39+' and '+#39+DateToStr(D2)+#39+' and FDL.FACTSUM>0';
    //kontragent
    if cbb1.EditValue<>null then
    Clause2:= Clause2+#10#13+'and FDL.KONTRAGENT= '+VarToStr(cbb1.EditValue);
    //house
    if cbb_house.EditValue<>null then
    Clause2:= Clause2+#10#13+'and FDL.HOUSE= '+VarToStr(cbb_house.EditValue);
    // srv
    Clause2:= Clause2+#10#13+' and f.HOUSESRV in (1,2,3,5,9)';

    //-------------------------set clause
    with ds_TO do begin
      DisableControls;
      try
        Close;
        Params[0].AsString := clause1;
        Params[1].AsString := clause2;
        {MainWhereClause:=Clause;
        if ParamExist('kontr',i) then
          ParamByName('kontr').AsVariant:=cbb1.EditValue;
        if ParamExist('house',i) then
          ParamByName('house').AsVariant:= cbb_house.EditValue;}
        Open;
      finally
        EnableControls;
      end;
    end;
  end;
  // условие по ТР
  procedure MakeClauseTR;
  var
    D1, D2: TDateTime;
  begin
    MakeData(D1,D2);
    Clause:= 'tf.STATE = 5 and tf.ZD between '#39+DateToStr(D1)+#39' and '#39+DateToStr(D2)+#39;
        //kontragent
    if cbb1.EditValue<>null then
    Clause:= Clause+#10#13+'and tf.KONTRAGENT=:kontr ';
    //house
    if cbb_house.EditValue<>null then
    Clause:= Clause+#10#13+'and tf.HOUSE=:house';
  end;

begin
  // проверка установки периода
  if not CheckPeriod then
     raise dezException.Create('Не верно указан период!');
  Clause:='';
  case cbb_type.ItemIndex of
    0: MakeClauseTO;
    1: MakeClauseTR;
  end;
end;

procedure TRepByPOForm.OpenDS;
begin
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontrShort();
  ds_STREET.CloseOpen(false);
end;

procedure TRepByPOForm.OpenHouse;
begin
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('Street').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

initialization
 RegisterClass(TRepByPOForm);
end.
