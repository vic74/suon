unit OPURepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxmdaset, FIBDataSet, pFIBDataSet, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxGridExportLink, cxExport, ShellApi,
  cxEditRepositoryItems, frxClass, EXLReportExcelTLB, EXLReportBand, EXLReport,
  dxSkinsDefaultPainters, dxSkinDevExpressStyle, cxNavigator;

type
 TcxMyGridTableViewExport = class(TcxGridTableViewExport)
  protected
    fHead: TStrings;
    procedure AddFooterMessage(var ATop, ALeft: Integer; AText: string); virtual;
    procedure AddHeaderMessage(var ATop, ALeft: Integer; ARec: Integer; AText: string); virtual;
    function GetCopyrightMessage: string; virtual;
    function GetHeaderMessage: TStrings; virtual;
    procedure CreateFooter(var ATop, ALeft: Integer); override;
    procedure CreateHeader(var ATop, ALeft: Integer); override;
    constructor Create(AFileName: string; AExportType: Integer; AGridView: TcxCustomGridView;
      AGrid: TcxCustomGrid; AViewInfo: TcxCustomGridViewInfo; aHead: TStrings); virtual;
  end;

  TOPURepForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    btn1: TdxBarButton;
    lc1Group1: TdxLayoutGroup;
    lgrplc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItemlc1Item1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    LItemlc1Item11: TdxLayoutItem;
    ds_HOUSE: TpFIBDataSet;
    src_md: TDataSource;
    md: TdxMemData;
    clv1Column1: TcxGridDBColumn;
    Repository1: TcxEditRepository;
    RItem1: TcxEditRepositoryCheckBoxItem;
    fds_Detail: TpFIBDataSet;
    src_detail: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2OPU_TYPE: TcxGridDBColumn;
    clv2INST_DATE: TcxGridDBColumn;
    clv2INST_KONTRAGENT: TcxGridDBColumn;
    clv2TU_DATA: TcxGridDBColumn;
    clv2TU_KONTRAGENT: TcxGridDBColumn;
    clv2PROJ_DATE: TcxGridDBColumn;
    clv2PROJ_KONTRAGENT: TcxGridDBColumn;
    clv2LASTDATA: TcxGridDBColumn;
    clv2OTNAME: TcxGridDBColumn;
    doc1: TdxBarDockControl;
    LItemlc1Item12: TdxLayoutItem;
    br2: TdxBar;
    btn_print: TdxBarButton;
    fr1: TfrxReport;
    btn_Excel: TdxBarButton;
    dlgSave1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_printClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure MakeData;
    procedure MakeGrid;
    procedure OpenDetail;
    function GetOPuType: TFIBQuery;
    procedure ExportInExcel;
    procedure ExportInExcelTemplate;
  public
    { Public declarations }
  end;

var
  OPURepForm: TOPURepForm;

implementation

uses cmDBUnit;

{$R *.dfm}
procedure MyExportGridToFile(AFileName: string; AExportType: Integer;
  AGrid: TcxGrid; AExpand, ASaveAll, AUseNativeFormat: Boolean;
  const ASeparator, ABeginString, AEndString: string; const AFileExt: string; Header: TStrings);
var
  AView: TcxCustomGridView;
  AGridExport: TcxGridCustomExport;
begin
  if AGrid <> nil then
  begin
    if AFileExt <> '' then
      AFileName := ChangeFileExt(AFileName, '.' + AFileExt);
    AView := AGrid.ActiveLevel.GridView;
    AGridExport := TcxMyGridTableViewExport.Create(AFileName, AExportType, AView, AGrid, nil, Header);
    AGridExport.SaveAll := ASaveAll;
    AGridExport.Expand := AExpand;
    AGridExport.UseNativeFormat := AUseNativeFormat;
    AGridExport.AddSeparators([ASeparator, ABeginString, AEndString]);
    AGrid.BeginUpdate;
    try
      try
        AGridExport.DoExport;
      finally
        AGridExport.Free;
      end;
    finally
      AGrid.EndUpdate;
    end;
  end;
end;

procedure TOPURepForm.btn1Click(Sender: TObject);
begin
  MakeData;
end;

procedure TOPURepForm.btn_ExcelClick(Sender: TObject);
var
  Header: TStrings;
begin
  Header:= TStringList.Create;
  try
    Header.Add(Caption);
    AppUtils.ExportInExcel(grd1,Header);
  finally
    FreeAndNil(Header);
  end;
end;

procedure TOPURepForm.btn_printClick(Sender: TObject);
begin
  fr1.LoadFromFile(AppPath+'rep\opu_Card.fr3');
  fr1.ShowReport();
end;

procedure TOPURepForm.CreateMem;
var
  F: TField;
  Q: TFIBQuery;
  fName: string;
begin
  Q:= GetOPuType;
  try
    with md do begin
      AddField('House',ftInteger);
        F:=FindField('HOUSE');
        F.Visible:=False;
      AddField('SNAME',ftString,'Улица',128);
        F:=FindField('SNAME');
        F.DisplayWidth:=25;
      AddField('NOMER',ftString,'Номер',16);
        F:=FindField('NOMER');
        F.DisplayWidth:=8;
      AddField('STREET',ftInteger);
        F:=FindField('STREET');
        F.Visible:=False;
      AddField('MODEM',ftSmallint,'Модем');
        F:=FindField('MODEM');
        F.DisplayWidth:=15;
      AddField('OPU_HOUSE',ftInteger);
        F:=FindField('OPU_HOUSE');
        F.Visible:=False;
      //Q.ExecQuery;
      while not Q.Eof do begin
        fName:= 'OT_'+Q.FN('CODE').AsString;
        AddField(fName,ftSmallint,Q.FN('NAME').AsString);
          F:=FindField(fName);
          F.DisplayWidth:=15;
        Q.Next;
      end;
      Open;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TOPURepForm.ExportInExcel;
var
  FName: string;
  fHeader: TStrings;
begin
  fHeader:= TStringList.Create;
  try
    fHeader.Add(Caption);
    if dlgSave1.Execute then begin
        MyExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd1, true, True, false, '', '', '', 'xls', fHeader);
        FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
  finally
    fHeader.Free;
  end;
end;

procedure TOPURepForm.ExportInExcelTemplate;
begin
  //
end;

procedure TOPURepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TOPURepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;

function TOPURepForm.GetOPuType: TFIBQuery;
begin
  Result:= GetQueryForUse(cmDb.RT,'select CODE, NAME from OPU_TYPE');
  Result.Options:=[qoStartTransaction];
  Result.ExecQuery;
end;

procedure TOPURepForm.MakeData;
var
  Q: TFIBQuery;
  fName: string;
begin
  Q:= GetQueryForUse(cmDb.RT,
    'SELECT OD.OPU_TYPE FROM OPU_DEVICE OD' +#13#10+
    'WHERE OD.OPU_HOUSE =:OHOUSE');
  Q.Options:=[qoStartTransaction];
  v1.BeginUpdate(lsimImmediate);
  //
  try
    ds_HOUSE.CloseOpen(false);
    with ds_HOUSE do begin
      First;
      while not Eof do begin
        md.Append;
        md.FN('HOUSE').AsVariant:= FN('HOUSE').AsVariant;
        md.FN('SNAME').AsVariant:= FN('SNAME').AsVariant;
        md.FN('NOMER').AsVariant:= FN('NOMER').AsVariant;
        md.FN('MODEM').AsInteger:= FN('MODEM').AsInteger;
        md.FN('OPU_HOUSE').AsVariant:= FN('OPU_HOUSE').AsVariant;
        // fill opu_type
        Q.ParamByName('OHOUSE').AsVariant:= FN('OPU_HOUSE').AsVariant;
        Q.ExecQuery;
        while not Q.Eof do begin
          fName:= 'OT_'+ Q.FN('OPU_TYPE').AsString;
          md.FN(fName).AsInteger:= 1;
          Q.Next;
        end;
        md.Post;
        Next;
      end;
    end;
    btn_Excel.Enabled:= not md.IsEmpty;
  finally
    FreeQueryForUse(Q);
    v1.EndUpdate;
    MakeGrid;
  end;
end;

procedure TOPURepForm.MakeGrid;
var
  i: Integer;
  Q: TFIBQuery;
  fName: string;
begin
  v1.ClearItems;
  v1.DataController.CreateAllItems();
  for i := 0 to v1.ColumnCount -1 do
    if v1.Columns[i].DataBinding.ValueType = 'Smallint' then
       v1.Columns[i].RepositoryItem:= RItem1;
  //v1.ApplyBestFit();
  v1.Columns[v1.GetColumnByFieldName('SNAME').Index].Summary.FooterKind:= skCount;
  v1.Columns[v1.GetColumnByFieldName('MODEM').Index].Summary.FooterKind:= skSum;
  v1.Columns[v1.GetColumnByFieldName('MODEM').Index].Summary.FooterFormat:='0';
  Q:= GetOPuType;
  try
    while not Q.Eof do begin
      fName:= 'OT_'+Q.FN('CODE').AsString;
      v1.Columns[v1.GetColumnByFieldName(fName).Index].Summary.FooterKind:= skSum;
      v1.Columns[v1.GetColumnByFieldName(fName).Index].Summary.FooterFormat:='0';
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TOPURepForm.OpenDetail;
begin
  with fds_Detail do begin
    Close;
    ParamByName('OHOUSE').AsVariant:= v1.FN('OPU_HOUSE');
    Open;
  end;
end;

procedure TOPURepForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDetail;
end;

procedure TOPURepForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: OpenDetail;
    VK_DOWN: OpenDetail;
  end;
end;

{ TcxMyGridTableViewExport }

procedure TcxMyGridTableViewExport.AddFooterMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  if CanShowMultiSummaries(True) then
    ARowCount := GetFooterLineCount(DataController.Summary.FooterSummaryItems)
  else
    ARowCount := RecordRowCount;
  R.Bottom := ATop + ARowCount * (DefaultRowHeight + cxGridFooterCellIndent);
  R := Rect(ALeft, R.Bottom, RecordWidth, R.Bottom + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taRightJustify, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.AddHeaderMessage(var ATop, ALeft: Integer; ARec: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount, Cnt: Integer;
begin
  inherited;
  if ARec>1 then
     Cnt:= (DefaultRowHeight*ARec+(DefaultRowHeight + cxGridFooterCellIndent))*-1 else
     Cnt:= (DefaultRowHeight+(DefaultRowHeight + cxGridFooterCellIndent))*-1;
  R.Top := Cnt;
  R := Rect(ALeft, R.Top, RecordWidth, R.Top + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taCenter, cxBordersAll, FooterCellBorderColor);
end;

constructor TcxMyGridTableViewExport.Create(AFileName: string;
  AExportType: Integer; AGridView: TcxCustomGridView; AGrid: TcxCustomGrid;
  AViewInfo: TcxCustomGridViewInfo; aHead: TStrings);
begin
  inherited Create(AFileName, AExportType, AGridView, AGrid, AViewInfo);
  fHead:= aHead;
end;

procedure TcxMyGridTableViewExport.CreateFooter(var ATop, ALeft: Integer);
begin
  inherited;
  AddFooterMessage(ATop, ALeft, GetCopyrightMessage);
end;

procedure TcxMyGridTableViewExport.CreateHeader(var ATop, ALeft: Integer);
var
  i: Integer;
begin
  inherited;
  for i:=0 to fHead.Count-1 do begin
    AddHeaderMessage(ATop, ALeft, i+1, fHead[i]);
  end;
end;

function TcxMyGridTableViewExport.GetCopyrightMessage: string;
begin
  Result := 'Сохранен '+DateTimeToStr(Date)+' '+TimeToStr(Time);
end;

function TcxMyGridTableViewExport.GetHeaderMessage: TStrings;
begin
  Result:= nil;//'Общий отчет по жилфонду';
end;

initialization
 RegisterClass(TOPURepForm);
end.
