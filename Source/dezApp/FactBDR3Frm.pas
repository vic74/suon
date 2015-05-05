unit FactBDR3Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxDBLookupComboBox, cxMaskEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, dxmdaset, dxBar, cxBarEditItem, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter,
  cxContainer, cxTextEdit, cxMemo, cxProgressBar, dxStatusBar, cxCurrencyEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutContainer, ClosePeriodFrm,
  cxSpinEdit, dxSkinDevExpressStyle, cxNavigator;

type
  TFactBDR3Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    dlgSave: TSaveDialog;
    brm1: TdxBarManager;
    Bar1: TdxBar;
    itm_month: TcxBarEditItem;
    itm_year: TcxBarEditItem;
    itm_srv: TcxBarEditItem;
    btn_exec: TdxBarButton;
    btn_excel: TdxBarButton;
    src_month: TDataSource;
    m_month: TdxMemData;
    mT1: TdxMemData;
    src_mT1: TDataSource;
    lc1Item1: TdxLayoutItem;
    grd1: TcxGrid;
    vb1: TcxGridDBBandedTableView;
    clbv1F1: TcxGridDBBandedColumn;
    clbv1F2: TcxGridDBBandedColumn;
    clbv1F3: TcxGridDBBandedColumn;
    clbv1F4: TcxGridDBBandedColumn;
    clbv1F5: TcxGridDBBandedColumn;
    clbv1F6: TcxGridDBBandedColumn;
    clbv1F7: TcxGridDBBandedColumn;
    clbv1F8: TcxGridDBBandedColumn;
    clbv1F9: TcxGridDBBandedColumn;
    clbv1F10: TcxGridDBBandedColumn;
    clbv1F11: TcxGridDBBandedColumn;
    clbv1F12: TcxGridDBBandedColumn;
    clbv1F13: TcxGridDBBandedColumn;
    clbv1F14: TcxGridDBBandedColumn;
    clbv1F15: TcxGridDBBandedColumn;
    clbv1F16: TcxGridDBBandedColumn;
    clbv1F17: TcxGridDBBandedColumn;
    clbv1F18: TcxGridDBBandedColumn;
    clbv1F19: TcxGridDBBandedColumn;
    clbv1F20: TcxGridDBBandedColumn;
    clbv1f21: TcxGridDBBandedColumn;
    clbv1F22: TcxGridDBBandedColumn;
    clbv1F23: TcxGridDBBandedColumn;
    clbv1F24: TcxGridDBBandedColumn;
    clbv1F25: TcxGridDBBandedColumn;
    clbv1F26: TcxGridDBBandedColumn;
    clvb1F27: TcxGridDBBandedColumn;
    clvb1F28: TcxGridDBBandedColumn;
    clvb1F29: TcxGridDBBandedColumn;
    clvb1F30: TcxGridDBBandedColumn;
    clvb1F31: TcxGridDBBandedColumn;
    clvb1House: TcxGridDBBandedColumn;
    l1: TcxGridLevel;
    xl1: TEXLReport;
    StatusBar: TdxStatusBar;
    lc1Item2: TdxLayoutItem;
    StatusBarContainer1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    Memo: TcxMemo;
    lc1Item3: TdxLayoutItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    vb1Column1: TcxGridDBBandedColumn;
    vb1Column2: TcxGridDBBandedColumn;
    vb1Column3: TcxGridDBBandedColumn;
    ppm1: TcxGridPopupMenu;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item4: TdxLayoutItem;
    doc2: TdxBarDockControl;
    LItemlc1Item41: TdxLayoutItem;
    brm1Bar1: TdxBar;
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
    cl27: TcxGridDBBandedColumn;
    cl28: TcxGridDBBandedColumn;
    cl29: TcxGridDBBandedColumn;
    cl30: TcxGridDBBandedColumn;
    cl31: TcxGridDBBandedColumn;
    cl32: TcxGridDBBandedColumn;
    cl33: TcxGridDBBandedColumn;
    cl34: TcxGridDBBandedColumn;
    cl35: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    LItemlc1Item5: TdxLayoutItem;
    md1: TdxMemData;
    src1: TDataSource;
    bc_M1: TdxBarCombo;
    b_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    b_Y2: TcxBarEditItem;
    btn_ExportRep: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_ExecRepClick(Sender: TObject);
    procedure btn_ExportRepClick(Sender: TObject);
  private
    QueryMode: boolean;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure CreateMonth;
    procedure OpenDS;
    procedure CreateMem;
    procedure ExpSmal;
    procedure CalcYear;
  public
    { Public declarations }
  end;

var
  FactBDR3Form: TFactBDR3Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezMakeBDR, BdrRep;

{$R *.dfm}
{------------------------------------------------------------------------------
 Экспорт в Excel
-------------------------------------------------------------------------------}
procedure TFactBDR3Form.ExpSmal;
begin
  xl1.Template:='rep\bdr_f3.xls';
  xl1.Bands.Clear;
  //Title
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AH4';
  //MasterData
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:AH5';
  //GroupFooter
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A7:AH7';
  end;
  //GroupHeader
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A6:AH6';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  //Summary
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A8:AH8';
  //-----------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=LongMonthNames[Integer(itm_month.EditValue)];
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(itm_year.EditValue);
  end;
  mt1.DisableControls;
  xl1.Show();
  mt1.EnableControls;
end;

procedure TFactBDR3Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFactBDR3Form.FormCreate(Sender: TObject);
var
 Y,M,D: word;
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  CreateMonth;
  //настройка параметров
  itm_Year.EditValue:=CurrentYear;
  DecodeDate(Date, Y,M,D);
  if M>1 then
    Dec(M)
  else
    itm_Year.EditValue:=itm_Year.EditValue+1;
  itm_Month.EditValue:=M;
  QueryMode:=true;
end;

procedure TFactBDR3Form.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFactBDR3Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TFactBDR3Form.OpenDS;
begin
  //ds_HOUSESRV.Open;
end;

procedure TFactBDR3Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TFactBDR3Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;
end;

procedure TFactBDR3Form.xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
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

procedure TFactBDR3Form.CreateMonth;
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

procedure TFactBDR3Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(itm_month.EditValue)]+' '+
      IntToStr(itm_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(itm_month.EditValue, itm_Year.EditValue);

  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue,  1, 8);
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

procedure TFactBDR3Form.dxBarButton2Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue, 1, 8);
  try
    Obj.OnProgress:=Progress;
    Obj.OnMessage:=Msg;
    src_mT1.DataSet:=nil;
    Obj.Load(mT1);
    src_mT1.DataSet:=mT1;
  finally
    Obj.Free;
  end;
end;

procedure TFactBDR3Form.btn_excelClick(Sender: TObject);
begin
  ExpSmal;
end;

procedure TFactBDR3Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(itm_month.EditValue, itm_Year.EditValue, '8');
  Obj.OnMessage:=Msg;
  Obj.OnProgress:=Progress;
  try
    src_mT1.DataSet:=nil;
    Obj.ExecuteFact(mT1);
    src_mT1.DataSet:=mT1;
  finally
    Obj.Free;
  end;
end;

procedure TFactBDR3Form.btn_ExecRepClick(Sender: TObject);
var
  Obj: TBdrReport;
begin
  vb2.BeginUpdate(lsimImmediate);
  Obj:= TBdrReport.Create(md1);
  try
    with Obj do begin
      BeginData:= StrToDate('01.'+IntToStr(bc_M1.ItemIndex)+'.'+VarToStr(b_Y1.EditValue));
      EndData:= StrToDate('01.'+IntToStr(bc_M2.ItemIndex)+'.'+VarToStr(b_Y2.EditValue));
      SrvCode:= 8;
      MakeBdr3Report;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TFactBDR3Form.btn_ExportRepClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd2);
end;

procedure TFactBDR3Form.CalcYear;
var
  i: integer;
begin
  QueryMode:=false;
  try
    for i:=1 to 12 do
    begin
      itm_month.EditValue:=i;
      Application.ProcessMessages;
      btn_execClick(nil);
      dxBarButton1Click(nil);
    end;
  finally
    QueryMode:=true;
  end;
end;

procedure TFactBDR3Form.CreateMem;
var
  i :Integer;
  FName :string;
begin
  CreateField(mT1,'House', ftInteger);  //код дома
  CreateField(mT1,'F', ftString, 256);  //фильтр
  CreateField(mT1,'A', ftBoolean);  //фильтр
  CreateField(mT1,'F0', ftInteger);     //№ п/п
  CreateField(mT1,'F1', ftString,256);  //Адрес
  CreateField(mT1,'F2', ftString,32);   //№ ДУ
  CreateField(mT1,'F3', ftFloat);       //Площадь
  for I := 4 to 32 do begin            //остальные
    FName:='F'+IntToSTr(i);
    CreateField(mT1,FName,ftCurrency);
  end;
  //добавляем индекс
  with mT1.Indexes.Add do
  begin
    FieldName := 'F';
  end;

  mT1.Open;
end;

 initialization
 RegisterClass(TFactBDR3Form);
end.
