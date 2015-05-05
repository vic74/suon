unit KServisMaterialFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet,
  pFIBDataSet, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, dxSkinOffice2007Blue, Menus, ImgList,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxButtonEdit, StdCtrls,
  cxButtons, BaseForm, dxLayoutLookAndFeels, dxLayoutContainer,
  dxLayoutControlAdapters;

type
  TKServisMaterialForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    ds_KServisMaterial: TpFIBDataSet;
    src_KServisMaterial: TDataSource;
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1KSERVISMATERIAL: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    lst1: TcxDBTreeList;
    itm_lst: TdxLayoutItem;
    clm_Name: TcxDBTreeListColumn;
    clm_Code: TcxDBTreeListColumn;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    il1: TcxImageList;
    itm_filer: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    btn_filter1: TcxButtonEdit;
    btn_select: TcxButton;
    itm_select: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_move: TcxButton;
    itm_move: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_ServisMaterialAfterInsert(DataSet: TDataSet);
    procedure v2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure lst1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lst1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure ds_KServisMaterialNewRecord(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure ds_KServisMaterialDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure btn_filter1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_filter1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_selectClick(Sender: TObject);
    procedure btn_moveClick(Sender: TObject);
    procedure ds_ServisMaterialAfterPost(DataSet: TDataSet);
    procedure ds_ServisMaterialBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDs;
    procedure SearchNode(ANode: string);
  public
    ifInsert :Boolean;
    { Public declarations }
  end;

var
  KServisMaterialForm: TKServisMaterialForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, MoveMatFrm, dezLoadData, dezCommon;
{$R *.dfm}

procedure TKServisMaterialForm.btn_filter1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  SearchNode(btn_filter1.Text);
end;

procedure TKServisMaterialForm.btn_filter1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SearchNode(btn_filter1.Text);
end;

procedure TKServisMaterialForm.btn_moveClick(Sender: TObject);
var
  F :TMoveMatForm;
begin
  F :=TMoveMatForm.Create(Application);
  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
     (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then
  F.mat:=null else
  F.mat:=v1.GetColumnByFieldName('CODE').EditValue;
  F.ShowModal;
  F.Free;
end;

procedure TKServisMaterialForm.btn_selectClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('Code').EditValue<>null then
  begin
    Tag:=v1.GetColumnByFieldName('Code').EditValue;
    ModalResult:=mrOk;
  end;
end;

procedure TKServisMaterialForm.ds_KServisMaterialDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  //cmShowMessage(E.Message);
end;

procedure TKServisMaterialForm.ds_KServisMaterialNewRecord(DataSet: TDataSet);
begin
  with ds_KServisMaterial do
  begin
    FN('OWN').AsVariant:=lst1.FocusedNode.Values[0];
  end;
end;

procedure TKServisMaterialForm.ds_ServisMaterialAfterInsert(DataSet: TDataSet);
begin
  if ds_KServisMaterial.IsEmpty then
  begin
    cmShowMessage('Создайте сначала группу!',true);
    v1.DataController.Cancel;
    Abort;
  end;
  ds_ServisMaterial.FN('KSERVISMATERIAL').AsVariant:=
                                    lst1.GetColumnByFieldName('CODE').EditValue;
end;

procedure TKServisMaterialForm.ds_ServisMaterialAfterPost(DataSet: TDataSet);
begin
  ifInsert:=True;
end;

procedure TKServisMaterialForm.ds_ServisMaterialBeforePost(DataSet: TDataSet);
begin
  Trim(ds_ServisMaterial.FN('NAME').AsVariant);
end;

procedure TKServisMaterialForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TKServisMaterialForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDs;
  ifInsert:=False;
end;

procedure TKServisMaterialForm.FormShow(Sender: TObject);
begin
  if Self.FormStyle=fsMDIChild then
  itm_select.Visible:=false else
  itm_select.Visible:=true;
  btn_move.Visible:=ActiveUserType=0;
end;

procedure TKServisMaterialForm.lst1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  AttachNode :TcxTreeListNode;
begin
  if (Source <> Sender) and (not ds_KServisMaterial.IsEmpty) then
  begin
    AttachNode:=lst1.GetNodeAt(X,Y);
     if AttachNode <> nil then
       with ds_ServisMaterial do
       begin
         Edit;
         FN('KSERVISMATERIAL').AsVariant:=AttachNode.Values[0];
         Post;
         CloseOpen(false);
       end;
  end;
end;

procedure TKServisMaterialForm.lst1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Sender=Source then
  Accept:=True;
end;

procedure TKServisMaterialForm.N1Click(Sender: TObject);
begin
  lst1.DataController.Insert;
end;

procedure TKServisMaterialForm.N2Click(Sender: TObject);
var
  ANode :TcxTreeListNode;
begin
  ANode:=lst1.FocusedNode;
  if ANode<>nil then
  if cmMessageBox('Вы действительно хотите удалить запись '+#13
                                            +ANode.Values[1]) then
  ANode.Delete;
end;

procedure TKServisMaterialForm.OpenDs;
begin
  DSOptoins(ds_KServisMaterial,'','KSERVISMATERIAL','CODE','KSERVISMATERIAL_GEN');
  //DSOptoins(ds_ServisMaterial,'','SERVISMATERIAL','CODE','SERVISMATERIAL_GEN');
  ds_ServisMaterial.CloseOpen(False);
end;

procedure TKServisMaterialForm.SearchNode(ANode: string);
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

procedure TKServisMaterialForm.v1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  //Accept:=True;
end;

procedure TKServisMaterialForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
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

procedure TKServisMaterialForm.v2EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    Key := 0;
    Sender.DataController.Post;
  end;
end;

initialization

RegisterClass(TKServisMaterialForm);

end.
