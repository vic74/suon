unit MatClassFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxDockControlPainter, cxPC, dxDockControl, cxClasses, dxDockPanel,
  dxSkinsdxBarPainter, dxBar, cxCustomData, cxStyles, cxTL,
  FIBQuery, pFIBCacheQueries, pFIBProps, cxTLExportLink, SHFolder,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit, DB,
  FIBDataSet, pFIBDataSet, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ImgList, Menus, dxSkinDevExpressStyle, cxGridStrs,
  dezCommon;

type
  TOperType = (otCopy, otMove);

  TMatClassForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    docm_1: TdxDockingManager;
    docs_1: TdxDockSite;
    docp_1: TdxDockPanel;
    ldoc_1: TdxLayoutDockSite;
    docp_11: TdxDockPanel;
    bar_1: TdxBarManager;
    br_1: TdxBar;
    btn_AddGroup: TdxBarButton;
    lst_1: TcxDBTreeList;
    doc_1: TdxBarDockControl;
    doc_2: TdxBarDockControl;
    br_2: TdxBar;
    btn_AddMat: TdxBarButton;
    ds_CLASSMAT: TpFIBDataSet;
    src_CLASSMAT: TDataSource;
    cl_CODE: TcxDBTreeListColumn;
    cl_FULLNAME: TcxDBTreeListColumn;
    btn_EditGroup: TdxBarButton;
    btn_DelGroup: TdxBarButton;
    btn_EditMat: TdxBarButton;
    btn_DelMat: TdxBarButton;
    ds_CLASSMAT1: TpFIBDataSet;
    src_CLASSMAT1: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    cl_v1CODE: TcxGridDBColumn;
    cl_v1OWN: TcxGridDBColumn;
    cl_v1NAME: TcxGridDBColumn;
    cl_v1FULLNAME: TcxGridDBColumn;
    cl_v1ISGROUP: TcxGridDBColumn;
    cl_v1ISNAME: TcxGridDBColumn;
    ppm_1: TdxBarPopupMenu;
    btn_Root: TdxBarButton;
    btn_Owner: TdxBarButton;
    docs2: TdxLayoutDockSite;
    btn_xls: TdxBarButton;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    clv1ED: TcxGridDBColumn;
    cl_1ED: TcxDBTreeListColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lst_1Click(Sender: TObject);
    procedure btn_EditGroupClick(Sender: TObject);
    procedure btn_DelGroupClick(Sender: TObject);
    procedure btn_RootClick(Sender: TObject);
    procedure btn_OwnerClick(Sender: TObject);
    procedure btn_AddGroupClick(Sender: TObject);
    procedure btn_AddMatClick(Sender: TObject);
    procedure btn_EditMatClick(Sender: TObject);
    procedure btn_DelMatClick(Sender: TObject);
    procedure ds_CLASSMAT1AfterOpen(DataSet: TDataSet);
    procedure lst_1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lst_1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure v1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ds_CLASSMATAfterOpen(DataSet: TDataSet);
    procedure btn_xlsClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1DblClick(Sender: TObject);
  private
    { Private declarations }
    docIni: string;
    OperType: TOperType;
    DragRecords: array of integer;
    CurNode: TcxTreeListNode;
    procedure openDS;
    procedure AddGroup(isEdit: Boolean = false; isRoot: Boolean = false);
    procedure OpenMat;
    //
    procedure AddMat(isEdit: Boolean = false);
    procedure DeleteMat(code: Variant);
    procedure ExportTree;
    //
    procedure DragItems;
  public
    { Public declarations }
    isReadOnly: Boolean;
    ifInsert :Boolean;
    isModal: Boolean;
  end;

var
  MatClassForm: TMatClassForm;

implementation

uses cmDBUnit, MatClassAddFrm, MoveMatClassFrm;

{$R *.dfm}


procedure TMatClassForm.AddGroup(isEdit: Boolean; isRoot: Boolean);
var
  F: TMatClassAddForm;
  AttachNode :TcxTreeListNode;
begin
  F:= TMatClassAddForm.Create(Self);
  try
    if isRoot then begin
      F.fOWN:= 0;
      F.fOWNName:='';
    end else begin
      F.fOWN:= ds_CLASSMAT.FN('CODE').AsVariant;
      F.fOWNName:= ds_CLASSMAT.FN('NAME').AsVariant;
    end;
      F.fISGROUP := 1;
      F.chk_ISGROUP.Enabled:=false;
    if isEdit then begin
      F.fOWN:= ds_CLASSMAT.FN('OWN').AsVariant;
      F.txt_Name.EditValue := ds_CLASSMAT.FN('NAME').AsVariant;
      F.chk_ISNAME.Checked := Boolean(ds_CLASSMAT.FN('ISNAME').AsVariant);
      AttachNode:=lst_1.FocusedNode;
      if AttachNode.HasChildren then begin
        F.txt_Ed1.Enabled:= False;
        F.txt_Ed1.EditValue:= null;
      end else
      F.txt_Ed1.EditValue:= ds_CLASSMAT.FN('ED').AsVariant;
    end;
    if F.ShowModal = mrOk then begin
      with ds_CLASSMAT do begin  //save record
        if isEdit then begin
          Edit;
          FN('NAME').AsVariant:=F.txt_Name.Text;
          FN('ISNAME').AsVariant:= Integer(F.chk_ISNAME.Checked);
          FN('ED').AsVariant:= F.txt_Ed1.EditingValue;
          Post;
        end else begin
          Append;
          FN('OWN').AsVariant:=F.fOWN;
          FN('NAME').AsVariant:=F.txt_Name.Text;
          FN('ISGROUP').AsVariant:= Integer(F.chk_ISGROUP.Checked);
          FN('ISNAME').AsVariant:= Integer(F.chk_ISNAME.Checked);
          FN('ED').AsVariant:= F.txt_Ed1.EditingValue;
          Post;
        end;
      end;
    end;
  finally
    F.Free;
  end;
end;

procedure TMatClassForm.AddMat(isEdit: Boolean);
var
  F: TMatClassAddForm;
begin
  F:= TMatClassAddForm.Create(Self);
  try
    if isEdit then begin
      F.txt_Name.EditValue:= ds_CLASSMAT1.FN('NAME').AsVariant;
      F.txt_Ed1.EditValue:= ds_CLASSMAT1.FN('ED').AsVariant;
    end else begin
      F.fOWN:=ds_CLASSMAT.FN('CODE').AsVariant;
      F.txt_ED1.EditValue:= ds_CLASSMAT.FN('ED').AsVariant;
    end;
      F.fOWN:=ds_CLASSMAT.FN('CODE').AsVariant;
      F.fTab:=0;
      F.fISGROUP:=0;
      F.chk_ISGROUP.Enabled:=false;
      F.chk_ISNAME.Checked:=true;
      F.chk_ISNAME.Enabled:=false;
      F.fOWNName:= ds_CLASSMAT.FN('NAME').AsVariant;
    //
    if F.ShowModal = mrOk then begin
      with ds_CLASSMAT1 do begin
        if isEdit then begin
          Edit;
          FN('NAME').AsVariant:= F.txt_Name.EditingValue;
          FN('ED').AsVariant:= F.txt_Ed1.EditingValue;
          Post;
        end else begin
          Append;
          FN('OWN').AsVariant:= F.fOWN;
          FN('NAME').AsVariant:= F.txt_Name.EditValue;
          FN('ISGROUP').AsVariant:=0;
          FN('ISNAME').AsVariant:=1;
          FN('ED').AsVariant:= F.txt_Ed1.EditingValue;
          Post;
        end;
        ifInsert:= True;
        CloseOpen(true);
      end;
    end;
  finally
    F.Free;
  end;
end;

procedure TMatClassForm.btn_AddGroupClick(Sender: TObject);
begin
  ppm_1.PopupFromCursorPos;
end;

procedure TMatClassForm.btn_AddMatClick(Sender: TObject);
begin
  AddMat;
end;

procedure TMatClassForm.btn_DelGroupClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ds_CLASSMAT.Delete;
  end;
end;

procedure TMatClassForm.btn_DelMatClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    DeleteMat(v1.GetColumnByFieldName('CODE').EditValue);
  end;
end;

procedure TMatClassForm.btn_EditGroupClick(Sender: TObject);
begin
  AddGroup(true);
end;

procedure TMatClassForm.btn_EditMatClick(Sender: TObject);
begin
  AddMat(true);
end;

procedure TMatClassForm.btn_OwnerClick(Sender: TObject);
begin
  AddGroup;
end;

procedure TMatClassForm.btn_RootClick(Sender: TObject);
begin
  AddGroup(false,true);
end;

procedure TMatClassForm.btn_xlsClick(Sender: TObject);
begin
  ExportTree;
end;

procedure TMatClassForm.DeleteMat(code: Variant);
var
  Q: TFIBQuery;
begin
  if code = null then Exit;
  Q:= GetQueryForUse(cmDb.WT, 'delete from CLASSMAT where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:=code;
    Q.ExecQuery;
    ds_CLASSMAT1.CloseOpen(false);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMatClassForm.DragItems;
var
  i: Integer;
  fName: string;
  ed: Variant;
begin
  if CurNode <> nil then begin
    for I := 0 to v1.Controller.SelectedRecordCount - 1 do
    begin
      v1.Controller.SelectedRecords[I].Focused := true;
      if OperType = otMove then begin  //переместитть
         with ds_CLASSMAT1 do
         begin
           Edit;
           FN('OWN').AsVariant:=CurNode.Values[0];
           Post;
         end;
      end else
      if OperType = otCopy then begin   //копировать
         fName:= v1.GetColumnByFieldName('NAME').EditValue;
         ed:= v1.FN('ED');
         with ds_CLASSMAT1 do
         begin
           Append;
            FN('OWN').AsVariant:= CurNode.Values[0];
            FN('NAME').AsVariant:= fName;
            FN('ISGROUP').AsVariant:=0;
            FN('ISNAME').AsVariant:=1;
            FN('ED').AsVariant:= ed;
           Post;
         end;
      end;
    end;
    ds_CLASSMAT1.CloseOpen(false);
  end;
end;

procedure TMatClassForm.ds_CLASSMAT1AfterOpen(DataSet: TDataSet);
begin
  btn_EditMat.Enabled:= not DataSet.IsEmpty;
  btn_DelMat.Enabled:= not DataSet.IsEmpty;
end;

procedure TMatClassForm.ds_CLASSMATAfterOpen(DataSet: TDataSet);
begin
  btn_EditGroup.Enabled:= not DataSet.IsEmpty;
  btn_DelGroup.Enabled:= not DataSet.IsEmpty;
end;

procedure TMatClassForm.ExportTree;
var
  sd:TSaveDialog;
  f:string;
begin
  sd := TSaveDialog.Create(nil);
  sd.InitialDir := GetSpecialFolderPath(CSIDL_PERSONAL);
  try
    lst_1.BeginUpdate;
    sd.Filter:='Excel files (*.xls)|*.xls|All Files|*.*';
    if sd.Execute then begin
      screen.Cursor := crHourGlass;
      f := sd.FileName;
      cxExportTLToExcel(f, lst_1, true, true);
    end;
  finally
    screen.Cursor := crDefault;
    lst_1.EndUpdate;
    sd.Free;
  end;
end;

procedure TMatClassForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  docIni:= ExtractFilePath(Application.ExeName)+'\config\'+Self.Name+'_doc.ini';
  docm_1.SaveLayoutToIniFile(docIni);
  cxSetResourceString(@scxGridGroupByBoxCaption,
      'Перетащите заголовок колонки на эту панель для группировки по выбранному полю');
  Action:= caFree;
end;

procedure TMatClassForm.FormCreate(Sender: TObject);
begin
  isReadOnly:= False;
  ifInsert := false;
  isModal:= False;
  LoadForm(prop1,Self.Name);
  docIni:= ExtractFilePath(Application.ExeName)+'\config\'+Self.Name+'_doc.ini';
  if FileExists(docIni) then
  docm_1.LoadLayoutFromIniFile(docIni);
  openDS;
end;

procedure TMatClassForm.FormShow(Sender: TObject);
begin
  if ActiveRole = 60 then  begin//sintera
    doc_1.Visible:= false;
    doc_2.Visible:= false;
  end else begin
    doc_1.Visible:= not isReadOnly;
    doc_2.Visible:= not isReadOnly;
  end;
  if isModal then
  with v1 do begin
    BeginUpdate(lsimImmediate);
    try
      cxSetResourceString(@scxGridGroupByBoxCaption,
              'Выбрать материал - двойной клик мышкой или клавиша "Enter"');
      OptionsView.GroupByBox:= isModal;
      //Update;
    finally
      EndUpdate;
    end;
  end;
end;

procedure TMatClassForm.lst_1Click(Sender: TObject);
begin
  //OpenMat;
end;

procedure TMatClassForm.lst_1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AttachNode :TcxTreeListNode;
  ASite: TcxGridSite;
  ASourceView: TcxGridDBTableView;
  AHitTest: TcxCustomGridHitTest;
  I: Integer;
  CurPos: TPoint;
  fName: Variant;
begin
  if ActiveRole = 60 then Exit;

  if (Source <> Sender) and (not ds_CLASSMAT.IsEmpty) then
  begin
     CurNode:=lst_1.GetNodeAt(X,Y);
     GetCursorPos(CurPos);
     pm1.Popup(CurPos.X,CurPos.Y);
   {  //pm1.Items.Items[0].
    AttachNode:=lst_1.GetNodeAt(X,Y);
     if AttachNode <> nil then begin
       ASite := TcxGridSite(TcxDragControlObject(Source).Control);
       ASourceView := TcxGridDBTableView(ASite.GridView);
        for I := 0 to ASourceView.Controller.SelectedRecordCount - 1 do
        begin
          ASourceView.Controller.SelectedRecords[I].Focused := true;
          if OperType = otMove then begin  //переместитть
             with ds_CLASSMAT1 do
             begin
               Edit;
               FN('OWN').AsVariant:=AttachNode.Values[0];
               Post;
             end;
          end else
          if OperType = otCopy then begin   //копировать
             fName:= ASourceView.GetColumnByFieldName('NAME').EditValue;
             with ds_CLASSMAT1 do
             begin
               Append;
                FN('OWN').AsVariant:= AttachNode.Values[0];
                FN('NAME').AsVariant:= fName;
                FN('ISGROUP').AsVariant:=0;
                FN('ISNAME').AsVariant:=1;
               Post;
             end;
          end;
        end;
        ds_CLASSMAT1.CloseOpen(false);
     end; }
  end;
end;

procedure TMatClassForm.lst_1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if ActiveRole = 60 then begin
    Accept:= False;
    Exit;
  end;
  if Sender=Source then
  Accept:=True;
end;

procedure TMatClassForm.N1Click(Sender: TObject);
begin
  //переместить
  OperType:= otMove;
  DragItems;
end;

procedure TMatClassForm.N2Click(Sender: TObject);
begin
  //скопировать
  OperType:= otCopy;
  DragItems;
end;

procedure TMatClassForm.openDS;
begin
  DSOptoins(ds_CLASSMAT,'','CLASSMAT','CODE','CLASSMAT_GEN');
  DSOptoins(ds_CLASSMAT1,'','CLASSMAT','CODE','CLASSMAT_GEN',false);
end;

procedure TMatClassForm.OpenMat;
begin
  if ds_CLASSMAT.FN('CODE').AsVariant = null then Exit;
  with ds_CLASSMAT1 do begin
    Close;
    ParamByName('CODE').AsVariant:= ds_CLASSMAT.FN('CODE').AsVariant;
    Open;
  end;
end;

procedure TMatClassForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  ABookmarks: array of TBookmark;
begin
  with v1.DataController do
    SetSelectionAnchor(FocusedRowIndex);
  //v1.DataController.DataSet.Bookmark:= Pointer(v1.DataController.FocusedRowIndex);
end;

procedure TMatClassForm.v1DblClick(Sender: TObject);
begin
  if Self.isModal then
    ModalResult:= mrOk;
end;

procedure TMatClassForm.v1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept:=TcxDragControlObject(Source).Control <> Sender;
end;

procedure TMatClassForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Self.isModal then
  case key of
    VK_RETURN : ModalResult:= mrOk;
  end;
end;

procedure TMatClassForm.v1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
var
  P: TPoint;
  Site: TcxGridSite;
  AHitTest: TcxCustomGridHitTest;
  I: Integer;
begin
  Site := TcxGridSite(Sender);
  GetCursorPos(P);
  P := Site.ScreenToClient(P);
  AHitTest := Site.GridView.ViewInfo.GetHitTest(P);
  if AHitTest is TcxGridRecordCellHitTest then
    with TcxGridRecordCellHitTest(AHitTest) do
    begin
      SetLength(DragRecords, TcxGridTableView(Site.GridView).Controller.SelectedRecordCount);
      for I := 0 to TcxGridTableView(Site.GridView).Controller.SelectedRecordCount - 1 do
        DragRecords[I] := TcxGridTableView(Site.GridView).Controller.SelectedRecords[I].RecordIndex;
    end
end;

initialization
 RegisterClass(TMatClassForm);
end.
