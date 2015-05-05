unit BDR2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, dxSkinsdxBarPainter, cxDBLookupComboBox, cxMaskEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  dxBar, cxBarEditItem, cxPropertiesStore, BaseForm, dxmdaset,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxProgressBar,
  cxTextEdit, cxMemo, dxStatusBar, dezMakeBdr, cxCurrencyEdit,
  cxGridExportLink,DateUtils, ClosePeriodFrm,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  EXLReportExcelTLB, EXLReportBand, EXLReport, cxCheckBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutContainer,
  dxSkinDevExpressStyle, cxNavigator, dxSkinVS2010;

type
  TBDR2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    lb_month: TcxBarEditItem;
    lb_year: TcxBarEditItem;
    btn_exec: TdxBarButton;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    clF0: TcxGridDBBandedColumn;
    clF1: TcxGridDBBandedColumn;
    clF2: TcxGridDBBandedColumn;
    clF3: TcxGridDBBandedColumn;
    clF4: TcxGridDBBandedColumn;
    clF5: TcxGridDBBandedColumn;
    clF6: TcxGridDBBandedColumn;
    clF7: TcxGridDBBandedColumn;
    clF8: TcxGridDBBandedColumn;
    clF9: TcxGridDBBandedColumn;
    clF10: TcxGridDBBandedColumn;
    clF11: TcxGridDBBandedColumn;
    clF12: TcxGridDBBandedColumn;
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
    clF29: TcxGridDBBandedColumn;
    clF30: TcxGridDBBandedColumn;
    clF31: TcxGridDBBandedColumn;
    clF32: TcxGridDBBandedColumn;
    clF33: TcxGridDBBandedColumn;
    clF34: TcxGridDBBandedColumn;
    m_month: TdxMemData;
    src_month: TDataSource;
    StatusBar: TdxStatusBar;
    StatusBarContainer0: TdxStatusBarContainerControl;
    Memo: TcxMemo;
    lc1Item1: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    xlr: TEXLReport;
    dlgSave: TSaveDialog;
    btn_xls: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    vb1Column1: TcxGridDBBandedColumn;
    vb1Column2: TcxGridDBBandedColumn;
    clvb1A: TcxGridDBBandedColumn;
    ppm1: TcxGridPopupMenu;
    BarCombo: TdxBarCombo;
    DogCombo: TdxBarButton;
    vDog: TcxGridDBBandedColumn;
    dxBarButton3: TdxBarButton;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item2: TdxLayoutItem;
    doc2: TdxBarDockControl;
    LItemlc1Item21: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_Rep: TdxBarButton;
    LItemlc1Item3: TdxLayoutItem;
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
    cl32: TcxGridDBBandedColumn;
    cl33: TcxGridDBBandedColumn;
    cl34: TcxGridDBBandedColumn;
    cl35: TcxGridDBBandedColumn;
    cl36: TcxGridDBBandedColumn;
    cl37: TcxGridDBBandedColumn;
    cl38: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    bc_M1: TdxBarCombo;
    bI_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    bI_Y2: TcxBarEditItem;
    md1: TdxMemData;
    src1: TDataSource;
    clF36: TcxGridDBBandedColumn;
    clDZI: TcxGridDBBandedColumn;
    clcDZI: TcxGridDBBandedColumn;
    vb1Column3: TcxGridDBBandedColumn;
    vb2Column1: TcxGridDBBandedColumn;
    clvb2F36: TcxGridDBBandedColumn;
    btn_ExcelRep: TdxBarButton;
    clF38: TcxGridDBBandedColumn;
    clF39: TcxGridDBBandedColumn;
    clF40: TcxGridDBBandedColumn;
    clvb2F38: TcxGridDBBandedColumn;
    clvb2F39: TcxGridDBBandedColumn;
    clvb2F40: TcxGridDBBandedColumn;
    clK1: TcxGridDBBandedColumn;
    clK2: TcxGridDBBandedColumn;
    clK3: TcxGridDBBandedColumn;
    clK4: TcxGridDBBandedColumn;
    btn_MakeSmeta2015: TdxBarButton;
    clk5: TcxGridDBBandedColumn;
    clk6: TcxGridDBBandedColumn;
    clk7: TcxGridDBBandedColumn;
    clk8: TcxGridDBBandedColumn;
    clF41: TcxGridDBBandedColumn;
    btn_MakeDRTZ_Smeta: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_xlsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure btn_MakeSmeta2015Click(Sender: TObject);
    procedure btn_MakeDRTZ_SmetaClick(Sender: TObject);
  private
    QueryMode: boolean;
    procedure OpenDs;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure CreateMonth;
    //
    procedure ExpSmal;
    procedure ExpBig;
    procedure CalcYear;
    procedure ExportReportFull;
  public
    { Public declarations }
  end;

var
  BDR2Form: TBDR2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, BdrRep;

{$R *.dfm}

procedure TBDR2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBDR2Form.FormCreate(Sender: TObject);
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
  QueryMode:=true;
end;

procedure TBDR2Form.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TBDR2Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TBDR2Form.btn_ExcelRepClick(Sender: TObject);
begin
  ExportReportFull;
end;

procedure TBDR2Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(lb_month.EditValue, lb_Year.EditValue, '6');
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

procedure TBDR2Form.btn_MakeDRTZ_SmetaClick(Sender: TObject);
var
  Q: TFIBQuery;
  i: integer;
begin
  if lb_Year.EditValue<2015 then
    raise Exception.Create('Операция доступна с 2015 года');
  if Application.MessageBox(PWideChar('Сформировать шаблоны смет (Дезинсекция, Дератизация) ?'),'',1)<>idOk then Exit;
  //формируем сметы
  Msg('Формирование шаблонов по БДР (дезинсекция и дератизация)...');
  Q:=cmDB.GetQuery('execute procedure MAKEBDR2_SMETA_DRTZ(:Y, :M)', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=lb_Year.EditValue;
  Q.ParamByName('M').AsInteger:=lb_Month.EditValue;
  Q.ExecQuery;
  cmDB.FreeQuery(Q);
  //сохраняем транзакцию
  cmDB.WT.Commit;
  Msg('Формирование шаблонов смет завершено.');
end;

procedure TBDR2Form.btn_MakeSmeta2015Click(Sender: TObject);
var
  Q: TFIBQuery;
  i: integer;
begin
  if lb_Year.EditValue<2015 then
    raise Exception.Create('Операция доступна с 2015 года');
  if Application.MessageBox(PWideChar('Сформировать шаблоны смет (ТО, Уборка двора, Уборка подъезда) ?'),'',1)<>idOk then Exit;
  //формируем сметы
  Msg('Формирование шаблонов по БДР...');
  Q:=cmDB.GetQuery('execute procedure MakeBDR2SmetaList(:Y, :M)', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=lb_Year.EditValue;
  Q.ParamByName('M').AsInteger:=lb_Month.EditValue;
  Q.ExecQuery;
  cmDB.FreeQuery(Q);
  //сохраняем транзакцию
  cmDB.WT.Commit;
  Msg('Формирование шаблонов смет завершено.');
end;

procedure TBDR2Form.OpenDs;
var
  i :Integer;
  FName :string;
begin
  MakeBDRTableStruct('6',mT1);  //формируем структуру таблицы
  Exit;

  CreateField(mT1,'D',ftInteger);    //фильтр по договору
  CreateField(mT1,'A',ftInteger);    //код дома
  CreateField(mT1,'House',ftInteger);    //код дома
  CreateField(mT1,'F',ftString, 256);  //фильтр
  CreateField(mT1,'AccCount', ftInteger); //число лицевых счетов
  CreateField(mT1,'DRTZ', ftCurrency); //площадь дератизации
  CreateField(mT1,'DZI', ftCurrency); //площадь дератизации
  CreateField(mT1,'F0',ftInteger);     //№ п/п
  CreateField(mT1,'F1',ftString,256);  //Адрес
  CreateField(mT1,'F2',ftString,32);   //№ ДУ
  CreateField(mT1,'F3',ftString,32);   //Тариф
  for i := 4 to 40 do begin            //остальные
    FName:='F'+IntToSTr(i);
    CreateField(mT1,FName,ftCurrency);
  end;
  //добавляем индекс
  with mT1.Indexes.Add do
    FieldName := 'F';
  with mT1.Indexes.Add do
    FieldName := 'A';
  mT1.Open;
end;

procedure TBDR2Form.btn_RepClick(Sender: TObject);
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
      SrvCode:= 6;
      MakeBDR2PlanReport;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TBDR2Form.btn_xlsClick(Sender: TObject);
begin
  {if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');}
  ExpSmal;
end;


procedure TBDR2Form.ExpSmal;
begin
  xlr.DataSet:= mT1;
  xlr.Template:='rep\bdr2.xls';
  xlr.Bands.Clear;
  with xlr.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AP5';
  with (xlr.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A8:AP8';
  end;
  with (xlr.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A7:AP7';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xlr.Bands.AddBand(xlrbtMasterData) do
    Range:='A6:AP6';
  with xlr.Bands.AddBand(xlrbtSummary) do
    Range:='A9:AP9';
  xlr.Dictionary.Clear;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=LongMonthNames[Integer(lb_month.EditValue)];
    //lb_month.EditValue;
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

procedure TBDR2Form.ExpBig;
begin
  xlr.DataSet:= mT1;
  xlr.Template:='rep\bdr1_large.xls';
  xlr.Bands.Clear;
  with xlr.Bands.AddBand(xlrbtTitle) do
    Range:='A1:W2';
  with (xlr.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A7:W7';
  end;
  with (xlr.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A3:W3';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xlr.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:W5';
  with xlr.Bands.AddBand(xlrbtSummary) do
    Range:='A9:W9';
  mt1.DisableControls;
  xlr.Show();
  mt1.EnableControls;
end;


procedure TBDR2Form.ExportReportFull;
begin
  xlr.DataSet:= md1;
  xlr.Template:='rep\bdr2_rep.xls';
  xlr.Bands.Clear;
  with xlr.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AO5';
  with (xlr.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A8:AO8';
  end;
  with (xlr.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A7:AO7';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  with xlr.Bands.AddBand(xlrbtMasterData) do
    Range:='A6:AO6';
  with xlr.Bands.AddBand(xlrbtSummary) do
    Range:='A9:AO9';
  xlr.Dictionary.Clear;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month1';
    ValueAsString:=LongMonthNames[Integer(bc_M1.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='month2';
    ValueAsString:=LongMonthNames[Integer(bc_M2.ItemIndex)];
    //lb_month.EditValue;
  end;
  with xlr.Dictionary.Add do
  begin
    FieldName:='year1';
    ValueAsString:=VarToStr(bI_Y1.EditValue);
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

procedure TBDR2Form.CalcYear;
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

procedure TBDR2Form.CreateMonth;
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

procedure TBDR2Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(lb_month.EditValue)]+' '+
      IntToStr(lb_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(lb_month.EditValue, lb_Year.EditValue); //проверка закрытого периода

  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0, 6);
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

procedure TBDR2Form.dxBarButton2Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(lb_month.EditValue, lb_Year.EditValue, 0, 6);
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

procedure TBDR2Form.dxBarButton3Click(Sender: TObject);
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

procedure TBDR2Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TBDR2Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;
end;

procedure TBDR2Form.xlrFormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1,R2,S,H: String;
  cnt :Integer;
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
  RegisterClass(TBDR2Form);

end.
