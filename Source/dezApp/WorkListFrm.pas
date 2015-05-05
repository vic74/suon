unit WorkListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  DateUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPropertiesStore, FIBDataSet,
  pFIBDataSet, cxDBLookupComboBox, cxDBExtLookupComboBox, cxDropDownEdit,
  FIBQuery, pFIBCacheQueries, dxSkinsdxBarPainter, dxBar, dxLayoutLookAndFeels,
  frxClass, frxFIBComponents, BaseForm, cxImageComboBox, ImgList,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxSpinEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxMemo, cxCurrencyEdit,
  cxCalendar, dxLayoutContainer, dxLayoutControlAdapters, dxScreenTip,
  dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TWorkListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    spl2: TdxLayoutSplitterItem;
    prop1: TcxPropertiesStore;
    ds_worklist: TpFIBDataSet;
    src_worklist: TDataSource;
    ds_WorkSpecList: TpFIBDataSet;
    src_WorkSpecList: TDataSource;
    ds_WorkSpecMaterial: TpFIBDataSet;
    src_WorkSpecMaterial: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2SERVISWORK: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2ADDR: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2WORKLIST: TcxGridDBColumn;
    clv2Street: TcxGridDBColumn;
    clv2sworkname: TcxGridDBColumn;
    clv2streetname: TcxGridDBColumn;
    clv2nomer: TcxGridDBColumn;
    clv2flat: TcxGridDBColumn;
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
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    clv2ED: TcxGridDBColumn;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    doc_br1: TdxBarDockControl;
    itm_doc_br: TdxLayoutItem;
    doc_br2: TdxBarDockControl;
    itm_doc_br2: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_matAdd: TdxBarButton;
    btn_matEdit: TdxBarButton;
    btn_matDelete: TdxBarButton;
    grplc1Group3: TdxLayoutGroup;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    grp_2: TdxLayoutGroup;
    grp_3: TdxLayoutGroup;
    laf2: TdxLayoutCxLookAndFeel;
    fr1: TfrxReport;
    clv1Street: TcxGridDBColumn;
    clv1streetname: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1nomer: TcxGridDBColumn;
    clv1KontrName: TcxGridDBColumn;
    doc_br3: TdxBarDockControl;
    itm_doc_br3: TdxLayoutItem;
    brm1Bar3: TdxBar;
    btn_nAdd: TdxBarButton;
    btn_nEdit: TdxBarButton;
    btn_nDelete: TdxBarButton;
    tiprep1: TdxBarScreenTipRepository;
    tip_nAdd: TdxBarScreenTip;
    tip_nedit: TdxBarScreenTip;
    tip_nDel: TdxBarScreenTip;
    tip_wAdd: TdxBarScreenTip;
    tip_wEdit: TdxBarScreenTip;
    tip_wDel: TdxBarScreenTip;
    tip_mAdd: TdxBarScreenTip;
    tip_mEdit: TdxBarScreenTip;
    tip_mDel: TdxBarScreenTip;
    btn_print: TdxBarButton;
    tip_nPrint: TdxBarScreenTip;
    clv2Quantity: TcxGridDBColumn;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
    spl3: TdxLayoutSplitterItem;
    ds_Jwork: TpFIBDataSet;
    src_Jwork: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4JWORKTYPE: TcxGridDBColumn;
    clv4JTNAME: TcxGridDBColumn;
    clv4REGDATE: TcxGridDBColumn;
    clv4KONTRAGENT: TcxGridDBColumn;
    clv4HOUSE: TcxGridDBColumn;
    clv4DESCRIPTION: TcxGridDBColumn;
    clv4PLACE: TcxGridDBColumn;
    clv4PLANDATE: TcxGridDBColumn;
    clv4FACTDATE: TcxGridDBColumn;
    clv4NOTE: TcxGridDBColumn;
    clv4SHOWRESULT: TcxGridDBColumn;
    clv4WORKSPECLIST: TcxGridDBColumn;
    clv2jwork: TcxGridDBColumn;
    il1: TcxImageList;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group6: TdxLayoutGroup;
    txt_w: TcxTextEdit;
    itm_w: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    txt_j: TcxTextEdit;
    itm_j: TdxLayoutItem;
    btn_link: TcxButton;
    itm_link: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    clv4STREET: TcxGridDBColumn;
    btn_linkJl: TdxBarButton;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1PSE: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    btn_exAdd: TdxBarButton;
    cbb_mat: TcxLookupComboBox;
    itm_cbb_mat: TdxLayoutItem;
    btn_mat: TcxButton;
    itm_btn_mat: TdxLayoutItem;
    grplc1Group8: TdxLayoutGroup;
    edsp_kol: TcxSpinEdit;
    itm_edt_kol: TdxLayoutItem;
    cedt_price: TcxCurrencyEdit;
    itmlc1Item1: TdxLayoutItem;
    m_note: TcxMemo;
    itm_m_note: TdxLayoutItem;
    btn_post: TcxButton;
    itm_btn_post: TdxLayoutItem;
    btn_edit_m: TcxButton;
    itm_btn_edit: TdxLayoutItem;
    grplc1Group9: TdxLayoutGroup;
    btn_del_m: TcxButton;
    itm_btn_del_m: TdxLayoutItem;
    txt_ed: TcxTextEdit;
    itm_txt_ed: TdxLayoutItem;
    ds_smat: TpFIBDataSet;
    src_smat: TDataSource;
    grp_workAdd: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_work: TcxLookupComboBox;
    itm_cbb_work: TdxLayoutItem;
    txt_wed: TcxTextEdit;
    itm_wed: TdxLayoutItem;
    ed_col: TcxSpinEdit;
    itm_wed_col: TdxLayoutItem;
    ced_wprice: TcxCurrencyEdit;
    itm_wprice: TdxLayoutItem;
    m_wnote: TcxMemo;
    itm_wnote: TdxLayoutItem;
    btn_wAdd: TcxButton;
    itm_wAdd: TdxLayoutItem;
    btn_wEdit: TcxButton;
    itm_wEdit: TdxLayoutItem;
    grplc1Group11: TdxLayoutGroup;
    btn_wDel: TcxButton;
    itm_wDel: TdxLayoutItem;
    btn_w: TcxButton;
    itm_wspr: TdxLayoutItem;
    grplc1Group12: TdxLayoutGroup;
    src_serviswork: TDataSource;
    ds_serviswork: TpFIBDataSet;
    btn_auto: TdxBarButton;
    tip_autoCreate: TdxBarScreenTip;
    cbb_filtr: TcxComboBox;
    itm_filtr: TdxLayoutItem;
    grplc1Group7: TdxLayoutGroup;
    lc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v2NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_matAddClick(Sender: TObject);
    procedure btn_matEditClick(Sender: TObject);
    procedure btn_matDeleteClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_nAddClick(Sender: TObject);
    procedure btn_nEditClick(Sender: TObject);
    procedure btn_nDeleteClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure ds_WorkSpecListAfterOpen(DataSet: TDataSet);
    procedure v4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2DataControllerDataChanged(Sender: TObject);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_linkClick(Sender: TObject);
    procedure btn_linkJlClick(Sender: TObject);
    procedure btn_exAddClick(Sender: TObject);
    procedure btn_matClick(Sender: TObject);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_del_mClick(Sender: TObject);
    procedure btn_edit_mClick(Sender: TObject);
    procedure btn_postClick(Sender: TObject);
    procedure cbb_workPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_workPropertiesChange(Sender: TObject);
    procedure btn_wAddClick(Sender: TObject);
    procedure btn_wEditClick(Sender: TObject);
    procedure btn_wDelClick(Sender: TObject);
    procedure btn_wClick(Sender: TObject);
    procedure cbb_matPropertiesChange(Sender: TObject);
    procedure grp_2Button0Click(Sender: TObject);
    procedure grp_workAddButton0Click(Sender: TObject);
    procedure ds_worklistBeforeEdit(DataSet: TDataSet);
    procedure ds_WorkSpecListBeforeEdit(DataSet: TDataSet);
    procedure ds_WorkSpecMaterialBeforeEdit(DataSet: TDataSet);
    procedure ds_WorkSpecMaterialBeforePost(DataSet: TDataSet);
    procedure ds_WorkSpecMaterialNewRecord(DataSet: TDataSet);
    procedure ds_WorkSpecListBeforeInsert(DataSet: TDataSet);
    procedure btn_autoClick(Sender: TObject);
    procedure cbb_filtrPropertiesEditValueChanged(Sender: TObject);
    procedure ds_WorkSpecListBeforePost(DataSet: TDataSet);
    procedure ds_worklistBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FDragView: TcxGridDBTableView;
    canLink: Boolean;
    procedure OpenDS;
    procedure ReopenHouse;
    {$REGION 'Добавляем работу'}
    ///@@WorkListFrm.TWorkListForm.AddWork@Boolean
    /// <summary>
    /// Добавляем работу
    /// </summary>
    /// <value>
    /// Add a description here...
    /// </value>
    /// <param name="AEdit">true \- редактировать работу<para></para>false\-добавляем
    ///                     новую<para></para></param>                               
    {$ENDREGION}
    procedure AddWork(AEdit: Boolean);
    procedure AddMaterial(AEdit: Boolean);
    procedure AddAttire(AEdit: Boolean);
    procedure PrintRep;
    procedure GetJurnalRec(isLink: Variant);
    procedure LinkWithJWork;
    procedure TextLink(clear: Boolean = false);
    procedure JtextLink(clear: Boolean = false);
    procedure GetWorkRec(isLink: Variant);
    procedure isCanLink(link: Boolean);
    procedure LinkJurnal(unlink: Boolean = false);
    procedure EditJRecord;
    procedure AddJRecord;
    procedure OpenExForm;
    procedure GetPrice;
    procedure FillEditData;
    function CheckParam :boolean;
    procedure EditMaterial;
    procedure NewMaterial;
    function GetEd(Cod :Variant) :string;
    function CheckWorkParam :Boolean;
    procedure FillWorkEditData;
    procedure EditWork;
    function ifOutMontAttire(docDate :Variant) :Boolean;
    procedure AutoCreate;
    procedure OpenServisWork;
    function GetGRP :variant;
    function CheckPeriodWork(d1,d2 :Variant) :boolean;
    procedure SetRight;
  public
    { Public declarations }
  end;

var
  WorkListForm: TWorkListForm;

implementation

uses AppUtils, cmUtils, cmDBUnit, LoadingSplash, AddWorkSpecListFrm, CommonDm,
  AddWorkSpesMatFrm, dezCommon, AddWorkFrm, AkttoJurnalFrm, AddJWorkFrm,
  ExWorkListFrm, KServisMaterialFrm, KServisWorkFrm, AutoCreateWorkFrm;
{$R *.dfm}

function TWorkListForm.GetGRP :variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmdb.RT,
  'WITH RECURSIVE' + #13#10 +
  '   tree (code, own,name)' + #13#10 +
  '   AS (SELECT code, own,name FROM kserviswork' + #13#10 +
  '      WHERE code = :cod' + #13#10 +
  '      UNION ALL ' + #13#10 +
  '      SELECT  code, own,name FROM kserviswork V' + #13#10 +
  '      INNER JOIN tree t ON t.code = V.own)' + #13#10 +
  '   SELECT List(code,'','') code FROM tree');

  case cbb_Filtr.ItemIndex of
    0 : begin
          Result:=Null;
          Exit;
        end;
    1 : Q.ParamByName('cod').AsVariant:=1;
    2 : Q.ParamByName('cod').AsVariant:=11;
    3 : Q.ParamByName('cod').AsVariant:=28;
  end;
  Q.ExecQuery;
  Result:=#39','+Q.FN('code').AsWideString+','#39;
  FreeQueryForUse(Q);
end;

procedure TWorkListForm.ReopenHouse;
begin
  { if v2.GetColumnByFieldName('Street').EditValue=null then Exit;
    SplashVisibility(True,'Получаем список домов');
    try
    with ds_house do
    begin
    Close;
    MainWhereClause:='STREET = :CODE';
    ParamByName('CODE').AsVariant:=v2.GetColumnByFieldName('Street').EditValue;
    OrderClause:='NOMER';
    Open;
    end;
    finally
    SplashVisibility(False); }
  { TODO : как правильней сформировать SetActiveWindow? типа self.handle }
  { SetActiveWindow(FindWindow('TWorkListForm',nil));
    clv2HOUSE.FocusWithSelection;
    end; }
end;

procedure TWorkListForm.SetRight;
begin
  case ActiveRole of
    53 : begin //Инженер СЭ
           btn_auto.Visible := ivNever;
           btn_nAdd.Visible := ivNever;
           btn_nEdit.Visible := ivNever;
           btn_nDelete.Visible := ivNever;
           //
           grp_workAdd.Expanded := false;
           grp_workAdd.Enabled := false;
           //
           grp_2.Expanded := false;
           grp_2.Enabled := false;
           //
           btn_link.Enabled := false;
         end;
  end;
end;

procedure TWorkListForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast and (Key = VK_RETURN) then
    begin
      Key := 0;
      Sender.DataController.Post;
    end;
end;

procedure TWorkListForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
    AddAttire(false)
  else if Key = VK_RETURN then
    AddAttire(true);
end;

procedure TWorkListForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetJurnalRec(v2.GetColumnByFieldName('JWork').EditValue);
  TextLink;
  btn_del_m.Enabled:=False;
  {work}
  FillWorkEditData;
  btn_wDel.Enabled:=True;
end;

procedure TWorkListForm.FillWorkEditData;
begin
  dt1.EditValue:=v2.GetColumnByFieldName('DATA').EditValue;
  cbb_work.EditValue:=v2.GetColumnByFieldName('SERVISWORK').EditValue;
  ed_col.EditValue:=v2.GetColumnByFieldName('Quantity').EditValue;
  ced_wprice.EditValue:=v2.GetColumnByFieldName('PRICE').EditValue;
  m_wnote.EditValue:=v2.GetColumnByFieldName('NOTE').EditValue;
end;

procedure TWorkListForm.TextLink(clear: Boolean = false);
begin
  if clear then
  begin
    txt_w.EditValue := '';
    Exit;
  end;
  txt_w.EditValue := VarToStr(v2.GetColumnByFieldName('sworkname').EditValue)
    + VarToStr(' - ' + v2.GetColumnByFieldName('NOTE').EditValue);
end;

procedure TWorkListForm.LinkWithJWork;
var
  Jwork, Workspeclist: Variant;
  function IsLinkExist: Boolean;
  begin
    Result := false;
    if v4.GetColumnByFieldName('WORKSPECLIST').EditValue <> null then
    begin
      cmShowMessage('Связь с данной записью в журнале уже установленна!');
      Result := true;
    end;
  end;
  procedure JWorkToWorkSpec;
  begin
    with ds_Jwork do
    begin
      Edit;
      FN('WORKSPECLIST').AsVariant := Workspeclist;
      Post;
    end;
  end;
  procedure WorkSpecToJWork;
  begin
    with ds_WorkSpecList do
    begin
      Edit;
      FN('JWORK').AsVariant := Jwork;
      Post;
    end;
  end;

begin
  Jwork := v4.GetColumnByFieldName('Code').EditValue;
  Workspeclist := v2.GetColumnByFieldName('Code').EditValue;
  // проверка, что связка уже есть
  if not IsLinkExist then
  // связка
  begin
    JWorkToWorkSpec;
    WorkSpecToJWork;
  end;
end;

procedure TWorkListForm.NewMaterial;
begin
  with ds_WorkSpecMaterial do
  begin
      Append;
      FN('WORKSPECLIST').AsVariant := v2.GetColumnByFieldName('CODE').EditValue;
      FN('DATA').AsVariant := v2.GetColumnByFieldName('DATA').EditValue;
      FN('KONTRAGENT').AsVariant := v2.GetColumnByFieldName('KONTRAGENT')
        .EditValue;
      FN('SERVISWORK').AsVariant := v2.GetColumnByFieldName('SERVISWORK')
        .EditValue;
      FN('HOUSE').AsVariant := v2.GetColumnByFieldName('HOUSE').EditValue;
      FN('ADDR').AsVariant := v2.GetColumnByFieldName('ADDR').EditValue;
      FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
      FN('QUANTITY').AsVariant := edsp_kol.EditValue;
      FN('PRICE').AsVariant := cedt_price.EditValue;
      FN('NOTE').AsVariant := m_note.EditValue;
      Post;
  end;
end;

procedure TWorkListForm.v2DataControllerDataChanged(Sender: TObject);
begin
  TextLink;
end;

procedure TWorkListForm.v2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := false;
  if Source is TcxDragControlObject then
    with TcxDragControlObject(Source) do
      if Control is TcxGridSite then
        with TcxGridSite(Control) do
          Accept := (GridView.PatternGridView = v4);
end;

procedure TWorkListForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
    AddWork(false)
  else if Key = VK_RETURN then
    AddWork(true);
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    GetJurnalRec(v2.GetColumnByFieldName('JWork').EditValue);
    TextLink;
    btn_del_m.Enabled:=False;
    FillWorkEditData;
    btn_wDel.Enabled:=True;
  end;
end;

procedure TWorkListForm.v2NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 6 then
  begin
    AddWork(false);
  end;
end;

procedure TWorkListForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEditData;
end;

procedure TWorkListForm.v3EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast and (Key = VK_RETURN) then
    begin
      Key := 0;
      Sender.DataController.Post;
    end;
end;

procedure TWorkListForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { if Key = VK_INSERT then
    AddMaterial(false)
  else if Key = VK_RETURN then
    AddMaterial(true); }
  //if (Key=VK_UP) then
  case key of
    //VK_INSERT : AddMaterial(false);
    //VK_RETURN : AddMaterial(true);
    VK_UP : FillEditData;
    VK_DOWN : FillEditData;
  end;
end;

procedure TWorkListForm.FillEditData;
begin
  cbb_mat.EditValue:=v3.GetColumnByFieldName('SERVISMATERIAL').EditValue;
  edsp_kol.EditValue:=v3.GetColumnByFieldName('QUANTITY').EditValue;
  cedt_price.EditValue:=v3.GetColumnByFieldName('PRICE').EditValue;
  m_note.EditValue:=v3.GetColumnByFieldName('NOTE').EditValue;
  btn_del_m.Enabled:=True;
end;

procedure TWorkListForm.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetWorkRec(v4.GetColumnByFieldName('WORKSPECLIST').EditValue);
  JtextLink;
end;

procedure TWorkListForm.JtextLink(clear: Boolean = false);
begin
  if clear then
  begin
    txt_j.EditValue := '';
    Exit;
  end;
  txt_j.EditValue := VarToStr(v4.GetColumnByFieldName('JTNAME').EditValue)
    + ' - от ' + VarToStr(v4.GetColumnByFieldName('PLANDATE').EditValue);
end;

procedure TWorkListForm.v4DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  LinkWithJWork;
end;

procedure TWorkListForm.v4DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := false;
  if Source is TcxDragControlObject then
    with TcxDragControlObject(Source) do
      if Control is TcxGridSite then
        with TcxGridSite(Control) do
          Accept := (GridView.PatternGridView = v2);
end;

procedure TWorkListForm.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    GetWorkRec(v4.GetColumnByFieldName('WORKSPECLIST').EditValue);
    JtextLink;
  end;
end;

procedure TWorkListForm.AddAttire(AEdit: Boolean);
var
  F: TAddWorkForm;
  procedure EditRec;
  begin
    with ds_worklist do
    begin
      F.cbb_street.EditValue := FN('street').AsVariant;
      F.dt1.EditValue := FN('DATA').AsVariant;
      F.cbb_kontr.EditValue := FN('KONTRAGENT').AsVariant;
      F.cbb_house.EditValue := FN('HOUSE').AsVariant;
      F.mmo_prim.EditValue := FN('NOTE').AsVariant;
    end;
  end;

begin
  F := TAddWorkForm.Create(Application);
  if AEdit then
    EditRec;
  if F.ShowModal = mrOk then
  begin
    with ds_worklist do
    begin
      if AEdit then
        Edit
      else
        Append;
      FN('DATA').AsVariant := F.dt1.EditValue;
      FN('KONTRAGENT').AsVariant := F.cbb_kontr.EditValue;
      FN('HOUSE').AsVariant := F.cbb_house.EditValue;
      FN('NOTE').AsVariant := F.mmo_prim.EditValue;
      Post;
    end;
  end;
  F.Free;
end;

procedure TWorkListForm.AddMaterial(AEdit: Boolean);
var
  F: TAddWorkSpesMatForm;
  procedure EditRec;
  begin
    with ds_WorkSpecMaterial do
    begin
      F.cbb_mat.EditValue := FN('SERVISMATERIAL').AsVariant;
      F.edsp_quant.EditValue := FN('QUANTITY').AsVariant;
      F.cedt_price.EditValue := FN('PRICE').AsVariant;
      F.mmo_prim.EditValue := FN('NOTE').AsVariant;
    end;
  end;

begin
  if v2.GetColumnByFieldName('CODE').EditValue = null then
    Exit;
  F := TAddWorkSpesMatForm.Create(Application);
  if AEdit then
    EditRec;
  if F.ShowModal = mrOk then
  begin
    with ds_WorkSpecMaterial do
    begin
      if AEdit then
        Edit
      else
        Append;
      FN('WORKSPECLIST').AsVariant := v2.GetColumnByFieldName('CODE').EditValue;
      FN('DATA').AsVariant := v2.GetColumnByFieldName('DATA').EditValue;
      FN('KONTRAGENT').AsVariant := v2.GetColumnByFieldName('KONTRAGENT')
        .EditValue;
      FN('SERVISWORK').AsVariant := v2.GetColumnByFieldName('SERVISWORK')
        .EditValue;
      FN('HOUSE').AsVariant := v2.GetColumnByFieldName('HOUSE').EditValue;
      FN('ADDR').AsVariant := v2.GetColumnByFieldName('ADDR').EditValue;
      FN('SERVISMATERIAL').AsVariant := F.cbb_mat.EditValue;
      FN('QUANTITY').AsVariant := F.edsp_quant.EditValue;
      FN('PRICE').AsVariant := F.cedt_price.EditValue;
      FN('NOTE').AsVariant := F.mmo_prim.EditValue;
      Post;
    end;
  end;
  F.Free;
end;

procedure TWorkListForm.AddWork(AEdit: Boolean);
var
  F: TAddWorkSpecListForm;
  Q: TFIBQuery;
  function GetEd(Cod: Variant): string;
  var
    ED: Variant;
  begin
    ED := null;
    try
      Q := GetQueryForUse(cmDB.RT, 'Select ED from SERVISWORK where Code=:Cod');
      Q.ParamByName('Cod').AsVariant := Cod;
      Q.ExecQuery;
      ED := Q.FN('ED').AsVariant;
    finally
      Result := ED;
    end;
  end;
  procedure EditRec;
  begin
    F.ifEdit := true;
    with ds_WorkSpecList do
    begin
      // F.txt_ed.EditValue:=ds_WorkSpecList.FN('ED').AsVariant;
      // F.cbb_street.EditValue := FN('STREET').AsVariant;
      // F.cbb_house.EditValue := FN('HOUSE').AsVariant;
      // F.cbb_flat.EditValue := FN('ADDR').AsVariant;
      F.dt1.EditValue := FN('DATA').AsVariant;
      F.edsp_quant.EditValue := FN('quantity').AsVariant;
      F.cedt_price.EditValue := FN('PRICE').AsVariant;
      F.mmo1.EditValue := FN('NOTE').AsVariant;
      F.cbb_work.EditValue := FN('SERVISWORK').AsVariant;
    end;
  end;

begin
  F := TAddWorkSpecListForm.Create(Application);
  if AEdit then
    EditRec;
  if (F.ShowModal = mrOk) then
  begin
    with ds_WorkSpecList do
    begin
      if AEdit then
        Edit
      else
        Append;
      ds_WorkSpecList.FN('DATA').AsVariant := F.dt1.EditValue;
      FN('KONTRAGENT').AsVariant := v1.GetColumnByFieldName('KONTRAGENT')
        .EditValue;
      FN('HOUSE').AsVariant := v1.GetColumnByFieldName('HOUSE').EditValue;

      FN('SERVISWORK').AsVariant := F.cbb_work.EditValue;
      // FN('ED').AsVariant:=F.txt_ed.EditValue;
      // FN('HOUSE').AsVariant := F.cbb_house.EditValue;
      FN('quantity').AsVariant := F.edsp_quant.EditValue;
      FN('PRICE').AsVariant := F.cedt_price.EditValue;
      FN('NOTE').AsVariant := F.mmo1.EditValue;
      FN('WORKLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
      Post;
    end;
  end;
  F.Free;
end;

procedure TWorkListForm.btn_AddClick(Sender: TObject);
begin
  AddWork(false);
end;

procedure TWorkListForm.btn_autoClick(Sender: TObject);
begin
  AutoCreate;
end;

procedure TWorkListForm.AutoCreate;
var
  f :TAutoCreateWorkForm;
begin
  f:=TAutoCreateWorkForm.Create(nil);
  f.kontr:=ActiveKontragent;
  if f.ShowModal=mrOk then OpenDS;

  f.Free;
end;

procedure TWorkListForm.btn_DeleteClick(Sender: TObject);
begin
  if v2.GetColumnByFieldName('Code').EditValue = null then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить работу: ' + #13 +
      v2.GetColumnByFieldName('sworkname').EditValue + '?') then
    v2.DataController.DataSet.Delete;
  // ds_WorkSpecList.Delete;
end;

procedure TWorkListForm.btn_del_mClick(Sender: TObject);
begin
  if not ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then
  if cmMessageBox
        ('Вы действительно хотите удалить запись из списка материалов?') then
  begin
    ds_WorkSpecMaterial.Delete;
    btn_del_m.Enabled:=False;
  end;
end;

procedure TWorkListForm.btn_EditClick(Sender: TObject);
begin
  AddWork(true);
end;

procedure TWorkListForm.btn_edit_mClick(Sender: TObject);
begin
  if (v3.GetColumnByFieldName('CODE').EditValue=null)
  or (v3.GetColumnByFieldName('CODE').EditValue=Unassigned) then Exit;
  if CheckParam then
  EditMaterial;
end;

procedure TWorkListForm.btn_exAddClick(Sender: TObject);
begin
  OpenExForm;
end;

procedure TWorkListForm.OpenExForm;
var
  F :TExWorkListForm;
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
  (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then Exit;
  F:=TExWorkListForm.Create(Application);
  F.WorkList:=v1.GetColumnByFieldName('CODE').EditValue;
  F.ShowModal;
  F.Free;
end;

procedure TWorkListForm.OpenServisWork;
var
  grp :variant;
begin
  grp:=GetGRP;
  with ds_serviswork do begin
    Close;
    if grp<>null then begin
      MainWhereClause:='('+grp+'  containing '','' || kserviswork || '','')';
      //ParamByName('grp').AsVariant:=grp;
    end else MainWhereClause:='';
    OrderClause:='NAME';
    Open;
  end;
end;

procedure TWorkListForm.btn_linkClick(Sender: TObject);
begin
  // связываем с журналом
  if canLink then
    LinkJurnal
  else if cmMessageBox('Удалить связь с журналом?') then
    LinkJurnal(true);
end;

procedure TWorkListForm.btn_linkJlClick(Sender: TObject);
begin
  // новая запись в журнал
  if (v2.GetColumnByFieldName('CODE').EditValue <> null) or
    (v2.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
    AddJRecord;
end;

procedure TWorkListForm.AddJRecord;
var
  F: TAddJWorkForm;
  Cod: Variant;
begin
  try
    F := TAddJWorkForm.Create(Application);
    F.SetEditParam;

    F.cbb_WorkType.EditValue := null;
    F.cbb_WorkType.Properties.ReadOnly := false;
    F.cbb_kontr.EditValue := v2.GetColumnByFieldName('Kontragent').EditValue;
    F.cbb_street.EditValue := v1.GetColumnByFieldName('STREET').EditValue;
    F.cbb_house.EditValue := v2.GetColumnByFieldName('HOUSE').EditValue;
    F.dt_RegDate.EditValue := Date;
    F.dt_PlanDate.EditValue := Date + 30;
    F.dt_FactDate.EditValue := null;
    F.mmo_desc.EditValue := v2.GetColumnByFieldName('sworkname').EditValue;
    F.txt_place.EditValue := v2.GetColumnByFieldName('Note').EditValue;
    // F.mmo_Note.EditValue := v4.GetColumnByFieldName('Note').EditValue;
    if F.ShowModal = mrOk then
    begin
      with ds_Jwork do
      begin
        if F.chk_fakt.Checked then
        begin
          Cod := cmDB.DB.Gen_Id('JWORK_GEN', 1);
          Append;
          FN('CODE').AsVariant := Cod;
          FN('JWORKTYPE').AsVariant := F.cbb_WorkType.EditValue;
          FN('REGDATE').AsVariant := F.dt_RegDate.EditValue;
          FN('KONTRAGENT').AsVariant := F.cbb_kontr.EditValue;
          FN('HOUSE').AsVariant := F.cbb_house.EditValue;
          FN('DESCRIPTION').AsVariant := F.mmo_desc.EditValue;
          FN('PLACE').AsVariant := F.txt_place.EditValue;
          FN('PLANDATE').AsVariant := F.dt_PlanDate.EditValue;
          FN('NOTE').AsVariant := F.mmo_Note.EditValue;
          FN('WORKSPECLIST').AsVariant := v2.GetColumnByFieldName('Code')
            .EditValue;
          FN('STREET').AsVariant := F.cbb_street.EditValue;
          FN('FactDate').AsVariant := F.dt_FactDate.EditValue;
          Post;
          // Cod:=FN('CODE').AsVariant;
        end;
      end;
      with ds_WorkSpecList do
      begin
        Edit;
        FN('JWORK').AsVariant := Cod;
        Post;
      end;
      GetJurnalRec(v2.GetColumnByFieldName('JWork').EditValue);
    end;
  finally
    F.Free;
  end;
end;

// устанавливаем связь с журналом
procedure TWorkListForm.EditJRecord;
var
  F: TAddJWorkForm;
begin
  try
    F := TAddJWorkForm.Create(Application);
    F.SetEditParam;

    F.cbb_WorkType.EditValue := v4.GetColumnByFieldName('JWorkType').EditValue;
    F.cbb_kontr.EditValue := v4.GetColumnByFieldName('Kontragent').EditValue;
    F.cbb_street.EditValue := v4.GetColumnByFieldName('STREET').EditValue;
    F.cbb_house.EditValue := v4.GetColumnByFieldName('HOUSE').EditValue;
    F.dt_RegDate.EditValue := v4.GetColumnByFieldName('RegDate').EditValue;
    F.dt_PlanDate.EditValue := v4.GetColumnByFieldName('PlanDate').EditValue;
    F.dt_FactDate.EditValue := v4.GetColumnByFieldName('FactDate').EditValue;
    F.mmo_desc.EditValue := v4.GetColumnByFieldName('Description').EditValue;
    F.txt_place.EditValue := v4.GetColumnByFieldName('Place').EditValue;
    F.mmo_Note.EditValue := v4.GetColumnByFieldName('Note').EditValue;
    if F.ShowModal = mrOk then
      with ds_Jwork do
      begin
        if F.chk_fakt.Checked then
        begin
          Edit;
          FN('RegDate').AsVariant := F.dt_RegDate.EditValue;
          FN('Description').AsVariant := F.mmo_desc.EditValue;
          FN('Place').AsVariant := F.txt_place.EditValue;
          FN('PlanDate').AsVariant := F.dt_PlanDate.EditValue;
          if F.chk_fakt.Checked then
            FN('FactDate').AsVariant := F.dt_FactDate.EditValue
          else
            FN('FactDate').AsVariant := null;
          FN('NOTE').AsVariant := F.mmo_Note.EditValue;
          Post;
        end;
      end;
  finally
    F.Free;
  end;
end;

procedure TWorkListForm.EditMaterial;
begin
  with ds_WorkSpecMaterial do
  begin
    Edit;
      FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
      FN('QUANTITY').AsVariant := edsp_kol.EditValue;
      FN('PRICE').AsVariant := cedt_price.EditingValue;
      FN('NOTE').AsVariant := m_note.EditValue;
    Post;
  end;
end;

procedure TWorkListForm.LinkJurnal(unlink: Boolean = false);
var
  ws, jw: Variant;
begin
  if unlink then
  begin
    ws := null;
    jw := null;
  end
  else
  begin
    ws := v2.GetColumnByFieldName('Code').EditValue;
    jw := v4.GetColumnByFieldName('Code').EditValue;
  end;
  if (ws <> Unassigned) and (jw <> Unassigned) then
  begin
    if not unlink then
      EditJRecord;
    ds_WorkSpecList.Edit;
    ds_WorkSpecList.FN('JWORK').AsVariant := jw;
    ds_WorkSpecList.Post;
    //
    ds_Jwork.Edit;
    ds_Jwork.FN('WORKSPECLIST').AsVariant := ws;
    if unlink then
      ds_Jwork.FN('FactDate').AsVariant := null;
    ds_Jwork.Post;
    GetJurnalRec(v2.GetColumnByFieldName('JWork').EditValue);
  end;
end;

procedure TWorkListForm.btn_matAddClick(Sender: TObject);
begin
  if (v2.GetColumnByFieldName('CODE').EditValue <> null) or
    (v2.GetColumnByFieldName('CODE').EditValue <> Unassigned) then
  AddMaterial(false);
end;

procedure TWorkListForm.btn_matClick(Sender: TObject);
var
  F :TKServisMaterialForm;
begin
  F:=TKServisMaterialForm.CreateModal(Self,true);
  SetSkin(F);
  if F.ShowModal=mrOk then
  begin
    if F.ifInsert then ds_smat.CloseOpen(true);
    com_dm.ds_ServisMaterial.CloseOpen(false);
    cbb_mat.EditValue:= F.v1.GetColumnByFieldName('Code').EditValue;
  end;
end;

procedure TWorkListForm.btn_matDeleteClick(Sender: TObject);
begin
  // SERVISMATERIAL
  if v3.GetColumnByFieldName('Code').EditValue = null then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить материал?') then
    v3.DataController.DataSet.Delete;
end;

procedure TWorkListForm.btn_matEditClick(Sender: TObject);
begin
  AddMaterial(true);
end;

procedure TWorkListForm.btn_nAddClick(Sender: TObject);
begin
  AddAttire(false);
end;

procedure TWorkListForm.btn_nDeleteClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('Code').EditValue = null then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить наряд ?') then
    v1.DataController.DataSet.Delete;
end;

procedure TWorkListForm.btn_nEditClick(Sender: TObject);
begin
  AddAttire(true);
end;

procedure TWorkListForm.btn_postClick(Sender: TObject);
begin
  if CheckParam then
  NewMaterial;
end;

procedure TWorkListForm.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

procedure TWorkListForm.btn_wAddClick(Sender: TObject);
begin
   if not CheckWorkParam then Exit;
   if not CheckPeriodWork(gFN(v1,'DATA'),dt1.EditingValue) then
    raise EMyException.Create('Дата работы не может выходить за пределы периода наряда!');
    with ds_WorkSpecList do
    begin
      Append;
      ds_WorkSpecList.FN('DATA').AsVariant := dt1.EditValue;
      FN('KONTRAGENT').AsVariant := v1.GetColumnByFieldName('KONTRAGENT')
        .EditValue;
      FN('HOUSE').AsVariant := v1.GetColumnByFieldName('HOUSE').EditValue;
      FN('SERVISWORK').AsVariant := cbb_work.EditValue;
      // FN('ED').AsVariant:=F.txt_ed.EditValue;
      FN('quantity').AsVariant := ed_col.EditValue;
      FN('PRICE').AsVariant := ced_wprice.EditValue;
      FN('NOTE').AsVariant := m_wnote.EditValue;
      FN('WORKLIST').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
      Post;
    end;
end;

procedure TWorkListForm.btn_wClick(Sender: TObject);
var
  F : TKServisWorkForm;
begin
  F:=TKServisWorkForm.CreateModal(Self,true);
  F.FormStyle := fsStayOnTop;
  F.WindowState:=wsNormal;
  F.Position:=poMainFormCenter;
  F.Visible:=False;
  SetSkin(F);
  F.grp:=GetGRP;
  if F.ShowModal=mrOk then begin
    if F.ifInsert then ds_serviswork.CloseOpen(true);
    cbb_work.EditValue:=F.v2.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

procedure TWorkListForm.btn_wDelClick(Sender: TObject);
begin
  if not ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then
  if cmMessageBox
        ('Вы действительно хотите удалить запись из списка работ?') then
  begin
    ds_WorkSpecList.Delete;
    btn_del_m.Enabled:=False;
    btn_wDel.Enabled:=False;
  end;
end;

procedure TWorkListForm.btn_wEditClick(Sender: TObject);
begin
  if (v2.GetColumnByFieldName('CODE').EditValue=null) or
  (v2.GetColumnByFieldName('CODE').EditValue=Unassigned) then Exit;

  if CheckWorkParam then EditWork;
end;

procedure TWorkListForm.EditWork;
begin
  with ds_WorkSpecList do
  begin
    Edit;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('SERVISWORK').AsVariant:=cbb_work.EditValue;
    FN('Quantity').AsVariant:=ed_col.EditValue;
    FN('PRICE').AsVariant:=ced_wprice.EditValue;
    FN('NOTE').AsVariant:=m_wnote.EditValue;
    Post;
  end;
end;

function TWorkListForm.CheckWorkParam :Boolean;
begin
  Result:=True;
  {if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом.',true);
    Result:=False;
    Exit;
  end; }
  if dt1.EditValue=null then
  begin
    cmShowMessage('Не указана дата работы по наряду.',true);
    Result:=False;
    Exit;
  end;
  if cbb_work.EditValue=null then
  begin
    cmShowMessage('Не указана работа по наряду.',true);
    Result:=False;
    Exit;
  end;

end;

procedure TWorkListForm.cbb_filtrPropertiesEditValueChanged(Sender: TObject);
begin
  OpenServisWork;
end;

procedure TWorkListForm.cbb_matPropertiesChange(Sender: TObject);
var
  aItemListOr : TcxFilterCriteriaItemList;
  sText : String;
  i : Integer;
  combo : TcxLookupComboBox;
begin
  inherited;
  if not (Sender is TcxLookupComboBox) then
    exit;
  combo := TcxLookupComboBox(Sender);
  with combo.Properties.Grid.DataController do begin
    Filter.Active := False;
    Filter.Options := [fcoCaseInsensitive];
    Filter.Root.Clear;
    sText := combo.Text;
    if sText <> '' then begin
      sText := '%' + sText + '%';
      aItemListOr := Filter.Root.AddItemList( fboOr );
      for i:=0 to ItemCount-1 do begin
        aItemListOr.AddItem(GetItem(i), foLike, sText, sText);
      end;
    end;
    Filter.Active := True;
    combo.Properties.DropDownRows := 8;
  end;
end;

procedure TWorkListForm.cbb_matPropertiesEditValueChanged(Sender: TObject);
begin
  GetPrice;
end;

procedure TWorkListForm.cbb_workPropertiesChange(Sender: TObject);
var
  aItemListOr : TcxFilterCriteriaItemList;
  sText : String;
  i : Integer;
  combo : TcxLookupComboBox;
begin
  inherited;
  if not (Sender is TcxLookupComboBox) then
    exit;
  combo := TcxLookupComboBox(Sender);
  with combo.Properties.Grid.DataController do begin
    Filter.Active := False;
    Filter.Options := [fcoCaseInsensitive];
    Filter.Root.Clear;
    sText := cbb_work.Text;
    if sText <> '' then begin
      sText := '%' + sText + '%';
      aItemListOr := Filter.Root.AddItemList( fboOr );
      for i:=0 to ItemCount-1 do begin
        aItemListOr.AddItem(GetItem(i), foLike, sText, sText);
      end;
    end;
    Filter.Active := True;
    combo.Properties.DropDownRows := 8;
  end;
end;

procedure TWorkListForm.cbb_workPropertiesEditValueChanged(Sender: TObject);
begin
  GetEd(cbb_work.EditValue);
end;

function TWorkListForm.GetEd(Cod :Variant) :string;
var
  ED :Variant;
  Q :TFIBQuery;
begin
  ED:=null;
  try
    Q:=GetQueryForUse(cmDB.RT,'Select ED,PRICE from SERVISWORK where Code=:Cod');
    Q.ParamByName('Cod').AsVariant:=Cod;
    Q.ExecQuery;
    ED:=Q.FN('ED').AsVariant;
    txt_wed.EditValue:=Q.FN('ED').AsVariant;
    ced_wprice.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    Result:=VarToStr(ED);
    FreeQueryForUse(Q);
  end;
end;

function TWorkListForm.CheckParam: boolean;
begin
  Result:=True;
  if (cbb_mat.EditValue=null) or (cbb_mat.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите материал.',true);
    Result:=False;
  end;
  if (edsp_kol.EditValue=null) or (edsp_kol.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите кол-во.',true);
    Result:=False;
  end;
  if (cedt_price.EditValue=null) or (cedt_price.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите цену.',true);
    Result:=False;
  end;
end;
//d1- дата наряда d2- дата работы
function TWorkListForm.CheckPeriodWork(d1, d2: Variant): boolean;
var
  nextD :TDateTime;
  M,nextM :integer;
  Y: Word;
begin
  Result:=True;
  Y:=YearOf(VarToDateTime(d1));
  M:=MonthOf(SysUtils.IncMonth(VarToDateTime(d1)));
  nextD:=StrToDateTime('25.'+IntToStr(M)+'.'+VarToStr(Y));
  if (d2>nextD) or (d2<d1) then Result:=false;
end;

procedure TWorkListForm.GetPrice;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select ED, PRICE from SERVISMATERIAL where Code=:cod');
  try
    Q.ParamByName('Cod').AsVariant:=cbb_mat.EditValue;
    Q.ExecQuery;
    txt_ed.EditValue:=Q.FN('ED').AsVariant;
    cedt_price.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
  btn_del_m.Enabled:=False;
end;

procedure TWorkListForm.ds_worklistBeforeEdit(DataSet: TDataSet);
begin
 // if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then Abort;
end;

procedure TWorkListForm.ds_worklistBeforePost(DataSet: TDataSet);
begin
  if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then Abort;
end;

procedure TWorkListForm.ds_WorkSpecListAfterOpen(DataSet: TDataSet);
begin
  GetJurnalRec(v2.GetColumnByFieldName('JWork').EditValue);
  btn_del_m.Enabled:=False;
  btn_wDel.Enabled:=False;
end;

procedure TWorkListForm.ds_WorkSpecListBeforeEdit(DataSet: TDataSet);
begin
//  if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then Abort;
end;

procedure TWorkListForm.ds_WorkSpecListBeforeInsert(DataSet: TDataSet);
begin
 // if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then begin
 //   Abort;
//  end;
end;

procedure TWorkListForm.ds_WorkSpecListBeforePost(DataSet: TDataSet);
begin
 if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then begin
   Abort;
 end;
end;

procedure TWorkListForm.ds_WorkSpecMaterialBeforeEdit(DataSet: TDataSet);
begin
  //if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then Abort;
end;

procedure TWorkListForm.ds_WorkSpecMaterialBeforePost(DataSet: TDataSet);
begin
  if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then begin
    Abort;
  end;
end;

procedure TWorkListForm.ds_WorkSpecMaterialNewRecord(DataSet: TDataSet);
begin
 // if ifOutMontAttire(ds_worklist.FN('DATA').AsVariant) then begin
 //   Abort;
 // end;
end;

procedure TWorkListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TWorkListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  com_dm.ds_ServisMaterial.Open;
  OpenDS;
  if ActiveUserType = 0 then btn_auto.Visible:=ivNever else
                             btn_auto.Visible:=ivAlways;
  SetRight;
end;

procedure TWorkListForm.GetWorkRec(isLink: Variant);
  procedure SetImage(SomeValue: Variant; SomeDescription: string;
    SomeImageIndex: Integer);
  var
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
  begin
    Items := TcxImageComboBoxProperties(clv4WORKSPECLIST.Properties).Items;
    Items.BeginUpdate;
    try
      Items.clear;
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := SomeValue;
      Item.Description := SomeDescription;
      Item.ImageIndex := SomeImageIndex;
    finally
      Items.EndUpdate;
    end;
  end;

begin
  // btn_linkJl.Enabled:=False;
  // if (isLink <> null) and (isLink <> Unassigned) then
  with ds_WorkSpecList do
  begin
    if Locate('jwork', v4.GetColumnByFieldName('CODE').EditValue, []) then
    begin
      // SetImage(v4.GetColumnByFieldName('CODE').EditValue,'Связка',8);
      btn_link.Glyph := nil;
      il1.GetBitmap(9, btn_link.Glyph);
      TextLink;
    end
    else
    begin
      // textLink(true);
      // SetImage(null,'',-1);
      btn_link.Glyph := nil;
      il1.GetBitmap(10, btn_link.Glyph);
    end;
  end;
end;

procedure TWorkListForm.grp_2Button0Click(Sender: TObject);
begin
  //очищаем материал
  cbb_mat.EditValue:=null;
  edsp_kol.EditValue:=null;
  cedt_price.EditValue:=0;
  m_note.EditValue:=null;
end;

procedure TWorkListForm.grp_workAddButton0Click(Sender: TObject);
begin
  //очищаем работу
  dt1.EditValue:=null;
  cbb_work.EditValue:=null;
  ed_col.EditValue:=0;
  ced_wprice.EditValue:=null;
  m_wnote.EditValue:=null;
end;

procedure TWorkListForm.GetJurnalRec(isLink: Variant);
  procedure SetImage(SomeValue: Variant; SomeDescription: string;
    SomeImageIndex: Integer);
  var
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
  begin
    Items := TcxImageComboBoxProperties(clv4WORKSPECLIST.Properties).Items;
    Items.BeginUpdate;
    try
      Items.clear;
      Item := Items.Add as TcxImageComboBoxItem;
      Item.Value := SomeValue;
      Item.Description := SomeDescription;
      Item.ImageIndex := SomeImageIndex;
    finally
      Items.EndUpdate;
    end;
  end;

begin
  if (v1.GetColumnByFieldName('HOUSE').EditValue = null) or
    (v1.GetColumnByFieldName('HOUSE').EditValue = Unassigned) then
    Exit;
  with ds_Jwork do
  begin
    Close;
    MainWhereClause :=
      'JW.KONTRAGENT=:kontr and JW.HOUSE=:house --and JW.FACTDATE is null';
    ParamByName('kontr').AsVariant := v1.GetColumnByFieldName('KONTRAGENT')
      .EditValue;
    ParamByName('HOUSE').AsVariant := v1.GetColumnByFieldName('HOUSE')
      .EditValue;
    Open;
    Filtered := false;
    Filter := 'WORKSPECLIST=null';
    if (isLink <> null) and (isLink <> Unassigned) then
    begin
      btn_linkJl.Visible := ivNever;
      if Locate('WORKSPECLIST', v2.GetColumnByFieldName('CODE').EditValue, [])
        then
      begin
        // фильтр на найденую запись, нефиг показывать другие записи
        Filter := 'WORKSPECLIST=' + v2.GetColumnByFieldName('CODE').EditValue;
        Filtered := true;

        SetImage(v2.GetColumnByFieldName('CODE').EditValue, 'Связка', 8);
        isCanLink(false);
      end
      else
      begin
        SetImage(null, '', -1);
        Filter := 'WORKSPECLIST=null';
        Filtered := true;
      end;
    end
    else
    begin
      btn_linkJl.Visible := ivAlways;
      Filter := 'WORKSPECLIST=null';
      Filtered := true;
      isCanLink(true);
      SetImage(null, '', -1);
      btn_link.Glyph := nil;
    end;
    Filtered := true;
  end;
end;

function TWorkListForm.ifOutMontAttire(docDate: Variant): Boolean;
var
  cur,doc :Integer;
  curMonth, docMonth, CritDate, tmpDate: Variant;
  s: string;
begin
  Result:=False;
  cur:=MonthOf(Date);
  //25-е число предыдущего месяца
  tmpDate:=SysUtils.IncMonth(Date,-1);
  CritDate:='25.'+VarToStr(MonthOf(tmpDate))+'.'+VarToStr(YearOf(tmpDate));
  doc:=MonthOf(docDate);
  curMonth:=LongMonthNames[cur];
  docMonth:=LongMonthNames[doc];
  if VarToDateTime(docDate)<VarToDateTime(CritDate) then begin
    s:='Вы редактируете наряд за '+docMonth+' месяц.'+#10#13+
       '  хотите продолжить?';
    if Application.MessageBox(PChar(S), 'Внимание', MB_YESNO + MB_ICONWARNING
      + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      Result:=False;
    end else
    Result:=True;
  end;
end;

procedure TWorkListForm.isCanLink(link: Boolean);
begin
  if link then
  begin
    btn_link.Glyph := nil;
    il1.GetBitmap(10, btn_link.Glyph);
    canLink := true;
    btn_link.Hint := 'Связать с журналом.';
    JtextLink(true);
  end
  else
  begin
    btn_link.Glyph := nil;
    il1.GetBitmap(9, btn_link.Glyph);
    canLink := false;
    btn_link.Hint := 'Удалить связь с журналом.';
    JtextLink;
  end;
end;

procedure TWorkListForm.OpenDS;
begin
  if ActiveUserType = 0 then
  begin
    ds_kontr.CloseOpen(false);
    DSOptoins(ds_worklist, '', 'WORKLIST', 'CODE', 'WORKLIST_GEN');
  end
  else
  begin
    with ds_kontr do
    begin
      Close;
      MainWhereClause := 'CODE=:KONTR';
      ParamByName('KONTR').AsVariant := ActiveKontragent;
      Open;
    end;
    DSOptoins(ds_worklist, '', 'WORKLIST', 'CODE', 'WORKLIST_GEN', false);
    with ds_worklist do
    begin
      Close;
      MainWhereClause := 'wl.KONTRAGENT=:KONTR';
      ParamByName('KONTR').AsVariant := ActiveKontragent;
      Open;
    end;
  end;
  DSOptoins(ds_WorkSpecList, '', 'WORKSPECLIST', 'CODE', 'WORKSPECLIST_GEN');
  DSOptoins(ds_WorkSpecMaterial, '', 'WORKSPECMATERIAL', 'CODE',
    'WORKSPECMATERIAL_GEN');
  DSOptoins(ds_Jwork, '', 'JWORK', 'CODE', 'JWORK_GEN', false);
  ds_smat.CloseOpen(false);
  OpenServisWork;
  ConfigureCombo(cbb_work);
  ConfigureCombo(cbb_mat);
end;

procedure TWorkListForm.PrintRep;
var
  fdb: TfrxFIBDatabase;
  dirName,dirCODE :Variant;
begin
  fr1.LoadFromFile('rep\attire.fr3');
  fr1.Variables['varCode'] := v1.GetColumnByFieldName('Code').EditValue;
  fr1.Variables['varManager'] := #39+gFN(v1,'FIO')+#39;
  GetDir(dirCODE,dirName,gFN(v1,'KONTRAGENT'));
  fr1.Variables['varDir'] := #39+dirName+#39;
  fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  fr1.ShowReport();

  {fr1.PrepareReport;
  fr1.PrintOptions.ShowDialog := False;
  fr1.Print;}
end;



initialization

RegisterClass(TWorkListForm);

end.



