unit KServisWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxLayoutControl,
  dxLayoutLookAndFeels, cxPropertiesStore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinOffice2010Blue,
  cxDBLookupComboBox, dxmdaset, FIBDataSet, pFIBDataSet, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, Menus, ImgList,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxButtonEdit, StdCtrls,
  cxButtons, cxCurrencyEdit, BaseForm, dxLayoutContainer,
  dxLayoutControlAdapters, dxSkinDevExpressStyle;

type
  TKServisWorkForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    itm1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm2: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    ds_KServisWork: TpFIBDataSet;
    src_KServisWork: TDataSource;
    ds_ServisWork: TpFIBDataSet;
    src_ServisWork: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2KSERVISWORK: TcxGridDBColumn;
    clv2CASH: TcxGridDBColumn;
    mem_vid: TdxMemData;
    src_vid: TDataSource;
    lst1: TcxDBTreeList;
    clm_Code: TcxDBTreeListColumn;
    clm_Name: TcxDBTreeListColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    il1: TcxImageList;
    btn_filter1: TcxButtonEdit;
    itm_filter1: TdxLayoutItem;
    stl1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    btn_select: TcxButton;
    itm_select: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    clv2ED: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    btn_move: TcxButton;
    itm_move: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    clv2JWORKTYPE: TcxGridDBColumn;
    ds_JWORKTYPE: TpFIBDataSet;
    src_JWORKTYPE: TDataSource;
    clv2GraphType: TcxGridDBColumn;
    ds_GraphType: TpFIBDataSet;
    src_GraphType: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_ServisWorkAfterInsert(DataSet: TDataSet);
    procedure lst1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lst1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ds_KServisWorkNewRecord(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_filter1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_filter1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_selectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure ds_KServisWorkBeforePost(DataSet: TDataSet);
    procedure clm_NameSetStoredPropertyValue(Sender: TObject;
      const AName: string; const AValue: Variant);
    procedure btn_moveClick(Sender: TObject);
    procedure ds_ServisWorkAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CreateVid;
    procedure DSOpen;
    procedure SearchNode(ANode: string);
  public
  ifInsert :boolean;
  grp :variant;
    { Public declarations }
  end;

var
  KServisWorkForm: TKServisWorkForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, MoveWorkFrm, dezCommon;
{$R *.dfm}

procedure TKServisWorkForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.FormStyle=fsMDIChild then
  Action := caFree;
end;

procedure TKServisWorkForm.FormCreate(Sender: TObject);
begin
  //dxSkinsUserSkinLoadFromFile('config/skin.skinres', 'Office2010Blue');
  LoadForm(prop1, Self.Name);
  CreateVid;

  ifInsert:=False;
end;

procedure TKServisWorkForm.FormShow(Sender: TObject);
begin
  if Self.FormStyle=fsMDIChild then
  itm_select.Visible:=false else
  itm_select.Visible:=true;
  btn_move.Visible:=ActiveUserType=0;
    DSOpen;
end;

procedure TKServisWorkForm.lst1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AttachNode: TcxTreeListNode;
begin
  if (Source <> Sender) and (not ds_KServisWork.IsEmpty) then
  begin
    AttachNode := lst1.GetNodeAt(X, Y);
    if AttachNode <> nil then
      with ds_ServisWork do
      begin
        Edit;
        FN('KSERVISWORK').AsVariant := AttachNode.Values[0];
        Post;
        CloseOpen(false);
      end;
  end;
end;

procedure TKServisWorkForm.lst1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Sender = Source then
    Accept := True;
end;

//procedure lst1DataControllerBeforePost

procedure TKServisWorkForm.N1Click(Sender: TObject);
begin
  lst1.DataController.Insert;
end;

procedure TKServisWorkForm.N2Click(Sender: TObject);
var
  ANode: TcxTreeListNode;
begin
  ANode := lst1.FocusedNode;
  if ANode <> nil then
    if cmMessageBox('¬ы действительно хотите удалить запись ' + #13 +
        ANode.Values[1]) then
      ANode.Delete;
end;

procedure TKServisWorkForm.DSOpen;
begin
  if (grp<>null) and (grp<>Unassigned)  then begin
    DSOptoins(ds_KServisWork, '', 'KSERVISWORK', 'CODE', 'KSERVISWORK_GEN',false);
    with ds_KServisWork do begin
      Close;
      MainWhereClause:='('+grp+'  containing '','' || CODE || '','')';
      //ParamByName('grp').AsVariant:=grp;
      Open;
    end;
  end else
  DSOptoins(ds_KServisWork, '', 'KSERVISWORK', 'CODE', 'KSERVISWORK_GEN');
  DSOptoins(ds_ServisWork, '', 'SERVISWORK', 'CODE', 'SERVISWORK_GEN');
  ds_JWORKTYPE.open;
  ds_GraphType.Open;
end;

procedure TKServisWorkForm.ds_KServisWorkBeforePost(DataSet: TDataSet);
begin
  if ds_KServisWork.FN('NAME').AsVariant = null then
  begin
    cmShowMessage('”кажите наименование!');
    Abort;
  end;
end;

procedure TKServisWorkForm.ds_KServisWorkNewRecord(DataSet: TDataSet);
begin
  with ds_KServisWork do
  begin
    FN('OWN').AsVariant := lst1.FocusedNode.Values[0];
  end;
end;

procedure TKServisWorkForm.ds_ServisWorkAfterInsert(DataSet: TDataSet);
begin
  if ds_KServisWork.IsEmpty then
  begin
    cmShowMessage('—оздайте сначала категорию!', True);
    v2.DataController.Cancel;
    Abort;
  end;
  with ds_ServisWork do
  begin
    FN('KSERVISWORK').AsVariant := lst1.GetColumnByFieldName('CODE').EditValue;
    FN('CASH').AsVariant:=0;
  end;
end;

procedure TKServisWorkForm.ds_ServisWorkAfterPost(DataSet: TDataSet);
begin
  ifInsert:=True;
end;

procedure TKServisWorkForm.btn_filter1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SearchNode(btn_filter1.Text);
end;

procedure TKServisWorkForm.btn_filter1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SearchNode(btn_filter1.Text);
end;

procedure TKServisWorkForm.btn_moveClick(Sender: TObject);
var
  F :TMoveWorkForm;
begin
  F:=TMoveWorkForm.Create(self);
  F.work:=v2.GetColumnByFieldName('CODE').EditValue;
  F.ShowModal;
  F.Free;
end;

procedure TKServisWorkForm.btn_selectClick(Sender: TObject);
begin
  if v2.GetColumnByFieldName('Code').EditValue<>null then
  begin
    Tag:=v2.GetColumnByFieldName('Code').EditValue;
    ModalResult:=mrOk;
  end;
end;

procedure TKServisWorkForm.clm_NameSetStoredPropertyValue(Sender: TObject;
  const AName: string; const AValue: Variant);
begin
  if AValue=null then
  begin
    cmShowMessage('”кажите наименование!');
    Abort;
  end;
end;

procedure TKServisWorkForm.SearchNode(ANode: string);
var
  StartNode, SearchNode, AParent: TcxTreeListNode;
begin
  if Trim(ANode) = '' then
    Exit;
  StartNode := lst1.FocusedNode;
  SearchNode := lst1.FindNodeByText(ANode, lst1.Columns[1], StartNode, false,
    True, false, tlfmNormal, nil, True);
  if SearchNode <> nil then
  begin
    if not SearchNode.IsVisible then
    begin
      AParent := SearchNode.Parent;
      while AParent <> nil do
      begin
        AParent.Expand(false);
        AParent := AParent.Parent;
      end;
    end;
    lst1.FocusedNode := SearchNode;
    SearchNode.MakeVisible;
    // SearchNode.ImageIndex:=6;
  end;
end;

procedure TKServisWorkForm.v2EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
  if FocusedItem.IsLast and (Key=VK_RETURN) then
  begin
    Key := 0;
    Sender.DataController.Post;
  end;
end;

procedure TKServisWorkForm.CreateVid;
  procedure Add(code: Integer; Name: string);
  begin
    mem_vid.Append;
    mem_vid.FieldByName('Code').AsInteger := code;
    mem_vid.FieldByName('Name').AsString := Name;
    mem_vid.Post;
  end;

begin
  CreateField(mem_vid, 'CODE', ftInteger);
  CreateField(mem_vid, 'NAME', ftString, 80);
  mem_vid.Open;
  Add(0, 'работа по техническому обслуживанию');
  Add(1, 'платна€ работа (дополнительно)');
end;

initialization

RegisterClass(TKServisWorkForm);

end.
