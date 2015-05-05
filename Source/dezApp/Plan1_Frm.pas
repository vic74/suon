unit Plan1_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxGridExportLink,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxStyles, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxmdaset, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, dxBar, cxPropertiesStore, dxLayoutLookAndFeels, BaseForm,
  cxDBLookupComboBox, cxMaskEdit, cxBarEditItem, FIBDataSet, pFIBDataSet,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxTextEdit,
  cxMemo, cxProgressBar, dxStatusBar, cxCalc, cxCurrencyEdit, EXLReportExcelTLB,
  EXLReportBand, EXLReport, cxGridCustomPopupMenu, cxGridPopupMenu, cxCheckBox,
  dxLayoutContainer, ClosePeriodFrm, dxSkinDevExpressStyle;

type
  TBDR1Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    cl_F0: TcxGridDBBandedColumn;
    cl_F1: TcxGridDBBandedColumn;
    cl_F2: TcxGridDBBandedColumn;
    cl_F3: TcxGridDBBandedColumn;
    cl_F4: TcxGridDBBandedColumn;
    cl_F5: TcxGridDBBandedColumn;
    cl_F6: TcxGridDBBandedColumn;
    cl_F7: TcxGridDBBandedColumn;
    cl_F8: TcxGridDBBandedColumn;
    cl_F9: TcxGridDBBandedColumn;
    cl_F10: TcxGridDBBandedColumn;
    cl_F11: TcxGridDBBandedColumn;
    cl_F12: TcxGridDBBandedColumn;
    cl_F13: TcxGridDBBandedColumn;
    cl_F14: TcxGridDBBandedColumn;
    cl_F15: TcxGridDBBandedColumn;
    cl_F16: TcxGridDBBandedColumn;
    cl_F17: TcxGridDBBandedColumn;
    cl_F18: TcxGridDBBandedColumn;
    cl_F19: TcxGridDBBandedColumn;
    cl_F20: TcxGridDBBandedColumn;
    cl_F21: TcxGridDBBandedColumn;
    cl_F22: TcxGridDBBandedColumn;
    lb_month: TcxBarEditItem;
    lb_year: TcxBarEditItem;
    lb_srv: TcxBarEditItem;
    m_month: TdxMemData;
    ds_HOUSESRV: TpFIBDataSet;
    src_month: TDataSource;
    src__HOUSESRV: TDataSource;
    btn_exec: TdxBarButton;
    Memo: TcxMemo;
    lc1Item2: TdxLayoutItem;
    StatusBar: TdxStatusBar;
    StatusBarContainer1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    lc1Item1: TdxLayoutItem;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    btn_excel: TdxBarButton;
    dlgSave: TSaveDialog;
    xl1: TEXLReport;
    btn_rep: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    clvb1A: TcxGridDBBandedColumn;
    ppm1: TcxGridPopupMenu;
    BarCombo: TdxBarCombo;
    dxBarButton3: TdxBarButton;
    vb1D: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    vb1Column1: TcxGridDBBandedColumn;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item3: TdxLayoutItem;
    lgrplc1Group3: TdxLayoutGroup;
    doc2: TdxBarDockControl;
    LItemlc1Item31: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_ExecRep: TdxBarButton;
    grd2: TcxGrid;
    vb2: TcxGridDBBandedTableView;
    cl1: TcxGridDBBandedColumn;
    cl2: TcxGridDBBandedColumn;
    cl3: TcxGridDBBandedColumn;
    cl4: TcxGridDBBandedColumn;
    cl5: TcxGridDBBandedColumn;
    cl6: TcxGridDBBandedColumn;
    cl7: TcxGridDBBandedColumn;
    cl8: TcxGridDBBandedColumn;
    cl9: TcxGridDBBandedColumn;
    cl10: TcxGridDBBandedColumn;
    cl11: TcxGridDBBandedColumn;
    cl12: TcxGridDBBandedColumn;
    cl13: TcxGridDBBandedColumn;
    cl14: TcxGridDBBandedColumn;
    cl15: TcxGridDBBandedColumn;
    cl16: TcxGridDBBandedColumn;
    cl17: TcxGridDBBandedColumn;
    cl18: TcxGridDBBandedColumn;
    cl19: TcxGridDBBandedColumn;
    cl20: TcxGridDBBandedColumn;
    cl21: TcxGridDBBandedColumn;
    cl22: TcxGridDBBandedColumn;
    cl23: TcxGridDBBandedColumn;
    cl24: TcxGridDBBandedColumn;
    cl25: TcxGridDBBandedColumn;
    cl26: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    LItemlc1Item4: TdxLayoutItem;
    bc_M1: TdxBarCombo;
    b_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    b_Y2: TcxBarEditItem;
    bI_SRV: TcxBarEditItem;
    md1: TdxMemData;
    src1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lb_srvPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure xl1BandsGroupHeader1CalcExpression(Sender: TEXLReportBand;
      var GroupValue: string);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_ExecRepClick(Sender: TObject);
    procedure btn_repClick(Sender: TObject);
    procedure bI_SRVPropertiesEditValueChanged(Sender: TObject);
  private
    QueryMode: boolean;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
  public
    { Public declarations }
    procedure CreateMem;
    procedure CreateMonth;
    procedure OpenDs;
    procedure ExpSmal;
    procedure ExpBig;
    procedure CalcYear;
    procedure ExportReportFull;
    procedure ExportReportSimple;
  end;

var
  BDR1Form: TBDR1Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezMakeBDR, BdrRep;

{$R *.dfm}

{ TBDR1Form }
{------------------------------------------------------------------------------
 Создаем таблицу в памяти
 Очистка таблицы от данных - <dxMemData>.Close; <dxMemData>.Open;
 Полная очистка [удаление полей] <unit AppUtils> ClearField(AMemData: TDataSet)
-------------------------------------------------------------------------------}
procedure TBDR1Form.bI_SRVPropertiesEditValueChanged(Sender: TObject);
begin
  if (bI_SRV.EditValue=1) or (bI_SRV.EditValue=7) then
  begin
    vb2.Bands[2].Visible:=False;
    vb2.Bands[3].Visible:=False;
  end else
  begin
    vb2.Bands[2].Visible:=True;
    vb2.Bands[3].Visible:=True;
  end;
end;

procedure TBDR1Form.btn_excelClick(Sender: TObject);
begin
  if (lb_srv.EditValue=1) or (lb_srv.EditValue=7) then
    ExpSmal
  else
    ExpBig;
end;

procedure TBDR1Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(lb_month.EditValue, lb_Year.EditValue,
    lb_Srv.EditValue);
  Obj.OnMessage:=Msg;
  Obj.OnProgress:=Progress;
  try
    src_mT1.DataSet:=nil;
    Obj.Execute(mT1);
    CheckHouse(mT1,'HOUSE','A');
    src_mT1.DataSet:=mT1;
    Obj.FullComboBox(BarCombo);
  finally
    Obj.Free;
  end;
end;

procedure TBDR1Form.btn_ExecRepClick(Sender: TObject);
var
  Obj: TBdrReport;
begin
  //MakeReport;
  vb2.BeginUpdate(lsimImmediate);
  Obj:= TBdrReport.Create(md1);
  try
    with Obj do begin
      BeginData:= StrToDate('01.'+IntToStr(bc_M1.ItemIndex)+'.'+b_Y1.EditValue);
      EndData:= StrToDate('01.'+IntToStr(bc_M2.ItemIndex)+'.'+b_Y2.EditValue);
      SrvCode:= bI_SRV.EditValue;
      MakeBDR1PlanReport;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TBDR1Form.btn_repClick(Sender: TObject);
begin
  if (bI_SRV.EditValue=1) or (bI_SRV.EditValue=7) then
    ExportReportSimple
  else
    ExportReportFull;
end;

procedure TBDR1Form.ExpSmal;
begin
  xl1.DataSet:= mT1;
  xl1.Template:='rep\bdr1.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J3';
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A6:J6';
  end;
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A5:J5';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A4:J4';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A6:J6';
  //-----------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=LongMonthNames[Integer(lb_month.EditValue)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(lb_year.EditValue);
  end;
  with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(lb_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;
  mt1.DisableControls;
  xl1.Show();
  mt1.EnableControls;
end;

procedure TBDR1Form.ExpBig;
begin
  xl1.DataSet:= mT1;
  xl1.Template:='rep\bdr1_large.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:X3';
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A8:X8';
  end;
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A4:X4';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A6:X6';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A10:X10';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=LongMonthNames[Integer(lb_month.EditValue)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(lb_year.EditValue);
  end;
  with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(lb_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;

  mt1.DisableControls;
  xl1.Show();
  mt1.EnableControls;
end;

procedure TBDR1Form.ExportReportFull;
begin
  xl1.DataSet:= md1;
  xl1.Template:='rep\bdr1_repFull.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:X5';
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A10:X10';
  end;
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A6:X6';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:X8';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A12:X12';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month1';
    ValueAsString:=LongMonthNames[Integer(bc_M1.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month2';
    ValueAsString:=LongMonthNames[Integer(bc_M2.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year1';
    ValueAsString:=VarToStr(b_Y1.EditValue);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year2';
    ValueAsString:=VarToStr(b_Y2.EditValue);
  end;
  with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(lb_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;

  md1.DisableControls;
  //md1.SortedField:='F2';
  xl1.Show();
  md1.EnableControls;
end;

procedure TBDR1Form.ExportReportSimple;
begin
  xl1.DataSet:= md1;
  xl1.Template:='rep\bdr1_rep.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J5';
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A8:J8';
  end;
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A7:J7';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A6:J6';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A8:J8';
  //-----------------------
  xl1.Dictionary.Clear;
    with xl1.Dictionary.Add do
  begin
    FieldName:='month1';
    ValueAsString:=LongMonthNames[Integer(bc_M1.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month2';
    ValueAsString:=LongMonthNames[Integer(bc_M2.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year1';
    ValueAsString:=VarToStr(b_Y1.EditValue);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year2';
    ValueAsString:=VarToStr(b_Y2.EditValue);
  end;
  with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(lb_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;
  md1.DisableControls;
  xl1.Show();
  md1.EnableControls;
end;

procedure TBDR1Form.CalcYear;
var
  i: integer;
begin
  QueryMode:=false;
  try
    for i:=1 to 12 do
    begin
      lb_month.EditValue:=i;
      Application.ProcessMessages;
      btn_execClick(nil);
      dxBarButton1Click(nil);
    end;
  finally
    QueryMode:=true;
  end;
end;

procedure TBDR1Form.CreateMem;
var
  i :Integer;
  FName :string;
begin
  CreateField(mT1,'D',ftInteger);
  CreateField(mT1,'A',ftInteger);
  CreateField(mT1,'House',ftInteger);    //код дома
  CreateField(mT1,'F',ftString, 256);  //фильтр
  CreateField(mT1,'F0',ftInteger);     //№ п/п
  CreateField(mT1,'F1',ftString,256);  //Адрес
  CreateField(mT1,'F2',ftString,32);   //№ ДУ
  CreateField(mT1,'F3',ftString,32);   //Тариф
  for I := 4 to 22 do begin            //остальные
    FName:='F'+IntToSTr(i);
    CreateField(mT1,FName,ftCurrency);
  end;
  //добавляем индекс
  with mT1.Indexes.Add do
  begin
    FieldName := 'F';
  end;
  with mT1.Indexes.Add do
  begin
    FieldName := 'A';
  end;
  mT1.Open;
end;

procedure TBDR1Form.CreateMonth;
var
  i :Integer;
  procedure AddRec(ACode: Integer; AName: string);
  begin
    with m_month do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_month,'Code',ftInteger);
  CreateField(m_month,'Name',ftString,64);
  m_month.Open;
  for I := 1 to 12 do
  AddRec(i,LongMonthNames[i]);
end;

procedure TBDR1Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(lb_month.EditValue)]+' '+
      IntToStr(lb_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(lb_month.EditValue, lb_Year.EditValue); //проверка закрытого периода

  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0, lb_Srv.EditValue);
  try
    Obj.OnProgress:=Progress;
    Obj.OnMessage:=Msg;
    Obj.Query:=QueryMode;
    src_mT1.DataSet:=nil;
    Obj.Save(mT1);
    src_mT1.DataSet:=mT1;
  finally
    Obj.Free;
  end;
end;

procedure TBDR1Form.dxBarButton2Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0,
    lb_Srv.EditValue);
  try
    Obj.OnProgress:=Progress;
    Obj.OnMessage:=Msg;
    src_mT1.DataSet:=nil;
    Obj.Load(mT1);
    CheckHouse(mT1,'HOUSE','A');
    src_mT1.DataSet:=mT1;
  finally
    Obj.Free;
  end;
end;

procedure TBDR1Form.dxBarButton3Click(Sender: TObject);
var
  Q: TFIBQuery;
  i, Code: integer;
begin
  if BarCombo.ItemIndex<0 then Exit;
  Code:=integer(BarCombo.Items.Objects[BarCombo.ItemIndex]);
  src_MT1.DataSet:=nil;
  i:=0;
  Q:=cmDB.GetQuery('select House from SrvDogHouse where SrvDog=:Code and House=:House');
  mT1.First;
  while not mT1.Eof do
  begin
    Q.ParamByName('Code').AsInteger:=Code;
    Q.ParamByName('House').AsInteger:=mT1.FieldByName('House').AsInteger;
    Q.ExecQuery;
    mT1.Edit;
    if Q.Eof then
      mT1.FieldByName('D').AsInteger:=0
    else
      mT1.FieldByName('D').AsInteger:=1;
    mT1.Post;
    mT1.Next;
    Inc(i);
    Progress(mT1.RecordCount, i);
  end;
  cmDB.FreeQuery(Q);

  mT1.First;
  src_MT1.DataSet:=mT1;
end;

procedure TBDR1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDR1Form.FormCreate(Sender: TObject);
var
 Y,M,D: word;
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDs;
  lb_year.EditValue:=CurrentYear;
  DecodeDate(Date, Y,M,D);
  if M>1 then Dec(M);
  lb_month.EditValue:=M;
  QueryMode:=true;
end;

procedure TBDR1Form.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    Ord('Z'):
      if Shift=[ssCtrl, ssShift] then
      begin
       if Application.MessageBox('Пересчитать БДР за год?','',1)=idOk then
         CalcYear;
      end;
  end;
end;

procedure TBDR1Form.lb_srvPropertiesEditValueChanged(Sender: TObject);
begin
  if (lb_srv.EditValue=1) or (lb_srv.EditValue=7) then
  begin
    vb1.Bands[2].Visible:=False;
    vb1.Bands[3].Visible:=False;
  end else
  begin
    vb1.Bands[2].Visible:=True;
    vb1.Bands[3].Visible:=True;
  end;
end;

procedure TBDR1Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TBDR1Form.OpenDs;
begin
  CreateMonth;
  ds_HOUSESRV.Open;
end;

procedure TBDR1Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TBDR1Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;
end;

procedure TBDR1Form.xl1BandsGroupHeader1CalcExpression(Sender: TEXLReportBand;
  var GroupValue: string);
begin
  GroupValue:=mt1.FieldByName('F2').AsString;
end;

procedure TBDR1Form.xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1,R2,S,H: String;
  cnt :Integer;
begin
  if (Band.BandType = xlrbtMasterData) and (ColumnInReport = 2) then
  begin
    R1 := 'B' + IntToStr(RowInReport);
    R2 := 'C' + IntToStr(RowInReport);
    if CellValue <> '' then
    begin
      cnt:=cmWordCount(VarToStr(CellValue),#32);
      H:=cmGetWord(VarToStr(CellValue),cnt,#32);
      S:=Copy(VarToStr(CellValue),1,Length(CellValue)-Length(H));
      Report.Range[R1, R1].Value:=S;
      Report.Range[R2, R2].Value:=H;
    end
  end;
end;

initialization
  RegisterClass(TBDR1Form);

end.
