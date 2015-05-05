unit BDR3Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, dxSkinsdxBarPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, dxBar,
  cxPropertiesStore, BaseForm, cxDBLookupComboBox, cxMaskEdit, dxmdaset,
  cxBarEditItem, dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer,
  cxTextEdit, cxMemo, cxProgressBar, dxStatusBar, dezMakeBDR, cxCurrencyEdit,
  cxGridExportLink,DateUtils, ClosePeriodFrm,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxCalc, EXLReportExcelTLB, EXLReportBand, EXLReport, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxCheckBox, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TBDR3Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    lb_month: TcxBarEditItem;
    lb_year: TcxBarEditItem;
    btn_exec: TdxBarButton;
    m_month: TdxMemData;
    src_month: TDataSource;
    clF0: TcxGridDBBandedColumn;
    clF1: TcxGridDBBandedColumn;
    clF2: TcxGridDBBandedColumn;
    clF4: TcxGridDBBandedColumn;
    clF3: TcxGridDBBandedColumn;
    clF5: TcxGridDBBandedColumn;
    clF6: TcxGridDBBandedColumn;
    clF7: TcxGridDBBandedColumn;
    clF8: TcxGridDBBandedColumn;
    clF9: TcxGridDBBandedColumn;
    clF10: TcxGridDBBandedColumn;
    clF11: TcxGridDBBandedColumn;
    clF12: TcxGridDBBandedColumn;
    clF13: TcxGridDBBandedColumn;
    clF14: TcxGridDBBandedColumn;
    clF15: TcxGridDBBandedColumn;
    clF16: TcxGridDBBandedColumn;
    clF17: TcxGridDBBandedColumn;
    clF18: TcxGridDBBandedColumn;
    clF19: TcxGridDBBandedColumn;
    clF20: TcxGridDBBandedColumn;
    clF21: TcxGridDBBandedColumn;
    clF22: TcxGridDBBandedColumn;
    clF23: TcxGridDBBandedColumn;
    clF24: TcxGridDBBandedColumn;
    clF25: TcxGridDBBandedColumn;
    clF26: TcxGridDBBandedColumn;
    clF27: TcxGridDBBandedColumn;
    clF28: TcxGridDBBandedColumn;
    dxStatusBar1: TdxStatusBar;
    lc1Item1: TdxLayoutItem;
    dxStatusBar1Container0: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    Memo: TcxMemo;
    lc1Item2: TdxLayoutItem;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    dlgSave: TSaveDialog;
    btn_xls: TdxBarButton;
    xlr: TEXLReport;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    clvb1A: TcxGridDBBandedColumn;
    BarCombo: TdxBarCombo;
    dxBarButton3: TdxBarButton;
    vb1D: TcxGridDBBandedColumn;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    lgrplc1Group4: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item3: TdxLayoutItem;
    doc2: TdxBarDockControl;
    LItemlc1Item31: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_Rep: TdxBarButton;
    bc_M1: TdxBarCombo;
    bI_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    bI_Y2: TcxBarEditItem;
    LItemlc1Item4: TdxLayoutItem;
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
    cl27: TcxGridDBBandedColumn;
    cl28: TcxGridDBBandedColumn;
    cl29: TcxGridDBBandedColumn;
    cl30: TcxGridDBBandedColumn;
    cl31: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    md1: TdxMemData;
    src1: TDataSource;
    btn_ExcelRep: TdxBarButton;
    procedure btn_execClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure xlrFormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_RepClick(Sender: TObject);
    procedure btn_ExcelRepClick(Sender: TObject);
  private
    QueryMode: boolean;
    { Private declarations }
    procedure OpenDs;
    procedure CreateMonth;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure ExpSmal;
    procedure CalcYear;
    procedure ExportReportFull;
  public
    { Public declarations }
  end;

var
  BDR3Form: TBDR3Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, BdrRep;

{$R *.dfm}

procedure TBDR3Form.btn_ExcelRepClick(Sender: TObject);
begin
  ExportReportFull;
end;

procedure TBDR3Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(lb_month.EditValue, lb_Year.EditValue, '8');
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

procedure TBDR3Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDR3Form.FormCreate(Sender: TObject);
var
  Y,M,D: word;
begin
  LoadForm(prop1,Self.Name);
  CreateMonth;
  OpenDs;
  lb_year.EditValue:=CurrentYear;
  DecodeDate(Date, Y,M,D);
  if M>1 then Dec(M);
  lb_month.EditValue:=M;
  //lb_month.EditValue:=MonthOf(Date);
  QueryMode:=true;
end;

procedure TBDR3Form.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBDR3Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TBDR3Form.btn_RepClick(Sender: TObject);
var
  Obj: TBdrReport;
begin
  //MakeReport;
  vb2.BeginUpdate(lsimImmediate);
  Obj:= TBdrReport.Create(md1);
  try
    with Obj do begin
      BeginData:= StrToDate('01.'+IntToStr(bc_M1.ItemIndex)+'.'+bi_Y1.EditValue);
      EndData:= StrToDate('01.'+IntToStr(bc_M2.ItemIndex)+'.'+bi_Y2.EditValue);
      SrvCode:= 8;
      MakeBDR3PlanReport;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TBDR3Form.btn_xlsClick(Sender: TObject);
begin
  {if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');}
  ExpSmal;
end;

procedure TBDR3Form.ExportReportFull;
begin
  xlr.DataSet:= md1;
  xlr.Template:='rep\bdr3_rep.xls';
  xlr.Bands.Clear;
  with xlr.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AC3';
  with (xlr.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A6:AC6';
  end;
  with (xlr.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A5:AC5';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xlr.Bands.AddBand(xlrbtMasterData) do
    Range:='A4:AC4';
  with xlr.Bands.AddBand(xlrbtSummary) do
    Range:='A7:AC7';
  xlr.Dictionary.Clear;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month1';
    ValueAsString:=LongMonthNames[Integer(bc_M1.ItemIndex)];
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='year1';
    ValueAsString:=VarToStr(bI_Y1.EditValue);
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month2';
    ValueAsString:=LongMonthNames[Integer(bc_M2.ItemIndex)];
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='year2';
    ValueAsString:=VarToStr(bI_Y2.EditValue);
  end;
  md1.DisableControls;
  xlr.Show();
  md1.EnableControls;
end;

procedure TBDR3Form.ExpSmal;
begin
  xlr.DataSet:= mT1;
  xlr.Template:='rep\bdr3.xls';
  xlr.Bands.Clear;
  with xlr.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AC3';
  with (xlr.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A6:AC6';
  end;
  with (xlr.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A5:AC5';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xlr.Bands.AddBand(xlrbtMasterData) do
    Range:='A4:AC4';
  with xlr.Bands.AddBand(xlrbtSummary) do
    Range:='A7:AC7';
  xlr.Dictionary.Clear;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=LongMonthNames[Integer(lb_month.EditValue)];
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(lb_year.EditValue);
  end;
  mt1.DisableControls;
  xlr.Show();
  mt1.EnableControls;
end;

procedure TBDR3Form.CalcYear;
var
  i: integer;
begin
  QueryMode:=false;
  try
    for i:=1 to 10 do
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

procedure TBDR3Form.CreateMonth;
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

procedure TBDR3Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(lb_month.EditValue)]+' '+
      IntToStr(lb_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(lb_month.EditValue, lb_Year.EditValue); //проверка закрытого периода

  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0, 8);
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

procedure TBDR3Form.dxBarButton2Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0, 8);
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

procedure TBDR3Form.dxBarButton3Click(Sender: TObject);
var
  Q: TFIBQuery;
  i, Code: integer;
begin
  if BarCombo.ItemIndex<0 then Exit;
  Code:=integer(BarCombo.Items.Objects[BarCombo.ItemIndex]);
  src_MT1.DataSet:=nil;
  i:=0;
  Q:=cmDB.GetQuery('select House from SrvDogHouse where SrvDog=:Code and House=:House');
  Q.ParamByName('Code').AsInteger:=Code;
  mT1.First;
  while not mT1.Eof do
  begin
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

procedure TBDR3Form.OpenDs;
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
  for I := 4 to 28 do begin            //остальные
    FName:='F'+IntToSTr(i);
    CreateField(mT1,FName,ftCurrency);
  end;
  //добавляем индекс
  with mT1.Indexes.Add do
    FieldName := 'F';
  with mT1.Indexes.Add do
  begin
    FieldName := 'A';
  end;
  mT1.Open;
end;

procedure TBDR3Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TBDR3Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;
end;

procedure TBDR3Form.xlrFormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1,R2,S,H: String;
  i, cnt :Integer;
begin
  if (Band.BandType = xlrbtMasterData) and (ColumnInReport = 1) then
  begin
    R1 := 'A' + IntToStr(RowInReport);
    R2 := 'B' + IntToStr(RowInReport);
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
  RegisterClass(TBDR3Form);
end.
