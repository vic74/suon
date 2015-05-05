unit EditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonForm, fs_xml, PlanShablon, cmUtils,
  dxSkinsCore, dxSkinMcSkin, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, Menus,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, StdCtrls, cxButtons, cxTextEdit, cxClasses,
  cxGridLevel, cxGrid, dxLayoutLookAndFeels, dxSkinsForm, cxSplitter, cxVGrid,
  cxInplaceContainer, cxMemo, cxMaskEdit, cxDropDownEdit,
  dxSkinsdxRibbonPainter, dxRibbon, cxEditRepositoryItems, cmDBUnit, FIBDataSet,
  pFIBDataSet, cxDBLookupComboBox, cxGridDBTableView, AppUtils,
  cxPropertiesStore, BaseForm, dxLayoutControlAdapters, dxLayoutContainer,
  dxRibbonSkins, dxSkinDevExpressStyle, cxNavigator;
  

type
  TEditForm = class(TDezForm)
    grp_root: TdxLayoutGroup;
    lcntr_root: TdxLayoutControl;
    spl1: TcxSplitter;
    grp_right: TdxLayoutGroup;
    lcntr_right: TdxLayoutControl;
    skin: TdxSkinController;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    txtCapt: TcxTextEdit;
    Itm_txtCapt: TdxLayoutItem;
    grp_Band: TdxLayoutGroup;
    btn_BandAdd: TcxButton;
    ItmbtnBandAdd: TdxLayoutItem;
    grp_Field: TdxLayoutGroup;
    txt_FieldCapt: TcxTextEdit;
    Itm_FieldCapt: TdxLayoutItem;
    btn_FieldAdd: TcxButton;
    Itm_FieldAdd: TdxLayoutItem;
    grp_Params: TdxLayoutGroup;
    grp_rightGroup3: TdxLayoutGroup;
    grp_rightGroup4: TdxLayoutGroup;
    vb1: TcxGridDBBandedTableView;
    grd2: TcxVerticalGrid;
    Itm_grd2: TdxLayoutItem;
    btn_BandDelete: TcxButton;
    Itm_BandDelete: TdxLayoutItem;
    btn_FieldDelete: TcxButton;
    Itm_FieldDelete: TdxLayoutItem;
    btn_SaveXml: TcxButton;
    Itm_SaveXml: TdxLayoutItem;
    btn_LoadXml: TcxButton;
    Itm_LoadXml: TdxLayoutItem;
    grp_Xml: TdxLayoutGroup;
    splt1: TdxLayoutSplitterItem;
    LCxSkin2: TdxLayoutCxLookAndFeel;
    mmo1: TcxMemo;
    Itm_mmo: TdxLayoutItem;
    splt2: TdxLayoutSplitterItem;
    cbb_FType: TcxComboBox;
    Itm_Ftype: TdxLayoutItem;
    msedt_format: TcxMaskEdit;
    Itm_msedtforma: TdxLayoutItem;
    txt_FieldName: TcxMaskEdit;
    Itm_FieldName: TdxLayoutItem;
    btn_clearGrid: TcxButton;
    Itm_ClearGrid: TdxLayoutItem;
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    strep1: TcxStyleRepository;
    styl_select1: TcxStyle;
    btn_save: TcxButton;
    Itm_rootItem1: TdxLayoutItem;
    repItem1: TcxEditRepository;
    curEd1: TcxEditRepositoryCurrencyItem;
    ds_srv: TpFIBDataSet;
    src2: TDataSource;
    ds_shablon: TpFIBDataSet;
    src1: TDataSource;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Itm_grd3: TdxLayoutItem;
    clv3CODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3SRV: TcxGridDBColumn;
    clv3COLUMNS: TcxGridDBColumn;
    clv3SCRIPT: TcxGridDBColumn;
    prop1: TcxPropertiesStore;
    row1: TcxEditorRow;
    procedure vb1Bands0HeaderClick(Sender: TObject);
    procedure btn_FieldDeleteClick(Sender: TObject);
    procedure vb1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btn_BandDeleteClick(Sender: TObject);
    procedure btn_BandAddClick(Sender: TObject);
    procedure vb1BandPosChanged(Sender: TcxGridBandedTableView;
      ABand: TcxGridBand);
    procedure vb1ColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btn_FieldAddClick(Sender: TObject);
    procedure btn_SaveXmlClick(Sender: TObject);
    procedure btn_LoadXmlClick(Sender: TObject);
    procedure cbb_FTypePropertiesChange(Sender: TObject);
    procedure btn_clearGridClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grd2Edited(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
    procedure vb1BandSizeChanged(Sender: TcxGridBandedTableView;
      ABand: TcxGridBand);
    procedure vb1ColumnSizeChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ds_shablonAfterInsert(DataSet: TDataSet);
    procedure v3CanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Columns: TdezPlanColumn;
    Change :Boolean;
    procedure GetParam(band :TcxGridBand);
    procedure CreateGrid(band :Boolean);
    procedure GetBandParams(Band :TcxGridBand);
    procedure GetFieldParam(AField :TcxGridBandedColumn);
    procedure SaveXml;
    procedure LoadXML(Doc :TfsXMLDocument);
    procedure BandCreate(Aitem :TfsXMLItem);
    procedure FieldCreate(AItem :TfsXMLItem);
    function SetFType(i :integer) :string;
    function GetTdezFType (AColumn :TcxGridBandedColumn) :string;
    function GetValueType (value :string) :string;
{------------------------------------------------------------------------------}
    procedure LoadFromBase;
    procedure ClearAll;
    procedure Changes(ischange :Boolean=true);
    procedure LoadXmlDez(Doc: TfsXMLDocument);
    procedure BandCreateDez(AItem: TDezPlanColumn);
    procedure FieldCreateDez(AItem: TDezPlanColumn);
    function IsFieldExist(AName :string; AIndex :integer) :Boolean;

    procedure SetRowItemIndex(AEditorRow: TcxEditorRow; Index: Integer);
    function GetRowItemIndex(AEditorRow: TcxEditorRow): Integer;
    procedure SaveXmlDez;
  public
    { Public declarations }
  end;

var
  EditForm: TEditForm;

implementation

{$R *.dfm}

procedure TEditForm.v3CanFocusRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  {Changes(false);
  LoadFromBase;}
end;

procedure TEditForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Changes(false);
  LoadFromBase;
end;

procedure TEditForm.v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
   {ShowMessage(APrevFocusedRecord.DisplayTexts[1]+' -> '+
   AFocusedRecord.DisplayTexts[1]+' = '+ ds_shablon.FN('Name').AsString);
   ANewItemRecordFocusingChanged:=False;}
end;

procedure TEditForm.v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  begin
    Changes(false);
    LoadFromBase;
  end;
end;

procedure TEditForm.Changes(ischange :Boolean=true);
begin
    Change:=ischange;
    btn_save.Enabled:=ischange;
end;

procedure TEditForm.LoadFromBase;
var
  Stream :TMemoryStream;
  Doc: TfsXMLDocument;
begin
  ClearAll;
  if ds_shablon.Eof then Exit;
  Stream:=TMemoryStream.Create;
  Doc:=TfsXMLDocument.Create;
  try
    TBlobField(ds_Shablon.FN('Columns')).SaveToStream(Stream);
    if Stream.Size=0 then
    begin
      {Doc.Root.Name:=ds_Shablon.FN('Code').AsString;
      Doc.Root.Prop['Caption']:=ds_shablon.FN('Name').AsString;
      Doc.Root.Prop['FieldType']:='dtGroup';}
    end
    else
    begin
      Stream.Position:=0;
      Doc.LoadFromStream(Stream);
    end;
    LoadXML(Doc);
  finally
    Doc.Free;
    Stream.Free;
  end;
end;

procedure TEditForm.ClearAll;
begin
  vb1.ClearItems;
  vb1.Bands.Clear;
  grd2.ClearRows;
  //Columns.Clear;
end;

procedure TEditForm.vb1BandPosChanged(Sender: TcxGridBandedTableView;
  ABand: TcxGridBand);
begin
  GetParam(ABand);
  Changes; //изменения
end;

procedure TEditForm.vb1Bands0HeaderClick(Sender: TObject);
begin
  GetParam(Sender as TcxGridBand);
end;

procedure TEditForm.vb1BandSizeChanged(Sender: TcxGridBandedTableView;
  ABand: TcxGridBand);
begin
  Changes; //изменения
end;

procedure TEditForm.vb1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  CreateGrid(false);
  GetFieldParam(AColumn as TcxGridBandedColumn);
  //grp_Band.Expanded:=false;
  //grp_Field.Expanded:=True;
end;

procedure TEditForm.vb1ColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  GetFieldParam(AColumn as TcxGridBandedColumn);
  Changes; //изменения
end;

procedure TEditForm.vb1ColumnSizeChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  Changes; //изменения
end;

procedure TEditForm.GetParam(band :TcxGridBand);
begin
  CreateGrid(true);
  GetBandParams(Band);
  //grp_Band.Expanded:=True;
  //grp_Field.Expanded:=False;
end;

procedure TEditForm.GetBandParams(Band :TcxGridBand);
begin
  (FindComponent('Row_Capt') as TcxEditorRow).Properties.Value:=Band.Caption;
  (FindComponent('Row_BandIndex') as TcxEditorRow).Properties.Value:=
                                                        Band.Position.BandIndex;
  (FindComponent('Row_ColIndex') as TcxEditorRow).Properties.Value:=
                                                        Band.Position.ColIndex;
  (FindComponent('Row_Index') as TcxEditorRow).Properties.Value:=Band.Index;
  (FindComponent('Row_Width') as TcxEditorRow).Properties.Value:=Band.Width;
end;

procedure TEditForm.GetFieldParam(AField :TcxGridBandedColumn);
var
  AEdit: TcxComboBox;
  AProperties: TcxComboBoxProperties;
  AValue : string;
begin
  (FindComponent('Row_Name') as TcxEditorRow).Properties.Value:=AField.Name;
  (FindComponent('Row_Capt') as TcxEditorRow).Properties.Value:=AField.Caption;
  (FindComponent('Row_BandIndex') as TcxEditorRow).Properties.Value:=
                                                      AField.Position.BandIndex;
  (FindComponent('Row_ColIndex') as TcxEditorRow).Properties.Value:=
                                                       AField.Position.ColIndex;
  (FindComponent('Row_LineCount') as TcxEditorRow).Properties.Value:=
                                                      AField.Position.LineCount;
  (FindComponent('Row_RowIndex') as TcxEditorRow).Properties.Value:=
                                                       AField.Position.RowIndex;
  (FindComponent('Row_Index') as TcxEditorRow).Properties.Value:=AField.Index;
  (FindComponent('Row_Width') as TcxEditorRow).Properties.Value:=AField.Width;
  SetRowItemIndex((FindComponent('Row_FieldType') as TcxEditorRow),
                                              StrToInt(GetTdezFType(AField))-1);

end;

procedure TEditForm.SetRowItemIndex(AEditorRow: TcxEditorRow; Index: Integer);
var
  Item: String;
  i: Integer;
begin
  if Index >=TcxComboBoxProperties(
                          AEditorRow.Properties.EditProperties).Items.Count then
    Exit;
  Item :=TcxComboBoxProperties(
                     AEditorRow.Properties.EditProperties).Items.Strings[Index];
  i :=TcxComboBoxProperties(
                      AEditorRow.Properties.EditProperties).Items.IndexOf(Item);
  AEditorRow.Properties.Value := Item;
end;

function TEditForm.GetRowItemIndex(AEditorRow: TcxEditorRow): Integer;
begin
  Result := -1;
  if not VarIsNull(AEditorRow.Properties.Value) then
  begin
    if AEditorRow.Properties.EditPropertiesClass = TcxComboBoxProperties then
    begin
      with TcxComboBoxProperties(AEditorRow.Properties.EditProperties) do
      Result := Items.IndexOf(AEditorRow.Properties.Value);
    end;
  end;
end;

{-------------------------------------------------------------------------------
 btn_BandDeleteClick|Удаляем Band
-------------------------------------------------------------------------------}
procedure TEditForm.btn_BandDeleteClick(Sender: TObject);
var
  Row :TcxEditorRow;
begin
  Row:=FindComponent('Row_Index') as TcxEditorRow;
  if Row=nil then Exit;
  if vb1.Bands[Row.Properties.Value].ChildBandCount>0 then
  Exit; //можно пройтись по всем чилдам и удалить их
  if vb1.Bands[Row.Properties.Value].ColumnCount>0 then
  Exit; //Здесь тоже можно удалить все поля
  vb1.Bands[Row.Properties.Value].Free;
  grd2.ClearRows;
  btn_BandDelete.Enabled:=False;
  Changes; //изменения
end;

procedure TEditForm.btn_clearGridClick(Sender: TObject);
begin
  ClearAll;
  Changes; //изменения
end;

{-------------------------------------------------------------------------------
 btn_BandAddClick|Добавляем Band
-------------------------------------------------------------------------------}
procedure TEditForm.btn_BandAddClick(Sender: TObject);
var
  Band :TcxGridBand;
begin
 Band:=vb1.Bands.Add;
  with Band do
  begin
    Caption:=txtCapt.Text;
    OnHeaderClick:=vb1Bands0HeaderClick;
    GetParam(Band);
    Changes; //изменения
  end;
end;
{-------------------------------------------------------------------------------
 btn_FieldAddClick|Добавляем поле
-------------------------------------------------------------------------------}
procedure TEditForm.btn_FieldAddClick(Sender: TObject);
var
 i :Integer;
 AColumn :TcxGridDBBandedColumn;
begin
  if vb1.Bands.Count=0 then
  begin
    ShowMessage('Требуется добавить хотябы одну группу!');
    Exit;
  end;
  for I := 0 to vb1.ColumnCount - 1 do
  if (vb1.Columns[i].Name='cl_'+txt_FieldName.Text)
  or (txt_FieldName.Text='') then
  begin
    ShowMessage('Ощибка в имени поля!');
    Exit;
  end;
  CreateGrid(false);
  AColumn:=vb1.CreateColumn;
  with AColumn do
  begin
      DataBinding.FieldName := txt_FieldName.Text;
      Caption:=txt_FieldCapt.Text;
      Name := 'cl_'+txt_FieldName.Text;
      Width:=40;
      Options.Filtering:=False;
      Options.Sorting:=False;
      DataBinding.ValueType:=SetFType(cbb_FType.ItemIndex);
      GetFieldParam(AColumn as TcxGridBandedColumn);
      Changes; //изменения
  end;
end;

procedure TEditForm.btn_FieldDeleteClick(Sender: TObject);
var
  Row :TcxEditorRow;
  AField :TcxGridBandedColumn;
begin
  Row:=FindComponent('Row_Name') as TcxEditorRow;
  if Row=nil then Exit;
  AField:=FindComponent(Row.Properties.Value) as TcxGridBandedColumn;
  AField.Free;
  grd2.ClearRows;
  btn_FieldDelete.Enabled:=False;
  Changes; //изменения
end;

procedure TEditForm.btn_LoadXmlClick(Sender: TObject);
begin
  //LoadXML;
end;

procedure TEditForm.btn_SaveXmlClick(Sender: TObject);
begin
  SaveXml;
end;

procedure TEditForm.cbb_FTypePropertiesChange(Sender: TObject);
begin
 if cbb_FType.ItemIndex=1 then
 Itm_msedtforma.Visible:=True else
 Itm_msedtforma.Visible:=False;
end;

function TEditForm.SetFType(i :integer) :string;
begin
  case i of
    0  : Result:='String';
    1  : Result:='Float';
  else
    Result:='';
  end;
end;

function TEditForm.GetTdezFType (AColumn :TcxGridBandedColumn) :string;
begin
  if AColumn.DataBinding.ValueType='Float' then  Result:='2' else
  Result:='1';
end;

function TEditForm.GetValueType (value :string) :string;
begin
  if value='2' then Result:='Float' else
  Result:='string';
end;

procedure TEditForm.grd2Edited(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
var
  Band :TcxGridBand;
  AColumn :TcxGridBandedColumn;
  Row : TcxEditorRow;
begin
  Row:=(FindComponent('Row_Index') as TcxEditorRow);
  if Row=nil then Exit;
  //определение Band или Field
  if (FindComponent('Row_Name') as TcxEditorRow)<>nil then
  begin
    //определили Field
    AColumn:=vb1.Columns[Row.Properties.Value];
    AColumn.Caption:=(FindComponent('Row_Capt') as TcxEditorRow).Properties.Value;
    if IsFieldExist((FindComponent('Row_Name') as TcxEditorRow).Properties.Value,
                    Row.Properties.Value)=true then
    begin  
      ShowMessage('Поле с таким именем уже существует!');
      Exit;
    end;
    AColumn.Name:=(FindComponent('Row_Name') as TcxEditorRow).Properties.Value;
    AColumn.DataBinding.ValueType:=
      SetFType(GetRowItemIndex(FindComponent('Row_FieldType') as TcxEditorRow));
    AColumn.Width:=(FindComponent('Row_Width') as TcxEditorRow).Properties.Value;
    Changes;
  end else
  begin
    //определили Band
    Band:=vb1.Bands[Row.Properties.Value];
    Band.Caption:=(FindComponent('Row_Capt') as TcxEditorRow).Properties.Value;
    Band.Width:=(FindComponent('Row_Width') as TcxEditorRow).Properties.Value;
    Changes;
  end;
end;

function TEditForm.IsFieldExist(AName :string; AIndex :integer) :Boolean;
var
  i :Integer;
begin
  Result:=False;
  for I := 0 to vb1.ColumnCount - 1 do
  begin
    if i<>AIndex then    
    if vb1.Columns[i].Name=AName then
    Result:=True;
  end;
end;

procedure TEditForm.SaveXml;
var
  i :Integer;
  Doc: TfsXMLDocument;
  Item: TfsXMLItem;
  Stream :TMemoryStream;

  procedure AddItemField(col :TcxGridBandedColumn; Item :TfsXMLItem);
  var
    CItem :TfsXMLItem;
  begin
    CItem:=Item.Add;
    CItem.Name:=col.Name;
    CItem.Prop['FieldType']:=GetTdezFType(col);
    CItem.Prop['Caption']:=col.Caption;
    CItem.Prop['BandIndex']:=IntToStr(col.Position.BandIndex);
    CItem.Prop['ColIndex']:=IntToStr(col.Position.ColIndex);
    CItem.Prop['Index']:=IntToStr(col.Index);
    CItem.Prop['Width']:=IntToStr(col.Width);
  end;

  procedure AddItemBand(Band :TcxGridBand; Item :TfsXMLItem);
  var
    AItem :TfsXMLItem;
    n ,c:Integer;
  begin
    AItem:=Item.Add;
    AItem.Name:=IntToStr(Band.Index);
    AItem.Prop['FieldType']:='0';
    AItem.Prop['Caption']:=Band.Caption;
    AItem.Prop['Index']:=IntToStr(Band.Index);
    AItem.Prop['BandIndex']:=IntToStr(Band.Position.BandIndex);
    AItem.Prop['Width']:=IntToStr(Band.Width);
    for c := 0 to Band.ColumnCount - 1 do
    begin
      AddItemField(Band.Columns[c],Item);
    end;
  end;
begin
  Doc:=TfsXMLDocument.Create;
  Doc.AutoIndent:=True;
  Stream:=TMemoryStream.Create;

  Item:=Doc.Root;
  Item.Name:='View';
  for I := 0 to vb1.Bands.Count - 1 do
  begin
   AddItemBand(vb1.Bands[i],Item);
  end;
  Doc.SaveToStream(Stream);
    ds_shablon.Edit;
    TBlobField(ds_Shablon.FN('Columns')).LoadFromStream(Stream);
    ds_shablon.Post;
  Doc.Free;
  Changes(False);
end;

procedure TEditForm.CreateGrid(band :Boolean);
var
  Row :TcxEditorRow;
  i :Integer;
  AProperties: TcxComboBoxProperties;
  procedure AddRow(AName,ACapt :string; Edit :boolean=false;
                                                      AVisible :Boolean =false);
  begin
    Row:=grd2.Add(TcxEditorRow) as TcxEditorRow;
    Row.Name:=AName;
    Row.Properties.Caption:=ACapt;
    Row.Properties.Options.Editing:=Edit;
    Row.Visible:=AVisible;
    if AName='Row_FieldType' then
    begin
      Row.Properties.EditPropertiesClass:=TcxComboBoxProperties;
      AProperties := TcxComboBoxProperties(Row.Properties.EditProperties);
      AProperties.Items.Add('Текст');
      AProperties.Items.Add('Число');
    end;
  end;
begin
  if Band then
  begin
    grd2.ClearRows;
    AddRow('Row_Capt','Заголовок',true,true);
    AddRow('Row_BandIndex','BandIndex');
    AddRow('Row_ColIndex','ColIndex');
    AddRow('Row_Index','Index');
    AddRow('Row_Width','Ширина',True,true);
    btn_BandDelete.Enabled:=True;
    btn_FieldDelete.Enabled:=False;
  end else
  begin
    grd2.ClearRows;
    AddRow('Row_FieldType','Тип поля',True,true);
    AddRow('Row_Name','Наименование',True,true);
    AddRow('Row_Capt','Заголовок',True,true);
    AddRow('Row_BandIndex','BandIndex');
    AddRow('Row_ColIndex','ColIndex');
    AddRow('Row_LineCount','LineCount');
    AddRow('Row_RowIndex','RowIndex');
    AddRow('Row_Index','Index');
    AddRow('Row_Width','Ширина',True,true);
    AddRow('Row_Shablon','Формат',True,true);
    btn_FieldDelete.Enabled:=true;
    btn_BandDelete.Enabled:=False;
  end;
end;

procedure TEditForm.ds_shablonAfterInsert(DataSet: TDataSet);
begin
  lcntr_right.Enabled:=True; //активируем правую часть редактора
end;

procedure TEditForm.BandCreate(Aitem :TfsXMLItem);
begin
  with vb1.Bands.Add do
  begin
    Caption:=Aitem.Prop['Caption'];
    Index:=StrToInt(Aitem.Prop['Index']);
    Position.BandIndex:=StrToInt(Aitem.Prop['BandIndex']);
    Width:=StrToInt(Aitem.Prop['Width']);
    OnHeaderClick:=vb1Bands0HeaderClick;
  end;
end;

procedure TEditForm.FieldCreate(AItem :TfsXMLItem);
begin
  with vb1.CreateColumn do
  begin
    Name:=AItem.Name;
    Caption:=Aitem.Prop['Caption'];
    Index:=StrToInt(Aitem.Prop['Index']);
    Position.BandIndex:=StrToInt(Aitem.Prop['BandIndex']);
    Width:=StrToInt(Aitem.Prop['Width']);
    Position.ColIndex:=StrToInt(AItem.Prop['ColIndex']);
    DataBinding.ValueType:=GetValueType(AItem.Prop['FieldType']);
  end;
end;

procedure TEditForm.LoadXML(Doc :TfsXMLDocument);
var
  i :Integer;
  Item,AItem: TfsXMLItem;
begin
  vb1.Bands.Clear;
  vb1.ClearItems;
  Item:=Doc.Root;
  for I := 0 to Item.Count - 1 do
  begin
    AItem:=Item.Items[i];
    if StrToIntDef(AItem.Prop['FieldType'],-1)=0 then
      BandCreate(AItem)
    else
    if StrToIntDef(AItem.Prop['FieldType'],-1)>0 then
      FieldCreate(AItem);
  end;
end;

{------------------------------------------------------------------------------}
procedure TEditForm.btn_saveClick(Sender: TObject);
begin
  SaveXml;
  Changes(False);
end;

procedure TEditForm.LoadXmlDez(Doc: TfsXMLDocument);

  procedure AddItems(AItem: TDezPlanColumn);
  var
    i: integer;
    CurrItem: TdezPlanColumn;
  begin
    for i:=0 to AItem.Count - 1 do
    begin
      CurrItem:=AItem.Child[i];
      //
      if CurrItem.FieldType=dtGroup then
         BandCreateDez(CurrItem)
        else
      if (CurrItem.FieldType=dtString) or
         (CurrItem.FieldType=dtNumeric) then
          FieldCreateDez(CurrItem);
    end;
  end;

begin
  Columns:=TDezPlanColumn.Create(nil);
  Columns.LoadFromXML(Doc.Root);
  AddItems(Columns);
end;

procedure TEditForm.BandCreateDez(AItem: TDezPlanColumn);
begin
  with vb1.Bands.Add do
  begin
    Caption:=AItem.Caption;
    Index:=AItem.FieldIndex;
    Position.BandIndex:=AItem.BandIndex;
    Width:=AItem.Width;

    OnHeaderClick:=vb1Bands0HeaderClick;
  end;
end;

procedure TEditForm.FieldCreateDez(AItem: TDezPlanColumn);
begin
  with vb1.CreateColumn do
  begin
    Name:= AItem.Name;
    Caption:=AItem.Caption;
    Index:=AItem.FieldIndex;
    Position.BandIndex:=AItem.BandIndex;
    Position.ColIndex:=AItem.ColumnIndex;
    Width:=AItem.Width;
    DataBinding.ValueType:=GetValueType(VarToStr(AItem.FieldType));
  end;
end;
 procedure TEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEditForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_shablon.DisableControls;
  DSOptoins(ds_shablon,'','PLANREPORT','CODE','PLANREPORT_GEN');
  ds_shablon.EnableControls;
  ds_srv.Open;
  if not ds_shablon.IsEmpty then
  begin
    Changes(false);
    LoadFromBase;
  end else
  lcntr_right.Enabled:=False;
end;

procedure TEditForm.SaveXmlDez;
var
  i:Integer;
  Doc: TfsXMLDocument;
  Col :TdezPlanColumn;
  procedure AddItemField(Field :TcxGridBandedColumn; FieldCol :TdezPlanColumn);
  var
    Fl :TdezPlanColumn;
  begin
    Fl :=FieldCol.AddChild;
    Fl.Name:=Field.Name;
    Fl.FieldType:=TdezFieldType(StrToInt(GetTdezFType(Field)));
    Fl.Caption:=Field.Caption;
    Fl.BandIndex:=Field.Position.BandIndex;
    Fl.ColumnIndex:=Field.Position.ColIndex;
    Fl.FieldIndex:=Field.Index;
    Fl.Width:=Field.Width;
  end;

  procedure AddItemBand(Band :TcxGridBand; BandCol :TdezPlanColumn);
  var
    c: Integer;
    Cl : TDezPlanColumn;
  begin
    Cl:=BandCol.AddChild;
    Cl.Name:=IntToStr(Band.Index);
    Cl.FieldType:=TdezFieldType(0);
    Cl.Caption:=Band.Caption;
    Cl.FieldIndex:=Band.Index;
    Cl.BandIndex:=Band.Position.BandIndex;
    Cl.Width:=Band.Width;
    for c := 0 to Band.ColumnCount - 1 do
    begin
      AddItemField(Band.Columns[c],BandCol);
    end;
  end;
begin
  Doc:=TfsXMLDocument.Create;
  Doc.AutoIndent:=True;
  Columns:=TDezPlanColumn.Create(nil);
  Columns.Name:='View';
  for I := 0 to vb1.Bands.Count - 1 do
  begin
   AddItemBand(vb1.Bands[i],Columns);
  end;
  Columns.WriteToXML(Doc.Root);
  Doc.SaveToFile('test3.xml');
  Doc.Free;
end;

initialization
  RegisterClass(TEditForm);
end.
