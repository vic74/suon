unit ArRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels, FIBDataSet,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, dxSkinsdxBarPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  FIBQuery, pFIBCacheQueries, pFIBProps, dxmdaset,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, cxCheckBox, cxBarEditItem;

type
  TArRepForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group2: TdxLayoutGroup;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_open: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_rep: TpFIBDataSet;
    md1: TdxMemData;
    src_md1: TDataSource;
    itm_check: TcxBarEditItem;
    btn_excel: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_openClick(Sender: TObject);
    procedure itm_checkPropertiesEditValueChanged(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure MakeReport;
    procedure ShowNullColumn(show: Boolean = false);
    procedure SetColumnWidth;
  public
    { Public declarations }
  end;

var
  ArRepForm: TArRepForm;

implementation

uses cmDBUnit;

{$R *.dfm}
procedure CreateField(AMemData: TdxMemData; AFieldName, ADisplayName: string;
  AFieldType: TFieldType; AFieldSize: Integer = 0);
var
  AField : TField;
begin
  if AMemData.FindField(aFieldName) = nil then
     if AMemData.SupportedFieldType(aFieldType) then
  with AMemData do begin
    AField:= DefaultFieldClasses[aFieldType].Create(AMemData);
    AField.Name := Name + aFieldName;
    AField.FieldName := aFieldName;
    AField.DisplayLabel :=aDisplayName;

    if AField is TStringField then
            TStringField(AField).Size := AFieldSize;
    if AField is TBlobField then
           TBlobField(AField).Size := AFieldSize;
    if AField is TFloatField then
    begin
      TFloatField(AField).Currency := True;
      TFloatField(AField).Precision := 2
    end;
    AField.DataSet := AMemData;
    AField.Calculated := False;
    AField.Lookup := False;
  end;
end;

procedure TArRepForm.btn_excelClick(Sender: TObject);
var
  List: TStrings;
begin
  List:= TStringList.Create;
  try
    List.Add(Self.Caption);
    ExportInExcel(grd1, List);
  finally
    FreeAndNil(List);
  end;
end;

procedure TArRepForm.btn_openClick(Sender: TObject);
begin
  v1.BeginUpdate(lsimImmediate);
  try
    MakeReport;

  finally
    v1.EndUpdate;
    v1.ApplyBestFit;
    SetColumnWidth;
  end;
end;

procedure TArRepForm.SetColumnWidth;
var
  i: Integer;
begin
  for i := 7 to v1.ColumnCount -1 do
    v1.Columns[i].Width:= 80;
end;

procedure TArRepForm.ShowNullColumn(show: boolean);
var
  i: Integer;
  sFieldName: string;
  ASummaryItem: TcxGridDBTableSummaryItem;
  AColumn: TcxGridDBColumn;
  AValue: Variant;
begin
  for I := 0 to v1.DataController.Summary.FooterSummaryItems.Count - 1 do
  begin
    ASummaryItem :=TcxGridDBTableSummaryItem(
      v1.DataController.Summary.FooterSummaryItems[i]);
    AColumn := ASummaryItem.Column as TcxGridDBColumn;
    sFieldName := AColumn.DataBinding.FieldName;
    if show = false then begin
      AValue:= v1.DataController.Summary.FooterSummaryValues[I];
      if AValue = 0 then
         AColumn.Visible:= false;
      itm_check.Caption:= 'Показать провайдеров';
      itm_check.Hint:= 'Показать неиспользуемых провайдеров';
    end else begin
      AColumn.Visible:= true;
      itm_check.Caption:= 'Скрыть провайдеров';
      itm_check.Hint:= 'Скрыть неиспользуемых провайдеров';
    end;
  end;
end;

procedure TArRepForm.CreateMem;
var
  Q: TFIBQuery;
  i: integer;
begin
  //md1.Open;
  CreateField(md1,'HOUSE','Код', ftInteger);
  CreateField(md1,'SNAME','Улица',ftString, 256);
  CreateField(md1,'NOMER','Дом', ftString, 32);
  CreateField(md1, 'FLAT_CNT', 'кв.', ftInteger);
  CreateField(md1, 'A', ' ', ftBoolean);
  CreateField(md1, 'CNT', 'кол-во', ftInteger);
  Q:= GetQueryForUse(cmDb.RT,
    'select distinct(A.CODE), A.NAME, ''F''||(A.CODE) FNAME' + #13#10 +
    'from ARENDATOR A' + #13#10 +
    'left outer join dogimmkd d on d.arendator = a.code' + #13#10 +
    'where d.dtype =2');
  try
    Q.ExecQuery;
    while not Q.Eof do begin
      CreateField(md1, Q.FN('FNAME').AsString, Q.FN('NAME').AsString, ftInteger);
      Q.Next;
    end;
    md1.FieldDefs.Update;
    src_md1.DataSet:= md1;
    md1.Active:= True;
    v1.DataController.CreateAllItems;
    for i := 0 to v1.ColumnCount - 1 do
        if i>6 then begin
          v1.Columns[i].Summary.FooterKind:= skSum;
          v1.Columns[i].Summary.FooterFormat:= '0';
        end;
         v1.Columns[1].Summary.FooterKind:= skCount; //кол-во домов

  finally
    FreeQueryForUse(Q);
  end;
  v1.ApplyBestFit();
end;

procedure TArRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TArRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;

procedure TArRepForm.itm_checkPropertiesEditValueChanged(Sender: TObject);
begin
  ShowNullColumn(itm_check.EditValue);
end;

procedure TArRepForm.MakeReport;
var
  house: Variant;

  procedure AddRecord;
  begin
    md1.Append;
    md1.FieldByName('HOUSE').AsVariant:= ds_rep.FN('HOUSE').AsVariant;
    md1.FieldByName('SNAME').AsVariant:= ds_rep.FN('SNAME').AsVariant;
    md1.FieldByName('NOMER').AsVariant:= ds_rep.FN('NOMER').AsVariant;
    md1.FieldByName('FLAT_CNT').AsVariant:= ds_rep.FN('FLAT_CNT').AsVariant;
    if ds_rep.FN('FNAME').AsVariant <> null then
    md1.FieldByName(ds_rep.FN('FNAME').AsString).AsInteger:= 1;
    md1.FieldByName('A').AsVariant:= ds_rep.FN('A').AsVariant;
    md1.FieldByName('CNT').AsVariant:= ds_rep.FN('CNT').AsVariant;
    md1.Post;
  end;

  procedure EditRecord;
  begin
    md1.Edit;
    if ds_rep.FN('FNAME').AsVariant <> null then begin
      md1.FieldByName(ds_rep.FN('FNAME').AsString).AsInteger:= 1;
      md1.FieldByName('CNT').AsVariant:=md1.FieldByName('CNT').AsVariant +
                                                     ds_rep.FN('CNT').AsVariant;
    end;
    md1.Post;
  end;

begin
  md1.Close;
  md1.Open;
  ds_rep.CloseOpen(false);
  with ds_rep do begin
    while not Eof do begin
      if house<> FN('HOUSE').AsVariant then
         AddRecord else
         EditRecord;
      house:= FN('HOUSE').AsVariant;
      Next;
    end;
  end;
end;

initialization
 RegisterClass(TArRepForm);
end.

