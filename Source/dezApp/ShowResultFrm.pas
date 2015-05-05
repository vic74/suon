unit ShowResultFrm;

interface

uses
  dxRibbonForm, FIBQuery, pFIBCacheQueries, frxSaveFRX,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutControl, cxClasses, dxRibbon, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPropertiesStore, dxLayoutLookAndFeels, FIBDatabase, pFIBDatabase, AppUtils,
  cmDBUnit, FIBDataSet, pFIBDataSet, dxmdaset, cxDBLookupComboBox,
  DateUtils, pFIBProps,
  cxDBExtLookupComboBox, cxSpinEdit, cxDropDownEdit, frxClass, frxDBSet,
  frxExportRTF, frxExportXLS, frxExportPDF, frxFIBComponents, Menus, StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxSplitter, cxLabel, ImgList, ExtCtrls, dxSkinsdxBarPainter,
  dxBar, cxBarEditItem, cxGridCustomPopupMenu, cxGridPopupMenu, cxCheckBox,
  cxImageComboBox, BaseForm, cxMemo, dxRibbonSkins, dxLayoutContainer,
  dxLayoutControlAdapters, dxScreenTip, dxSkinDevExpressStyle;

type
  TShowResultForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    ds_result: TpFIBDataSet;
    src_result: TDataSource;
    ds_showhouse: TpFIBDataSet;
    src_showHouse: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_showstruct: TpFIBDataSet;
    src_showStruct: TDataSource;
    mt_Atype: TdxMemData;
    src_Atype: TDataSource;
    mt_RType: TdxMemData;
    src_Rtype: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SHOWHOUSE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SHOWSTRUCT: TcxGridDBColumn;
    clv1STRUCTDEFECT: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv1ENTRANCE: TcxGridDBColumn;
    clv1FLOOR: TcxGridDBColumn;
    clv1FLAT: TcxGridDBColumn;
    clv1ATYPE: TcxGridDBColumn;
    clv1RTYPE: TcxGridDBColumn;
    v_house: TcxGridDBTableView;
    cl_houseCODE: TcxGridDBColumn;
    cl_houseNOMER: TcxGridDBColumn;
    cl_houseSTREETNAME: TcxGridDBColumn;
    ds_defect: TpFIBDataSet;
    src_defect: TDataSource;
    cl_houseEntrance_CNT: TcxGridDBColumn;
    cl_houseFloor_CNT: TcxGridDBColumn;
    fr: TfrxReport;
    frxpdfxprt1: TfrxPDFExport;
    frxlsxprt1: TfrxXLSExport;
    frxrtfxprt1: TfrxRTFExport;
    btn1: TcxButton;
    Itmlcntr1Item1: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    lcntr2: TdxLayoutControl;
    spl1: TcxSplitter;
    cbb_akt: TcxLookupComboBox;
    Itm_akt: TdxLayoutItem;
    cbb_struct: TcxLookupComboBox;
    Itm_struct: TdxLayoutItem;
    cbb_defect: TcxLookupComboBox;
    Itm_defect: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    Itm_house: TdxLayoutItem;
    cbb_mlist: TcxLookupComboBox;
    Itm_mlist: TdxLayoutItem;
    spn_quant: TcxSpinEdit;
    Itm_quantity: TdxLayoutItem;
    txtdt_note: TcxTextEdit;
    Itm_note: TdxLayoutItem;
    btn_add: TcxButton;
    Itm_btnAdd: TdxLayoutItem;
    ds_osm: TpFIBDataSet;
    ds_konstr: TpFIBDataSet;
    ds_def: TpFIBDataSet;
    ds_dom: TpFIBDataSet;
    ds_mat: TpFIBDataSet;
    src_osm: TDataSource;
    src_konstr: TDataSource;
    src_def: TDataSource;
    src_dom: TDataSource;
    src_mat: TDataSource;
    btn_mlistAdd: TcxButton;
    Itm_mlistAdd: TdxLayoutItem;
    grp_mlist: TdxLayoutGroup;
    spn_Entrance: TcxSpinEdit;
    Itm_Entrance: TdxLayoutItem;
    spn_Floor: TcxSpinEdit;
    Itm_Floor: TdxLayoutItem;
    cbb_Flat: TcxComboBox;
    Itml_Flat: TdxLayoutItem;
    clv1StreetName: TcxGridDBColumn;
    cbb_AType: TcxLookupComboBox;
    Itm_AType: TdxLayoutItem;
    cbb_RType: TcxLookupComboBox;
    Itm_RType: TdxLayoutItem;
    cbb_getAkt: TcxLookupComboBox;
    Itm_getAkt: TdxLayoutItem;
    lb1: TcxLabel;
    Itm_lb: TdxLayoutItem;
    grp_akt: TdxLayoutGroup;
    btn_rep: TcxButton;
    Itm_rep: TdxLayoutItem;
    clv1Nomer: TcxGridDBColumn;
    clv1MlNmae: TcxGridDBColumn;
    txtdt_mat: TcxTextEdit;
    Itm_mat: TdxLayoutItem;
    clv1MNote: TcxGridDBColumn;
    clv1V: TcxGridDBColumn;
    btn_osm: TcxButton;
    Itm_osm: TdxLayoutItem;
    btn_rep2: TcxButton;
    Itm_rep2: TdxLayoutItem;
    il1: TcxImageList;
    clv1Mlist: TcxGridDBColumn;
    clv1structCode: TcxGridDBColumn;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_rep1: TdxBarButton;
    btn_frep2: TdxBarButton;
    btn_osmotr: TdxBarButton;
    lb_osmotr: TcxBarEditItem;
    btn_copy: TdxBarButton;
    doc_br1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    stl1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    tip1: TdxBarScreenTipRepository;
    tip1rep1: TdxBarScreenTip;
    tip1_rep2: TdxBarScreenTip;
    tip1_osmotr: TdxBarScreenTip;
    tip1_info: TdxBarScreenTip;
    tip1_copy: TdxBarScreenTip;
    clv1COPYFLAG: TcxGridDBColumn;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    grplcntr1Group1: TdxLayoutGroup;
    brm1Bar2: TdxBar;
    btn_selectAll: TdxBarButton;
    btn_unselect: TdxBarButton;
    btn_del: TdxBarButton;
    tip1_select: TdxBarScreenTip;
    tip_unselect: TdxBarScreenTip;
    tip_delete: TdxBarScreenTip;
    btn_jurnal: TdxBarButton;
    tip_jurnal: TdxBarScreenTip;
    clv1JWork: TcxGridDBColumn;
    clv1JWorkType: TcxGridDBColumn;
    clv1Street: TcxGridDBColumn;
    ds_JWORK: TpFIBDataSet;
    tip_jdelete: TdxBarScreenTip;
    btn_jdelete: TdxBarButton;
    btn_OutHouse: TdxBarButton;
    tip_printOutHouse: TdxBarScreenTip;
    clv1LOCK: TcxGridDBColumn;
    btn_Jauto: TdxBarButton;
    tip_JAuto: TdxBarScreenTip;
    gr_note: TdxLayoutGroup;
    m_PONOTE: TcxMemo;
    itm_PONOTE: TdxLayoutItem;
    btn_zam: TcxButton;
    itm_zam: TdxLayoutItem;
    btn_corr: TcxButton;
    itm_corr: TdxLayoutItem;
    grlcntr1Group1: TdxLayoutGroup;
    clv1PONOTE: TcxGridDBColumn;
    clv1POSTATE: TcxGridDBColumn;
    md_kr: TdxMemData;
    fld__krKR: TStringField;
    fld__krTO: TStringField;
    fld__krV: TStringField;
    fld__krTR: TStringField;
    frds_1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clv1STRUCTDEFECTPropertiesInitPopup(Sender: TObject);
    procedure cbb_aktPropertiesCloseUp(Sender: TObject);
    procedure cbb_housePropertiesCloseUp(Sender: TObject);
    procedure cbb_mlistPropertiesCloseUp(Sender: TObject);
    procedure cbb_defectPropertiesInitPopup(Sender: TObject);
    procedure cbb_housePropertiesInitPopup(Sender: TObject);
    procedure cbb_structPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_aktPropertiesEditValueChanged(Sender: TObject);
    procedure btn_mlistAddClick(Sender: TObject);
    procedure cbb_FlatPropertiesCloseUp(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure cbb_ATypePropertiesCloseUp(Sender: TObject);
    procedure cbb_RTypePropertiesCloseUp(Sender: TObject);
    procedure ds_domAfterClose(DataSet: TDataSet);
    procedure btn_repClick(Sender: TObject);
    procedure spn_EntranceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spn_FloorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spn_quantKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtdt_noteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_osmClick(Sender: TObject);
    procedure frxrtfxprt1BeginExport(Sender: TObject);
    procedure frxlsxprt1BeginExport(Sender: TObject);
    procedure frxpdfxprt1BeginExport(Sender: TObject);
    procedure btn_rep2Click(Sender: TObject);
    procedure cbb_mlistPropertiesChange(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_editClick(Sender: TObject);
    procedure cbb_structKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_defectKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_houseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtdt_matKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_ATypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_RTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_FlatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_mlistKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_FlatPropertiesInitPopup(Sender: TObject);
    procedure btn_rep1Click(Sender: TObject);
    procedure btn_frep2Click(Sender: TObject);
    procedure btn_osmotrClick(Sender: TObject);
    procedure btn_copyClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure clv1COPYFLAGPropertiesEditValueChanged(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure btn_selectAllClick(Sender: TObject);
    procedure btn_unselectClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_jurnalClick(Sender: TObject);
    procedure btn_jdeleteClick(Sender: TObject);
    procedure ds_resultAfterOpen(DataSet: TDataSet);
    procedure v1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure ds_resultAfterInsert(DataSet: TDataSet);
    procedure ds_resultBeforeDelete(DataSet: TDataSet);
    procedure v1DataControllerFilterChanged(Sender: TObject);
    procedure btn_OutHouseClick(Sender: TObject);
    procedure ds_resultBeforeInsert(DataSet: TDataSet);
    procedure ds_resultBeforePost(DataSet: TDataSet);
    procedure ds_resultBeforeEdit(DataSet: TDataSet);
    procedure clv1COPYFLAGCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_JautoClick(Sender: TObject);
    procedure btn_zamClick(Sender: TObject);
    procedure btn_corrClick(Sender: TObject);
    procedure cbb_defectPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    Akt, SrvDog, ATYPE: Integer;
    AktClose :boolean;
    ASTYPE, CurKontrName: string;
    CurKontr,SYEAR,STYPE,SHOWPRIKAZPO,GRAPHLIST: Variant;
    procedure OpenDS;
    procedure CreateAType;
    procedure CreateRType;
    function GetHoseStr(dog: Integer): string;
    procedure SetFlorEntrance;
    procedure SetFlatList;
    function CheckData: Boolean;
    function CheckParam: Boolean;
    procedure EditCurRec;
    procedure OpenHouse;
    procedure OpenDefect;
    procedure AddRec(isadd: Boolean = true);
    procedure FillFlat;
    function GetAkt(capt: string): Variant;
    procedure CopyNewAkt(code: Variant);
    procedure SelectRows(sel: Boolean);
    procedure UnCheckFlag;
    procedure CheckFlag;
    procedure DeleteChecked;
    procedure SetlinkJWork;
    function GetPlaceStr: string;
    procedure EditLinkJWork;
    function UpdateOrInsert(ins: Boolean; code, JWORKTYPE, REGDATE, KONTRAGENT,
      HOUSE, DESC, PLACE, PLANDATE, SHOWRESULT, STREET: Variant): Variant;
    procedure CalcAkt;
    procedure PrintOutAkt;
    function Lockhouse(house :Variant) :Boolean;
    procedure AutoJurnal;
    function GetNoStruct(house :variant) :WideString;
    procedure SetNote;
    procedure SetCENote;
    procedure SetPONote;
    procedure SetAllLink;
    procedure GetTypeTR;
    procedure ReopenMat;
  public
    { Public declarations }
  end;

var
  ShowResultForm: TShowResultForm;

implementation

uses AddMatFrm, ShHouseGetFrm, cmMessageBoxFrm, cmUtils, LoadingSplash,
  AkttoJurnalFrm, dezCommon, PrintAktFrm, dezInfo;
{$R *.dfm}

procedure TShowResultForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShowResultForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  CreateAType;
  CreateRType;
  lb_osmotr.Caption := 'Укажите акт осмотра перед началом работы!';
  lcntr2.Enabled := False;
  OpenDS;
  m_PONOTE.Properties.ReadOnly:=ActiveUserType=1;
  btn_zam.Enabled:=ActiveUserType=0;
end;

procedure TShowResultForm.frxlsxprt1BeginExport(Sender: TObject);
begin
  frxlsxprt1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'акт осмотра.xls';
end;

procedure TShowResultForm.frxpdfxprt1BeginExport(Sender: TObject);
begin
  frxpdfxprt1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'акт осмотра.pdf';
end;

procedure TShowResultForm.frxrtfxprt1BeginExport(Sender: TObject);
begin
  frxrtfxprt1.FileName := ExtractFilePath(Application.ExeName)
    + 'tem_rep/' + 'акт осмотра.rtf';
end;

procedure TShowResultForm.OpenDS;
begin
  ds_showhouse.CloseOpen(true);
  ds_house.CloseOpen(true);
  ds_showstruct.CloseOpen(true);
  ds_defect.CloseOpen(true);
  // SHOWRESULT
  DSOptoins(ds_result, '', 'SHOWRESULT', 'CODE', 'SHOWRESULT_GEN', False);
  //ds_result.MainWhereClause := 'SHOWHOUSE=0';
  //ds_result.Open;
  //
  ds_osm.CloseOpen(true);
  ds_konstr.CloseOpen(true);
  ds_mat.CloseOpen(true);
end;

procedure TShowResultForm.CreateAType;
  procedure AddType(ACode: Integer; AName: string);
  begin
    with mt_Atype do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  CreateField(mt_Atype, 'Code', ftInteger);
  CreateField(mt_Atype, 'Name', ftString, 128);
  mt_Atype.Open;
  AddType(0, 'не указан');
  AddType(1, 'уличный фасад');
  AddType(2, 'дворовой фасад');
  AddType(3, 'торец здания');
end;

procedure TShowResultForm.CreateRType;
  procedure AddType(ACode: Integer; AName: string);
  begin
    with mt_RType do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  CreateField(mt_RType, 'Code', ftInteger);
  CreateField(mt_RType, 'Name', ftString, 128);
  mt_RType.Open;
  AddType(0, 'техническое обслуживание');
  AddType(1, 'текущий ремонт');
  AddType(2, 'капитальный ремонт');
end;

procedure TShowResultForm.ds_domAfterClose(DataSet: TDataSet);
begin
  spn_Entrance.EditValue := 0;
  spn_Floor.EditValue := 0;
  cbb_Flat.Properties.Items.Clear;
end;

procedure TShowResultForm.ds_resultAfterInsert(DataSet: TDataSet);
begin
  CalcAkt;
end;

procedure TShowResultForm.ds_resultAfterOpen(DataSet: TDataSet);
begin
  CalcAkt;
end;

procedure TShowResultForm.ds_resultBeforeDelete(DataSet: TDataSet);
begin
  if Lockhouse(cbb_house.EditValue) then
  begin
    Abort;
    Exit;
  end;
  //проверка на то что подрядчики не могут удалять запись КР
  if (ActiveUserType=1) and (ds_result.FN('RTYPE').AsVariant=2) then
  begin
    cmShowMessage(
          'Подрядные организации не могут удалять записи по капремонту!',true);
    Abort;
  end;
end;

procedure TShowResultForm.ds_resultBeforeEdit(DataSet: TDataSet);
begin
  if Lockhouse(cbb_house.EditValue) then
  Abort;
end;

procedure TShowResultForm.ds_resultBeforeInsert(DataSet: TDataSet);
begin
  if Lockhouse(cbb_house.EditValue) then
  begin
    Abort;
    Exit;
  end;
end;

procedure TShowResultForm.ds_resultBeforePost(DataSet: TDataSet);
begin
  if Lockhouse(cbb_house.EditValue) then
  Abort;
end;

procedure TShowResultForm.CalcAkt;
var
  Q :TFIBQuery;
  v :Variant;
begin
  Q:=GetQueryForUse(cmDB.RT,
  'select count(distinct(house))akt from showresult where showhouse=:akt'
  );
  Q.ParamByName('akt').AsVariant:=Akt;
  Q.ExecQuery;
  v:='Кол-во актов: '+VarToStr(Q.FN('akt').AsVariant);
  v1.DataController.Summary.FooterSummaryValues[0]:= v;
  FreeQueryForUse(Q);
end;

function TShowResultForm.CheckData: Boolean;
var
  Q: TFIBQuery;
  sql: string;
  HOUSE: Integer;
  flat: string;
begin
  if v1.GetColumnByFieldName('SHOWHOUSE').EditValue = null then
  begin
    Result := False;
    Exit;
  end;
  // проверка дома
  sql := 'select HOUSE from SRVDOGHOUSE where SRVDOG=:dog';
  Q := GetQueryForUse(cmDB.RT, sql);
  Q.ParamByName('dog').AsInteger := v1.GetColumnByFieldName('SHOWHOUSE')
    .EditValue;
  Q.ExecQuery;
  if Q.FN('HOUSE').AsVariant = null then
  begin
    ShowMessage('Номер дома не найден в списке договора!');
    Result := False;
    Exit;
  end;
  // проверка квартиры
  if v_house.GetColumnByFieldName('Code').EditValue = null then
  begin
    Result := False;
    Exit;
  end;
  HOUSE := v_house.GetColumnByFieldName('Code').EditValue;
  flat := v1.GetColumnByFieldName('flat').EditValue;
  Q := GetQueryForUse(cmDB.RT,
    'select flat from addr where house=:house' + ' and flat=:flat');
  Q.ParamByName('flat').AsString := flat;
  Q.ParamByName('house').AsInteger := HOUSE;
  Q.ExecQuery;
  if Q.FN('flat').AsVariant = null then
  begin
    ShowMessage('Номер квартиры не соответствует дому!!');
    Result := False;
    Exit;
  end;
end;

{ -------------------------------------------------------------------------------
  GetHoseStr|Получаем дома по договору
  ------------------------------------------------------------------------------- }
function TShowResultForm.GetHoseStr(dog: Integer): string;
var
  Q: TFIBQuery;
  sql: string;
begin
  { Result:='';
    Sql:='select LIST(HOUSE,'#39','#39') HouseList from SRVDOGHOUSE'+
    ' where SRVDOG = :dog';
    Q:=GetQueryForUse(cmDB.RT,sql);
    Q.ParamByName('dog').AsInteger:=dog;
    Q.ExecQuery;
    Result:=Q.FN('HouseList').AsWideString;
    FreeQueryForUse(Q); }
end;

function  TShowResultForm.GetNoStruct(house :variant) :WideString;
var
  Q :TFIBQuery;
  sql: string;
begin
  Result:='';
  sql:='SELECT LIST(structdefect, '#39','#39') sd FROM HOUSESTRUCT' + #13#10 +
      'where house=:hs';
    Q:=GetQueryForUse(cmDB.RT,sql);
    Q.ParamByName('hs').AsVariant:=house;
    Q.ExecQuery;
  if Q.FN('sd').AsVariant<>null then
  Result:=','+Q.FN('sd').AsWideString+',';
end;

procedure TShowResultForm.N1Click(Sender: TObject);
begin
  // SelectRows(True);
  CheckFlag;
end;

procedure TShowResultForm.N2Click(Sender: TObject);
begin
  UnCheckFlag;
end;

procedure TShowResultForm.N4Click(Sender: TObject);
begin
  if cmMessageBox('Вы действительно хотите удалить отмеченные записи?') then
    DeleteChecked;
end;

procedure TShowResultForm.DeleteChecked;
var
  i, AIndex: Integer;
  code: Variant;
begin
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  ds_result.DisableControls;
  for i := 0 to v1.ViewData.RowCount - 1 do
  begin
    if v1.ViewData.Rows[i].Values[clv1COPYFLAG.Index] = 1 then
    begin
      code := v1.ViewData.Rows[i].Values[clv1CODE.Index];
      with ds_result do
      begin
        if Locate('CODE', code, []) then
        begin
          if FN('Lock').AsVariant<>1 then  //проверяем что не закрыто
          Delete;
        end;
      end;
    end;
  end;
  ds_result.EnableControls;
  v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TShowResultForm.UnCheckFlag;
var
  i: Integer;
begin
  i := v1.Controller.FocusedRowIndex; // запоминаем позицию
  try
    SplashVisibility(true);
    with ds_result do
    begin
      DisableControls;
      while not Eof do
      begin
        if FN('COPYFLAG').AsVariant = 1 then
        begin
          Edit;
          FN('COPYFLAG').AsVariant := 0;
          Post;
        end;
        Next;
      end;
      EnableControls;
    end;
  finally
    SplashVisibility(false);
  end;
  v1.Controller.FocusRecord(i, true); // возвращаемся на позицию
end;

procedure TShowResultForm.CheckFlag;
var
  i, AIndex: Integer;
  code: Variant;
begin
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  try
    SplashVisibility(true);
    ds_result.DisableControls;
    for i := 0 to v1.ViewData.RowCount - 1 do
    begin
      code := v1.ViewData.Rows[i].Values[clv1CODE.Index];
      with ds_result do
      begin
        if Locate('CODE', code, []) then
        begin
          Edit;
          FN('COPYFLAG').AsVariant := 1;
          Post;
        end;
      end;
    end;
    ds_result.EnableControls;
  finally
      SplashVisibility(false);
  end;
  v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TShowResultForm.SelectRows(sel: Boolean);
var
  i: Integer;
begin
  for i := 0 to v1.ViewData.RowCount - 1 do
  begin
    // v1.BeginUpdate;
    // v1.ViewData.Rows[i].Values[clv1COPYFLAG.Index]:=1;
    // ShowMessage(VarToStr(v1.ViewData.Rows[i].Values[clv1CODE.Index]));
    v1.ViewData.Rows[i].Focused := true;
    v1.GetColumnByFieldName('COPYFLAG').EditValue := 1;
    // v1.DataController.Post;

    // v1.EndUpdate;
    { with ds_result do
      begin
      Edit;
      if sel then
      FN('COPYFLAG').AsVariant:=1 else
      FN('COPYFLAG').AsVariant:=0;
      Post;
      end; }
  end;
end;

{ -------------------------------------------------------------------------------
  |Events
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.SetFlorEntrance;
begin

end;

procedure TShowResultForm.SetFlatList;
var
  Q: TFIBQuery;
  HOUSE: Integer;
begin
  { if v_house.GetColumnByFieldName('Code').EditValue=null then Exit;
    house:=v_house.GetColumnByFieldName('Code').EditValue;
    Q:=GetQueryForUse(cmDB.RT,'select flat from addr where house=:house');
    Q.ParamByName('house').AsInteger:=house;
    Q.ExecQuery;
    clv1FLAT.EditValue:=null;
    with TcxComboBoxProperties(clv1FLAT.Properties).Items do
    begin
    Clear;
    while not Q.Eof do
    begin
    Add(Q.FN('flat').AsString);
    Q.Next;
    end;
    end;
    FreeQueryForUse(Q); }
end;

procedure TShowResultForm.clv1COPYFLAGCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[clv1LOCK.Index] = 1) then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clRed;
  end;
end;

procedure TShowResultForm.clv1COPYFLAGPropertiesEditValueChanged
  (Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TShowResultForm.clv1STRUCTDEFECTPropertiesInitPopup(Sender: TObject);
begin

end;

{ -------------------------------------------------------------------------------
  cbb_aktPropertiesCloseUp|Переход по контролам
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.cbb_aktPropertiesCloseUp(Sender: TObject);
begin
  FocusControl(cbb_struct);
end;

procedure TShowResultForm.cbb_defectKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_house);
end;

procedure TShowResultForm.cbb_houseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(spn_Entrance);
end;

procedure TShowResultForm.cbb_housePropertiesCloseUp(Sender: TObject);
begin
  FillFlat;
  FocusControl(spn_Entrance);
end;

function TShowResultForm.Lockhouse(house :Variant) :Boolean;
var
  Q :TFIBQuery;
begin
  Result:=False;
  Q:=GetQueryForUse(cmDB.RT,'select "LOCK" from SHOWHOUSEPLAN where HOUSE=:h'+
  ' and SHOWHOUSE=:sh');
  Q.ParamByName('h').AsVariant:=house;
  Q.ParamByName('sh').AsInteger := Akt;
  Q.ExecQuery;
  if Q.FN('LOCK').AsVariant=1 then
  begin
    cmShowMessage('Акт осмтора по данному адресу заблокирован!'+#10#13+
    'Обратитесь к менеджеру СЭ ООО ДЕЗ!',true);
    //cbb_house.EditValue:=null;
    Result:=True;
  end;
  FreeQueryForUse(Q);
end;

procedure TShowResultForm.FillFlat;
var
  Q: TFIBQuery;
begin
  if cbb_house.EditValue <> null then
  begin
    // список квартир дома
    Q := GetQueryForUse(cmDB.RT, 'select flat from addr where house=:house');
    Q.ParamByName('house').AsInteger := cbb_house.EditValue;
    Q.OrderClause := 'flat';
    Q.ExecQuery;
    with cbb_Flat do
    begin
      Clear;
      Properties.Items.Clear;
      Properties.Items.Add('не указана');
      while not Q.Eof do
      begin
        Properties.Items.Add(Q.FN('flat').AsString);
        Q.Next;
      end;
      ItemIndex := 0;
    end;
    FreeQueryForUse(Q);
  end;
end;

procedure TShowResultForm.cbb_mlistKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(spn_quant);
end;

procedure TShowResultForm.cbb_mlistPropertiesChange(Sender: TObject);
begin
  with TcxLookupComboBoxProperties(cbb_mlist.Properties).Grid.DataController do
  begin
    cbb_RType.EditValue := Values[FocusedRecordIndex, 5];
  end;
end;

procedure TShowResultForm.cbb_mlistPropertiesCloseUp(Sender: TObject);
begin
  FocusControl(spn_quant);
end;

procedure TShowResultForm.cbb_RTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(btn_add);
end;

procedure TShowResultForm.cbb_RTypePropertiesCloseUp(Sender: TObject);
begin
  FocusControl(btn_add);
end;

procedure TShowResultForm.spn_EntranceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(spn_Floor);
end;

procedure TShowResultForm.spn_FloorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_Flat);
end;

procedure TShowResultForm.cbb_FlatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_mlist);
end;

procedure TShowResultForm.cbb_FlatPropertiesCloseUp(Sender: TObject);
begin
  FocusControl(cbb_mlist);
end;

procedure TShowResultForm.cbb_FlatPropertiesInitPopup(Sender: TObject);
begin
  FillFlat;
end;

procedure TShowResultForm.spn_quantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(txtdt_mat);
end;

procedure TShowResultForm.txtdt_matKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(txtdt_note);
end;

procedure TShowResultForm.txtdt_noteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_AType);
end;

procedure TShowResultForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v1.Controller.IsFilterRowFocused then exit;
  EditCurRec;
end;

procedure TShowResultForm.v1DataControllerFilterChanged(Sender: TObject);
begin
 CalcAkt;
end;

procedure TShowResultForm.v1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  //CalcAkt;
end;

procedure TShowResultForm.SetNote;
var
  postate :integer;
begin
  //postate:=gFN(v1,'POSTATE');
  if ActiveUserType =1 then Exit;
  case v1.GetColumnByFieldName('POSTATE').EditValue of
    0 : gr_note.Expanded:=true;
    1 : begin
            if Application.MessageBox('Убрать замечание по данной записи?',
              'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
              = IDYES then
            begin
              v1.GetColumnByFieldName('POSTATE').EditValue := 0;
              gr_note.Expanded:=false;
            end;
        end;
    2 : begin
            if Application.MessageBox('Убрать замечание по данной записи?',
              'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
              = IDYES then
            begin
              v1.GetColumnByFieldName('POSTATE').EditValue := 0;
              gr_note.Expanded:=false;
            end;
        end;
  end;
end;

procedure TShowResultForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if gFN(v1,'CODE')=null then Exit;
  case key of
    VK_UP :EditCurRec;
    VK_DOWN :EditCurRec;
    VK_SPACE :   begin
                   //if gFN(v1,'COPYFLAG') = 0 then
                   //  v1.GetColumnByFieldName('COPYFLAG').EditValue := 1
                   //else
                   //  v1.GetColumnByFieldName('COPYFLAG').EditValue := 0;
                 end;
    VK_F3 : SetNote;
  end;
end;

procedure TShowResultForm.cbb_structKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_defect);
end;

procedure TShowResultForm.cbb_ATypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FocusControl(cbb_RType);
end;

procedure TShowResultForm.cbb_ATypePropertiesCloseUp(Sender: TObject);
begin
  FocusControl(cbb_RType);
end;
{ ------------------------------------------------------------------------------ }

{ -------------------------------------------------------------------------------
  cbb_defectPropertiesInitPopup|Условия переходов
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.cbb_defectPropertiesEditValueChanged(Sender: TObject);
begin
  ReopenMat;
end;

procedure TShowResultForm.cbb_defectPropertiesInitPopup(Sender: TObject);
begin
  OpenDefect;
end;

procedure TShowResultForm.OpenDefect;
begin
  if cbb_struct.EditValue = null then
  begin
    ds_def.Close;
    Exit;
  end;
  with ds_def do
  begin
    Close;
    MainWhereClause := 'SHOWSTRUCT=:struct';
    ParamByName('struct').AsVariant := cbb_struct.EditValue;
    OrderClause := 'NUM';
    Open;
  end;
end;

procedure TShowResultForm.cbb_housePropertiesInitPopup(Sender: TObject);
begin
  OpenHouse;
end;

procedure TShowResultForm.OpenHouse;
begin
  if Akt = null then
  begin
    ds_dom.Close;
    Exit;
  end;
  with ds_dom do
  begin
    Close;
    ParamByName('SHOWHOUSE').AsInteger := Akt;
    OrderClause := 'H.STREET,H.NOMER';
    Open;
  end;
end;
{ ------------------------------------------------------------------------------ }

procedure TShowResultForm.cbb_structPropertiesEditValueChanged(Sender: TObject);
begin
  ds_def.Close;
end;

procedure TShowResultForm.cbb_aktPropertiesEditValueChanged(Sender: TObject);
begin
  ds_dom.Close;
end;
{ ------------------------------------------------------------------------------ }

{ -------------------------------------------------------------------------------
  btn_mlistAddClick|Добавить материал
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.btn_mlistAddClick(Sender: TObject);
var
  F: TAddMatForm;
  m: Integer;
begin
  m := 0;
  F := TAddMatForm.CreateModal(self);
  F.ShowModal;
  if F.ModalResult = mrOk then
  begin
    ds_mat.CloseOpen(true);
    if F.v1.GetColumnByFieldName('Code').EditValue <> null then
      cbb_mlist.EditValue := F.v1.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

{ -------------------------------------------------------------------------------
  btn_osmClick|Вызываем форму списка осмотров
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.btn_osmClick(Sender: TObject);
var
  F: TShHouseGetForm;
begin
  F := TShHouseGetForm.Create(Application);
  if F.ShowModal = mrOk then
  begin
    Akt := F.code;
    SrvDog := F.v2.GetColumnByFieldName('SrvDog').EditValue;
    if Akt <> null then
    begin
      lb1.Caption := '№' + F.v2.GetColumnByFieldName('NOMER')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('KONTNAME')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('STYPE')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('STATE').EditValue;
      ASTYPE := F.v2.GetColumnByFieldName('STYPE').EditValue;
      STYPE := F.v2.GetColumnByFieldName('STYPE').EditValue;
      SYEAR := F.v2.GetColumnByFieldName('SYEAR').EditValue;
      ds_dom.Close;
      with ds_result do
      begin
        Close;
        MainWhereClause := 'SHOWHOUSE=:shh';
        ParamByName('shh').AsInteger := Akt;
        Open;
      end;
    end;
    EditCurRec;
    lcntr2.Enabled := true;
  end;
  F.Free;
end;

procedure TShowResultForm.btn_osmotrClick(Sender: TObject);
var
  F: TShHouseGetForm;
begin
  F := TShHouseGetForm.CreateModal(self);
  if F.ShowModal = mrOk then
  begin
    SplashVisibility(true, 'Загружаются данные');
    Akt := F.code;
    //CurKontr := 0;
    CurKontr := (F.v2.GetColumnByFieldName('Kontr').EditValue);
    CurKontrName := F.v2.GetColumnByFieldName('KONTNAME').EditValue;
    SrvDog := F.v2.GetColumnByFieldName('SrvDog').EditValue;
    if Akt <> null then
    begin
      AktClose:= F.v2.GetColumnByFieldName('ALOCK').EditValue=1;
      lb_osmotr.Caption := '№' + F.v2.GetColumnByFieldName('NOMER')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('KONTNAME')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('STYPE')
        .EditValue + ' | ' + F.v2.GetColumnByFieldName('STATE').EditValue;
      SHOWPRIKAZPO:=F.v2.GetColumnByFieldName('SHOWPRIKAZPO').EditValue;
      GRAPHLIST:=F.v2.GetColumnByFieldName('GRAPHLIST').EditValue;
      ASTYPE := F.v2.GetColumnByFieldName('STYPE').EditValue;
      STYPE := F.v2.GetColumnByFieldName('STYPE').EditValue;
      SYEAR := F.v2.GetColumnByFieldName('SYEAR').EditValue;
      ATYPE := F.v2.GetColumnByFieldName('ATYPE').EditValue;
      tip1_info.DESCRIPTION.Text :=
        'Номер акта: ' + '№' + F.v2.GetColumnByFieldName('NOMER')
        .EditValue + #10#13 + 'Подрядная организация: ' +
        F.v2.GetColumnByFieldName('KONTNAME').EditValue + #10#13 +
        'Тип осмотра: ' + F.v2.GetColumnByFieldName('STYPE')
        .EditValue + #10#13 + 'Статус: ' + F.v2.GetColumnByFieldName
        ('STATE').EditValue;

      ds_dom.Close;
      with ds_result do
      begin
        Close;
        MainWhereClause := 'SR.SHOWHOUSE=:shh';
        ParamByName('shh').AsInteger := Akt;
        Open;
      end;
    end;
    EditCurRec;
    //если заблокирован то копировать нельзя
    if F.v2.GetColumnByFieldName('ALOCK').EditValue=1 then
    begin
      btn_copy.Caption:='Акт заблокирован.';
      btn_copy.Hint:='Акт заблокирован.';
      btn_copy.Enabled:=false;
    end else
    begin
      btn_copy.Caption:='Копировать';
      btn_copy.Hint:='Копировать';
      btn_copy.Enabled:=true;
    end;
    lcntr2.Enabled := true;
    SplashVisibility(False);
    //
    btn_rep1.Enabled:= not ds_result.IsEmpty;
    btn_frep2.Enabled:= not ds_result.IsEmpty;
  end;
  F.Free;
end;

procedure TShowResultForm.btn_OutHouseClick(Sender: TObject);
begin
  PrintOutAkt;
end;

procedure TShowResultForm.PrintOutAkt;
var
  F :TPrintAktForm;
  Qfr :TfrxFIBQuery;
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
  Kr :string;
  def :WideString;

  function GetKRList :string;
  var
    Q1 :TFIBQuery;
    s: string;
  begin
    s:='';
    Q1:=GetQueryForUse(cmDB.RT,
     'SELECT hw.CODE, ' + #13#10 +
    '       hw.HOUSE, ' + #13#10 +
    '       hw.MLIST, m.name MName,' + #13#10 +
    '       hw.Y, ' + #13#10 +
    '       hw.ENT, ' + #13#10 +
    '       hw.STREET' + #13#10 +
    'FROM HOUSEKWORK hw' + #13#10 +
    'left outer join mlist m on m.code=hw.mlist' + #13#10 +
    'where hw.house=:house');
    Q1.ParamByName('house').AsVariant:=
                                    v1.GetColumnByFieldName('House').EditValue;
    Q1.ExecQuery;
    while not Q1.Eof do
    begin
      s:=s+'     '+Q1.FN('Y').AsString+' '+Q1.FN('MName').AsString+' '
          +Q1.FN('ENT').AsString+#13#10;
      Q1.Next;
    end;
    Result:=s;
    FreeQueryForUse(Q1);
  end;

  //менеджер СЭ
  function GetMSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) mse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=1 and mh.house=:house');
    Q.ParamByName('house').AsVariant:=v1.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('mse').AsVariant;
  end;

  //сотрудник ПО закрепленный за домом
  function GetPSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) pse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=:kontr and mh.house=:house');
    Q.ParamByName('kontr').AsVariant:=CurKontr;
    Q.ParamByName('house').AsVariant:=v1.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('pse').AsVariant;
  end;
begin
  F:=TPrintAktForm.Create(Application);
  if F.ShowModal=mrOk then
  begin
    fr.LoadFromFile('rep\rep1.fr3');
    fr.Variables['varRep'] := 1;
    fr.Variables['varHouse'] := #39+F.cbb_house.EditText+ #39;
    fr.Variables['varHouseCod'] := F.cbb_house.EditValue;
    fr.Variables['varStreet'] := #39 + F.cbb_street.EditText + #39;
    fr.Variables['varAkt'] := v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
    def:=GetNoStruct(F.cbb_house.EditValue);
    Kr:= GetKRList;
    if Kr<>'' then
    fr.Variables['varKR'] := Kr else
    fr.Variables['varKR'] := #39'...'#39;
    {Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
        ' left outer join structdefect sd on s.code=sd.showstruct' +
        ' where sd.code=:cod');
    Q.ParamByName('cod').AsInteger := v1.GetColumnByFieldName('STRUCTDEFECT')
      .EditValue;
    Q.ExecQuery;}
    fr.Variables['varSType'] := F.cbb_stype.ItemIndex; //0-строения 1- электричество
    fr.Variables['varASType'] := ASTYPE;

    fr.Variables['varMSE'] :=#39+GetMSE+#39;
    fr.Variables['varPSE'] :=#39+GetPSE+#39;

    fr.Variables['varKontrName'] :=#39 + CurKontrName+ #39;
    //
    Qfr := fr.FindObject('QDef') as TfrxFIBQuery;
    if def<>'' then
    begin
      Qfr.Close;
      Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                    'from STRUCTDEFECT' + #13#10 +
                    'where SHOWSTRUCT=:mas_code' + #13#10 +
                    ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
    end else
    begin
      Qfr.Close;
      Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                    'from STRUCTDEFECT' + #13#10 +
                    'where SHOWSTRUCT=:mas_code';
    end;
    //
    fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
    with fdb do
    begin
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
    end;
    fr.ShowReport();
    //FreeQueryForUse(Q);
  end;
  F.Free;
end;

procedure TShowResultForm.ReopenMat;
begin
  with ds_mat do begin
    Close;
    MainWhereClause:= '(STRUCTDEFECT is null) or (STRUCTDEFECT=:code)'; //условие на вид конструкции
    ParamByName('code').AsVariant:=cbb_defect.EditValue;
    OrderClause:='ML.MGROUP';
    Open;
  end;
end;

// ==============================================================================
// Редактируем запись
// ==============================================================================
procedure TShowResultForm.EditCurRec;
begin
  // Конструкция
  cbb_struct.EditValue := v1.GetColumnByFieldName('structCode').EditValue;
  OpenDefect;
  // Вид конструкции
  cbb_defect.EditValue := v1.GetColumnByFieldName('STRUCTDEFECT').EditValue;
  OpenHouse;
  // Дом
  cbb_house.EditValue := v1.GetColumnByFieldName('HOUSE').EditValue;
  // Подъезд
  spn_Entrance.EditValue := v1.GetColumnByFieldName('ENTRANCE').EditValue;
  // Этаж
  spn_Floor.EditValue := v1.GetColumnByFieldName('FLOOR').EditValue;
  // Квартира
  cbb_Flat.EditValue := v1.GetColumnByFieldName('FLAT').EditValue;
  // Вид работы
  cbb_mlist.EditValue := v1.GetColumnByFieldName('MLIST').EditValue;
  // Объем работ
  spn_quant.EditValue := v1.GetColumnByFieldName('QUANTITY').EditValue;
  // Материал
  txtdt_mat.EditValue := v1.GetColumnByFieldName('MNote').EditValue;
  // Примечание
  txtdt_note.EditValue := v1.GetColumnByFieldName('NOTE').EditValue;
  // Тип расположения
  cbb_AType.EditValue := v1.GetColumnByFieldName('ATYPE').EditValue;
  // Решение о принятии мер
  cbb_RType.EditValue := v1.GetColumnByFieldName('RTYPE').EditValue;
  //замечание
  //m_PONOTE.EditValue:=gFN(v1,'PONOTE');
  case v1.GetColumnByFieldName('POSTATE').EditValue of
    0 : gr_note.Expanded:= false;
    1 : begin
          gr_note.Expanded:= true;
          btn_corr.Enabled := true;
          m_PONOTE.EditValue:=v1.GetColumnByFieldName('PONOTE').EditValue;
        end;
    2 : begin
          gr_note.Expanded:= true;
          btn_corr.Enabled := false;
          m_PONOTE.EditValue:=v1.GetColumnByFieldName('PONOTE').EditValue;
        end;
  end;
  {if v1.GetColumnByFieldName('POSTATE').EditValue = 0 then
     gr_note.Expanded:= false else
  if v1.GetColumnByFieldName('POSTATE').EditValue > 0 then
     gr_note.Expanded:= true;}
  //m_PONOTE.EditValue:=v1.GetColumnByFieldName('PONOTE').EditValue;
  //gr_note.Expanded:=v1.GetColumnByFieldName('POSTATE').EditValue>0;
end;

{ -------------------------------------------------------------------------------
  btn_repClick|Печать отчета
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.btn_rep1Click(Sender: TObject);
var
  fdb: TfrxFIBDatabase;
  Qfr,Q_zam, Q_TR, Q_TO, Q_KR: TfrxFIBQuery;
  Q: TFIBQuery;
  Kr :string;
  def :WideString;

  function GetKRList :string;
  var
    Q1 :TFIBQuery;
    s: string;
  begin
    s:='';
    Q1:=GetQueryForUse(cmDB.RT,
     'SELECT hw.CODE, ' + #13#10 +
    '       hw.HOUSE, ' + #13#10 +
    '       hw.MLIST, m.name MName,' + #13#10 +
    '       hw.Y, ' + #13#10 +
    '       hw.ENT, ' + #13#10 +
    '       hw.STREET' + #13#10 +
    'FROM HOUSEKWORK hw' + #13#10 +
    'left outer join mlist m on m.code=hw.mlist');
    if ATYPE<>null then
    Q1.MainWhereClause:= 'hw.house=:house and ((hw.SRVDOGTYPE=:ATYPE) or (hw.SRVDOGTYPE is null))' else
    Q1.MainWhereClause:= 'hw.house=:house';
    Q1.ParamByName('house').AsVariant:=
                                    v1.GetColumnByFieldName('House').EditValue;
    if ATYPE<>null then
      Q1.ParamByName('ATYPE').AsVariant:= ATYPE;

    Q1.ExecQuery;
    while not Q1.Eof do
    begin
      s:=s+'     '+Q1.FN('Y').AsString+' '+Q1.FN('MName').AsString+' '
          +Q1.FN('ENT').AsString+#13#10;
      Q1.Next;
    end;
    Result:=s;
    FreeQueryForUse(Q1);
  end;

  //менеджер СЭ
  function GetMSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) mse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=1 and mh.house=:house');
    Q.ParamByName('house').AsVariant:=v1.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('mse').AsVariant;
  end;

  //сотрудник ПО закрепленный за домом
  function GetPSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) pse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=:kontr and mh.house=:house');
    Q.ParamByName('kontr').AsVariant:=CurKontr;
    Q.ParamByName('house').AsVariant:=v1.GetColumnByFieldName('House').EditValue;
    Q.ExecQuery;
    Result:=Q.FN('pse').AsVariant;
  end;

begin
  if v1.GetColumnByFieldName('House').EditValue = null then
    Exit;
  def:=GetNoStruct(v1.GetColumnByFieldName('House').EditValue);
  fr.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\rep1.fr3');
  fr.Variables['varRep'] := 1;
  fr.Variables['varHouse'] := #39 + v1.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v1.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v1.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Kr:= GetKRList;
  if Kr<>'' then
  fr.Variables['varKR'] := Kr else
  fr.Variables['varKR'] := #39'...'#39;
  Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
      ' left outer join structdefect sd on s.code=sd.showstruct' +
      ' where sd.code=:cod');
  Q.ParamByName('cod').AsInteger := v1.GetColumnByFieldName('STRUCTDEFECT')
    .EditValue;
  Q.ExecQuery;
  fr.Variables['varSType'] := Q.FN('STYPE').AsInteger;
  fr.Variables['varASType'] := ASTYPE;

  fr.Variables['varMSE'] :=#39+GetMSE+#39;
  fr.Variables['varPSE'] :=#39+GetPSE+#39;

  fr.Variables['varKontrName'] :=#39 + CurKontrName+ #39;
  //
  Qfr := fr.FindObject('QDef') as TfrxFIBQuery;
  if def<>'' then
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code' + #13#10 +
                  ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
  end else
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code';
  end;
  //
  Q_zam := fr.FindObject('Q_zam') as TfrxFIBQuery;
  Q_zam.ParamByName('sh').Value:=v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q_zam.ParamByName('h').Value:=v1.GetColumnByFieldName('House').EditValue;

  GetTypeTR;

  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
  FreeQueryForUse(Q);
end;

procedure TShowResultForm.btn_rep2Click(Sender: TObject);
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
begin
  fr.LoadFromFile('rep\rep1.fr3');
  fr.Variables['varRep'] := 2;
  fr.Variables['varHouse'] := #39 + v1.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v1.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v1.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
      ' left outer join structdefect sd on s.code=sd.showstruct' +
      ' where sd.code=:cod');
  Q.ParamByName('cod').AsInteger := v1.GetColumnByFieldName('STRUCTDEFECT')
    .EditValue;
  Q.ExecQuery;
  fr.Variables['varSType'] := Q.FN('STYPE').AsInteger;

  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
  FreeQueryForUse(Q);
end;

procedure TShowResultForm.btn_repClick(Sender: TObject);
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
begin
  fr.LoadFromFile('rep\rep1.fr3');
  fr.Variables['varRep'] := 1;
  fr.Variables['varHouse'] := #39 + v1.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v1.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v1.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
      ' left outer join structdefect sd on s.code=sd.showstruct' +
      ' where sd.code=:cod');
  Q.ParamByName('cod').AsInteger := v1.GetColumnByFieldName('STRUCTDEFECT')
    .EditValue;
  Q.ExecQuery;
  fr.Variables['varSType'] := Q.FN('STYPE').AsInteger;
  fr.Variables['varASType'] := ASTYPE;
  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
  FreeQueryForUse(Q);
end;

procedure TShowResultForm.btn_selectAllClick(Sender: TObject);
begin
  CheckFlag;
end;

procedure TShowResultForm.btn_unselectClick(Sender: TObject);
begin
  UnCheckFlag;
end;

procedure TShowResultForm.btn_zamClick(Sender: TObject);
begin
  SetCENote;
end;

procedure TShowResultForm.SetAllLink;
var
  JWORKTYPE, Note, PLACE: Variant;
  AIndex, i: Integer;

function GetPlaceStr: string;
var
  ENTRANCE, // Подъезд
  FLOOR, // Этаж
  flat: string; // Квартира
begin
  Result := '';
  if ds_result.FN('ENTRANCE').AsVariant > 0 then
    ENTRANCE := 'Подъезд ' + VarToStr(ds_result.FN('ENTRANCE').AsVariant) + '  '
  else
    ENTRANCE := '';
  if ds_result.FN('FLOOR').AsVariant > 0 then
    FLOOR := 'Этаж ' + VarToStr(ds_result.FN('FLOOR').AsVariant)
      + '  '
  else
    FLOOR := '';
  if ds_result.FN('FLAT').AsVariant <> 'не указана' then
    flat := 'Кв. ' + VarToStr(ds_result.FN('FLAT').AsVariant)
  else
    flat := '';
  Result := ENTRANCE + FLOOR + flat;
end;

begin
  if not AktClose then
    raise EMyException.Create('Для создания записей в журнале акт должен быть закрыт!');
  // проверка записей предыдущего осмотра
  dzJurnal.MoveToArhiv(CurKontr);
  // создание записей
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  v1.BeginUpdate;
  i:=1;
  SplashVisibility(True,'Создаются записи...');
  try
    with ds_result do begin
      first;
      while not Eof do begin
        if (FN('JWork').AsVariant = null) and (FN('RTYPE').AsVariant=0) then
        begin
          SetCapt(IntToStr(i));
          //insert
          if FN('JWORKTYPE').AsVariant=null then
             JWORKTYPE:= 7 else
             JWORKTYPE:= FN('JWORKTYPE').AsVariant;
          Note:=FN('MLNMAE').AsString+#13+
                            ' описание дефекта:'#13+
                            FN('NOTE').AsString+' [объем - '+FN('QUANTITY').AsString+']';
          PLACE:=GetPlaceStr;

          UpdateOrInsert(true, null, JWORKTYPE, Date, CurKontr,
                         FN('HOUSE').AsVariant, Note, PLACE, Date+30,
                         FN('CODE').AsVariant, FN('Street').AsVariant);
          inc(i);
        end;
        Next;
      end;
    end;
    //
    if i>1 then
    with ds_result do
    begin
      Close;
      MainWhereClause := 'SR.SHOWHOUSE=:shh';
      ParamByName('shh').AsInteger := Akt;
      Open;
    end;
  finally
    SplashVisibility(false);
    v1.EndUpdate;
  end;
end;

//замечание СЭ
procedure TShowResultForm.SetCENote;
begin
  if Lockhouse(v1.GetColumnByFieldName('HOUSE').EditValue) then
     raise EMyException.Create('Акт заблокирован!');
  if m_PONOTE.EditValue=null then begin
    Application.MessageBox('Укажите текст замечания.', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  with ds_result do begin
    Edit;
    FN('POState').AsVariant:=1;
    FN('PONote').AsVariant:=m_PONOTE.EditValue;
    Post;
  end;
end;

procedure TShowResultForm.SetPONote;
begin
  if Application.MessageBox('Подтвердить выполненое исправление по данной записи?',
    'Подтвердить', MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDOK then
  with ds_result do begin
    Edit;
    FN('POState').AsVariant:=2;
    Post;
  end;
end;



{ -------------------------------------------------------------------------------
  btn_addClick|Добавляем запись
  ------------------------------------------------------------------------------- }
procedure TShowResultForm.btn_addClick(Sender: TObject);
begin
  AddRec;
end;

procedure TShowResultForm.btn_copyClick(Sender: TObject);
var
  CopyAkt: Variant;
begin
  CopyAkt := GetAkt('Выберите акт для копирования.');
  if CopyAkt = null then
    Exit;
  if CopyAkt = Akt then
  begin
    cmShowMessage('Нельзя скопировать акт в себя!', true);
    Exit;
  end;
  if cmMessageBox(
    'Внимание! Акт, в который производиться копирование, будет очишен.' +
      #10#13 + 'Продолжить копирование?') then
    CopyNewAkt(CopyAkt);
end;

procedure TShowResultForm.btn_corrClick(Sender: TObject);
begin
  SetPONote;
end;

procedure TShowResultForm.btn_delClick(Sender: TObject);
begin
  if cmMessageBox('Вы действительно хотите удалить отмеченные записи?') then
    DeleteChecked;
end;

procedure TShowResultForm.CopyNewAkt(code: Variant);
var
  Q: TFIBQuery;
  procedure FillAkt;
  var
    i, n: Integer;
  begin
    i := 0;
    while not Q.Eof do
    begin
      with ds_result do
      begin
        Append;
        FN('SHOWHOUSE').AsInteger := Akt;
        FN('HOUSE').AsVariant := Q.FN('HOUSE').AsVariant;
        FN('STRUCTDEFECT').AsVariant := Q.FN('STRUCTDEFECT').AsVariant;
        FN('FLAT').AsVariant := Q.FN('FLAT').AsVariant;
        FN('NOTE').AsVariant := Q.FN('NOTE').AsVariant;
        FN('QUANTITY').AsVariant := Q.FN('QUANTITY').AsVariant;
        FN('ENTRANCE').AsVariant := Q.FN('ENTRANCE').AsVariant;
        FN('FLOOR').AsVariant := Q.FN('FLOOR').AsVariant;
        FN('FLAT').AsVariant := Q.FN('FLAT').AsVariant;
        FN('MLIST').AsVariant := Q.FN('MLIST').AsVariant;
        FN('MNOTE').AsVariant := Q.FN('MNOTE').AsVariant;
        FN('V').AsVariant := Q.FN('V').AsVariant;
        FN('ATYPE').AsVariant := Q.FN('ATYPE').AsVariant;
        FN('RTYPE').AsVariant := Q.FN('RTYPE').AsVariant;
        Post;
      end;
      inc(i);
      SetCapt(IntToStr(i));
      Application.ProcessMessages;
      Q.Next;
    end;
  end;
  procedure ClearAkt;
  var
    QD :TFIBQuery;
  begin
    if not cmDB.WT.Active then cmDB.WT.StartTransaction;
    QD:=GetQueryForUse(cmDB.WT,'delete from showresult where showhouse=:cod');
    QD.ParamByName('cod').AsVariant:=Akt;
    QD.ExecQuery;
    cmDB.WT.Commit;
    cmDB.WT.StartTransaction;
    FreeQueryForUse(QD);
      with ds_result do
      begin
        Close;
        MainWhereClause := 'SR.SHOWHOUSE=:shh';
        ParamByName('shh').AsInteger := Akt;
        Open;
      end;
  end;
begin
  try
    Q := GetQueryForUse(cmDB.RT,
      'select CODE, SHOWHOUSE, HOUSE, STRUCTDEFECT, NOTE, QUANTITY, ENTRANCE,'
        + '"FLOOR",FLAT, ATYPE, RTYPE, MLIST, MNOTE, V,TRPLAN, USERNAME,'+
        ' LASTTIME, COPYFLAG from SHOWRESULT  where SHOWHOUSE =:cod');
    Q.ParamByName('cod').AsVariant := code;
    Q.ExecQuery;
    SplashVisibility(true, 'Копируются данные...');
    ds_result.DisableControls;
    ClearAkt;
    FillAkt;
    ds_result.EnableControls;
    // cmShowMessage('Копирование завершено.');
  finally
    SplashVisibility(False);
    FreeQueryForUse(Q);
  end;
end;

function TShowResultForm.GetAkt(capt: string): Variant;
var
  F: TShHouseGetForm;
  Kontr, KontrName: string;
begin
  Result := null;
  F := TShHouseGetForm.CreateModal(self);
  if capt <> '' then
    F.Caption := capt;
  if Akt > 0 then
    F.clause := 's.code<>' + IntToStr(Akt) + ' and k.code=' + VarToStr(CurKontr);
  if F.ShowModal = mrOk then
  begin
    Kontr := F.v2.GetColumnByFieldName('Kontr').EditValue;
    KontrName := F.v2.GetColumnByFieldName('KONTNAME').EditValue;
    if Kontr <> VarToStr(CurKontr) then
    begin
      if Application.MessageBox(PChar(
          'Подрядная организация, выбраного для копирования акта,' + #13#10 +
            'оличается от подрядной организации редактируемого акта!' +
            #13#10 + 'Редактируемый акт: ' + CurKontrName + #13#10 +
            'Копируемый акт:    ' + KontrName + #13#10 +
            'Вы действительно хотите скопировать данные из акта ' + KontrName +
            ' ?'), PChar('Внимание!'),
        MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
      begin
        Result := F.code;
      end;
    end
    else
      Result := F.code;
  end;
  F.Free;
end;

// редактируем запись
procedure TShowResultForm.btn_editClick(Sender: TObject);
begin
  AddRec(False);
end;

procedure TShowResultForm.btn_frep2Click(Sender: TObject);
var
  fdb: TfrxFIBDatabase;
  Q: TFIBQuery;
  Qfr, Gl :TfrxFIBQuery;
  def :WideString;
  d1,d2 :Variant;
begin
  if v1.GetColumnByFieldName('House').EditValue = null then
    Exit;
  def:=GetNoStruct(v1.GetColumnByFieldName('House').EditValue);
  fr.LoadFromFile('rep\rep1.fr3');
  fr.Variables['varRep'] := 2;
  fr.Variables['varHouse'] := #39 + v1.GetColumnByFieldName('NOMER')
    .EditValue + #39;
  fr.Variables['varHouseCod'] := v1.GetColumnByFieldName('House').EditValue;
  fr.Variables['varStreet'] := #39 + v1.GetColumnByFieldName('STREETNAME')
    .EditValue + #39;
  fr.Variables['varAkt'] := v1.GetColumnByFieldName('SHOWHOUSE').EditValue;
  Q := GetQueryForUse(cmDB.RT, 'select s.STYPE from SHOWSTRUCT s' +
      ' left outer join structdefect sd on s.code=sd.showstruct' +
      ' where sd.code=:cod');
  Q.ParamByName('cod').AsInteger := v1.GetColumnByFieldName('STRUCTDEFECT')
    .EditValue;
  Q.ExecQuery;
  fr.Variables['varSType'] := Q.FN('STYPE').AsInteger;
  //
  Qfr := fr.FindObject('QDef') as TfrxFIBQuery;
  if def<>'' then
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code' + #13#10 +
                  ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
  end else
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code';
  end;
  //
  if STYPE='весна' then
     fr.Variables['varD2'] :=#39+String('31.07.'+VarToStr(SYEAR))+#39;
  if STYPE='осень' then
     fr.Variables['varD2'] :=#39+String('31.12.'+VarToStr(SYEAR))+#39;
  //
  if GRAPHLIST <> null then begin
    Gl := fr.FindObject('Gl') as TfrxFIBQuery;
    Gl.Close;
    Gl.SQL.Text:='SELECT g.D3 FROM GRAPHSPEC g' + #13#10 +
                'where g.GRAPHLIST=:gl and g.HOUSE=:house';
    Gl.ParamByName('gl').Value:=GRAPHLIST;
    Gl.ParamByName('house').Value:=v1.GetColumnByFieldName('House').EditValue;
  end;
 { case STYPE of
    0 : begin
          d1:=String('01.01.'+VarToStr(SYEAR));
          fr.Variables['varD2'] :=#39+String('31.07.'+VarToStr(SYEAR))+#39;
        end;
    1 : begin
          d1:=String('01.08.'+VarToStr(SYEAR));
          fr.Variables['varD2'] :=#39+String('31.12.'+VarToStr(SYEAR))+#39;
        end;
  end;}
  //
  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
  FreeQueryForUse(Q);
end;

procedure TShowResultForm.btn_JautoClick(Sender: TObject);
begin
  if cmMessageBox('Создать записи в журнале работ по ТО?') then
  SetAllLink;
  //AutoJurnal;
end;
{------------------------------------------------------------------------------
 Автоматическое создание записей в журнале
-------------------------------------------------------------------------------}
procedure TShowResultForm.AutoJurnal;
var
  AIndex, i: Integer;
  Code :Variant;
  Note: string;
begin
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  v1.BeginUpdate;
  i:=1;
  try
    SplashVisibility(True,'Создаются записи...');
    with ds_result do
    begin
      DisableControls;
      First;
      while not EOF do begin
        if (FN('RTYPE').AsVariant=0) and (FN('LOCK').AsVariant=1)
        and (FN('JWork').AsVariant=null) then
        begin
          SetCapt(IntToStr(i));
          Note:= FN('MlNmae').AsString+#13+
                 '  описание дефекта:'#13+ FN('NOTE').AsString;
          Code:=UpdateOrInsert(true, null,
          {JWORKTYPE} 7,
          {дата создания} Date, CurKontr,
          FN('House').AsVariant,
          {описание работ} Note,
          {Место проведения работ.} '',
          {Плановая дата} Date,
          FN('CODE').AsVariant,
          FN('Street').AsVariant);

         // edit;
         // FN('JWork').AsVariant := code;
         // Post;
          inc(i);
        end;
        Next;
      end;
      EnableControls;
    end;
  finally
    SplashVisibility(false);
  end;
  if i>1 then
      with ds_result do
      begin
        Close;
        MainWhereClause := 'SR.SHOWHOUSE=:shh';
        ParamByName('shh').AsInteger := Akt;
        Open;
      end;
  v1.EndUpdate;
  v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

// удалить запись в журнале
procedure TShowResultForm.btn_jdeleteClick(Sender: TObject);
var
  Q: TFIBQuery;
begin
  if v1.GetColumnByFieldName('JWork').EditValue = null then
    cmShowMessage('По этой строке акта нет запией в журнале работ.')
  else
  begin
    // сообщение об удалении
    if cmMessageBox('Вы действительно хотите удалить запись из журнала работ?')
      then
    begin
      Q := GetQueryForUse(cmDB.RT,
        'select iif(factdate is null,0,1) fact from jwork where code=:cod');
      Q.ParamByName('cod').AsVariant := v1.GetColumnByFieldName('JWork')
        .EditValue;
      Q.ExecQuery;
      // сооющение о выполненой работе
      if Q.FN('fact').AsVariant = 1 then
      begin
        if cmMessageBox
          ('Указанная запись в журнале работ является выполненой,' + ' действительно хотите удалить?') then
        begin
          with ds_JWORK do
          begin
            if Locate('CODE', v1.GetColumnByFieldName('JWork').EditValue, [])
              then
            begin
              Delete;
              v1.GetColumnByFieldName('JWork').EditValue := null;
              v1.DataController.Post(true);
            end;
          end;
        end;
      end
      else
        with ds_JWORK do
        begin
          Open;
          if Locate('CODE', v1.GetColumnByFieldName('JWork').EditValue, []) then
          begin
            Delete;
            v1.GetColumnByFieldName('JWork').EditValue := null;
            v1.DataController.Post(true);
          end;
          Close;
        end;
      FreeQueryForUse(Q);
    end;
  end;
end;

procedure TShowResultForm.btn_jurnalClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('JWork').EditValue = null then
    SetlinkJWork
  else
    EditLinkJWork;
end;

// редактируем связь с журналом
procedure TShowResultForm.EditLinkJWork;
var
  F: TAkttoJurnalForm;
  Q: TFIBQuery;
  id: Integer;
begin
  try
    Q := GetQueryForUse(cmDB.RT, 'select * from JWORK where SHOWRESULT=:Cod');
    Q.ParamByName('Cod').AsVariant := v1.GetColumnByFieldName('Code').EditValue;
    Q.ExecQuery;
    F := TAkttoJurnalForm.Create(Application);
    F.SetDefParam;
    id := Q.FN('CODE').AsVariant;
    F.txt_place.EditValue := Q.FN('PLACE').AsVariant;
    F.mmo_desc.EditValue := Q.FN('DESCRIPTION').AsVariant;
    F.cbb_WorkType.EditValue := Q.FN('JWORKTYPE').AsVariant;
    F.cbb_Kontr.EditValue := Q.FN('KONTRAGENT').AsVariant;
    F.cbb_street.EditValue := Q.FN('STREET').AsVariant;
    F.cbb_house.EditValue := Q.FN('HOUSE').AsVariant;
    F.dt_RegDate.EditValue := Q.FN('REGDATE').AsVariant;
    if F.ShowModal = mrOk then
    begin
      // редактируем запись ShowResult.JWork
      UpdateOrInsert(False, v1.GetColumnByFieldName('JWork').EditValue,
        v1.GetColumnByFieldName('JWorkType').EditValue,
        F.dt_RegDate.EditValue, CurKontr,
        v1.GetColumnByFieldName('House').EditValue, F.mmo_desc.EditValue,
        F.txt_place.EditValue, F.dt_PlanDate.EditValue,
        v1.GetColumnByFieldName('CODE').EditValue,
        v1.GetColumnByFieldName('Street').EditValue);
    end;
  finally
    FreeQueryForUse(Q);
    F.Free;
  end;
end;

// устанавливаем связь с журналом
procedure TShowResultForm.SetlinkJWork;
var
  F: TAkttoJurnalForm;
  code: Variant;
begin
  try
    F := TAkttoJurnalForm.Create(Application);
    F.SetDefParam;
    F.txt_place.EditValue := GetPlaceStr;
    F.mmo_desc.EditValue := v1.FN('MlNmae')+#13+
                            ' описание дефекта:'#13+
                            v1.FN('NOTE');
    if v1.GetColumnByFieldName('JWorkType').EditValue = null then
      F.cbb_WorkType.Properties.ReadOnly := False;
    F.cbb_WorkType.EditValue := v1.GetColumnByFieldName('JWorkType').EditValue;
    F.cbb_Kontr.EditValue := CurKontr;
    F.cbb_street.EditValue := v1.GetColumnByFieldName('Street').EditValue;
    F.cbb_house.EditValue := v1.GetColumnByFieldName('House').EditValue;
    if F.ShowModal = mrOk then
    begin
      code := UpdateOrInsert(true, null,
        F.cbb_WorkType.EditValue,
        F.dt_RegDate.EditValue, CurKontr,
        v1.GetColumnByFieldName('House').EditValue,
        F.mmo_desc.EditValue, F.txt_place.EditValue, F.dt_PlanDate.EditValue,
        v1.GetColumnByFieldName('CODE').EditValue,
        v1.GetColumnByFieldName('Street').EditValue);
      v1.GetColumnByFieldName('JWork').EditValue := code;
      v1.DataController.Post(true);
    end;
  finally
    F.Free;
  end;
end;

function TShowResultForm.UpdateOrInsert(ins: Boolean; code, JWORKTYPE, REGDATE,
  KONTRAGENT, HOUSE, DESC, PLACE, PLANDATE, SHOWRESULT, STREET: Variant)
  : Variant;
  var
    Q :TFIBQuery;
begin
  DSOptoins(ds_JWORK, '', 'JWORK', 'CODE', 'JWORK_GEN', ins);
  if not ins then
    with ds_JWORK do
    begin
      Close;
      MainWhereClause := 'SHOWRESULT=:ActCode';
      ParamByName('ActCode').AsVariant := SHOWRESULT;
      Open;
    end;
  with ds_JWORK do
  begin
    if ins then
    begin
      Append;
      // FN()
    end
    else
      Edit;
    FN('JWORKTYPE').AsVariant := JWORKTYPE;
    FN('REGDATE').AsVariant := REGDATE;
    FN('KONTRAGENT').AsVariant := KONTRAGENT;
    FN('HOUSE').AsVariant := HOUSE;
    FN('DESCRIPTION').AsVariant := DESC;
    FN('PLACE').AsVariant := PLACE;
    FN('PLANDATE').AsVariant := PLANDATE;
    // FN('NOTE').AsVariant:=NOTE;
    FN('SHOWRESULT').AsVariant := SHOWRESULT;
    FN('STREET').AsVariant := STREET;
    Post;
    Result := FN('CODE').AsVariant;
  end;
  Q:=GetQueryForUse(cmdb.WT,'UPDATE SHOWRESULT SET JWORK=:JW WHERE CODE=:COD');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('JW').AsVariant:=Result;
  Q.ParamByName('COD').AsVariant:=SHOWRESULT;
  try
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  ds_JWORK.Close;
end;

function TShowResultForm.GetPlaceStr: string;
var
  ENTRANCE, // Подъезд
  FLOOR, // Этаж
  flat: string; // Квартира
begin
  Result := '';
  if v1.GetColumnByFieldName('ENTRANCE').EditValue > 0 then
    ENTRANCE := 'Подъезд ' + VarToStr(v1.GetColumnByFieldName('ENTRANCE')
        .EditValue) + '  '
  else
    ENTRANCE := '';
  if v1.GetColumnByFieldName('FLOOR').EditValue > 0 then
    FLOOR := 'Этаж ' + VarToStr(v1.GetColumnByFieldName('FLOOR').EditValue)
      + '  '
  else
    FLOOR := '';
  if v1.GetColumnByFieldName('FLAT').EditValue <> 'не указана' then
    flat := 'Кв. ' + VarToStr(v1.GetColumnByFieldName('FLAT').EditValue)
  else
    flat := '';
  Result := ENTRANCE + FLOOR + flat;
end;

procedure TShowResultForm.GetTypeTR;
var
  Q_TR, Q_KR,Q_TO: TFIBQuery;
begin
  md_kr.Close; md_kr.Open;
  Q_TR:= GetQueryForUse(cmDB.RT,
      'select m.name TR, s.v' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1' + #13 +
      #10 + 'and s.v>0 order by s.v');
  Q_TR.ParamByName('srvHouse').AsVariant:=gFN(v1,'SHOWHOUSE');
  Q_TR.ParamByName('house').AsVariant:= gFN(v1,'HOUSE');
  Q_TR.ExecQuery;
  //
  Q_KR:= GetQueryForUse(cmDB.RT,
      'select m.name KR' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2');
  Q_KR.ParamByName('srvHouse').AsVariant:=gFN(v1,'SHOWHOUSE');
  Q_KR.ParamByName('house').AsVariant:= gFN(v1,'HOUSE');
  Q_KR.ExecQuery;
  //
  Q_TO:= GetQueryForUse(cmDB.RT,
      'select m.name STO' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0');
  Q_TO.ParamByName('srvHouse').AsVariant:=gFN(v1,'SHOWHOUSE');
  Q_TO.ParamByName('house').AsVariant:= gFN(v1,'HOUSE');
  Q_TO.ExecQuery;
  //
  with Q_TR do
  while not Eof do begin
    md_kr.Append;
    md_kr.FieldByName('TR').AsString:= FN('TR').AsString;
    md_kr.FieldByName('V').AsVariant:= FN('V').AsVariant;
    md_kr.Post;
    Next;
  end;
  md_kr.First;
  with Q_KR do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('KR').AsString:= FN('KR').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  md_kr.First;
  with Q_TO do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('TO').AsString:= FN('STO').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  FreeQueryForUse(Q_TR);
  FreeQueryForUse(Q_KR);
  FreeQueryForUse(Q_TO);
end;

procedure TShowResultForm.AddRec(isadd: Boolean = true);
begin
  if CheckParam = true then
  begin
    with ds_result do
    begin
      if isadd then
        Append
      else
        Edit;
      FN('SHOWHOUSE').AsInteger := Akt;
      FN('HOUSE').AsInteger := cbb_house.EditValue;
      FN('STRUCTDEFECT').AsInteger := cbb_defect.EditValue;
      FN('FLAT').AsString := cbb_Flat.EditValue;
      if txtdt_note.Text <> '' then
        FN('NOTE').AsString := txtdt_note.Text;
      FN('QUANTITY').AsFloat := spn_quant.EditValue;
      FN('ENTRANCE').AsInteger := spn_Entrance.EditValue;
      FN('FLOOR').AsInteger := spn_Floor.EditValue;
      if cbb_Flat.EditValue = null then
        cbb_Flat.EditValue := 'не указана';
      FN('FLAT').AsString := cbb_Flat.EditValue;
      if cbb_mlist.EditValue <> null then
        FN('MLIST').AsInteger := cbb_mlist.EditValue;
      // if txtdt_mat.Text<>null then
      FN('MNOTE').AsVariant := txtdt_mat.EditValue;
      FN('V').AsInteger := 0;
      FN('ATYPE').AsInteger := cbb_AType.EditValue;
      FN('RTYPE').AsInteger := cbb_RType.EditValue;
      Post;
      FocusControl(cbb_struct);
    end;
  end;
end;

function TShowResultForm.CheckParam: Boolean;
begin
  Result := true;
  if Akt = null then
  begin
    ShowMessage('Не указан акт!');
    Result := False;
    Exit;
  end;
  if cbb_struct.EditValue = null then
  begin
    ShowMessage('Не указана конструкция!');
    Result := False;
    Exit;
  end;
  if cbb_defect.EditValue = null then
  begin
    ShowMessage('Не указан дефект!');
    Result := False;
    Exit;
  end;
  if (cbb_house.EditValue = null) or (cbb_house.EditValue = 0) then
  begin
    ShowMessage('Не указан дом!');
    Result := False;
    Exit;
  end;
  if cbb_Flat.EditValue = null then
  begin
    ShowMessage('Не указана квартира!');
    Result := False;
    Exit;
  end;
  if cbb_AType.EditValue = null then
  begin
    ShowMessage('Не указан тип расположения!');
    Result := False;
    Exit;
  end;
  if cbb_RType.EditValue = null then
  begin
    ShowMessage('Не указано решение о принятии мер!');
    Result := False;
    Exit;
  end;
end;

initialization

RegisterClass(TShowResultForm);

end.








