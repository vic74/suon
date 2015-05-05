unit ImportControlFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxMemo, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  dxmdaset,cxEditRepositoryItems, FIBDataSet, pFIBDataSet;

type
  TImportControlForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    ed_Y: TcxMaskEdit;
    litlc1Item1: TdxLayoutItem;
    cbb_M: TcxComboBox;
    litlc1Item11: TdxLayoutItem;
    btn_LoadData: TcxButton;
    litlc1Item12: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litlc1Item13: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    litlc1Item14: TdxLayoutItem;
    mmo1: TcxMemo;
    litlc1Item15: TdxLayoutItem;
    md1: TdxMemData;
    src_md1: TDataSource;
    Repository: TcxEditRepository;
    RItem1: TcxEditRepositoryCheckBoxItem;
    rItem2: TcxEditRepositoryComboBoxItem;
    rItem3: TcxEditRepositoryImageComboBoxItem;
    ds_EXPORTLOADSTATE: TpFIBDataSet;
    src_EXPORTLOADSTATE: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2LOADDATE: TcxGridDBColumn;
    clv2LOADTYPE: TcxGridDBColumn;
    clv2EDTNAME: TcxGridDBColumn;
    clv2ERRORCOUNT: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2Y: TcxGridDBColumn;
    clv2M: TcxGridDBColumn;
    clv2PIPLE: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LoadDataClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure clv2ERRORCOUNTCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure CreateMemTable;
    procedure PrepareGrid;
    procedure MakeData;
    procedure OpenDetail;
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  ImportControlForm: TImportControlForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TImportControlForm.btn_LoadDataClick(Sender: TObject);
begin
  MakeData;
end;

procedure TImportControlForm.clv2ERRORCOUNTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[clv2ERRORCOUNT.Index]>0 then
  begin  //error
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TImportControlForm.CreateMemTable;
var
  Q: TFIBQuery;
  procedure loadMonth;
  var
    i: Integer;
  begin
    md1.Open;
    for I := 1 to 12 do
    with md1 do begin
      Append;
      FN('MONTH').AsVariant:= i;
      Post;
    end;
  end;
begin
  Q:= GetQueryForUse(cmDb.RT, 'SELECT CODE, NAME FROM EXPORTDATATYPE ORDER BY NAME');
  try
    Q.Options:=[qoStartTransaction];
    Q.ExecQuery;
    md1.ClearField;
    md1.AddField('MONTH',ftInteger,'Μερÿφ');
    while not Q.Eof do begin
      md1.AddField('EDT_'+VarToStr(Q.FN('CODE').AsVariant),ftSmallint,Q.FN('NAME').AsString);
      Q.Next;
    end;
    loadMonth;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TImportControlForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TImportControlForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  //
  CreateMemTable;
  //
  //PrepareGrid;
end;

procedure TImportControlForm.LoadData;
var
  Stream :TMemoryStream;
begin
    Stream:=TMemoryStream.Create;
  try
      TBlobField(ds_EXPORTLOADSTATE.FN('DATA')).SaveToStream(Stream);
      mmo1.Clear;
      if Stream.Size>0 then
      begin
        Stream.Position:=0;
        mmo1.Lines.LoadFromStream(Stream);
      end;
  finally
    Stream.Free;
  end;
end;

procedure TImportControlForm.MakeData;
var
  Q: TFIBQuery;

  procedure EditRecord(aMonth, aType, ErrCnt: Variant);
  var
    FName: string;
  begin
      if md1.Locate('MONTH',aMonth,[]) then begin
        FName:= 'EDT_'+VarToStr(aType);
        md1.Edit;
        if (ErrCnt = null) then
           md1.FieldByName(FName).AsVariant:=null;
        if (ErrCnt = 0) then
           md1.FieldByName(FName).AsVariant:=1;
        if (ErrCnt > 0) then
           md1.FieldByName(FName).AsVariant:=0;
        md1.Post;
      end;
  end;

begin
  PrepareGrid;
  Q:= GetQueryForUse(cmDb.RT,'select LOADTYPE, M, ERRORCOUNT from EXPORTLOADSTATE where Y=:Y');
  try
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('Y').AsVariant:= ed_Y.EditingValue;
    Q.ExecQuery;
    while not Q.Eof do begin
      EditRecord(Q.FN('M').AsVariant, Q.FN('LOADTYPE').AsVariant, Q.FN('ERRORCOUNT').AsVariant);
      Q.Next;
    end;
    OpenDetail;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TImportControlForm.OpenDetail;
begin
  with ds_EXPORTLOADSTATE do begin
    Close;
    MainWhereClause:='Y=:Y and M=:M';
    ParamByName('Y').AsVariant:= ed_Y.EditingValue;
    ParamByName('M').AsVariant:= v1.GetColumnByFieldName('MONTH').EditValue;
    Open;
  end;
  LoadData;
end;

procedure TImportControlForm.PrepareGrid;
var
  i: Integer;
begin
  v1.ClearItems;
  v1.DataController.CreateAllItems();
    for i := 0 to v1.ColumnCount -1 do
    if v1.Columns[i].DataBinding.ValueType = 'Smallint' then begin
       v1.Columns[i].RepositoryItem:= RItem1;
       v1.Columns[i].Summary.FooterKind:= skSum;
       v1.Columns[i].Summary.FooterFormat:='0';
    end;
  v1.Columns[v1.GetColumnByFieldName('MONTH').Index].RepositoryItem:= rItem3;
  v1.ApplyBestFit;
end;

procedure TImportControlForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDetail;
end;

procedure TImportControlForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: OpenDetail;
    VK_DOWN: OpenDetail;
  end;
end;

procedure TImportControlForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadData;
end;

procedure TImportControlForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: LoadData;
    VK_DOWN: LoadData;
  end;
end;

procedure TImportControlForm.v2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if (ARecord.Values[clv2ERRORCOUNT.Index] = null)
    or (ARecord.Values[clv2ERRORCOUNT.Index] = 0) then
   AStyle := cmDb.stl_green;
end;

initialization
 RegisterClass(TImportControlForm);
end.
