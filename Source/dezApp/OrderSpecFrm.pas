unit OrderSpecFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dezCommon, FIBQuery, pFIBCacheQueries, pFIBProps,
  AppUtils, dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxDockControlPainter,
  cxPC, dxDockControl, dxDockPanel, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxStyles,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit, cxContainer, Menus,
  cxMemo, cxDropDownEdit, cxCurrencyEdit, cxTextEdit, StdCtrls, cxButtons,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxMaskEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet, cxDBExtLookupComboBox,
  cxImageComboBox, cxPropertiesStore, ImgList, dxSkinsdxBarPainter, dxBar,
  BaseForm, uADCompClient,
  dxSkinDevExpressStyle, cxCheckBox, dxmdaset, frxExportRTF, frxClass,
  frxExportXLS, dezInfo, Vcl.ComCtrls, dxCore, cxDateUtils, DateUtils,
  dxSkinsDefaultPainters, cxGridBandedTableView, cxGridDBBandedTableView,
  cxNavigator, frxDBSet, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TOrderSpecForm = class(TDezModalForm)
    docm_1: TdxDockingManager;
    pnl1: TdxDockPanel;
    docs1: TdxDockSite;
    docs2: TdxLayoutDockSite;
    pnl_Material: TdxDockPanel;
    pnl_Jurnal: TdxDockPanel;
    docs4: TdxTabContainerDockSite;
    docs3: TdxLayoutDockSite;
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    grp2: TdxLayoutGroup;
    cnt2: TdxLayoutControl;
    grp3: TdxLayoutGroup;
    cnt3: TdxLayoutControl;
    src_WorkSpecList: TDataSource;
    ds_WorkSpecList: TpFIBDataSet;
    itm_grd2: TdxLayoutItem;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv2CODE: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2SERVISWORK: TcxGridDBColumn;
    clv2sworkname: TcxGridDBColumn;
    clv2Street: TcxGridDBColumn;
    clv2streetname: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2nomer: TcxGridDBColumn;
    clv2ADDR: TcxGridDBColumn;
    clv2flat: TcxGridDBColumn;
    clv2ED: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2WORKLIST: TcxGridDBColumn;
    clv2Quantity: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2jwork: TcxGridDBColumn;
    l2: TcxGridLevel;
    grpcnt1Group1: TdxLayoutGroup;
    cbb_filtr: TcxComboBox;
    itmcnt1Item1: TdxLayoutItem;
    itmcnt1Item2: TdxLayoutItem;
    dt1: TcxDateEdit;
    itmcnt1Item3: TdxLayoutItem;
    cbb_work: TcxLookupComboBox;
    btn_w: TcxButton;
    itmcnt1Item4: TdxLayoutItem;
    grpcnt1Group3: TdxLayoutGroup;
    itmcnt1Item5: TdxLayoutItem;
    grpcnt1Group4: TdxLayoutGroup;
    txt_wed: TcxTextEdit;
    itmcnt1Item6: TdxLayoutItem;
    ed_col: TcxSpinEdit;
    itmcnt1Item7: TdxLayoutItem;
    ced_wprice: TcxCurrencyEdit;
    itmcnt1Item12: TdxLayoutItem;
    grpcnt1Group2: TdxLayoutGroup;
    btn_wAdd: TcxButton;
    itmcnt1Item8: TdxLayoutItem;
    itmcnt1Item9: TdxLayoutItem;
    btn_wEdit: TcxButton;
    itmcnt1Item10: TdxLayoutItem;
    btn_wDel: TcxButton;
    ds_smat: TpFIBDataSet;
    src_smat: TDataSource;
    grpcnt2Group1: TdxLayoutGroup;
    grpcnt2Group2: TdxLayoutGroup;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
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
    l3: TcxGridLevel;
    itmcnt2Item1: TdxLayoutItem;
    cnt2Item1: TdxLayoutItem;
    cbb_mat: TcxLookupComboBox;
    itmcnt2Item2: TdxLayoutItem;
    grpcnt2Group3: TdxLayoutGroup;
    btn_mat: TcxButton;
    itmcnt2Item3: TdxLayoutItem;
    edsp_kol: TcxSpinEdit;
    itmcnt2Item4: TdxLayoutItem;
    txt_ed: TcxTextEdit;
    itmcnt2Item5: TdxLayoutItem;
    cedt_price: TcxCurrencyEdit;
    m_note: TcxMemo;
    itmcnt2Item21: TdxLayoutItem;
    grpcnt2Group4: TdxLayoutGroup;
    itmcnt2Item6: TdxLayoutItem;
    btn_post: TcxButton;
    itmcnt2Item7: TdxLayoutItem;
    btn_edit_m: TcxButton;
    itmcnt2Item8: TdxLayoutItem;
    btn_del_m: TcxButton;
    itmcnt3Item1: TdxLayoutItem;
    grd4: TcxGrid;
    v4: TcxGridDBTableView;
    clv4WORKSPECLIST: TcxGridDBColumn;
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
    clv4STREET: TcxGridDBColumn;
    l4: TcxGridLevel;
    grpcnt1Group5: TdxLayoutGroup;
    ds_Jwork: TpFIBDataSet;
    src_Jwork: TDataSource;
    ds_WorkSpecMaterial: TpFIBDataSet;
    src_WorkSpecMaterial: TDataSource;
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    src_serviswork: TDataSource;
    ds_serviswork: TpFIBDataSet;
    prop1: TcxPropertiesStore;
    il1: TcxImageList;
    clv3NAME: TcxGridDBColumn;
    bm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmcnt3Item11: TdxLayoutItem;
    btn_NewRec: TdxBarButton;
    btn_LinkRec: TdxBarButton;
    clv2FDATA: TcxGridDBColumn;
    grpcnt2Group5: TdxLayoutGroup;
    pnl2: TdxDockPanel;
    doc2: TdxBarDockControl;
    bar_arh: TdxBar;
    btn_MoveToJur: TdxBarButton;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    cl1: TcxGridDBColumn;
    cl2: TcxGridDBColumn;
    cl3: TcxGridDBColumn;
    cl4: TcxGridDBColumn;
    cl5: TcxGridDBColumn;
    cl6: TcxGridDBColumn;
    cl7: TcxGridDBColumn;
    cl8: TcxGridDBColumn;
    cl9: TcxGridDBColumn;
    cl10: TcxGridDBColumn;
    cl11: TcxGridDBColumn;
    cl12: TcxGridDBColumn;
    cl13: TcxGridDBColumn;
    cl14: TcxGridDBColumn;
    l1: TcxGridLevel;
    ds_JWORKARC: TpFIBDataSet;
    src_JWORKARC: TDataSource;
    grpcnt1Group6: TdxLayoutGroup;
    grpcnt1Group7: TdxLayoutGroup;
    doc3: TdxBarDockControl;
    itmcnt1Item13: TdxLayoutItem;
    bar3: TdxBar;
    btn_selAll: TdxBarButton;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    itmcnt1Item14: TdxLayoutItem;
    btn_selNone: TdxBarButton;
    btn_MakeWork: TdxBarButton;
    ds_worklist: TpFIBDataSet;
    src_worklist: TDataSource;
    clv5CODE: TcxGridDBColumn;
    clv5DATA: TcxGridDBColumn;
    clv5KONTRAGENT: TcxGridDBColumn;
    clv5KONTRNAME: TcxGridDBColumn;
    clv5STREET: TcxGridDBColumn;
    clv5STREETNAME: TcxGridDBColumn;
    clv5HOUSE: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5DU: TcxGridDBColumn;
    clv5DUNAME: TcxGridDBColumn;
    clv5WORKER: TcxGridDBColumn;
    clv5FIO: TcxGridDBColumn;
    clv5FLAG: TcxGridDBColumn;
    md_wl: TdxMemData;
    clv5Ex: TcxGridDBColumn;
    ppd1: TcxPopupEdit;
    itmcnt1Item15: TdxLayoutItem;
    mmo1: TcxMemo;
    ds_CLASSMAT: TpFIBDataSet;
    clv3CLASSMAT: TcxGridDBColumn;
    br_main: TdxBar;
    btn_print: TdxBarButton;
    btn_next: TdxBarButton;
    btn_prew: TdxBarButton;
    frep: TfrxReport;
    //xlsexp: TfrxXLSExport;
    rtfexp: TfrxRTFExport;
    ppm1: TdxBarPopupMenu;
    btn_addwithLink: TdxBarButton;
    btn_addNoLink: TdxBarButton;
    btn_addByRec: TdxBarButton;
    clv2JWORK1: TcxGridDBColumn;
    clv4WORKSPECLIST1: TcxGridDBColumn;
    pnl_Disp: TdxDockPanel;
    grd6: TcxGrid;
    v6: TcxGridDBTableView;
    clv1RequestId: TcxGridDBColumn;
    clv1HouseCompany_Title: TcxGridDBColumn;
    clv1CreatedAtUtc: TcxGridDBColumn;
    clv1WorkType: TcxGridDBColumn;
    clv1Addr: TcxGridDBColumn;
    clv1LocationTitle: TcxGridDBColumn;
    clv1State: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1Price: TcxGridDBColumn;
    vb1: TcxGridDBBandedTableView;
    clvb1RequestId: TcxGridDBBandedColumn;
    clvb1DU: TcxGridDBBandedColumn;
    clvb1Added: TcxGridDBBandedColumn;
    clvb1WorkType: TcxGridDBBandedColumn;
    clvb1Addr: TcxGridDBBandedColumn;
    clvb1LocationTitle: TcxGridDBBandedColumn;
    clvb1State: TcxGridDBBandedColumn;
    clvb1NOTE: TcxGridDBBandedColumn;
    clvb1Price: TcxGridDBBandedColumn;
    clvb1HouseCompany_Title: TcxGridDBBandedColumn;
    clvb1LocalId: TcxGridDBBandedColumn;
    clvb1CreatedAtUtc: TcxGridDBBandedColumn;
    clvb1CreatedBy_UserName: TcxGridDBBandedColumn;
    clvb1CreatedBy_Company_Title: TcxGridDBBandedColumn;
    l6: TcxGridLevel;
    src_RQ: TDataSource;
    doc4: TdxBarDockControl;
    br4: TdxBar;
    btn_GetDispData: TdxBarButton;
    btn_filter: TdxBarButton;
    clv2REQUESTID: TcxGridDBColumn;
    clv2DISP_BASE: TcxGridDBColumn;
    md_RQ: TdxMemData;
    clv6SuonID: TcxGridDBColumn;
    clv6Status: TcxGridDBColumn;
    Repository1: TcxStyleRepository;
    Style1: TcxStyle;
    Style2: TcxStyle;
    Style3: TcxStyle;
    Style4: TcxStyle;
    Style5: TcxStyle;
    Style6: TcxStyle;
    Style7: TcxStyle;
    Style8: TcxStyle;
    Style9: TcxStyle;
    cbb_isPay: TcxComboBox;
    LItemcnt1Item1: TdxLayoutItem;
    lgrpcnt1Group1: TdxLayoutGroup;
    Q: TpFIBDataSet;
    Q_mat: TpFIBDataSet;
    src_Q: TDataSource;
    src_Qmat: TDataSource;
    frDS1: TfrxDBDataset;
    frDS2: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_wClick(Sender: TObject);
    procedure btn_matClick(Sender: TObject);
    procedure btn_wAddClick(Sender: TObject);
    procedure btn_wEditClick(Sender: TObject);
    procedure btn_wDelClick(Sender: TObject);
    procedure btn_postClick(Sender: TObject);
    procedure btn_edit_mClick(Sender: TObject);
    procedure btn_del_mClick(Sender: TObject);
    procedure cbb_filtrPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_matPropertiesChange(Sender: TObject);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_workPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_workPropertiesChange(Sender: TObject);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_LinkRecClick(Sender: TObject);
    procedure btn_NewRecClick(Sender: TObject);
    procedure btn_MoveToJurClick(Sender: TObject);
    procedure grpcnt1Group1Button0Click(Sender: TObject);
    procedure clv5FLAGPropertiesEditValueChanged(Sender: TObject);
    procedure grpcnt1Group6TabChanged(Sender: TObject);
    procedure btn_selAllClick(Sender: TObject);
    procedure btn_selNoneClick(Sender: TObject);
    procedure btn_MakeWorkClick(Sender: TObject);
    procedure v5StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure grpcnt2Group1Button0Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppd1Click(Sender: TObject);
    procedure ppd1PropertiesCloseUp(Sender: TObject);
    procedure ppd1PropertiesPopup(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_prewClick(Sender: TObject);
    procedure btn_addwithLinkClick(Sender: TObject);
    procedure btn_addNoLinkClick(Sender: TObject);
    procedure btn_addByRecClick(Sender: TObject);
    procedure btn_GetDispDataClick(Sender: TObject);
    procedure btn_filterClick(Sender: TObject);
    procedure v6DblClick(Sender: TObject);
    procedure v6CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure clv1StateStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cbb_isPayPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }

    canLink: Boolean;
    Q_RQ: TADQuery;
    DISPvsSUON: TStringList; //код заявки = код работы
    procedure PrepareDS;
    procedure OpenWorkList;
    procedure OpenServisWork;
    function GetGRP: Variant;
    procedure FillWorkEdit;
    procedure FillMatEdit;
    procedure GetJurnalRec(isLink: Variant);
    procedure GetArhivRec(isLink: Variant);
    procedure isCanLink(link: Boolean);
    function CheckWorkParam :Boolean;
    function CheckPeriodWork(d1,d2 :Variant) :boolean;
    //
    procedure AddWork;
    procedure EditWork;
    function ifOutMontAttire(docDate :Variant) :Boolean;
    //
    function CheckParam :boolean;
    procedure NewMaterial;
    procedure EditMaterial;
    function GetEd(Cod :Variant) :string;
    procedure GetPrice;
    //
    procedure LinkJurnal(unlink: Boolean = false);
    procedure EditJRecord;
    procedure AddJRecord(addType: Integer);
    //
    procedure RecInJurnal(code: Variant);
    procedure SetRight;
    //
    procedure GetOrder;
    procedure CreateOrderMem;
    procedure CheckAll(check: Boolean = true);
    procedure AddSellectedWork;
    procedure ClearWEdit;
    procedure ClearMatEdit;
    //
    procedure PrepareForm;
    procedure SetVariables;
    procedure EnableButtons;
    procedure NextOrder;
    procedure PrewOrder;
    //Disp
    procedure OpenDispQuery;
    procedure OpenDetail;
    procedure Get_DISP_ID;
    //
    function Get_LinkWork(ID: Variant): Variant;
    procedure CreateMemDataRQ;
    procedure PrepareRq;
  public
    { Public declarations }
    openFromRq: Boolean; //открытие из заявки
    RqCode: Variant; //код заявки
    fWorkList, fKontragent, fHouse, fData, fStreet: Variant;
    fStreetName, fNomer: string;
    DISP_ID: Variant;
    ds: TpFIBDataSet;
  end;

var
  OrderSpecForm: TOrderSpecForm;

implementation

uses cmDBUnit, CommonDm, KServisWorkFrm, KServisMaterialFrm, cmUtils,
  AddJWorkFrm, MatClassFrm, common, RqDetailFrm;

{$R *.dfm}
procedure TOrderSpecForm.AddJRecord(addType: Integer);
var
  F: TAddJWorkForm;
  Cod: Variant;
begin
  try
    F := TAddJWorkForm.Create(Self);
    //
    F.cbb_WorkType.EditValue := null;
    F.cbb_WorkType.Properties.ReadOnly := false;
    if ActiveUserType = 1 then
      F.cbb_kontr.EditValue := ActiveKontragent else//v2.FN('Kontragent');
      F.cbb_kontr.EditValue := fKontragent;
    F.cbb_street.EditValue := fStreet;
    F.cbb_house.EditValue := fHouse;//v2.FN('HOUSE');
    F.dt_RegDate.EditValue := fData;//v2.FN('DATA');
    F.dt_PlanDate.EditValue := fData+30;//v2.FN('DATA') + 30;
    F.dt_FactDate.EditValue := null;
    //F.mmo_desc.EditValue := v2.FN('sworkname');
    //F.txt_place.EditValue := v2.FN('Note');

    // addtype
    case addType of
      0: begin
           F.AddType:= atNoLink;   // без связи
           F.SetEditParam;
         end;
      1: begin
           F.AddType:= atWithLink; // связать с жкрналом
           F.SetEditParam;
         end;
      2: begin
           F.AddType:= atBasis;    // создать на основании
           F.SetEditParam;
         end;
      else raise Exception.Create('Error Message addType');
    end;

    F.checFact:= addType = 1;
    // F.mmo_Note.EditValue := v4.GetColumnByFieldName('Note').EditValue;
    if F.ShowModal = mrOk then
    begin
      with ds_Jwork do
      begin
        //if F.chk_fakt.Checked then
        //begin
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
          FN('STREET').AsVariant := F.cbb_street.EditValue;
          FN('FactDate').AsVariant := F.dt_FactDate.EditValue;
          if addType=1 then
            FN('WORKSPECLIST').AsVariant:= v2.FN('CODE');
          if addType=2 then
            FN('WORKSPECLIST1').AsVariant:= v2.FN('CODE');
          Post;
          // Cod:=FN('CODE').AsVariant;
        //end;
      end;

      if addType>0 then
      with ds_WorkSpecList do
      begin
        Edit;
          case addType of
            1 : FN('JWORK').AsVariant := Cod;
            2 : FN('JWORK1').AsVariant := Cod;
          end;
        Post;
      end;
      GetJurnalRec(v2.FN('JWork'));
    end;
  finally
    F.Free;
  end;
end;


procedure TOrderSpecForm.AddSellectedWork;
var
  Q: TFIBQuery;
  I: Integer;
  procedure AddWork;
  begin
    Q.ParamByName('DATA').AsVariant := dt1.EditValue;
    Q.ParamByName('KONTRAGENT').AsVariant := fKontragent;
    Q.ParamByName('SERVISWORK').AsVariant := cbb_work.EditValue;
    Q.ParamByName('HOUSE').AsVariant:= md_wl.FieldByName('HOUSE').AsVariant;
    if ced_wprice.EditValue = null then
    Q.ParamByName('PRICE').AsVariant := 0 else
    Q.ParamByName('PRICE').AsVariant := ced_wprice.EditValue;
    Q.ParamByName('WORKLIST').AsVariant:= md_wl.FieldByName('CODE').AsVariant;
    Q.ParamByName('QUANTITY').AsVariant := ed_col.EditValue;
    Q.ParamByName('NOTE').AsVariant:= ppd1.EditingValue;
    Q.ExecQuery;
  end;
begin
  if not CheckWorkParam then Exit;
  Q:= GetQueryForUse(cmDb.WT,
    'insert into WORKSPECLIST' + #13#10 +
    '   (DATA, KONTRAGENT, SERVISWORK, HOUSE, PRICE, NOTE, WORKLIST, QUANTITY)'
    + #13#10 +
    'values ' + #13#10 +
    '(:DATA, :KONTRAGENT, :SERVISWORK, :HOUSE, :PRICE, :NOTE, :WORKLIST, ' +
    ':QUANTITY)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  v5.BeginUpdate(lsimImmediate);
  try
      with md_wl do begin
        First;
        while not Eof do begin
        if md_wl.FieldByName('FLAG').AsBoolean = true then begin
          AddWork;
          Edit;
          FieldByName('FLAG').AsBoolean:= False;
          Post;
        end;
          Next;
        end;
      end;
      GetOrder;
  finally
    v5.EndUpdate;
    FreeQueryForUse(Q);
  end;
end;

procedure TOrderSpecForm.AddWork;
begin
   if not CheckWorkParam then Exit;
   if not CheckPeriodWork(fData,dt1.EditingValue) then
    raise EMyException.Create('Дата работы не может выходить за пределы периода наряда!');

    with ds_WorkSpecList do
    begin
      Append;
      ds_WorkSpecList.FN('DATA').AsVariant := dt1.EditValue;
      FN('KONTRAGENT').AsVariant := fKontragent;
      FN('HOUSE').AsVariant := fHouse;
      FN('SERVISWORK').AsVariant := cbb_work.EditValue;
      // FN('ED').AsVariant:=F.txt_ed.EditValue;
      FN('quantity').AsVariant := ed_col.EditValue;
      FN('PRICE').AsVariant := ced_wprice.EditValue;
      FN('NOTE').AsVariant := ppd1.EditValue;
      FN('WORKLIST').AsVariant := fWorkList;
      Post;
      CloseOpen(true);
      Last;
    end;
end;
// create new record
procedure TOrderSpecForm.btn_addByRecClick(Sender: TObject);
begin
  AddJRecord(2);
end;

procedure TOrderSpecForm.btn_addNoLinkClick(Sender: TObject);
begin
  AddJRecord(0);
end;
// create record and link to jornal
procedure TOrderSpecForm.btn_addwithLinkClick(Sender: TObject);
begin
  if v2.FN('CODE')<> null then
     AddJRecord(1);
end;

procedure TOrderSpecForm.btn_del_mClick(Sender: TObject);
begin
  if not ifOutMontAttire(fData) then
  if cmMessageBox
        ('Вы действительно хотите удалить запись из списка материалов?') then
  begin
    ds_WorkSpecMaterial.Delete;
    btn_del_m.Enabled:=False;
  end;
end;

procedure TOrderSpecForm.btn_edit_mClick(Sender: TObject);
begin
  if v3.FN('CODE') = null then Exit;
  if CheckParam then
     EditMaterial;
end;

procedure TOrderSpecForm.btn_filterClick(Sender: TObject);
begin
  v6.BeginUpdate(lsimImmediate);
  //Get_DISP_ID;
  //if DISP_ID = null then
  //   raise dezException.Create('Данный адрес из диспетчера не связан с адресом в СУОН!');
  try
    if not RQ.con.Connected = true then begin
      RQ.Connect;
      RQ.con.Connected:=true;
    end;
    src_RQ.DataSet:=RQ.OpenRQ(DISP_ID);
  finally
    v6.EndUpdate;
  end;
end;

procedure TOrderSpecForm.btn_GetDispDataClick(Sender: TObject);
begin
  OpenDispQuery;
end;

procedure TOrderSpecForm.btn_LinkRecClick(Sender: TObject);
begin
  // связываем с журналом
  if canLink then
    LinkJurnal
  else if cmMessageBox('Удалить связь с журналом?') then
    LinkJurnal(true);
end;

procedure TOrderSpecForm.btn_MakeWorkClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите создать запись о работе по выделенным адресам?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    AddSellectedWork;
  end;
end;

procedure TOrderSpecForm.btn_matClick(Sender: TObject);
var
  //F :TKServisMaterialForm;
  F :TMatClassForm;
begin
  F:=TMatClassForm.CreateModal(Self,true);
  F.isReadOnly:= True;
  F.isModal:= True;
  SetSkin(F);
  if F.ShowModal=mrOk then
  begin
    if F.ifInsert then ds_smat.CloseOpen(true);
    com_dm.ds_ServisMaterial.CloseOpen(false);
    cbb_mat.EditValue:= F.v1.GetColumnByFieldName('Code').EditValue;
  end;
end;

procedure TOrderSpecForm.btn_MoveToJurClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите вернуть запись в журнал?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    RecInJurnal(v4.FN('CODE'));
  end;
end;

procedure TOrderSpecForm.btn_NewRecClick(Sender: TObject);
begin
  //if v2.FN('CODE')<> null then
  //   AddJRecord;
  btn_NewRec.DropDown();
end;

procedure TOrderSpecForm.btn_nextClick(Sender: TObject);
begin
  NextOrder;
end;

procedure TOrderSpecForm.btn_postClick(Sender: TObject);
begin
  if CheckParam then
  NewMaterial;
end;

procedure TOrderSpecForm.btn_prewClick(Sender: TObject);
begin
  PrewOrder;
end;

procedure TOrderSpecForm.btn_printClick(Sender: TObject);
begin
  dzOrder.PrintOrder(fWorkList, frep);
end;

procedure TOrderSpecForm.btn_selAllClick(Sender: TObject);
begin
  CheckAll;
end;

procedure TOrderSpecForm.btn_selNoneClick(Sender: TObject);
begin
  CheckAll(false);
end;

procedure TOrderSpecForm.btn_wAddClick(Sender: TObject);
begin
  AddWork;
end;

procedure TOrderSpecForm.btn_wClick(Sender: TObject);
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

procedure TOrderSpecForm.btn_wDelClick(Sender: TObject);
begin
  if not ifOutMontAttire(fData) then
  if cmMessageBox
        ('Вы действительно хотите удалить запись из списка работ?') then
  begin
    ds_WorkSpecList.Delete;
    btn_del_m.Enabled:=False;
    btn_wDel.Enabled:=False;
  end;
end;

procedure TOrderSpecForm.btn_wEditClick(Sender: TObject);
begin
  if v2.FN('CODE') = null then Exit;
  if CheckWorkParam then EditWork;
end;

procedure TOrderSpecForm.cbb_filtrPropertiesEditValueChanged(Sender: TObject);
begin
  OpenServisWork;
end;

procedure TOrderSpecForm.cbb_isPayPropertiesEditValueChanged(Sender: TObject);
begin
  OpenServisWork;
end;

procedure TOrderSpecForm.cbb_matPropertiesChange(Sender: TObject);
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

procedure TOrderSpecForm.cbb_matPropertiesEditValueChanged(Sender: TObject);
begin
  GetPrice;
end;

procedure TOrderSpecForm.cbb_workPropertiesChange(Sender: TObject);
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

procedure TOrderSpecForm.cbb_workPropertiesEditValueChanged(Sender: TObject);
begin
  GetEd(cbb_work.EditValue);
end;

procedure TOrderSpecForm.CheckAll(check: Boolean);
var
  I: Integer;
begin
  try
    for i := 0 to v5.ViewData.RowCount - 1 do begin
      v5.ViewData.Rows[i].Values[clv5Flag.Index]:= check;
    end;
  finally

  end;
end;

function TOrderSpecForm.CheckParam: boolean;
begin
  Result:=False;
  if v2.FN('CODE') = null then
    raise dezException.Create('Укажите работу!');
  if (cbb_mat.EditValue=null) or (cbb_mat.EditValue=Unassigned) then
    raise EMyException.Create('Укажите материал.');
  if (edsp_kol.EditValue=null) or (edsp_kol.EditValue=Unassigned) then
    raise EMyException.Create('Укажите кол-во.');
  if not VarIsNumeric(cedt_price.EditingValue) then
  //if (cedt_price.EditValue=null) or (cedt_price.EditValue=Unassigned)  then
    raise EMyException.Create('Укажите цену.');
  Result:=True;
end;

function TOrderSpecForm.CheckPeriodWork(d1, d2: Variant): boolean;
var
  nextD :TDateTime;
  M,nextM :integer;
  Y: Word;
begin
  Result:=True;
  Y:=YearOf(VarToDateTime(d1));
  M:=MonthOf(SysUtils.IncMonth(d1));
  if M=1 then Y:=Y+1;
  nextD:=StrToDateTime('25.'+IntToStr(M)+'.'+VarToStr(Y));
  if (d2>nextD) or (d2<d1) then Result:=false;
end;

function TOrderSpecForm.CheckWorkParam: Boolean;
begin
  Result:=false;
  if dt1.EditValue=null then
    raise dezException.Create('Не указана дата работы по наряду.');
  if cbb_work.EditValue=null then
    raise dezException.Create('Не указана работа по наряду.');
  if (fHouse = null) or (fHouse = 0) then
    raise dezException.Create('Ошибка определения дома!'+#10#13+'Сообщите пожалуйста разработчикам');
  Result:=True;
end;

procedure TOrderSpecForm.ClearMatEdit;
begin
  cbb_mat.EditValue:=null;
  edsp_kol.EditValue:=0;
  cedt_price.EditValue:=0;
  m_note.EditValue:=null;
  btn_del_m.Enabled:=cbb_mat.EditValue<>null;
end;

procedure TOrderSpecForm.ClearWEdit;
begin
  dt1.EditValue:=Date;
  cbb_work.EditValue:=null;
  ed_col.EditValue:=null;
  ced_wprice.EditValue:=null;
  ppd1.EditValue:=null;
  btn_wDel.Enabled:=false;
  btn_wEdit.Enabled:= False;
  btn_del_m.Enabled:=False;
  ClearMatEdit;
  GetJurnalRec(null);
  GetArhivRec(null);
end;

procedure TOrderSpecForm.clv1StateStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

  function ConvertHtmlHexToTColor(Color: string):TColor ;
  var
    rColor: TColor;
  begin
    if (length(color) >= 6) then
    begin
      color := '$00' + copy(color,5,2) + copy(color,3,2) + copy(color,1,2);
      rColor := StrToInt(color);
    end;
    result := rColor;
  end;

  procedure SetColor(Style: TcxStyle; FontColor, BrushColor: TColor);
  begin
    //Style:= TcxStyle.Create(self);
    Style.Font.Style := [fsBold];
    Style.Color := BrushColor;
    Style.Font.Color := FontColor;
    AStyle:= Style;
  end;
begin
  case ARecord.Values[clv6Status.Index] of
    1 : SetColor(Style1, clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Не рассмотрена
    2 : SetColor(Style2, clBlack, ConvertHtmlHexToTColor('FFFFB3'));  //В процессе
    3 : SetColor(Style3, clBlack, ConvertHtmlHexToTColor('90EE90'));  //Выполнена
    4 : SetColor(Style4, clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Возвращена
    5 : SetColor(Style5, clWhite, clBlue);                            //Снята
    6 : SetColor(Style6, clWhite, clGreen);                           //Закрыта
    7 : SetColor(Style7, clBlack, ConvertHtmlHexToTColor('87CEEB'));  //Отложена
    8 : SetColor(Style8, clBlack, ConvertHtmlHexToTColor('6699CC'));  //Текущий ремонт
    9 : SetColor(Style9, clBlack, ConvertHtmlHexToTColor('336699'));  //Запрос в СЭ
  end;
end;

procedure TOrderSpecForm.clv5FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v5.DataController.Post;
end;

procedure TOrderSpecForm.CreateMemDataRQ;
begin
  with md_RQ do begin
    AddField('RequestId',ftInteger);
    AddField('DU', ftString,'ДУ', 128);
    AddField('Added',ftString, 'Добавлена', 128);
    AddField('WorkType', ftString,'Вид работ', 128);
    AddField('Addr', ftString, 'Адрес', 128);
    AddField('LocationTitle', ftString, 'Локализация', 32);
    AddField('State', ftString, 'Статус', 32);
    AddField('NOTE', ftString, 'Коментарии', 128);
    AddField('Price', ftString, 'Цена', 32);
    // no visible
    AddField('SuonID', ftInteger, 'Код работы(СУОН)', 32);
    AddField('Status', ftString, 'Статус'+#10#13+'Код', 32);
    Open;
  end;
end;

procedure TOrderSpecForm.CreateOrderMem;
begin
  CreateField(md_wl,'FLAG',ftBoolean);
  CreateField(md_wl,'CODE',ftInteger);
  CreateField(md_wl,'DATA',ftDate);
  CreateField(md_wl,'KONTRAGENT',ftInteger);
  CreateField(md_wl,'KONTRNAME',ftString,128);
  CreateField(md_wl,'STREET',ftInteger);
  CreateField(md_wl,'STREETNAME',ftString,128);
  CreateField(md_wl,'HOUSE',ftInteger);
  CreateField(md_wl,'NOMER',ftString,32);
  CreateField(md_wl,'DU',ftInteger);
  CreateField(md_wl,'DUNAME',ftString,128);
  CreateField(md_wl,'WORKER',ftInteger);
  CreateField(md_wl,'FIO',ftString,256);
  CreateField(md_wl,'NOTE',ftString,256);
  CreateField(md_wl,'Ex', ftInteger);
  md_wl.Open;
end;

procedure TOrderSpecForm.EditJRecord;
var
  F: TAddJWorkForm;
begin
  try
    F := TAddJWorkForm.Create(Application);
    F.SetEditParam;

    F.cbb_WorkType.EditValue := v4.FN('JWorkType');
    F.cbb_kontr.EditValue := v4.FN('Kontragent');
    F.cbb_street.EditValue := v4.FN('STREET');
    F.cbb_house.EditValue := v4.FN('HOUSE');
    F.dt_RegDate.EditValue := v4.FN('RegDate');
    F.dt_PlanDate.EditValue := v4.FN('PlanDate');
    F.dt_FactDate.EditValue := v4.FN('FactDate');
    F.mmo_desc.EditValue := v4.FN('Description');
    F.txt_place.EditValue := v4.FN('Place');
    F.mmo_Note.EditValue := v4.FN('Note');
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

procedure TOrderSpecForm.EditMaterial;
begin
  with ds_WorkSpecMaterial do
  begin
    Edit;
     // FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
      FN('CLASSMAT').AsVariant := cbb_mat.EditValue;
      FN('QUANTITY').AsVariant := edsp_kol.EditValue;
      FN('PRICE').AsVariant := cedt_price.EditingValue;
      FN('NOTE').AsVariant := m_note.EditValue;
    Post;
  end;
end;

procedure TOrderSpecForm.EditWork;
var
  AIndex: Integer;
begin
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  try
    with ds_WorkSpecList do
    begin
      Edit;
      FN('DATA').AsVariant:=dt1.EditValue;
      FN('SERVISWORK').AsVariant:=cbb_work.EditValue;
      FN('Quantity').AsVariant:=ed_col.EditValue;
      FN('PRICE').AsVariant:=ced_wprice.EditValue;
      FN('NOTE').AsVariant:=ppd1.EditValue;
      Post;
      CloseOpen(true);
    end;
  finally
    v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TOrderSpecForm.EnableButtons;
begin
  if ds.eof then begin
     btn_prew.Enabled:= true;
     btn_next.Enabled:= false;
  end else
  if ds.RecNo = 1 then begin
     btn_prew.Enabled:= False;
     btn_next.Enabled:= True;
  end else begin
     btn_prew.Enabled:= True;
     btn_next.Enabled:= True;
  end;
end;

procedure TOrderSpecForm.FillMatEdit;
var
  i: Variant;
begin
  i:= v2.FN('CODE');
  cbb_mat.EditValue:=v3.FN('CLASSMAT');
  edsp_kol.EditValue:=v3.FN('QUANTITY');
  cedt_price.EditValue:=v3.FN('PRICE');
  m_note.EditValue:=v3.FN('NOTE');
  btn_del_m.Enabled:=cbb_mat.EditValue<>null;
end;

procedure TOrderSpecForm.FillWorkEdit;
begin
  if cbb_work.EditValue = null then
     dt1.EditValue:= Date else
     dt1.EditValue:=v2.FN('DATA');
  cbb_work.EditValue:=v2.FN('SERVISWORK');
  ed_col.EditValue:=v2.FN('Quantity');
  ced_wprice.EditValue:=v2.FN('PRICE');
  ppd1.EditValue:=v2.FN('NOTE');
  ppd1.EditValue:= v2.FN('NOTE');
  btn_wDel.Enabled:=True;
  btn_del_m.Enabled:=False;
  FillMatEdit;
  GetJurnalRec(v2.FN('JWork'));
  GetArhivRec(v2.FN('JWork'));
end;

procedure TOrderSpecForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iFile: string;
begin
  iFile:= ExtractFilePath(Application.ExeName)+'config\orderspec.ini';
  docm_1.SaveLayoutToIniFile(iFile);
  //RQ.Free;
  FreeAndNil(DISPvsSUON);
end;

procedure TOrderSpecForm.FormCreate(Sender: TObject);
var
  iFile: string;
begin
  iFile:= ExtractFilePath(Application.ExeName)+'config\orderspec.ini';
  LoadForm(prop1, Self.Name);
  //docm_1.LoadLayoutFromIniFile(iFile);
  openFromRq:= False;
  PrepareDS;
  CreateOrderMem;
  CreateMemDataRQ;
  DISPvsSUON:= TStringList.Create;
end;

procedure TOrderSpecForm.FormShow(Sender: TObject);
begin
  SetRight;
  PrepareForm;
end;

procedure TOrderSpecForm.GetArhivRec(isLink: Variant);
  procedure SetImage(SomeValue: Variant; SomeDescription: string;
    SomeImageIndex: Integer);
  var
    Items: TcxImageComboBoxItems;
    Item: TcxImageComboBoxItem;
  begin
    Items := TcxImageComboBoxProperties(cl1.Properties).Items;
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
  if (fHouse = null) then Exit;
  with ds_JWORKARC do
  begin
    Close;
    MainWhereClause :=
      'JW.KONTRAGENT=:kontr and JW.HOUSE=:house --and JW.FACTDATE is null';
    ParamByName('kontr').AsVariant := fKontragent;
    ParamByName('HOUSE').AsVariant := fHouse;
    Open;
    {if IsEmpty then btn_LinkRec.Enabled:= False else
                    btn_LinkRec.Enabled:= True; }

    Filtered := false;
    Filter := 'WORKSPECLIST=null';
    if (isLink <> null) and (isLink <> Unassigned) then
    begin
      //btn_linkJl.Visible := ivNever;
      if Locate('WORKSPECLIST', v2.FN('CODE'), [])
        then
      begin
        // фильтр на найденую запись, нефиг показывать другие записи
        Filter := 'WORKSPECLIST=' + v2.FN('CODE');
        Filtered := true;

        SetImage(v2.FN('CODE'), 'Связка', 8);
        //isCanLink(false);
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
      //btn_linkJl.Visible := ivAlways;
      Filter := 'WORKSPECLIST=null';
      Filtered := true;
      //isCanLink(true);
      //SetImage(null, '', -1);
      //btn_link.Glyph := nil;
    end;
    Filtered := true;
    if IsEmpty then
       btn_MoveToJur.Enabled:= False else
       btn_MoveToJur.Enabled:= True;
  end;
end;

function TOrderSpecForm.GetEd(Cod: Variant): string;
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
    //
    if md_wl.FieldCount>3 then
    GetOrder;
  finally
    Result:=VarToStr(ED);
    FreeQueryForUse(Q);
  end;
end;

function TOrderSpecForm.GetGRP: Variant;
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

procedure TOrderSpecForm.GetJurnalRec(isLink: Variant);
var
  WorkCode: Variant;

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
  if (fHouse = null) then Exit;
  if v2.FN('CODE') = null then
     WorkCode:= 'null' else
     WorkCode:= v2.FN('CODE');
  with ds_Jwork do
  begin
    Close;
    MainWhereClause :=
      'JW.KONTRAGENT=:kontr and JW.HOUSE=:house --and JW.FACTDATE is null';
    ParamByName('kontr').AsVariant := fKontragent;
    ParamByName('HOUSE').AsVariant := fHouse;
    Open;
    if IsEmpty then btn_LinkRec.Enabled:= False else
                    btn_LinkRec.Enabled:= True;

    Filtered := false;
    //Filter := 'WORKSPECLIST=null'+' or '+'WORKSPECLIST1=' + WorkCode;
    if (v2.FN('JWork') <> null) or (v2.FN('JWork1') <> null) then
    begin
        // фильтр на найденую запись, нефиг показывать другие записи
        Filter := 'WORKSPECLIST=' + WorkCode+' or '+'WORKSPECLIST1=' + WorkCode;
        Filtered := true;
        if v2.FN('JWork') <> null then begin
          SetImage(v2.FN('CODE'), 'Связка', 8);
          isCanLink(false);
        end else
        if (v2.FN('JWork1') <> null) and (v2.FN('JWork')=null) then begin
          SetImage(null, '', -1);
          isCanLink(false);
        end;


      {if Locate('WORKSPECLIST', v2.FN('JWork'), [])
        then
      begin
        // фильтр на найденую запись, нефиг показывать другие записи
        Filter := 'WORKSPECLIST=' + v2.FN('JWork')+' or '+'WORKSPECLIST1=' + v2.FN('JWork');
        Filtered := true;

        SetImage(v2.FN('CODE'), 'Связка', 8);
        isCanLink(false);
      end
      else
      begin
        SetImage(null, '', -1);
        Filter := 'WORKSPECLIST=null';
        Filtered := true;
      end;}
    end
    else
    begin
      //btn_linkJl.Visible := ivAlways;
      Filter := 'WORKSPECLIST=null';
      Filtered := true;
      isCanLink(true);
      //SetImage(null, '', -1);
      //btn_link.Glyph := nil;
    end;
    Filtered := true;
  end;
end;

procedure TOrderSpecForm.GetOrder;
var
  data: string;
begin
  v5.BeginUpdate(lsimImmediate);
  try
    with ds_worklist do begin
      Close;
      //if CheckDate then begin
        MainWhereClause:=
          'EXTRACT(MONTH FROM wl.DATA)||EXTRACT(YEAR FROM wl.DATA) =:dat';
        MainWhereClause:= MainWhereClause+ ' and wl.KONTRAGENT = :kontr and wl.CODE<>:cod';
        ParamByName('kontr').AsVariant:= fKontragent;
        data:= IntToStr(MonthOf(fData))+ IntToStr(YearOf(fData));
        ParamByName('dat').AsVariant:= data;
        ParamByName('cod').AsVariant:= fWorkList;
        ParamByName('work').AsVariant:= cbb_work.EditValue;
      //end;
      Open;
      //Last;
    end;
    md_wl.Close; md_wl.Open;
    md_wl.LoadFromDataSet(ds_worklist);
  finally
    v5.EndUpdate;
  end;
end;

procedure TOrderSpecForm.GetPrice;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select ED, PRICE from classmat where Code=:cod');
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

procedure TOrderSpecForm.Get_DISP_ID;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,'SELECT DISP_ID FROM HOUSE WHERE CODE=:COD');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('COD').AsVariant:= fHouse;
    Q.ExecQuery;
    DISP_ID:= Q.FN('DISP_ID').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TOrderSpecForm.Get_LinkWork(ID: Variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT, 'SELECT CODE FROM WORKSPECLIST where REQUESTID = :ID');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('ID').AsVariant:= ID;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant;
    if Result <> null then begin
       DISPvsSUON.Add(Result);
       DISPvsSUON.Values[Result]:= ID;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TOrderSpecForm.grpcnt1Group1Button0Click(Sender: TObject);
begin
  //prop1.RestoreFrom;
  ClearWEdit;
end;

procedure TOrderSpecForm.grpcnt1Group6TabChanged(Sender: TObject);
begin
  grpcnt1Group2.Enabled:= grpcnt1Group6.ItemIndex =1;
end;

procedure TOrderSpecForm.grpcnt2Group1Button0Click(Sender: TObject);
begin
  ClearMatEdit;
end;

function TOrderSpecForm.ifOutMontAttire(docDate: Variant): Boolean;
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

procedure TOrderSpecForm.isCanLink(link: Boolean);
begin
  if link then
  begin
    //btn_link.Glyph := nil;
    //il1.GetBitmap(10, btn_link.Glyph);
    canLink := true;
    btn_LinkRec.Caption := 'Связать с журналом.';
    btn_LinkRec.ImageIndex:= 8;
    btn_LinkRec.Enabled:= not ds_Jwork.IsEmpty;
    btn_addwithLink.Enabled:= True;
    //JtextLink(true);
  end
  else
  begin
    //btn_link.Glyph := nil;
    //il1.GetBitmap(9, btn_link.Glyph);
    canLink := false;
    btn_LinkRec.Caption  := 'Удалить связь с журналом.';
    btn_LinkRec.ImageIndex:= 2;
    //JtextLink;
  end;
    btn_addwithLink.Enabled:= v2.FN('JWork') = null;
    btn_addByRec.Enabled:= v2.FN('JWork1') = null;
end;

procedure TOrderSpecForm.LinkJurnal(unlink: Boolean);
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
    ws := v2.FN('Code');
    jw := v4.FN('Code');
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
    GetJurnalRec(v2.FN('JWork'));
  end;

  //удаляем основную связь
 { if (v4.FN('WORKSPECLIST')<> null) and (unlink = false) then begin
    if unlink then
    begin
      ws := null;
      jw := null;
    end
    else
    begin
      ws := v2.FN('Code');
      jw := v4.FN('Code');
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
      GetJurnalRec(v2.FN('JWork'));
    end;
  end else
  //удаляем связь на основании
  if v4.FN('WORKSPECLIST1')<> null then begin
    if unlink then
    begin
      ws := null;
      jw := null;
    end
    else
    begin
      ws := v2.FN('Code');
      jw := v4.FN('Code');
    end;
    if (ws <> Unassigned) and (jw <> Unassigned) then
    begin
      if not unlink then
        EditJRecord;
      ds_WorkSpecList.Edit;
      ds_WorkSpecList.FN('JWORK1').AsVariant := jw;
      ds_WorkSpecList.Post;
      //
      ds_Jwork.Edit;
      ds_Jwork.FN('WORKSPECLIST1').AsVariant := ws;
      if unlink then
        ds_Jwork.FN('FactDate').AsVariant := null;
      ds_Jwork.Post;
      GetJurnalRec(v2.FN('JWork'));
    end;
  end;}
end;

procedure TOrderSpecForm.NewMaterial;
begin
  with ds_WorkSpecMaterial do
  begin
      Append;
      FN('WORKSPECLIST').AsVariant := v2.FN('CODE');
      FN('DATA').AsVariant := v2.FN('DATA');
      FN('KONTRAGENT').AsVariant := v2.FN('KONTRAGENT');
      FN('SERVISWORK').AsVariant := v2.FN('SERVISWORK');
      FN('HOUSE').AsVariant := v2.FN('HOUSE');
      FN('ADDR').AsVariant := v2.FN('ADDR');
      //FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
      FN('CLASSMAT').AsVariant:= cbb_mat.EditValue;
      FN('QUANTITY').AsVariant := edsp_kol.EditValue;
      FN('PRICE').AsVariant := cedt_price.EditValue;
      FN('NOTE').AsVariant := m_note.EditValue;
      Post;
  end;
end;

procedure TOrderSpecForm.NextOrder;
begin
  ds.Next;
  EnableButtons;
  //
  SetVariables;
  PrepareForm;
  PrepareDS;
end;

procedure TOrderSpecForm.OpenDetail;
var
  F: TRqDetailForm;
  SuonID: Variant;
begin
  SuonID:= v6.FN('SuonID');
  //
  if SuonID <> null then
  if not ds_WorkSpecList.Locate('CODE', SuonID,[]) then
     raise DezException.Create('Работа находится в другом периоде. Редактирование запрещено!');
  v6.BeginUpdate(lsimImmediate);
  try
    F:= TRqDetailForm.Create(self);
    try
      F.ID:= v6.FN('RequestId');
      if SuonID = null then
         F.RqState:= rqNew else  {$MESSAGE WARN 'делаем проверку на связь с работой - есть/нет'}
         F.RqState:= rqEdit;
      case F.RqState of
        rqNew:  begin  //новая работа (поле "ссылка на заявку диспетчера пустое")
                  F.ds_WSL:= ds_WorkSpecList;      // сыылка на DataSet работ
                  F.ds_WSM:= ds_WorkSpecMaterial;  // сыылка на DataSet материалов
                  F.fData:= fData;
                  F.fWorkList:= fWorkList;
                  F.fKontragent:=   fKontragent;
                  F.fHouse:=        fHouse;
                  F.fData:=         fData;
                  F.fWorkList:=     fWorkList;
                end;
        rqEdit: begin  //редактируем работу (поле "ссылка на заявку диспетчера НЕ пустое")
                  F.fWorkSpecList:= v2.FN('CODE');
                  F.fServisWork:=   v2.FN('SERVISWORK');
                  F.fKontragent:=   v2.FN('KONTRAGENT');
                  F.fHouse:=        v2.FN('HOUSE');
                  F.fAddr:=         v2.FN('ADDR');
                  F.fData:=         fData;
                  F.fWorkList:=     fWorkList;
                  F.SuonID:=        SuonID;        // ссылка на связанную работу
                  F.ds_WSL:= ds_WorkSpecList;      // сыылка на DataSet работ
                  F.ds_WSM:= ds_WorkSpecMaterial;  // сыылка на DataSet материалов
                end;
      end;
      if F.ShowModal = mrOk then begin
        OpenDispQuery;
        if F.RqState = rqEdit then   // переоткрываем материалы
           ds_WorkSpecMaterial.CloseOpen(False);
      end;
    finally
      FreeAndNil(F);
    end;
  finally
    v6.EndUpdate;
  end;
end;

procedure TOrderSpecForm.OpenDispQuery;
var
  clause: string;
begin
  if DISP_ID = null then Exit;

  v6.BeginUpdate(lsimImmediate);
  try
    if not RQ.con.Connected = true then begin
     { with RQ.con.Params do begin
        Clear;
        Add('SERVER=mail.kc174.ru,7781');
        Add('User_Name=vshevikov');
        Add('Password=k714tXq2');
        Add('DATABASE=DispatcherWebApp');
        Add('DriverID=MSSQL');

      end;
      RQ.con.Connected:=true;}
      RQ.Connect;
    end;
    {clause:= 'rq.IssuedAtUtc between :d1 and :d2 and rq.HouseId = :HouseId'+
             ' and rq.[Status] in (2,4,7,8,9) and rq.WorkCompanyId = :WorkCompanyId';}
    clause:= 'rq.HouseId = :HouseId'+
             ' and rq.[Status] in (2,4,7,8,9) and rq.WorkCompanyId = :WorkCompanyId';
    Q_RQ:=RQ.GetRQ(clause, false);
    with Q_RQ do begin
      //ParamByName('d1').AsDateTime:= StrToDateTime('01.09.2012')+StrToTime('00:00:00');
      //ParamByName('d2').AsDateTime:= EndOfTheMonth(Date)+StrToTime('23:00:00');
      if Disp_Kontr = null then
      raise dezException.Create('Не установлена связь - ПО СУОН = ПО Диспетчер!');
      ParamByName('WorkCompanyId').AsInteger:= Disp_Kontr;
      ParamByName('HouseId').Value:= DISP_ID;
      Open;
    end;
    md_RQ.ClearData;
    while not Q_RQ.Eof do begin
      md_RQ.Append;
      md_RQ.FN('RequestId').AsInteger:= Q_RQ.FieldByName('RequestId').AsInteger;
      md_RQ.FN('DU').AsString:= Q_RQ.FieldByName('DU').AsString;
      md_RQ.FN('Added').AsString:= Q_RQ.FieldByName('Added').AsString;
      md_RQ.FN('WorkType').AsString:= Q_RQ.FieldByName('WorkType').AsString;
      md_RQ.FN('Addr').AsString:= Q_RQ.FieldByName('Addr').AsString;
      md_RQ.FN('LocationTitle').AsString:= Q_RQ.FieldByName('LocationTitle').AsString;
      md_RQ.FN('State').AsString:= Q_RQ.FieldByName('State').AsString;
      md_RQ.FN('NOTE').AsString:= Q_RQ.FieldByName('NOTE').AsString;
      md_RQ.FN('Price').AsString:= Q_RQ.FieldByName('Price').AsString;
      md_RQ.FN('SuonID').AsVariant:= Get_LinkWork(Q_RQ.FieldByName('RequestId').AsInteger);
      md_RQ.FN('Status').AsInteger:= Q_RQ.FieldByName('Status').AsInteger;
      md_RQ.Post;
      Q_RQ.Next;
    end;
    //src_RQ.DataSet:= Q_RQ;
  finally
    v6.EndUpdate;
  end;
end;

procedure TOrderSpecForm.OpenServisWork;
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
    //платные
    if cbb_isPay.ItemIndex>0 then begin
      case cbb_isPay.ItemIndex of
        1:  begin
              if MainWhereClause<>'' then
                MainWhereClause:= MainWhereClause + ' and cash=1' // только платные
              else MainWhereClause:= MainWhereClause + ' cash=1';
            end;
        2: begin
              if MainWhereClause<>'' then
                MainWhereClause:= MainWhereClause + ' and cash=0' // только ТО
              else MainWhereClause:= MainWhereClause + ' cash=0';
            end;
      end;
    end;
    OrderClause:='NAME';
    Open;
  end;
end;

procedure TOrderSpecForm.OpenWorkList;
begin
  with ds_WorkSpecList do begin
    Close;
    ParamByName('code').AsVariant:= ds.FN('CODE').AsVariant;
    Open;
  end;
  FillWorkEdit;
end;

procedure TOrderSpecForm.ppd1Click(Sender: TObject);
begin
  ppd1.DroppedDown:=true;
end;

procedure TOrderSpecForm.ppd1PropertiesCloseUp(Sender: TObject);
begin
  ppd1.Text:= mmo1.Text;
end;

procedure TOrderSpecForm.ppd1PropertiesPopup(Sender: TObject);
begin
  mmo1.Text:= ppd1.Text;
end;

procedure TOrderSpecForm.PrepareDS;
begin
  com_dm.ds_ServisMaterial.Open;
  DSOptoins(ds_WorkSpecList, '', 'WORKSPECLIST', 'CODE', 'WORKSPECLIST_GEN', false);
  DSOptoins(ds_WorkSpecMaterial, '', 'WORKSPECMATERIAL', 'CODE', 'WORKSPECMATERIAL_GEN');
  DSOptoins(ds_Jwork, '', 'JWORK', 'CODE', 'JWORK_GEN', false);
  DSOptoins(ds_JWORKARC, '', 'JWORK_ARC', 'CODE', 'JWORK_ARC_GEN', false);
  //ds_smat.CloseOpen(false);
  ds_CLASSMAT.CloseOpen(false);
  OpenServisWork;
  ConfigureCombo(cbb_work);
  ConfigureCombo(cbb_mat);
end;

procedure TOrderSpecForm.PrepareForm;
begin
  Caption:= 'Список работ к наряду №'+VarToStr(fWorkList)+' по адресу '+
            fStreetName+' '+fNomer;
  OpenWorkList;
  GetOrder;
  //если открывается из заявки
  //if openFromRq then
  //   PrepareRq;
end;

procedure TOrderSpecForm.PrepareRq;
begin
  //убираем кнопки навигации по нарядам
  btn_next.Visible:= ivNever;
  btn_prew.Visible:= ivNever;
  //переходим на закладку диспетчера
  docs4.ActiveChild:=pnl_Disp;
  //загружаем заявки
  OpenDispQuery;
  //устанавливаем курсор на нужную запись
  md_RQ.Locate('RequestId',RqCode,[]);
end;

procedure TOrderSpecForm.PrewOrder;
begin
  ds.Prior;
  EnableButtons;
  //
  SetVariables;
  PrepareForm;
  PrepareDS;
end;

procedure TOrderSpecForm.RecInJurnal(code: Variant);
var
  Q: TFIBQuery;
begin
  if code = null then
     raise dezException.Create('Код записи не может быть пустым!');
  //if ds_JWORKARC.State in [dsInactive] then GetArhiv(true);
  // insert record
  Q:= GetQueryForUse(cmDb.WT,
      'insert into JWORK (CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, ' +
      'DESCRIPTION,' + #13#10 +
      '                       PLACE, PLANDATE, FACTDATE, NOTE, SHOWRESULT,' +
      #13#10 +
      '                       WORKSPECLIST, STREET)' + #13#10 +
      'select CODE,JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, DESCRIPTION, PLACE, ' +
      'PLANDATE,' + #13#10 +
      '       FACTDATE, NOTE, SHOWRESULT, WORKSPECLIST, STREET' + #13#10 +
      'from JWORK_ARC' + #13#10 +
      'where CODE=:CODE');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= code;
    Q.ExecQuery;
    // delete record
    ds_JWORKARC.Delete;
    //refresh jurnal
    GetJurnalRec(v2.FN('JWork'));
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TOrderSpecForm.SetRight;
  procedure EditEnabled(aEnabled: Boolean);
  begin
    grpcnt1Group1.Enabled:= aEnabled;
    grpcnt2Group1.Enabled:= aEnabled;
  end;
begin
  if ActiveUserType = 1 then
     btn_MoveToJur.Enabled:= False else
     btn_MoveToJur.Enabled:= True;
  case ActiveRole of
    60 : EditEnabled(false);
    else EditEnabled(true);
  end;
  Get_DISP_ID;
  //pnl_Disp.Visible:= (DISP_ID <> null) and (ActiveUserName = 'SYSDBA');
end;

procedure TOrderSpecForm.SetVariables;
begin
  fWorkList:= ds.FN('CODE').AsVariant;
  fKontragent:= ds.FN('KONTRAGENT').AsVariant;
  fHouse:= ds.FN('HOUSE').AsVariant;
  fData:= ds.FN('DATA').AsVariant;
  fStreet:= ds.FN('STREET').AsVariant;
  fStreetName:= ds.FN('streetname').AsString;
  fNomer:= ds.FN('nomer').AsString;
end;

procedure TOrderSpecForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillWorkEdit;
end;

procedure TOrderSpecForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: FillWorkEdit;
    VK_DOWN: FillWorkEdit;
  end;
end;

procedure TOrderSpecForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillMatEdit;
end;

procedure TOrderSpecForm.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //
end;

procedure TOrderSpecForm.v5StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 if ARecord.Values[clv5Ex.Index]>0 then
   AStyle := cmDb.stl_blue;
end;

procedure TOrderSpecForm.v6CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v6.FN('SuonID') <> null then
  ds_WorkSpecList.Locate('CODE', v6.FN('SuonID'),[]);
end;

procedure TOrderSpecForm.v6DblClick(Sender: TObject);
begin
  if v6.FN('RequestId') <> null then
  OpenDetail;
end;

end.

