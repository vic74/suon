unit EditRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm, fs_xml, PlanShablon, cmUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinscxPCPainter, dxLayoutLookAndFeels, dxLayoutControl, cxPropertiesStore,
  AppUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cmDBUnit,
  cxDBLookupComboBox, ComCtrls, cxContainer, cxTreeView, dxtree,
  dxSkinsdxBarPainter, dxBar, Menus, dxsbar, ImgList, cxGridBandedTableView,
  cxGridDBBandedTableView, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridCustomPopupMenu, cxGridPopupMenu, cxVGrid, cxDropDownEdit,
  StdCtrls;

type
  TEditRepForm = class(Tdxcustomribbonform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Item_grd1: TdxLayoutItem;
    lst1: TcxTreeList;
    Item_lst1: TdxLayoutItem;
    grp_tree: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    grp4: TdxLayoutGroup;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Item_grd3: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    splt2: TdxLayoutSplitterItem;
    splt3: TdxLayoutSplitterItem;
    splt4: TdxLayoutSplitterItem;
    grp5: TdxLayoutGroup;
    LCxSkin2: TdxLayoutCxLookAndFeel;
    db1: TpFIBDatabase;
    trn1: TpFIBTransaction;
    ds_shablon: TpFIBDataSet;
    src1: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1SRV: TcxGridDBColumn;
    clv1COLUMNS: TcxGridDBColumn;
    clv1SCRIPT: TcxGridDBColumn;
    clv1srvName: TcxGridDBColumn;
    ds_srv: TpFIBDataSet;
    src2: TDataSource;
    tv1: TdxTreeView;
    Itmlcntr1Item1: TdxLayoutItem;
    bm1: TdxBarManager;
    bar_tree: TdxBar;
    btn_add: TdxBarButton;
    doc_tree: TdxBarDockControl;
    Item1_tree: TdxLayoutItem;
    grp_doc: TdxLayoutGroup;
    ppm1: TdxBarPopupMenu;
    btn_AddAfter: TdxBarButton;
    btn_AddBefore: TdxBarButton;
    btn_AddChild: TdxBarButton;
    btn_AddRoot: TdxBarButton;
    il1: TcxImageList;
    vb_Simpe: TcxGridDBBandedTableView;
    btn_groop: TcxButtonEdit;
    Item1_btngroop: TdxLayoutItem;
    btn_Field: TcxButtonEdit;
    Item_btnField: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    ppm2: TcxGridPopupMenu;
    grd4: TcxVerticalGrid;
    Item_grd4: TdxLayoutItem;
    row_Name: TcxEditorRow;
    row_Caption: TcxEditorRow;
    row_Width: TcxEditorRow;
    row_FieldType: TcxEditorRow;
    row_Shablon: TcxEditorRow;
    mmo1: TMemo;
    Itmlcntr1Item11: TdxLayoutItem;
    btn_delete: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddChildClick(Sender: TObject);
    procedure btn_AddRootClick(Sender: TObject);
    procedure tv1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_AddBeforeClick(Sender: TObject);
    procedure tv1Edited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure btn_groopPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_FieldPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure vb_SimpeBandPosChanged(Sender: TcxGridBandedTableView;
      ABand: TcxGridBand);
    procedure src1DataChange(Sender: TObject; Field: TField);
    procedure tv1Change(Sender: TObject; Node: TTreeNode);
    procedure grd4Edited(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure vb_SimpeColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure tv1Click(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure tv1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    Columns: TdezPlanColumn;
    Change :Boolean;
    { Private declarations }
    procedure GetRepField(code :string);
    procedure AddField(ABand :integer; AName,ACaption,AFormat :string);
    procedure AddBand(AIndex :Integer; ACaption :string);
    procedure BildTree;
    procedure CreateTree(Doc: TfsXMLDocument);
    procedure AddNone(AName, ACaption :string;
  AFType :TdezFieldType);
    procedure GetFieldParam(Node :TTreeNode);
    function GetIndexByType(AType :TdezFieldType) :string;
    procedure Test;
    function GetBand :Integer;
    procedure RebildTree;
  public
    { Public declarations }
  end;

var
  EditRepForm: TEditRepForm;

implementation

{$R *.dfm}
{-------------------------------------------------------------------------------
 btn_AddChildClick|Добавить подраздел
-------------------------------------------------------------------------------}
procedure TEditRepForm.btn_AddChildClick(Sender: TObject);
begin
  if tv1.Selected<>nil then
  AddNone('NewGroop','Новая группа',dtGroup);
  Change:=True;
end;
{-------------------------------------------------------------------------------
 btn_AddBeforeClick|Добавить перед выделеным
-------------------------------------------------------------------------------}
procedure TEditRepForm.btn_AddBeforeClick(Sender: TObject);
begin
  //
end;

procedure TEditRepForm.Test;
var
  i :Integer;
begin
  for I := 0 to Columns.Count - 1 do
  begin

  end;
end;
{-------------------------------------------------------------------------------
AddBand|Добавить группу
-------------------------------------------------------------------------------}
procedure TEditRepForm.AddBand(AIndex :Integer; ACaption :string);
begin
  if Trim(ACaption)='' then Exit;
  with vb_Simpe.Bands.Add do
  begin
    Caption:=ACaption;
    Position.BandIndex:=AIndex;
    //ShowMessage(IntToStr(Index));
  end;
end;
{-------------------------------------------------------------------------------
AddField|Добавить поле
-------------------------------------------------------------------------------}
procedure TEditRepForm.AddField(ABand :integer; AName,ACaption,AFormat :string);
var
  C :TcxGridDBBandedColumn;
begin
  if Trim(aName)='' then Exit;
 // with vb_Simpe.CreateColumn do
 // begin
    C:=vb_Simpe.CreateColumn;
    C.DataBinding.FieldName:=AName;
    C.Caption:=ACaption;
    C.Position.BandIndex:=ABand;
    C.Options.Filtering:=False;
    C.Options.Sorting:=False;
  //end;
end;
{-------------------------------------------------------------------------------
  btn_AddRootClick|Добавить группу в верхний уровень
-------------------------------------------------------------------------------}
procedure TEditRepForm.btn_AddRootClick(Sender: TObject);
begin
  if tv1.Selected<>nil then
  AddNone('NewColumn','Новый столбец',dtString);
  Change:=True;
end;

procedure TEditRepForm.btn_deleteClick(Sender: TObject);
var
  Node :TTreeNode;
  Col :TdezPlanColumn;
begin
  Node:=tv1.Selected;
  if not Node.HasChildren then
  begin
    Col:=TdezPlanColumn(Node.Data);
    Columns.Remove(Col);
    Node.Delete;
  end;
end;

procedure TEditRepForm.AddNone(AName, ACaption :string;
  AFType :TdezFieldType);
var
  ParentItem, Item: TdezPlanColumn;
begin
  ParentItem:=TdezPlanColumn(tv1.Selected.Data);
  Item:=ParentItem.AddChild;
  Item.Name:=AName;
  Item.Caption:=ACaption;
  Item.FieldType:=AFType;
  Item.Width:=70;
  Item.Shablon:='0.00';

  //mmo1.Lines.Add(Item.Name+'-'+item.Caption+'-'+IntToStr(Item.SelfIndex));
  if AFType=dtGroup then
    tv1.Selected:=tv1.Items.AddChildObject(tv1.Selected, Item.Caption, Item)
  else
    tv1.Selected:=tv1.Items.AddChildObject(tv1.Selected, Item.Caption, Item);


end;


procedure TEditRepForm.btn_FieldPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var
    i :Integer;
begin
  if Trim(btn_Field.Text)='' then Exit;
  with vb_Simpe.CreateColumn do
  begin
    DataBinding.FieldName:='Column'+IntToStr(vb_Simpe.ColumnCount+1);
    Caption:=btn_Field.Text;
    Position.BandIndex:=0;
    Options.Filtering:=False;
    Options.Sorting:=False;
    //AddNone(tv1.Items.GetFirstNode,'',btn_Field.Text,dtString);
  end;
end;

procedure TEditRepForm.btn_groopPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if Trim(btn_groop.Text)='' then Exit;
  with vb_Simpe.Bands.Add do
  begin
    Caption:=btn_groop.Text;
    //AddNone(nil,'',btn_groop.Text,dtGroup);
  end;
end;

procedure TEditRepForm.RebildTree;
var
  Col :TdezPlanColumn;
  Node: TTreeNode;

  procedure AddItems(AItem: TDezPlanColumn; ANode: TTreeNode);
  var
    i: integer;
    CurrItem: TdezPlanColumn;
  begin
    for i:=0 to AItem.Count - 1 do
    begin
      CurrItem:=AItem.Child[i];
      tv1.Items.AddChildObject(ANode, CurrItem.Caption, CurrItem);
    end;
  end;

begin
  tv1.Items.Clear;
  Col:=Columns;
  Node:=tv1.Items.AddChildObject(nil, ds_shablon.FN('Name').AsString, Columns);
  AddItems(Col, Node);
end;

procedure TEditRepForm.CreateTree(Doc: TfsXMLDocument);
var
  Node: TTreeNode;

  procedure AddItems(AItem: TDezPlanColumn; ANode: TTreeNode);
  var
    i: integer;
    CurrItem: TdezPlanColumn;
  begin
    for i:=0 to AItem.Count - 1 do
    begin
      CurrItem:=AItem.Child[i];
      tv1.Items.AddChildObject(ANode, CurrItem.Caption, CurrItem);
    end;
  end;

begin
  tv1.Items.Clear;
  if Assigned(Columns) then FreeAndNil(Columns); //Ошибка!!!!
  vb_Simpe.Bands.Clear;
  vb_Simpe.ClearItems;
  Columns:=TDezPlanColumn.Create(nil);
  Columns.LoadFromXML(Doc.Root);
  Node:=tv1.Items.AddChildObject(nil, ds_shablon.FN('Name').AsString, Columns);
  AddBand(0,ds_shablon.FN('Name').AsString);
  AddItems(Columns, Node);
end;

procedure TEditRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEditRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_shablon.DisableControls;
  DSOptoins(ds_shablon,'','PLANREPORT','CODE','PLANREPORT_GEN');
  ds_shablon.EnableControls;
  ds_srv.Open;
end;
{-------------------------------------------------------------------------------
  GetRepField|Получаем список полей из базы
-------------------------------------------------------------------------------}
procedure TEditRepForm.GetRepField(code :string);
begin
  //
end;

procedure TEditRepForm.grd4Edited(Sender: TObject;
  ARowProperties: TcxCustomEditorRowProperties);
var
  Col: TdezPlanColumn;
  ColName :string;
begin
  Col:=TdezPlanColumn(tv1.Selected.Data);
  ColName:=Col.Name;
  Col.Name:=row_Name.Properties.Value;
  Col.Caption:=row_Caption.Properties.Value;
  Col.Width:=row_Width.Properties.Value;
  //Col.FieldType:=row_FieldType.Properties.Value;
  Col.Shablon:=row_Shablon.Properties.Value;
  Change:=True;
  //RebildTree;
end;

procedure TEditRepForm.src1DataChange(Sender: TObject; Field: TField);
var
  Stream: TMemoryStream;
  Doc: TfsXMLDocument;
begin
  {if Change then
  if cmMessageBox('Сохранить изменения?') then
  begin
    //сохраняем в базу
    //Columns.WriteToXML();
  end;}
  Change:=False;
  if ds_shablon.Eof then Exit; //сделать чистку картинки - все компоненты редактора
  Stream:=TMemoryStream.Create;
  Doc:=TfsXMLDocument.Create;
  try
    TBlobField(ds_Shablon.FN('Columns')).SaveToStream(Stream);
    if Stream.Size=0 then
    begin
      Doc.Root.Name:=ds_Shablon.FN('Code').AsString;
      Doc.Root.Prop['Caption']:=ds_shablon.FN('Name').AsString;
      Doc.Root.Prop['FieldType']:='dtGroup';
    end
    else
    begin
      Stream.Position:=0;
      Doc.LoadFromStream(Stream);
    end;
    CreateTree(Doc);
  finally
    Doc.Free;
    Stream.Free;
  end;

end;

procedure TEditRepForm.tv1Change(Sender: TObject; Node: TTreeNode);
begin
 if not tv1.Selected.IsFirstNode then
  GetFieldParam(tv1.Selected);
end;

function TEditRepForm.GetBand :Integer;
  var
    r :Integer;
begin
    For r:=0 to tv1.SelectionCount-1 do
    Result:=tv1.Selections[r].Index+1;
end;

procedure TEditRepForm.tv1Click(Sender: TObject);
  var
    r :Integer;
begin
    mmo1.Clear;
    mmo1.Lines.Add(inttostr(GetBand));
end;

procedure TEditRepForm.tv1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
 Col :TdezPlanColumn;
begin
  Col:=TdezPlanColumn(Node.Data);
  if Col.FieldType=dtGroup then
    Sender.Canvas.Font.Color := clBlue
  else
    Sender.Canvas.Font.Color := clGray;
end;

function TEditRepForm.GetIndexByType(AType :TdezFieldType) :string;
begin
  case AType of
    dtGroup   : Result:='dtGroup';
    dtString  : Result:='dtString';
    dtNumeric : Result:='dtNumeric';
  else
    Result:='';
  end;
end;
{-------------------------------------------------------------------------------
GetFieldParam|Получаем информацию по полю
-------------------------------------------------------------------------------}
procedure TEditRepForm.GetFieldParam(Node :TTreeNode);
var
 Col :TdezPlanColumn;
 prop :TcxComboBoxProperties;
begin
  Col:=TdezPlanColumn(Node.Data);
  row_Name.Properties.Value:=Col.Name;
  row_Caption.Properties.Value:=Col.Caption;
  row_Width.Properties.Value:=Col.Width;
  Prop:=TcxComboBoxProperties(row_FieldType.Properties.EditProperties);
  row_FieldType.Properties.Value:=GetIndexByType(Col.FieldType);
  row_Shablon.Properties.Value:=Col.Shablon;
end;

procedure TEditRepForm.tv1Edited(Sender: TObject; Node: TTreeNode;
  var S: string);
begin
  //Columns:=TdezPlanColumn(Node.Data);
  //Columns.Caption:=S;
  //vb_Simpe.Bands.Items[Node.Index].Caption:=S;
end;

procedure TEditRepForm.tv1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  P: TPoint;
  Col :TdezPlanColumn;
begin
  if Button<>mbRight then Exit;
  if tv1.GetNodeAt(X, Y) <> nil then
  begin
    Col:=TdezPlanColumn(tv1.Selected.Data);
    tv1.Selected := tv1.GetNodeAt(X, Y);
    P.X := X;
    P.Y := Y;
    P := tv1.ClientToScreen(P);
    if Col.FieldType=dtGroup then
    begin
      if tv1.Selected.IsFirstNode then
      btn_delete.Visible:=ivNever else
      btn_delete.Visible:=ivAlways;
      btn_AddChild.Visible:=ivAlways;
      btn_AddRoot.Visible:=ivAlways;
    end else
    begin
      btn_delete.Visible:=ivAlways;
      btn_AddChild.Visible:=ivNever;
      btn_AddRoot.Visible:=ivNever;
    end;
    ppm1.Popup(P.X, P.Y);
  end;
end;

procedure TEditRepForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  Stream: TMemoryStream;
  Doc: TfsXMLDocument;
begin
  {if ds_shablon.Eof then Exit; //сделать чистку картинки - все компоненты редактора

  Stream:=TMemoryStream.Create;
  Doc:=TfsXMLDocument.Create;
  try
    TBlobField(ds_Shablon.FN('Columns')).SaveToStream(Stream);
    if Stream.Size=0 then
    begin
      Doc.Root.Name:=ds_Shablon.FN('Code').AsString;
      Doc.Root.Prop['Caption']:=ds_shablon.FN('Name').AsString;
      Doc.Root.Prop['FieldType']:='dtGroup';
    end
    else
    begin
      Stream.Position:=0;
      Doc.LoadFromStream(Stream);
    end;
    CreateTree(Doc);
  finally
    Doc.Free;
    Stream.Free;
  end; }

end;

procedure TEditRepForm.vb_SimpeBandPosChanged(Sender: TcxGridBandedTableView;
  ABand: TcxGridBand);
begin
  //
  //BildTree;
end;

procedure TEditRepForm.vb_SimpeColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  ShowMessage(IntToStr(AColumn.Index));
end;

procedure TEditRepForm.BildTree;
var
  i :Integer;
  Node, Node1 :TTreeNode;
begin
  tv1.Items.Clear;
  for I := 0 to vb_Simpe.Bands.Count - 1 do
  begin
    if vb_Simpe.Bands.Items[i].Position.BandIndex=-1 then
    begin
      Node:=tv1.Items.AddChild(nil,vb_Simpe.Bands[i].Caption);
    end else
    begin
      Node1:=tv1.Items.AddChildObject
                             (Node,vb_Simpe.Bands[i].Caption,vb_Simpe.Bands[i]);
      Node:=Node1;
    end;
  end;
end;

initialization
  RegisterClass(TEditRepForm);
end.
