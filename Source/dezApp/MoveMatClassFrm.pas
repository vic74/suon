unit MoveMatClassFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, dxSkinsdxDockControlPainter, cxClasses, dxDockControl,
  dxLayoutLookAndFeels, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, ImgList, DB,
  FIBDataSet, pFIBDataSet, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  Menus, cxContainer, cxTextEdit, StdCtrls, cxButtons, AppUtils, BaseForm,
  cxPropertiesStore, cxCheckBox, dxSkinDevExpressStyle;

type
  TMoveMatClassForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    grp2: TdxLayoutGroup;
    grp3: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    grpcnt1Group2: TdxLayoutGroup;
    grpcnt1Group3: TdxLayoutGroup;
    grpcnt1Group4: TdxLayoutGroup;
    grpcnt1Group5: TdxLayoutGroup;
    grpcnt1Group6: TdxLayoutGroup;
    grpcnt1Group7: TdxLayoutGroup;
    grpcnt1Group8: TdxLayoutGroup;
    docm1: TdxDockingManager;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    itmcnt1Item1: TdxLayoutItem;
    ds_KServisMaterial: TpFIBDataSet;
    src_KServisMaterial: TDataSource;
    il1: TcxImageList;
    lst1: TcxDBTreeList;
    clm_Code: TcxDBTreeListColumn;
    clm_Name: TcxDBTreeListColumn;
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1KSERVISMATERIAL: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    l1: TcxGridLevel;
    itmcnt1Item2: TdxLayoutItem;
    ds_CLASSMAT: TpFIBDataSet;
    src_CLASSMAT: TDataSource;
    ds_CLASSMAT1: TpFIBDataSet;
    src_CLASSMAT1: TDataSource;
    lst_1: TcxDBTreeList;
    cl_CODE: TcxDBTreeListColumn;
    cl_FULLNAME: TcxDBTreeListColumn;
    itmcnt1Item3: TdxLayoutItem;
    itmcnt1Item4: TdxLayoutItem;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    cl_v1CODE: TcxGridDBColumn;
    cl_v1OWN: TcxGridDBColumn;
    cl_v1NAME: TcxGridDBColumn;
    cl_v1FULLNAME: TcxGridDBColumn;
    cl_v1ISGROUP: TcxGridDBColumn;
    cl_v1ISNAME: TcxGridDBColumn;
    l2: TcxGridLevel;
    btn_Link: TcxButton;
    itmcnt1Item11: TdxLayoutItem;
    txt_old: TcxTextEdit;
    itmcnt1Item12: TdxLayoutItem;
    txt_New: TcxTextEdit;
    itmcnt1Item13: TdxLayoutItem;
    grpcnt1Group10: TdxLayoutGroup;
    grp_cnt1Group1: TdxLayoutGroup;
    grp_cnt1Group2: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    chk_ShowLink: TcxCheckBox;
    itm_showlink: TdxLayoutItem;
    cl_v1CLASSMAT: TcxGridDBColumn;
    chk_ShowAll: TcxCheckBox;
    itm_ShowAll: TdxLayoutItem;
    clv2isLink: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure lst_1DblClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LinkClick(Sender: TObject);
    procedure v2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure v2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_ShowLinkPropertiesEditValueChanged(Sender: TObject);
    procedure v1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure chk_ShowAllPropertiesEditValueChanged(Sender: TObject);
    procedure v1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v2StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure v1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure lst_1Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
  private
    { Private declarations }
    FromID, ToId, OldMat, OldMatName: Variant;
    procedure OpenDS;
    procedure LinkMat;
    procedure UnLinkMat;
    procedure ShowLink(isShow: Boolean = false);
    //
    procedure SetOldParams(aName,aID: variant);
    procedure AddOldMat;
    //
    procedure FindLink;
  public
    { Public declarations }
  end;

var
  MoveMatClassForm: TMoveMatClassForm;

implementation

uses cmDBUnit, MatClassLinkFrm, MatClassAddFrm;

{$R *.dfm}

{ TMoveMatClassForm }

procedure TMoveMatClassForm.AddOldMat;
var
  F: TMatClassAddForm;
begin
  F:= TMatClassAddForm.Create(self);
  F.fTab:=1;
  F.txt_MatName.EditValue:= OldMatName;
  try
    if F.ShowModal= mrOk then
    with ds_ServisMaterial do begin
      Append;
      FN('KSERVISMATERIAL').AsVariant:= ds_KServisMaterial.FN('CODE').AsVariant;
      FN('NAME').AsVariant:= OldMatName;
      FN('ED').AsVariant:= F.txt_Ed.EditingValue;
      FN('CLASSMAT').AsVariant:= OldMat;
      Post;
    end;
  finally
    F.Free;
  end;
end;

procedure TMoveMatClassForm.btn_LinkClick(Sender: TObject);
begin
  if btn_Link.Tag = 0 then
  LinkMat else
  UnLinkMat;
end;

procedure TMoveMatClassForm.chk_ShowAllPropertiesEditValueChanged(
  Sender: TObject);
begin
  ShowLink(chk_ShowLink.Checked);
end;

procedure TMoveMatClassForm.chk_ShowLinkPropertiesEditValueChanged(
  Sender: TObject);
begin
  ShowLink(chk_ShowLink.Checked);
end;

procedure TMoveMatClassForm.FindLink;
var
  AIndex: Integer;
begin
  AIndex:= v1.Controller.FocusedRowIndex;
  try

  finally
    v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TMoveMatClassForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TMoveMatClassForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TMoveMatClassForm.LinkMat;
var
  F: TMatClassLinkForm;
begin
  F:=TMatClassLinkForm.Create(Self);
  try
    F.txt_oldName.EditValue:=txt_old.EditValue;
    F.txt_NewName.EditValue:=txt_New.EditValue;
    if F.ShowModal = mrOk then begin
      //устанавливаем связь
      with ds_ServisMaterial do begin
        Edit;
        FN('CLASSMAT').AsVariant:= ToId;
        FN('NAME').AsVariant:=F.txt_NewName.EditValue;
        Post;
        //устанавливаем новое значение FromId и текст
        txt_old.EditValue:= v1.GetColumnByFieldName('NAME').EditValue;
        FromID:= v1.GetColumnByFieldName('CODE').EditValue;
      end;
    end;
  finally
    F.Free;
  end;
end;

procedure TMoveMatClassForm.lst1Click(Sender: TObject);
begin
  txt_old.EditValue := v1.GetColumnByFieldName('NAME').EditValue;
end;

procedure TMoveMatClassForm.lst1DblClick(Sender: TObject);
begin
  grp3.ItemIndex :=1; //show mat tab
end;

procedure TMoveMatClassForm.lst_1Click(Sender: TObject);
begin
  txt_New.EditValue:= v2.GetColumnByFieldName('FULLNAME').EditValue;
end;

procedure TMoveMatClassForm.lst_1DblClick(Sender: TObject);
begin
  grp2.ItemIndex:= 1;
  txt_New.EditValue:= v2.GetColumnByFieldName('FULLNAME').EditValue;
end;

procedure TMoveMatClassForm.OpenDS;
begin
  ds_KServisMaterial.Open;
  DSOptoins(ds_ServisMaterial,'','SERVISMATERIAL','CODE','SERVISMATERIAL_GEN', False);
  ShowLink;
  ds_CLASSMAT.Open;
end;

procedure TMoveMatClassForm.SetOldParams(aName,aID: variant);
begin
  txt_old.EditValue := aName;
  FromID:= aID;
  if v1.GetColumnByFieldName('CLASSMAT').EditValue>0 then begin
    btn_Link.OptionsImage.ImageIndex:=2;
    btn_Link.Caption:='Отменить связь';
    btn_Link.Tag:=1;
  end else begin
    btn_Link.OptionsImage.ImageIndex:=1;
    btn_Link.Caption:='Связать';
    btn_Link.Tag:=0;
  end;
end;

procedure TMoveMatClassForm.ShowLink(isShow: Boolean);
var
  AIndex: Integer;
begin
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  if isShow then begin
    v1.DataController.Summary.FooterSummaryItems[0].BeginUpdate;
    with ds_ServisMaterial do begin
      Close;
      if chk_ShowAll.Checked then
      MainWhereClause:= '' else
      MainWhereClause:= 'KSERVISMATERIAL = :mas_code';
      Open;
      Filtered:= false;
    end;
    v1.DataController.Summary.FooterSummaryItems[0].EndUpdate;
  end else begin
    v1.DataController.Summary.FooterSummaryItems[0].BeginUpdate;
    with ds_ServisMaterial do begin
      Close;
      if chk_ShowAll.Checked then
      MainWhereClause:='CLASSMAT=0' else
      MainWhereClause:= 'KSERVISMATERIAL = :mas_code and CLASSMAT=0';
      Open;
      Filter:='CLASSMAT=0';
      Filtered:= true;
    end;
    v1.DataController.Summary.FooterSummaryItems[0].EndUpdate;
  end;
  v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TMoveMatClassForm.UnLinkMat;
begin
  if Application.MessageBox('Вы действительно хотите отменить связь?',
    'Внимание!', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    with ds_ServisMaterial do begin
      Edit;
      FN('CLASSMAT').AsVariant:=0;
      Post;
    end;
  end;
end;

procedure TMoveMatClassForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetOldParams(v1.GetColumnByFieldName('NAME').EditValue,
               v1.GetColumnByFieldName('CODE').EditValue);
end;

procedure TMoveMatClassForm.v1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  S: string;
begin
  S:='Вы дествительно хотите создать материал '+VarToStr(OldMatName)+
      ' в старом справочнике?';
  if Application.MessageBox(PChar(S), 'Внимание', MB_YESNO + MB_ICONWARNING +
    MB_TOPMOST) = IDYES then
  begin
    AddOldMat;
  end;
end;

procedure TMoveMatClassForm.v1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept:= (TcxDragControlObject(Source).Control = v2.Site);
end;

procedure TMoveMatClassForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :   SetOldParams(v1.GetColumnByFieldName('NAME').EditValue,
               v1.GetColumnByFieldName('CODE').EditValue);
    VK_DOWN :   SetOldParams(v1.GetColumnByFieldName('NAME').EditValue,
               v1.GetColumnByFieldName('CODE').EditValue);
  end;
end;

procedure TMoveMatClassForm.v1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do begin
    SetOldParams(DataController.DataSet.FieldValues['NAME'],
                 DataController.DataSet.FieldValues['CODE']);
  end;
end;

procedure TMoveMatClassForm.v1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if ARecord.Values[cl_v1CLASSMAT.Index]>0 then
   AStyle := cmDb.styl1;
end;

procedure TMoveMatClassForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  txt_New.EditValue:= v2.GetColumnByFieldName('FULLNAME').EditValue;
  ToId:=v2.GetColumnByFieldName('CODE').EditValue;
end;

procedure TMoveMatClassForm.v2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  LinkMat;
end;

procedure TMoveMatClassForm.v2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
   with TcxGridSite(Sender) do
   begin
     HT := ViewInfo.GetHitTest(X, Y);
     Accept:= (TcxDragControlObject(Source).Control = v1.Site) and (HT is TcxGridRecordCellHitTest)
              and (btn_Link.Tag=0);
     if Accept then begin
       txt_New.EditValue :=TcxGridRecordCellHitTest(HT).GridRecord.Values[cl_v1FULLNAME.Index];
       ToId:= TcxGridRecordCellHitTest(HT).GridRecord.Values[cl_v1CODE.Index];
       TcxGridRecordCellHitTest(HT).GridRecord.Focused:=true;
     end;
   end;
end;

procedure TMoveMatClassForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : begin
              txt_New.EditValue:= v2.GetColumnByFieldName('FULLNAME').EditValue;
              ToId:=v2.GetColumnByFieldName('CODE').EditValue;
            end;
    VK_DOWN : begin
              txt_New.EditValue:= v2.GetColumnByFieldName('FULLNAME').EditValue;
              ToId:=v2.GetColumnByFieldName('CODE').EditValue;
            end;
  end;
end;

procedure TMoveMatClassForm.v2StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do begin
    OldMat:=DataController.DataSet.FieldValues['CODE'];
    OldMatName:= DataController.DataSet.FieldValues['FULLNAME']
  end;
end;

procedure TMoveMatClassForm.v2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if ARecord.Values[clv2isLink.Index]>0 then
   AStyle := cmDb.stl_green;
end;

initialization
 RegisterClass(TMoveMatClassForm);
end.
