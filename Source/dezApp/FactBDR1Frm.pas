unit FactBDR1Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxDBLookupComboBox, cxMaskEdit, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  dxmdaset, dxBar,
  cxBarEditItem, cxClasses, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridExportLink,Math, ClosePeriodFrm,
  cxGridBandedTableView, cxGridDBBandedTableView, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxSkinsdxStatusBarPainter, cxContainer,
  cxProgressBar, dxStatusBar, dxLayoutcxEditAdapters, cxTextEdit, cxMemo,
  cxCurrencyEdit, dxLayoutContainer, dxSkinDevExpressStyle, dxBarExtDBItems;

type
  TFactBDR1Form = class(TDezForm)
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
    m_month: TdxMemData;
    src_month: TDataSource;
    src__HOUSESRV: TDataSource;
    dlgSave: TSaveDialog;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
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
    mT1: TdxMemData;
    src_mT1: TDataSource;
    clvb1House: TcxGridDBBandedColumn;
    xl1: TEXLReport;
    btn_save: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    StatusBar: TdxStatusBar;
    lc1Item1: TdxLayoutItem;
    StatusBarContainer1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    Memo: TcxMemo;
    lc1Item2: TdxLayoutItem;
    str1: TcxStyleRepository;
    styl1: TcxStyle;
    clbv1A: TcxGridDBBandedColumn;
    vb1Column1: TcxGridDBBandedColumn;
    vb1Column2: TcxGridDBBandedColumn;
    lgrplc1Group1: TdxLayoutGroup;
    doc1: TdxBarDockControl;
    LItemlc1Item3: TdxLayoutItem;
    lgrplc1Group2: TdxLayoutGroup;
    lgrplc1Group3: TdxLayoutGroup;
    doc2: TdxBarDockControl;
    LItemlc1Item31: TdxLayoutItem;
    brm1Bar1: TdxBar;
    btn_GetData: TdxBarButton;
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
    l2: TcxGridLevel;
    LItemlc1Item4: TdxLayoutItem;
    bc_M1: TdxBarCombo;
    b_Y1: TcxBarEditItem;
    bc_M2: TdxBarCombo;
    b_Y2: TcxBarEditItem;
    cbb_srv: TdxBarLookupCombo;
    md1: TdxMemData;
    src_md1: TDataSource;
    btn_ExportRep: TdxBarButton;
    ds_HouseSrv: TpFIBDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure itm_srvPropertiesEditValueChanged(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
      RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
      const CellValue: OleVariant);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_GetDataClick(Sender: TObject);
    procedure cbb_srvKeyValueChange(Sender: TObject);
    procedure btn_ExportRepClick(Sender: TObject);
  private
    QueryMode: boolean;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    { Private declarations }
    procedure CreateMonth;
    procedure OpenDS;
    procedure CreateMem(mt: TdxMemData);
    procedure ExpSmal;
    procedure CalcYear;
    procedure GetBdrCodeList(var srvList: TStringList; srv, d1, d2: Variant);
    procedure MakeReport;
    procedure MakeData(srvList: TStringList);
  public
    { Public declarations }
  end;

var
  FactBDR1Form: TFactBDR1Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezMakeBDR, BdrRep;

{$R *.dfm}

procedure TFactBDR1Form.ExpSmal;
begin
  if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
  xl1.Template:='rep\bdr_f1_s.xls' else
  xl1.Template:='rep\bdr_f1_l.xls';
  xl1.Bands.Clear;
  //header
  with xl1.Bands.AddBand(xlrbtTitle) do
  if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
    Range:='A1:U3' else
    Range:='A1:AD3';
  //Footer
  with (xl1.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    Name:='GroupFooter1';
    if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
    Range:='A6:U6' else
    Range:='A6:AD6';
  end;
  //GroupHeader
  with (xl1.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
    Range:='A5:U5' else
    Range:='A5:AD5';
    FieldName:='F2';
    FooterBand:='GroupFooter1';
  end;
  //MasterData
  with xl1.Bands.AddBand(xlrbtMasterData) do
  if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
    Range:='A4:U4' else
    Range:='A4:AD4';
  with xl1.Bands.AddBand(xlrbtSummary) do
  if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
    Range:='A7:U7' else
    Range:='A7:AD7';
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
  with xl1.Dictionary.Add do begin
    FieldName:='srv';
    with TcxLookupComboBoxProperties(itm_srv.Properties).Grid.DataController do
    begin
      ValueAsString := VarToStr(Values[FocusedRecordIndex, 1]);
    end;
  end;
  mt1.DisableControls;
  xl1.Show();
  mt1.EnableControls;
end;

procedure TFactBDR1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFactBDR1Form.FormCreate(Sender: TObject);
var
 Y,M,D: word;
begin
  QueryMode:=true;
  LoadForm(prop1,Self.Name);
  CreateMem(mT1);
  //CreateMem(md1);
  OpenDS;
  //настройка параметров
  itm_Year.EditValue:=CurrentYear;
  DecodeDate(Date, Y,M,D);
  if M>1 then
    Dec(M)
  else
    itm_Year.EditValue:=itm_Year.EditValue+1;
  itm_Month.EditValue:=M;
end;

procedure TFactBDR1Form.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFactBDR1Form.GetBdrCodeList(var srvList: TStringList; srv, d1, d2: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,
     'SELECT CODE' +#13#10+
     'FROM FBDR' +#13#10+
     'where CAST((''01.''||M||''.''||Y) as DATE) between :d1 and :d2' +#13#10+
     'and  HOUSESRV = :srv');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('d1').AsVariant:= d1;
    Q.ParamByName('d2').AsVariant:= d2;
    Q.ParamByName('srv').AsVariant:= srv;
    Q.ExecQuery;
    while not Q.Eof do begin
      srvList.Add(Q.FN('CODE').AsVariant);
      Q.Next;
    end;
    //Result:=Q.FN('code').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFactBDR1Form.itm_srvPropertiesEditValueChanged(Sender: TObject);
begin
  if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then
  begin
    vb1.Bands[4].Visible:=False;
  end else
  begin
    vb1.Bands[4].Visible:=True;
  end;
end;


procedure TFactBDR1Form.MakeData(srvList: TStringList);
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddData;
  var
    n: Integer;
    FieldName: string;
  begin
    if I = 0 then begin  //первый месяц
      with md1 do begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for n:=3 to 27 do
        begin
          FieldName:='F'+IntToStr(n);
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        end;
        Post;
      end;
    end else
    if I = srvList.Count -1 then begin //последний месяц
      with md1 do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
          Edit;
          for n:=7 to 27 do
          begin
            FieldName:='F'+IntToStr(n);
            case n of
              9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
              10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
              11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
              else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
            end;
          end;
          Post;
        end else begin
          Append;
          FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
          FN('F1').AsVariant:= Q.FN('F1').AsVariant;
          FN('F2').AsVariant:= Q.FN('F2').AsVariant;
          for n:=3 to 27 do
          begin
            FieldName:='F'+IntToStr(n);
            FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          end;
          Post;
        end;
      end;
    end else begin                     //
      with md1 do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
          Edit;
          for n:=7 to 27 do
          begin
            FieldName:='F'+IntToStr(n);
            FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
          Post;
        end else begin
          Append;
          FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
          FN('F1').AsVariant:= Q.FN('F1').AsVariant;
          FN('F2').AsVariant:= Q.FN('F2').AsVariant;
          for n:=3 to 27 do
          begin
            FieldName:='F'+IntToStr(n);
            FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          end;
          Post;
        end;
      end;
    end;
    //
  end;

begin
  md1.Close; md1.Open; //ClearData
  md1.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    'SELECT FB1.HOUSE, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '       DU.NAME F2, FB1.F3, FB1.F4, FB1.F5,' +#13#10+
    '       FB1.F6, FB1.F7, FB1.F8, FB1.F9,' +#13#10+
    '       FB1.F10, FB1.F11, FB1.F12, FB1.F13,' +#13#10+
    '       FB1.F14, FB1.F15, FB1.F16, FB1.F17,' +#13#10+
    '       FB1.F18, FB1.F19, FB1.F20, FB1.F21,' +#13#10+
    '       FB1.F22, FB1.F23, FB1.F24, FB1.F25,' +#13#10+
    '       FB1.F26, FB1.F27' +#13#10+
    'FROM FBDR1 FB1' +#13#10+
    'LEFT outer join fbdr fb on fb.CODE = fb1.FBDR' +#13#10+
    'left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    'left outer join street s on s.CODE = h.STREET' +#13#10+
    'left outer JOIN du on du.CODE = h.DU' +#13#10+
    'where FB.CODE =:code order by FB1.HOUSE');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to srvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= srvList[i];
      Q.ExecQuery;
      while not Q.Eof do begin
        addData;
        Q.Next;
      end;
    end;
  finally
    FreeQueryForUse(Q);
    md1.EnableControls;
  end;
end;

procedure TFactBDR1Form.MakeReport;
var
  d1, d2, srv: Variant;
  srvList: TStringList;
begin
  //CheckParams;
  srvList:= TStringList.Create;
  try
    d1:= StrToDate('01.'+IntToStr(bc_M1.ItemIndex)+'.'+b_Y1.EditValue);
    d2:= StrToDate('01.'+IntToStr(bc_M2.ItemIndex)+'.'+b_Y2.EditValue);
    srv:= cbb_srv.KeyValue;
    GetBdrCodeList(srvList, srv, d1, d2);
    if srvList.Count>=0 then
    MakeData(srvList);
  finally
    FreeAndNil(srvList);
  end;
end;

procedure TFactBDR1Form.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TFactBDR1Form.OpenDS;
begin
  CreateMonth;
  ds_HOUSESRV.Open;
end;

procedure TFactBDR1Form.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

procedure TFactBDR1Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
begin
  if AItem<>nil then
  if AItem.DataBinding.ValueType='Float' then
  if ARecord.Values[AItem.Index]<0 then Astyle:=cmdb.styl1;

end;

procedure TFactBDR1Form.xl1FormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1,R2,S,H: String;
  i, cnt :Integer;
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

procedure TFactBDR1Form.CreateMonth;
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

procedure TFactBDR1Form.dxBarButton1Click(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue,
    1, itm_Srv.EditValue);
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

procedure TFactBDR1Form.btn_excelClick(Sender: TObject);
begin
  //if (itm_srv.EditValue=1) or (itm_srv.EditValue=7) then ExpSmal else
  ExpSmal;
end;

procedure TFactBDR1Form.btn_execClick(Sender: TObject);
var
  Obj: TbdrBuilder;
begin
  Obj:=TbdrBuilder.Create(itm_month.EditValue, itm_Year.EditValue, itm_Srv.EditValue);
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

procedure TFactBDR1Form.btn_ExportRepClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd2);
end;

procedure TFactBDR1Form.btn_GetDataClick(Sender: TObject);
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
      SrvCode:= cbb_srv.KeyValue;
      MakeBdr1Report;
    end;
  finally
    FreeAndNil(Obj);
    vb2.EndUpdate;
  end;
end;

procedure TFactBDR1Form.btn_saveClick(Sender: TObject);
var
  Obj: TbdrLoader;
begin
  if QueryMode then
    if not cmMessageBox('Сохранить данные за '+LongMonthNames[Integer(itm_month.EditValue)]+' '+
      IntToStr(itm_Year.EditValue)+'?') then Exit;
  ScanClosePeriod(itm_month.EditValue, itm_Year.EditValue); //проверка закрытого периода

  Obj:=TbdrLoader.Create(itm_month.EditValue, itm_Year.EditValue, 1,
    itm_Srv.EditValue);
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

procedure TFactBDR1Form.CalcYear;
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
      btn_saveClick(nil);
    end;
  finally
    QueryMode:=true;
  end;
end;

procedure TFactBDR1Form.cbb_srvKeyValueChange(Sender: TObject);
begin
  if (cbb_srv.KeyValue=1) or (cbb_srv.KeyValue=7) then
  begin
    vb2.Bands[4].Visible:=False;
  end else
  begin
    vb2.Bands[4].Visible:=True;
  end;
end;

procedure TFactBDR1Form.CreateMem(mt: TdxMemData);
var
  i :Integer;
  FName :string;
begin
  CreateField(mt,'House',ftInteger);    //код дома
  CreateField(mt,'F',ftString, 256);  //фильтр
  CreateField(mt,'A',ftBoolean);  //фильтр
  CreateField(mt,'F0',ftInteger);     //№ п/п
  CreateField(mt,'F1',ftString,256);  //Адрес
  CreateField(mt,'F2',ftString,32);   //№ ДУ
  CreateField(mt,'F3',ftFloat);       //Площадь
  for I := 4 to 27 do begin            //остальные
    FName:='F'+IntToSTr(i);
    CreateField(mt,FName,ftCurrency);
  end;
  //добавляем индекс
  with mt.Indexes.Add do
  begin
    FieldName := 'F';
  end;

  mt.Open;
end;
{------------------------------------------------------------------------------}


 initialization
 RegisterClass(TFactBDR1Form);
end.
