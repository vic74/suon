unit FactBRD2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxGridExportLink, ClosePeriodFrm, System.DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxDBLookupComboBox, cxMaskEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, FIBDataSet, fibQuery, pFIBDataSet, dxmdaset, dxBar,
  cxBarEditItem, EXLReportExcelTLB, EXLReportBand, EXLReport,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxTextEdit,
  cxMemo, cxProgressBar, dxStatusBar, cxCurrencyEdit, dxLayoutContainer,
  cxCheckBox, dxSkinDevExpressStyle, cxSpinEdit, cxNavigator, dxSkinVS2010;

type
  TFactBRD2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    Bar1: TdxBar;
    itm_month: TcxBarEditItem;
    itm_year: TcxBarEditItem;
    itm_srv: TcxBarEditItem;
    btn_exec: TdxBarButton;
    btn_excel: TdxBarButton;
    dlgSave: TSaveDialog;
    m_month: TdxMemData;
    src_month: TDataSource;
    src__HOUSESRV: TDataSource;
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
    l1: TcxGridLevel;
    clvb1F28: TcxGridDBBandedColumn;
    clvb1F29: TcxGridDBBandedColumn;
    clvb1F30: TcxGridDBBandedColumn;
    clvb1F31: TcxGridDBBandedColumn;
    clvb1F32: TcxGridDBBandedColumn;
    clvb1House: TcxGridDBBandedColumn;
    clvb1F27: TcxGridDBBandedColumn;
    xl1: TEXLReport;
    StatusBar: TdxStatusBar;
    lc1Item2: TdxLayoutItem;
    StatusBarContainer1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Memo: TcxMemo;
    lc1Item3: TdxLayoutItem;
    vb1Column1: TcxGridDBBandedColumn;
    vb1Column2: TcxGridDBBandedColumn;
    vb1Column3: TcxGridDBBandedColumn;
    vb1Column4: TcxGridDBBandedColumn;
    IsOI: TcxBarEditItem;
    lgrplc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item4: TdxLayoutItem;
    lgrplc1Group3: TdxLayoutGroup;
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
    cl36: TcxGridDBBandedColumn;
    cl37: TcxGridDBBandedColumn;
    l2: TcxGridLevel;
    LItemlc1Item5: TdxLayoutItem;
    bc_M1: TdxBarCombo;
    b_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    b_Y2: TcxBarEditItem;
    md1: TdxMemData;
    src1: TDataSource;
    btn_ExcelRep: TdxBarButton;
    clvbF35: TcxGridDBBandedColumn;
    clvb2F35: TcxGridDBBandedColumn;
    vb1Column5: TcxGridDBBandedColumn;
    vb2Column1: TcxGridDBBandedColumn;
    clF37: TcxGridDBBandedColumn;
    clF38: TcxGridDBBandedColumn;
    clF39: TcxGridDBBandedColumn;
    clvb2F37: TcxGridDBBandedColumn;
    clvb2F38: TcxGridDBBandedColumn;
    clvb2F39: TcxGridDBBandedColumn;
    ds_HouseSrv: TpFIBDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure btn_execClick(Sender: TObject);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function GetBDRCode: integer;
    procedure GetOICheck;
    procedure itm_monthChange(Sender: TObject);
    procedure itm_yearChange(Sender: TObject);
    procedure btn_ExecRepClick(Sender: TObject);
    procedure btn_ExcelRepClick(Sender: TObject);
  private
    QueryMode: boolean;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure CreateMonth;
    procedure OpenDS;
    procedure CreateMem;
    procedure ExpSmal(DS: TDataSet);
    procedure CalcYear;
  public
    { Public declarations }
  end;

var
  FactBRD2Form: TFactBRD2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezMakeBDR, BdrRep;

{$R *.dfm}

procedure TFactBRD2Form.ExpSmal(DS: TDataSet);
begin
  xl1.Template:='rep\bdr_f2.xls';
  xl1.DataSet:= DS;
  xl1.Bands.Clear;
  //Title
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:AO4';
  //MasterData
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A5:AO5';
  //GroupFooter
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    Range:='A7:AO7';
  end;
  //GroupHeader
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A6:AO6';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  //Summary
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A8:AO8';
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
  {with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(itm_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;}
  mt1.DisableControls;
  xl1.Show();
  mt1.EnableControls;
end;

procedure TFactBRD2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFactBRD2Form.FormCreate(Sender: TObject);
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

procedure TFactBRD2Form.FormKeyDown(Sender: TObject; var Key: Word;
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

function TFactBRD2Form.GetBDRCode: integer;
var
  Q: TFIBQuery;
begin
  Result:=-1;
  if (itm_Month.CurEditValue=NULL) or (itm_Year.CurEditValue=NULL) then Exit;
  Q:=cmDB.GetQuery('select * from FBDR where Y=:Y and M=:M and HouseSrv=6', cmDB.RT);
  Q.ParamByName('M').AsInteger:=itm_Month.CurEditValue;
  Q.ParamByName('Y').AsInteger:=itm_Year.CurEditValue;
  Q.ExecQuery;
  if not Q.Eof then
    Result:=Q.FN('Code').AsInteger;
  cmDB.FreeQuery(Q);
end;

procedure TFactBRD2Form.GetOICheck;
var
  Code: integer;
  Q: TFIBQuery;
begin
  IsOI.EditValue:=true;
  Code:=GetBDRCode;
  if Code<0 then Exit;
  Q:=cmDB.GetQuery('select * from FBDR where Code=:Code', cmDB.WT);
  Q.ParamByName('Code').AsInteger:=Code;
  Q.ExecQuery;
  IsOI.EditValue:=Q.FN('IsOI').AsInteger=1;
  cmDB.FreeQuery(Q);
end;

procedure TFactBRD2Form.itm_monthChange(Sender: TObject);
begin
  GetOICheck;
end;

procedure TFactBRD2Form.itm_yearChange(Sender: TObject);
begin
  GetOICheck;
end;

procedure TFactBRD2Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TFactBRD2Form.btn_excelClick(Sender: TObject);
begin
  ExpSmal(mT1);
end;

procedure TFactBRD2Form.OpenDS;
begin
  CreateMonth;
  //ds_HOUSESRV.Open;
end;

procedure TFactBRD2Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TFactBRD2Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;
end;

procedure TFactBRD2Form.xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
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

procedure TFactBRD2Form.CreateMonth;
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

procedure TFactBRD2Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(itm_month.EditValue)]+' '+
      IntToStr(itm_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(itm_month.EditValue, itm_Year.EditValue);
  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue,  1, 6);
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

procedure TFactBRD2Form.dxBarButton2Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue, 1, 6);
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

procedure TFactBRD2Form.btn_ExcelRepClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd2);
end;

procedure TFactBRD2Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(itm_month.EditValue, itm_Year.EditValue, '6');
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

procedure TFactBRD2Form.btn_ExecRepClick(Sender: TObject);
var
  Obj: TBdrReport;
begin
  vb2.BeginUpdate(lsimImmediate);
  Obj:= TBdrReport.Create(md1);
  try
    with Obj do begin
      BeginData:= StrToDate('01.'+IntToStr(bc_M1.ItemIndex)+'.'+VarToStr(b_Y1.EditValue));
      EndData:= StrToDate('01.'+IntToStr(bc_M2.ItemIndex)+'.'+VarToStr(b_Y2.EditValue));
      SrvCode:= 6;
      MakeBdr2Report;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TFactBRD2Form.CalcYear;
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

procedure TFactBRD2Form.CreateMem;
var
  i :Integer;
  FName :string;
begin
  CreateField(mT1,'House',ftInteger);    //код дома
  CreateField(mT1,'F',ftString, 256);  //фильтр
  CreateField(mT1, 'AccCNT', ftInteger); //число лицевых счетов
  CreateField(mT1,'A',ftBoolean);  //дом в управлении ДЕЗ
  CreateField(mT1,'F0',ftInteger);     //№ п/п
  CreateField(mT1,'F1',ftString,256);  //Адрес
  CreateField(mT1,'F2',ftString,32);  //ДУ
  CreateField(mT1,'F3',ftFloat);       //Площадь
  for I := 4 to 40 do begin            //остальные
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
 RegisterClass(TFactBRD2Form);
end.
