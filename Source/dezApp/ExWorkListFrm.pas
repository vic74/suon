unit ExWorkListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, dxLayoutLookAndFeels, cxPC, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL,
  cxTLData, ImgList, FIBDataSet, pFIBDataSet, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxButtonEdit, dxmdaset, cxDBExtLookupComboBox,
  cxSpinEdit, cxCurrencyEdit, dxSkinsCore, dxSkinOffice2010Blue,
  BaseForm,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TExWorkListForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    spl2: TdxLayoutSplitterItem;
    pc1: TcxPageControl;
    itm_pc: TdxLayoutItem;
    sht1: TcxTabSheet;
    sht2: TcxTabSheet;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    skn1: TdxLayoutSkinLookAndFeel;
    ds_KServisMaterial: TpFIBDataSet;
    src_KServisMaterial: TDataSource;
    il1: TcxImageList;
    lst1: TcxDBTreeList;
    clm_Code: TcxDBTreeListColumn;
    clm_Name: TcxDBTreeListColumn;
    itm_tree: TdxLayoutItem;
    itm_search: TdxLayoutItem;
    btn_filter1: TcxButtonEdit;
    grplc1Group2: TdxLayoutGroup;
    mem1: TdxMemData;
    ds_SERVISMATERIAL: TpFIBDataSet;
    src_SERVISMATERIAL: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4KSERVISMATERIAL: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    clv4ED: TcxGridDBColumn;
    clv4PRICE: TcxGridDBColumn;
    m_mat: TdxMemData;
    src_m_mat: TDataSource;
    clv4Quantity: TcxGridDBColumn;
    src_mem1: TDataSource;
    ds_WorkSpecList: TpFIBDataSet;
    src_WorkSpecList: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1SERVISWORK: TcxGridDBColumn;
    clv1sworkname: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1WORKLIST: TcxGridDBColumn;
    clv1Quantity: TcxGridDBColumn;
    clv1jwork: TcxGridDBColumn;
    m_WorkSpecList: TdxMemData;
    src_m_WorkSpecList: TDataSource;
    ds_WorkSpecMaterial: TpFIBDataSet;
    src_WorkSpecMaterial: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3WORKSPECLIST: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3KONTRAGENT: TcxGridDBColumn;
    clv3SERVISWORK: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3ADDR: TcxGridDBColumn;
    clv3SERVISMATERIAL: TcxGridDBColumn;
    clv3QUANTITY: TcxGridDBColumn;
    clv3PRICE: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    m_WSM: TdxMemData;
    src_WSM: TDataSource;
    clv4NOTE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btn_filter1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_filter1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure lst1Click(Sender: TObject);
    procedure lst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v4EditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
  private
    { Private declarations }
    procedure OpenDs;
    procedure SearchNode(ANode: string);
    procedure GroopName;
    procedure GetMaterial;
    procedure CreateMatTable;
    procedure GetWorkMat;
    procedure SaveDelValue(save: Boolean = True);
  public
    WorkList: Variant;
    { Public declarations }
  end;

var
  ExWorkListForm: TExWorkListForm;

implementation

uses AppUtils, cmUtils, cmDBUnit, CommonDm;
{$R *.dfm}

procedure TExWorkListForm.btn_filter1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SearchNode(btn_filter1.Text);
end;

procedure TExWorkListForm.GroopName;
var
  StartNode, AParent: TcxTreeListNode;
begin
  StartNode := lst1.FocusedNode;
  AParent := StartNode.Parent;
  if AParent <> nil then
    itm_pc.CaptionOptions.Text := AParent.Texts[1] + ' -> ' + StartNode.Texts
      [1];
end;

procedure TExWorkListForm.lst1Click(Sender: TObject);
begin
  GroopName;
  GetMaterial;
end;

procedure TExWorkListForm.GetMaterial;
var
  Material: Variant;
var
  ANode: TcxTreeListNode;
begin
  ANode := lst1.FocusedNode;
  Material := ANode.Values[0];
  with ds_SERVISMATERIAL do
  begin
    Close;
    m_mat.Close;
    m_mat.Open;
    if Material = null then
      Exit;
    MainWhereClause := 'KSERVISMATERIAL=:material';
    ParamByName('material').AsVariant := Material;
    OrderClause := 'Name';
    Open;
    m_mat.LoadFromDataSet(ds_SERVISMATERIAL);
  end;
end;

procedure TExWorkListForm.lst1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    GroopName;
    GetMaterial;
  end;
end;

procedure TExWorkListForm.SaveDelValue(save: Boolean = True);
var
  SERVISWORK, SERVISMATERIAL: Variant;
begin
  SERVISWORK := v1.GetColumnByFieldName('SERVISWORK').EditValue;
  SERVISMATERIAL := m_mat.FieldByName('CODE').AsVariant;
  if save then
    with m_WSM do
    begin
      if not Locate('SERVISWORK;SERVISMATERIAL',
        VarArrayOf([SERVISWORK, SERVISMATERIAL]), []) then
      begin
        Append;
        FieldByName('WORKSPECLIST').AsVariant := WorkList;
        FieldByName('DATA').AsVariant := v1.GetColumnByFieldName('DATA')
          .EditValue;
        FieldByName('KONTRAGENT').AsVariant := v1.GetColumnByFieldName
          ('KONTRAGENT').EditValue;
        FieldByName('SERVISWORK').AsVariant := SERVISWORK;
        FieldByName('HOUSE').AsVariant := v1.GetColumnByFieldName('HOUSE')
          .EditValue;
        FieldByName('ADDR').AsVariant := v1.GetColumnByFieldName('ADDR')
          .EditValue;
        FieldByName('SERVISMATERIAL').AsVariant := SERVISMATERIAL;
        FieldByName('QUANTITY').AsVariant := m_mat.FieldByName('QUANTITY')
          .AsVariant;
        FieldByName('PRICE').AsVariant := m_mat.FieldByName('PRICE').AsVariant;
        if m_mat.FieldByName('Note').AsVariant<>null then
        FieldByName('NOTE').AsVariant := m_mat.FieldByName('Note').AsVariant;
        Post;
      end
      else
      begin
        Edit;
        FieldByName('WORKSPECLIST').AsVariant := WorkList;
        FieldByName('DATA').AsVariant := v1.GetColumnByFieldName('DATA')
          .EditValue;
        FieldByName('KONTRAGENT').AsVariant := v1.GetColumnByFieldName
          ('KONTRAGENT').EditValue;
        FieldByName('SERVISWORK').AsVariant := SERVISWORK;
        FieldByName('HOUSE').AsVariant := v1.GetColumnByFieldName('HOUSE')
          .EditValue;
        FieldByName('ADDR').AsVariant := v1.GetColumnByFieldName('ADDR')
          .EditValue;
        FieldByName('SERVISMATERIAL').AsVariant := SERVISMATERIAL;
        FieldByName('QUANTITY').AsVariant := m_mat.FieldByName('QUANTITY')
          .AsVariant;
        FieldByName('PRICE').AsVariant := m_mat.FieldByName('PRICE').AsVariant;
        if m_mat.FieldByName('Note').AsVariant<>null then
        FieldByName('NOTE').AsVariant := m_mat.FieldByName('Note').AsVariant;
        Post;
      end;
      if m_mat.State in [dsEdit] then m_mat.Post;

    end;
end;

procedure TExWorkListForm.SearchNode(ANode: string);
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
    GroopName;
    GetMaterial;
    // SearchNode.ImageIndex:=6;
  end;
end;

procedure TExWorkListForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetWorkMat;
end;

procedure TExWorkListForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
    GetWorkMat;
end;

procedure TExWorkListForm.v4EditValueChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
  v4.DataController.PostEditingData;
  SaveDelValue;
end;


procedure TExWorkListForm.GetWorkMat;
begin
  with ds_WorkSpecMaterial do
  begin
    Close;
    m_WSM.Close;
    m_WSM.Open;
    if (v1.GetColumnByFieldName('CODE').EditValue = null) or
      (v1.GetColumnByFieldName('CODE').EditValue = Unassigned) then
      Exit;
    MainWhereClause := 'WORKSPECLIST = :code';
    ParamByName('code').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
    Open;
    m_WSM.LoadFromDataSet(ds_WorkSpecMaterial);
  end;
end;

procedure TExWorkListForm.btn_filter1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  SearchNode(btn_filter1.Text);
end;

procedure TExWorkListForm.CreateMatTable;
begin
  CreateField(m_mat, 'CODE', ftInteger);
  CreateField(m_mat, 'KSERVISMATERIAL', ftInteger);
  CreateField(m_mat, 'NAME', ftString, 256);
  CreateField(m_mat, 'ED', ftString, 16);
  CreateField(m_mat, 'PRICE', ftBCD);
  CreateField(m_mat, 'QUANTITY', ftBCD);
  CreateField(m_mat, 'NOTE', ftString, 256);
  m_mat.Open;
  { ---------- }
  CreateField(mem1, 'WORKLIST', ftInteger);
  CreateField(mem1, 'SERVISWORK', ftInteger);
  CreateField(mem1, 'CODE', ftInteger);
  CreateField(mem1, 'KSERVISMATERIAL', ftInteger);
  CreateField(mem1, 'NAME', ftString, 256);
  CreateField(mem1, 'ED', ftString, 16);
  CreateField(mem1, 'PRICE', ftBCD);
  CreateField(mem1, 'QUANTITY', ftBCD);
  mem1.Open;
  { ---------- }
  CreateField(m_WorkSpecList, 'CODE', ftInteger);
  CreateField(m_WorkSpecList, 'DATA', ftDate);
  CreateField(m_WorkSpecList, 'KONTRAGENT', ftInteger);
  CreateField(m_WorkSpecList, 'SERVISWORK', ftInteger);
  CreateField(m_WorkSpecList, 'SWORKNAME', ftString, 256);
  CreateField(m_WorkSpecList, 'HOUSE', ftInteger);
  CreateField(m_WorkSpecList, 'ADDR', ftInteger);
  CreateField(m_WorkSpecList, 'PRICE', ftBCD);
  CreateField(m_WorkSpecList, 'NOTE', ftString, 256);
  CreateField(m_WorkSpecList, 'WORKLIST', ftInteger);
  CreateField(m_WorkSpecList, 'Quantity', ftBCD);
  CreateField(m_WorkSpecList, 'JWORK', ftInteger);
  m_WorkSpecList.Open;
  { ---------- }
  CreateField(m_WSM, 'CODE', ftInteger);
  CreateField(m_WSM, 'WORKSPECLIST', ftInteger);
  CreateField(m_WSM, 'DATA', ftDate);
  CreateField(m_WSM, 'KONTRAGENT', ftInteger);
  CreateField(m_WSM, 'SERVISWORK', ftInteger);
  CreateField(m_WSM, 'HOUSE', ftInteger);
  CreateField(m_WSM, 'ADDR', ftInteger);
  CreateField(m_WSM, 'SERVISMATERIAL', ftInteger);
  CreateField(m_WSM, 'QUANTITY', ftBCD);
  CreateField(m_WSM, 'PRICE', ftBCD);
  CreateField(m_WSM, 'NOTE', ftString, 256);
  m_WSM.Open;
end;

procedure TExWorkListForm.FormCreate(Sender: TObject);
begin
  // OpenDs;
end;

procedure TExWorkListForm.FormShow(Sender: TObject);
begin
  OpenDs;
end;

procedure TExWorkListForm.OpenDs;
begin
  DSOptoins(ds_KServisMaterial, '', 'KSERVISMATERIAL', 'CODE',
    'KSERVISMATERIAL_GEN');
  DSOptoins(ds_WorkSpecList, '', 'WORKSPECLIST', 'CODE', 'WORKSPECLIST_GEN',
    false);
  CreateMatTable;
  with ds_WorkSpecList do
  begin
    Close;
    m_WorkSpecList.Close;
    m_WorkSpecList.Open;
    MainWhereClause := 'ws.WORKLIST=:WORKLIST';
    ParamByName('WORKLIST').AsVariant := WorkList;
    Open;
    m_WorkSpecList.LoadFromDataSet(ds_WorkSpecList);
  end;
end;

end.
