unit WorkListTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  Vcl.ComCtrls, dxCore, cxDateUtils, Data.DB, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, FIBDataSet,
  pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  WorkListTO_partial, FibQuery, pFIBCacheQueries, pFIBProps,
  DateUtils,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  dxSkinsdxBarPainter, dxBar, cxCurrencyEdit, cxSpinEdit, cxDataUtils, frxClass,
  frxExportRTF, WorkSpecList, WorkSpecMaterial, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type

 {$REGION 'Filter'}
  TFilter = class
   fDateBegin: TDateTime;
   fDateEnd: TDateTime;
   fKontragent: Variant;
   fStreet: Variant;
   fHouse: Variant;
   fMlist: Variant;
   fMinPeriodData: TDateTime;
   fMaster: Variant;
  private
   procedure CheckParams;
  public
   function CreateClause: string;
  published
   property DateBegin: TDateTime read fDateBegin write fDateBegin;
   property DateEnd: TDateTime read fDateEnd write fDateEnd;
   property Kontragent: Variant read fKontragent write fKontragent;
   property Street: Variant read fStreet write fStreet;
   property House: Variant read fHouse write fHouse;
   property Mlist: Variant read fMlist write fMlist;
   property MinPeriodData: TDateTime read fMinPeriodData write fMinPeriodData;
   property Master: Variant read fMaster write fMaster;
  end;
 {$ENDREGION}

  TWorkListTOForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrpFilter: TdxLayoutGroup;
    lGrpWork: TdxLayoutGroup;
    lGrpPeriod: TdxLayoutGroup;
    lGrpAdrr: TdxLayoutGroup;
    lGrpPO: TdxLayoutGroup;
    lGrplc1Group1: TdxLayoutGroup;
    cbb_Y: TcxComboBox;
    litm_lc1Item1: TdxLayoutItem;
    cbb_Period: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    dtBegin: TcxDateEdit;
    litm_lc1Item12: TdxLayoutItem;
    dtEnd: TcxDateEdit;
    litm_lc1Item13: TdxLayoutItem;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    cbb_kontr: TcxLookupComboBox;
    litm_kontr: TdxLayoutItem;
    src_kontr: TDataSource;
    cbb_Street: TcxLookupComboBox;
    litm_lc1Item14: TdxLayoutItem;
    cbb_House: TcxLookupComboBox;
    litm_lc1Item15: TdxLayoutItem;
    lGrpMList: TdxLayoutGroup;
    cbb_MList: TcxLookupComboBox;
    litm_lc1Item16: TdxLayoutItem;
    btn_Find: TcxButton;
    litm_lc1Item17: TdxLayoutItem;
    btn_Clear: TcxButton;
    litm_lc1Item18: TdxLayoutItem;
    lGrplc1Group4: TdxLayoutGroup;
    ds_work: TpFIBDataSet;
    src_work: TDataSource;
    ds_serviswork: TpFIBDataSet;
    src_serviswork: TDataSource;
    lGrplc1Group5: TdxLayoutGroup;
    lGrpMaterial: TdxLayoutGroup;
    lGrplc1Group7: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item19: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1WDATA: TcxGridDBColumn;
    clv1WCODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1SERVISWORK: TcxGridDBColumn;
    clv1SWNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1WORKLIST: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv1JWORK: TcxGridDBColumn;
    clv1FDATA: TcxGridDBColumn;
    clv1JWORK1: TcxGridDBColumn;
    clv1REQUESTID: TcxGridDBColumn;
    clv1DISP_BASE: TcxGridDBColumn;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_AddWork: TdxBarButton;
    btn_EditWork: TdxBarButton;
    btn_DeleteWork: TdxBarButton;
    btn_PrintOrder: TdxBarButton;
    btn_ClosePeriod: TdxBarButton;
    btn_material: TdxBarButton;
    doc1: TdxBarDockControl;
    litm_lc1Item110: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    litm_lc1Item111: TdxLayoutItem;
    ds_WorkSpecMaterial: TpFIBDataSet;
    src_WorkSpecMaterial: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2WORKSPECLIST: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2SERVISWORK: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2ADDR: TcxGridDBColumn;
    clv2CLASSMAT: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    src_smat: TDataSource;
    ds_CLASSMAT: TpFIBDataSet;
    lGrplc1Group8: TdxLayoutGroup;
    btn_MatAdd: TcxButton;
    litm_AddMat: TdxLayoutItem;
    btn_MatEdit: TcxButton;
    litm_EditMat: TdxLayoutItem;
    btn_MatDelete: TcxButton;
    litm_DeleteMat: TdxLayoutItem;
    lGrplc1Group6: TdxLayoutGroup;
    lGrplc1Group9: TdxLayoutGroup;
    lGrpJurnal: TdxLayoutGroup;
    ds_Jwork: TpFIBDataSet;
    src_Jwork: TDataSource;
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
    clv4WORKSPECLIST1: TcxGridDBColumn;
    l4: TcxGridLevel;
    litm_lc1Item2: TdxLayoutItem;
    lGrpPlan: TdxLayoutGroup;
    btn_Jurnal: TdxBarButton;
    doc2: TdxBarDockControl;
    litm_lc1Item112: TdxLayoutItem;
    lGrplc1Group11: TdxLayoutGroup;
    brm1Bar1: TdxBar;
    btn_Link: TdxBarButton;
    btn_addNoLink: TdxBarButton;
    ppm1: TdxBarPopupMenu;
    btn_addwithLink: TdxBarButton;
    btn_addByRec: TdxBarButton;
    btn_LinkRec: TdxBarButton;
    clv1STREET: TcxGridDBColumn;
    vPlan: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    litm_lc1Item113: TdxLayoutItem;
    doc3: TdxBarDockControl;
    litm_lc1Item114: TdxLayoutItem;
    brm1Bar2: TdxBar;
    btn_WPAdd: TdxBarButton;
    ds_TOPLAN: TpFIBDataSet;
    src_ToPlan: TDataSource;
    clPlanCODE: TcxGridDBColumn;
    clPlanY: TcxGridDBColumn;
    clPlanHOUSE: TcxGridDBColumn;
    clPlanNOMER: TcxGridDBColumn;
    clPlanSTREET: TcxGridDBColumn;
    clPlanSTREETNAME: TcxGridDBColumn;
    clPlanMLIST: TcxGridDBColumn;
    clPlanMLISTNAME: TcxGridDBColumn;
    clPlanSUMY: TcxGridDBColumn;
    clPlanNOTE: TcxGridDBColumn;
    btn_Plan: TdxBarButton;
    clv1TOPLAN: TcxGridDBColumn;
    btn_WPDelete: TdxBarButton;
    frep: TfrxReport;
    rtfexp: TfrxRTFExport;
    cbb_Master: TcxLookupComboBox;
    litm_lc1Item115: TdxLayoutItem;
    ds_Master: TpFIBDataSet;
    src_Master: TDataSource;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtBeginPropertiesEditValueChanged(Sender: TObject);
    procedure dtEndPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_StreetPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_HousePropertiesEditValueChanged(Sender: TObject);
    procedure cbb_MListPropertiesEditValueChanged(Sender: TObject);
    procedure btn_FindClick(Sender: TObject);
    procedure cbb_YPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_PeriodPropertiesEditValueChanged(Sender: TObject);
    procedure btn_materialClick(Sender: TObject);
    procedure btn_AddWorkClick(Sender: TObject);
    procedure v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_EditWorkClick(Sender: TObject);
    procedure btn_DeleteWorkClick(Sender: TObject);
    procedure v2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btn_MatAddClick(Sender: TObject);
    procedure btn_MatEditClick(Sender: TObject);
    procedure btn_MatCancelClick(Sender: TObject);
    procedure btn_MatDeleteClick(Sender: TObject);
    procedure ds_WorkSpecMaterialAfterPost(DataSet: TDataSet);
    procedure ds_WorkSpecMaterialAfterDelete(DataSet: TDataSet);
    procedure btn_JurnalClick(Sender: TObject);
    procedure btn_addNoLinkClick(Sender: TObject);
    procedure btn_addwithLinkClick(Sender: TObject);
    procedure btn_addByRecClick(Sender: TObject);
    procedure btn_LinkRecClick(Sender: TObject);
    procedure btn_PlanClick(Sender: TObject);
    procedure btn_WPAddClick(Sender: TObject);
    procedure btn_WPDeleteClick(Sender: TObject);
    procedure btn_LinkClick(Sender: TObject);
    procedure btn_ClosePeriodClick(Sender: TObject);
    procedure btn_PrintOrderClick(Sender: TObject);
    procedure ds_WorkSpecMaterialAfterOpen(DataSet: TDataSet);
    procedure cbb_MasterPropertiesEditValueChanged(Sender: TObject);
    procedure clv1FDATAStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    { Private declarations }
    fFilter: TFilter;
    canLink: Boolean;
    WorkList: TWorkList;
    WorkMaterial: TWorkSpecMaterial;
    procedure PrepareDS;
    procedure LoadData;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure CustomizeWork;
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrepareCombo;
    procedure SetData;
    procedure GetMinperiodData;
    procedure SetButtonEnable;
    procedure LookupMatButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditMat;
    procedure AddMat;
    procedure DeleteMat;
    //
    procedure LinkJurnal(unlink: Boolean = false);
    procedure EditJRecord(ws: Variant);
    procedure AddJRecord(addType: Integer);
    procedure GetJurnalRec(isLink: Variant);
    procedure isCanLink(link: Boolean);
    //
    procedure OpenPaln;
    procedure CheckPlanRecod(planCode, houseCode: Variant);
    procedure LinkPlan(isUnlink: Boolean = False);
    //
    procedure OpenMaster;
  public
    { Public declarations }
  end;


var
  WorkListTOForm: TWorkListTOForm;

implementation

uses cmDBUnit, KServisworkLookFrm, dezCommon, AddJWorkFrm, OrderClosePeriodFrm,
  dezInfo;

{$R *.dfm}

procedure TWorkListTOForm.AddJRecord(addType: Integer);
var
  F: TAddJWorkForm;
  Cod: Variant;
begin
  try
    F := TAddJWorkForm.Create(Self);
    //
    F.cbb_WorkType.EditValue := null;
    F.cbb_WorkType.Properties.ReadOnly := false;
    F.cbb_kontr.EditValue := ActiveKontragent;
    F.cbb_street.EditValue := v1.FN('STREET');
    F.cbb_house.EditValue := v1.FN('HOUSE');
    //F.mmo_desc.EditValue := v1.FN('SWNAME');
    //F.txt_place.EditValue := v1.FN('NOTE');
    F.dt_RegDate.EditValue := v1.FN('DATA');
    F.dt_PlanDate.EditValue := v1.FN('DATA') + 30;
    F.dt_FactDate.EditValue := null;
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
    if F.ShowModal = mrOk then
    begin
      with ds_Jwork do
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
          FN('STREET').AsVariant := F.cbb_street.EditValue;
          FN('FactDate').AsVariant := F.dt_FactDate.EditValue;
          if addType=1 then
            FN('WORKSPECLIST').AsVariant:= v1.FN('CODE');
          if addType=2 then
            FN('WORKSPECLIST1').AsVariant:= v1.FN('CODE');
          Post;
      end;

      if addType>0 then
      with ds_work do
      begin
        Edit;
          case addType of
            1 : FN('JWORK').AsVariant := Cod;
            2 : FN('JWORK1').AsVariant := Cod;
          end;
        Post;
      end;
      GetJurnalRec(v1.FN('JWork'));
    end;
  finally
    F.Free;
  end;
end;

procedure TWorkListTOForm.AddMat;
var
  fCode: Variant;
begin
  //ds_WorkSpecMaterial.Append;
  WorkMaterial:= TWorkSpecMaterial.Create;
  WorkMaterial.WorkSpecList:= v1.GetColumnByFieldName('CODE').EditValue;
  if VarIsType(WorkMaterial.WorkSpecList,[varNull, varEmpty]) then
    raise dezException.Create('Ошибка получения кода работы!');
  try
    fCode:= WorkList.EditMat(WorkMaterial, False);
    if not VarIsType(fCode,[varNull, varEmpty]) then begin
      //обновляем набор данных
      ds_WorkSpecMaterial.CloseOpen(false);
      // устанавливаем курсор на созданную запись
      ds_WorkSpecMaterial.Locate('CODE',fCode,[]);
    end;
  finally
    FreeAndNil(WorkMaterial);
  end;
end;

procedure TWorkListTOForm.btn_addByRecClick(Sender: TObject);
begin
  AddJRecord(2);
end;

procedure TWorkListTOForm.btn_addNoLinkClick(Sender: TObject);
begin
  AddJRecord(0);
end;

procedure TWorkListTOForm.btn_addwithLinkClick(Sender: TObject);
begin
  if v1.FN('CODE')<> null then
     AddJRecord(1);
end;

procedure TWorkListTOForm.btn_AddWorkClick(Sender: TObject);
var
  AIndex: Integer;
  fCode: Variant;
  fWorkSpecList: TWorkSpecList;
begin
  //AIndex:=v1.Controller.FocusedRowIndex; //запоминаем позицию
  v1.BeginUpdate(lsimImmediate);
  try
    fWorkSpecList:= TWorkSpecList.Create;
    fWorkSpecList.House:= v1.GetColumnByFieldName('HOUSE').EditValue;
    fCode:= WorkList.EditWork(fFilter.MinPeriodData, fFilter.Kontragent, fWorkSpecList, false);
    if not VarIsType(fCode,[varNull, varEmpty]) then begin
      //обновляем набор данных
      ds_work.CloseOpen(false);
      // устанавливаем курсор на созданную запись
      ds_work.Locate('CODE',fCode,[]);
    end;
  finally
    v1.EndUpdate;
    FreeAndNil(fWorkSpecList);
    //v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TWorkListTOForm.btn_ClosePeriodClick(Sender: TObject);
var
  F: TOrderClosePeriodForm;
begin
  F:= TOrderClosePeriodForm.Create(self);
  F.ShowModal;
end;

procedure TWorkListTOForm.btn_DeleteWorkClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('DATA').EditValue <= fFilter.MinPeriodData then
     raise dezException.Create('Запись входит в закрытый период!');
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_work.Delete;
  end;
end;

procedure TWorkListTOForm.btn_EditWorkClick(Sender: TObject);
var
  fWorkSpecList: TWorkSpecList;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    fWorkSpecList:= TWorkSpecList.Create;
    fWorkSpecList.FindById(v1.FN('CODE'));
    if VarIsType(fWorkSpecList.Code,[varNull, varEmpty]) then
      raise Exception.Create('Ошибка получения кода работы для редактирования!');
    WorkList.EditWork(fFilter.MinPeriodData, fFilter.Kontragent, fWorkSpecList, true);
    if not VarIsType(fWorkSpecList.Code,[varNull, varEmpty]) then begin
      //обновляем набор данных
      ds_work.CloseOpen(false);
      // устанавливаем курсор на созданную запись
      ds_work.Locate('CODE',fWorkSpecList.Code,[]);
    end;
  finally
    v1.EndUpdate;
    FreeAndNil(fWorkSpecList);
    //v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TWorkListTOForm.btn_FindClick(Sender: TObject);
begin
  LoadData;
end;

procedure TWorkListTOForm.btn_LinkClick(Sender: TObject);
begin
  btn_Link.DropDown();
end;

procedure TWorkListTOForm.btn_LinkRecClick(Sender: TObject);
begin
  // связываем с журналом
  if canLink then
    LinkJurnal
  else if MessageDlg('Удалить связь с журналом?',mtWarning, mbOKCancel,0) = mrOk then
    LinkJurnal(true);
end;

procedure TWorkListTOForm.btn_MatAddClick(Sender: TObject);
begin
  AddMat;
end;

procedure TWorkListTOForm.btn_MatCancelClick(Sender: TObject);
begin
  ds_WorkSpecMaterial.Cancel;
end;

procedure TWorkListTOForm.btn_MatDeleteClick(Sender: TObject);
begin
  DeleteMat;
end;

procedure TWorkListTOForm.btn_MatEditClick(Sender: TObject);
begin
  EditMat;
end;

{$REGION 'Events'}
procedure TWorkListTOForm.btn_materialClick(Sender: TObject);
begin
  if btn_material.Down then begin
     //ds_WorkSpecMaterial.DataSource:= src_work;
     lGrpMaterial.Visible:= True;
     lGrpJurnal.Visible:= False;
     lGrpPlan.Visible:= False;
     btn_Jurnal.Down:= False;
     btn_Plan.Down:= False;
  end else begin
     //ds_WorkSpecMaterial.DataSource:= nil;
     lGrpMaterial.Visible:= False;
  end;
end;

procedure TWorkListTOForm.btn_PlanClick(Sender: TObject);
begin
  if btn_Plan.Down then begin
     //ds_WorkSpecMaterial.DataSource:= src_work;
     lGrpPlan.Visible:= True;
     lGrpJurnal.Visible:= False;
     lGrpMaterial.Visible:= False;
     btn_Jurnal.Down:= False;
     btn_material.Down:= False;
     OpenPaln;
  end else begin
     //ds_WorkSpecMaterial.DataSource:= nil;
     lGrpPlan.Visible:= False;
  end;
end;

procedure TWorkListTOForm.btn_PrintOrderClick(Sender: TObject);
begin
  dzOrder.PrintOrder(v1.GetColumnByFieldName('WORKLIST').EditValue, frep);
end;

procedure TWorkListTOForm.btn_WPAddClick(Sender: TObject);
begin
  LinkPlan;
end;

procedure TWorkListTOForm.btn_WPDeleteClick(Sender: TObject);
begin
  LinkPlan(true);
end;

procedure TWorkListTOForm.btn_JurnalClick(Sender: TObject);
begin
  if btn_Jurnal.Down then begin
     //ds_WorkSpecMaterial.DataSource:= src_work;
     lGrpJurnal.Visible:= True;
     lGrpPlan.Visible:= False;
     lGrpMaterial.Visible:= false;
     btn_material.Down:= False;
     btn_Plan.Down:= False;
     GetJurnalRec(v1.FN('JWork'));
  end else begin
     //ds_WorkSpecMaterial.DataSource:= nil;
     lGrpJurnal.Visible:= False;
  end;
end;

procedure TWorkListTOForm.cbb_HousePropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.House:= cbb_House.EditValue;
end;

procedure TWorkListTOForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.Kontragent:= cbb_kontr.EditValue;
  OpenMaster;
end;

procedure TWorkListTOForm.cbb_MasterPropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.Master:= cbb_Master.EditValue;
end;

procedure TWorkListTOForm.cbb_MListPropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.Mlist:= cbb_MList.EditValue;
end;

procedure TWorkListTOForm.cbb_PeriodPropertiesEditValueChanged(Sender: TObject);
begin
  SetData;
end;

procedure TWorkListTOForm.cbb_StreetPropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.Street:= cbb_Street.EditValue;
end;

procedure TWorkListTOForm.cbb_YPropertiesEditValueChanged(Sender: TObject);
begin
  SetData;
end;

procedure TWorkListTOForm.ds_WorkSpecMaterialAfterDelete(DataSet: TDataSet);
begin
  SetButtonEnable;
end;

procedure TWorkListTOForm.ds_WorkSpecMaterialAfterOpen(DataSet: TDataSet);
begin
  SetButtonEnable;
end;

procedure TWorkListTOForm.ds_WorkSpecMaterialAfterPost(DataSet: TDataSet);
begin
  SetButtonEnable;
end;

procedure TWorkListTOForm.dtBeginPropertiesEditValueChanged(Sender: TObject);
begin
  fFilter.DateBegin:= dtBegin.Date;
end;

procedure TWorkListTOForm.dtEndPropertiesEditValueChanged(Sender: TObject);
begin
 fFilter.DateEnd:= dtEnd.Date;
end;

procedure TWorkListTOForm.EditJRecord(ws: Variant);
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
          FN('WORKSPECLIST').AsVariant:= ws;
          Post;
        end;
      end;
  finally
    F.Free;
  end;
end;

procedure TWorkListTOForm.EditMat;
var
  fCode: Variant;
begin
  WorkMaterial:= TWorkSpecMaterial.Create;
  with WorkMaterial do begin
    Code:= v2.GetColumnByFieldName('CODE').EditValue;
    WorkSpecList:= v2.GetColumnByFieldName('WORKSPECLIST').EditValue;
    Classmat:= v2.GetColumnByFieldName('CLASSMAT').EditValue;
    Quantity:= v2.GetColumnByFieldName('QUANTITY').EditValue;
    Price:= v2.GetColumnByFieldName('PRICE').EditValue;
    Note:= v2.GetColumnByFieldName('NOTE').EditValue;
  end;

  if VarIsType(WorkMaterial.WorkSpecList,[varNull, varEmpty]) then
    raise dezException.Create('Ошибка получения кода работы!');
  try
    fCode:= WorkList.EditMat(WorkMaterial, True);
    if not VarIsType(fCode,[varNull, varEmpty]) then begin
      //обновляем набор данных
      ds_WorkSpecMaterial.CloseOpen(false);
      // устанавливаем курсор на созданную запись
      ds_WorkSpecMaterial.Locate('CODE',fCode,[]);
    end;
  finally
    FreeAndNil(WorkMaterial);
  end;
end;

{$ENDREGION}

procedure TWorkListTOForm.CheckPlanRecod(planCode, houseCode: Variant);
begin
  if not btn_Plan.Down then
    Exit;
  if VarIsType(houseCode,[varNull, varEmpty]) then
    Exit;
  if ds_TOPLAN.RecordCount<1 then begin
    btn_WPDelete.Visible:= ivNever;
    btn_WPAdd.Visible:= ivNever;
    Exit;
  end;

  if VarIsType(planCode,[varNull, varEmpty]) then begin
    ds_TOPLAN.Filtered:= False;
    ds_TOPLAN.Filter:='HOUSE = '+VarToStr(houseCode);
    ds_TOPLAN.Filtered:= true;
    btn_WPDelete.Visible:= ivNever;
    if ds_TOPLAN.IsEmpty then
       btn_WPAdd.Visible:= ivNever else
       btn_WPAdd.Visible:= ivAlways;
  end else begin
    ds_TOPLAN.Filtered:= False;
    ds_TOPLAN.Filter:= 'CODE = '+VarToStr(planCode);
    ds_TOPLAN.Filtered:= True;
    btn_WPDelete.Visible:= ivAlways;
    btn_WPAdd.Visible:= ivNever;
  end;
end;

procedure TWorkListTOForm.clv1FDATAStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  d1, d2: TDateTime;
begin
  d1:= VarToDateTime(ARecord.Values[clv1DATA.Index]);
  d2:= VarToDateTime(ARecord.Values[clv1FDATA.Index]);
  if (d2-d1>2) then
    AStyle:= Style2 else
    AStyle:= Style1;
end;

procedure TWorkListTOForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TWorkListTOForm.CustomizeWork;
var
  AButton: TcxEditButton;
begin
  cbb_MList.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb_MList.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=31;
    AButton.Hint:='Выбрать из справочника';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TWorkListTOForm.DeleteMat;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_WorkSpecMaterial.Delete;
  end;
end;

procedure TWorkListTOForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  work: Variant;
begin
  if (Sender as TcxLookupComboBox) = cbb_MList then  begin
    case AButtonIndex of
      1: with TcxLookupComboBox(Sender) do
         begin
           EditValue := null;
           PostEditValue;
         end;
      2: begin
           work:= WorkList.GetWorkCodeBySpr;
           if work<>null then
             cbb_MList.EditValue:= work;
         end;
    end;
  end else
  if AButtonIndex = 1 then begin
    with TcxLookupComboBox(Sender) do
    begin
      EditValue := null;
      PostEditValue;
    end;
  end;
end;

procedure TWorkListTOForm.LookupMatButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  mat: Variant;
begin
    case AButtonIndex of
      1: with TcxLookupComboBox(Sender) do
         begin
           EditValue := null;
           PostEditValue;
         end;
      2: with TcxLookupComboBox(Sender) do
         begin
           mat:= WorkList.GetMatCodeBySpr;
           if mat<> null then begin
             EditValue := mat;
             PostEditValue;
           end;
         end;
    end;
end;

procedure TWorkListTOForm.OpenMaster;
begin
  with ds_Master do begin
    Close;
    //if VarIsType(cbb_kontr.EditValue,[0,1]) then
    //  ParamByName('kontr').AsVariant:= null else
      ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
    Open;
  end;
end;

procedure TWorkListTOForm.OpenPaln;
var
  y: Variant;
  planCode, houseCode: Variant;
begin
  if not btn_Plan.Down then Exit;
  //if VarIsType(v1.GetColumnByFieldName('DATA').EditValue,[varNull, varEmpty]) then
  //   Exit;
  y:= DateUtils.YearOf(Date);
  with ds_TOPLAN do begin
    Close;
    ParamByName('y').AsVariant:= y;
    ParamByName('kontr').AsVariant:= ActiveKontragent;
    //ParamByName('house').AsVariant:= v1.GetColumnByFieldName('HOUSE').EditValue;
    Open;
  end;
  planCode:= v1.GetColumnByFieldName('TOPLAN').EditValue;
  houseCode:= v1.GetColumnByFieldName('HOUSE').EditValue;
  CheckPlanRecod(planCode, houseCode);
end;

procedure TWorkListTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fFilter) then FreeAndNil(fFilter);
  if Assigned(WorkList) then FreeAndNil(WorkList);
  Action:= caFree;
end;

procedure TWorkListTOForm.FormCreate(Sender: TObject);
begin
  WorkList:= TWorkList.Create;
  fFilter:= TFilter.Create;
  //
  LoadForm(prop1,Self.Name);
  PrepareCombo;
  PrepareDS;
end;

procedure TWorkListTOForm.GetJurnalRec(isLink: Variant);
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
  if not btn_Jurnal.Down then Exit;

  if (v1.FN('HOUSE') = null) then Exit;
  if v1.FN('CODE') = null then
     WorkCode:= 'null' else
     WorkCode:= v1.FN('CODE');
  with ds_Jwork do
  begin
    Close;
    MainWhereClause :=
      'JW.KONTRAGENT=:kontr and JW.HOUSE=:house --and JW.FACTDATE is null';
    ParamByName('kontr').AsVariant := ActiveKontragent;
    ParamByName('HOUSE').AsVariant := v1.FN('HOUSE');
    Open;
    if IsEmpty then btn_LinkRec.Enabled:= False else
                    btn_LinkRec.Enabled:= True;

    Filtered := false;
    if (v1.FN('JWork') <> null) or (v1.FN('JWork1') <> null) then
    begin
        // фильтр на найденую запись, нефиг показывать другие записи
        Filter := 'WORKSPECLIST=' + WorkCode+' or '+'WORKSPECLIST1=' + WorkCode;
        Filtered := true;
        if v1.FN('JWork') <> null then begin
          SetImage(v1.FN('CODE'), 'Связка', 8);
          isCanLink(false);
        end else
        if (v1.FN('JWork1') <> null) and (v1.FN('JWork')=null) then begin
          SetImage(null, '', -1);
          isCanLink(false);
        end;

    end
    else
    begin
      Filter := 'WORKSPECLIST=null';
      Filtered := true;
      isCanLink(true);
    end;
    Filtered := true;
  end;
end;

procedure TWorkListTOForm.GetMinperiodData;
var
  Q: TFIBQuery;
begin
  //fFilter.MinPeriodData:= StrToDate('01.01.2000');
  //if VarIsType(fFilter.Kontragent,[varNull, varEmpty]) then
  //  Exit;
  Q:= GetQueryForUse(cmDb.RT,'select DATA from ORDER$CLOSEPERIOD where KONTRAGENT = :kontr');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('kontr').AsVariant:= ActiveKontragent;
    Q.ExecQuery;
    if Q.FN('DATA').AsVariant = null then
    fFilter.MinPeriodData:= StrToDate('01.01.2000') else
    fFilter.MinPeriodData:= Q.FN('DATA').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TWorkListTOForm.isCanLink(link: Boolean);
var
  work, work1: Variant;
begin
  work:= v1.GetColumnByFieldName('JWork').EditValue;
  work1:= v1.GetColumnByFieldName('JWork1').EditValue;
  if link then
  begin
    canLink := true;
    btn_LinkRec.Caption := 'Связать с журналом.';
    btn_LinkRec.ImageIndex:= 8;
    btn_LinkRec.Enabled:= not ds_Jwork.IsEmpty;
    btn_addwithLink.Enabled:= True;
  end
  else
  begin
    canLink := false;
    btn_LinkRec.Caption  := 'Удалить связь с журналом.';
    btn_LinkRec.ImageIndex:= 2;
  end;
    btn_addwithLink.Enabled:= VarIsType(work,[varNull, varEmpty]);
    btn_addByRec.Enabled:= VarIsType(work1,[varNull, varEmpty]);
end;

procedure TWorkListTOForm.LinkJurnal(unlink: Boolean);
var
  ws, jw: Variant;
  Q: TFIBQuery;

  procedure EditJ;
  begin
    Q:= GetQueryForUse(cmDb.WT,'update jwork set workspeclist = null, FactDate = null where (code=:code)');
    try
      Q.Options:= [qoStartTransaction, qoAutoCommit];
      Q.ParamByName('code').AsVariant:= v1.GetColumnByFieldName('JWORK').EditValue;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  if unlink then
  begin
    ws := null;
    jw := null;
  end
  else
  begin
    ws := v1.FN('Code');
    jw := v4.FN('Code');
  end;
  if (ws <> Unassigned) and (jw <> Unassigned) then
  begin
    if not unlink then
      EditJRecord(ws) else
      EditJ;
    ds_work.Edit;
    ds_work.FN('JWORK').AsVariant := jw;
    ds_work.Post;
    //
    GetJurnalRec(v1.FN('JWork'));
  end;
end;

procedure TWorkListTOForm.LinkPlan(isUnlink: Boolean);
var
  work, plan: Variant;
  planCode, houseCode: Variant;
begin
  work:= v1.GetColumnByFieldName('CODE').EditValue;
  plan:= vPlan.GetColumnByFieldName('CODE').EditValue;
  if isUnlink then begin  //убираем связь
    v1.DataController.SetEditValue( clv1TOPLAN.Index ,null, evsValue);
    v1.DataController.Post;
  end else begin          //создаем связь
    v1.DataController.SetEditValue( clv1TOPLAN.Index ,plan, evsValue);
    v1.DataController.Post;
  end;
  planCode:= v1.GetColumnByFieldName('TOPLAN').EditValue;
  houseCode:= v1.GetColumnByFieldName('HOUSE').EditValue;
  CheckPlanRecod(planCode, houseCode);
end;

procedure TWorkListTOForm.LoadData;
var
  clause: string;
  i: Integer;
begin
  clause:= fFilter.CreateClause;
  lGrpWork.Visible:= True;
  grp1.ItemIndex:=1;
  Application.ProcessMessages;
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_work do begin
      Close;
      MainWhereClause:= clause;
      ParamByName('d1').AsVariant:= fFilter.DateBegin;
      ParamByName('d2').AsVariant:= fFilter.DateEnd;
      if ParamExist('KONTRAGENT', i) then
        ParamByName('KONTRAGENT').AsVariant:= fFilter.Kontragent;
      if ParamExist('HOUSE', i) then
        ParamByName('HOUSE').AsVariant:= fFilter.House;
      if ParamExist('STREET', i) then
        ParamByName('STREET').AsVariant:= fFilter.Street;
      if ParamExist('SERVISWORK', i) then
        ParamByName('SERVISWORK').AsVariant:= fFilter.Mlist;
      if ParamExist('WORKER', i) then
        ParamByName('WORKER').AsVariant:= fFilter.Master;
      OrderClause:= 'WL.DATA DESC, S.NAME, H.NOMER, SW.NAME';
      Open;
    end;
  finally
    v1.Controller.FocusRecord(v1.Controller.TopRecordIndex, True);
    v1.EndUpdate;
  end;
end;

procedure TWorkListTOForm.PrepareCombo;
begin
  CustomizeCombo(cbb_kontr);
  CustomizeCombo(cbb_House);
  CustomizeCombo(cbb_Street);
  CustomizeCombo(cbb_MList);
  CustomizeCombo(cbb_Master);
  CustomizeWork;

end;

procedure TWorkListTOForm.PrepareDS;
begin
  DSOptoins(ds_work,'', 'WORKSPECLIST', 'CODE', 'WORKSPECLIST_GEN', False);
  DSOptoins(ds_WorkSpecMaterial,'','WORKSPECMATERIAL','CODE','WORKSPECMATERIAL_GEN', false);
  DSOptoins(ds_Jwork, '', 'JWORK', 'CODE', 'JWORK_GEN', false);
  //CLASSMAT
  ds_CLASSMAT.Open;
  //Kontragent
  with cmDb.ds_KONTRAGENT do begin
    Close;
    MainWhereClause:= 'code<>1'; //кроме ДЕЗа
    Open;
  end;
  //Street
  cmDb.ds_STREET.Open;
  //Work
  ds_serviswork.Open;
  //Master
  OpenMaster;
  //minPeriod
  if ActiveUserType = 1 then begin
     GetMinperiodData;
     cbb_kontr.EditValue:= ActiveKontragent;
     cbb_kontr.Enabled:= False;
  end;
  SetButtonEnable;
  //
  grp1.ItemIndex:=0;
end;

procedure TWorkListTOForm.SetButtonEnable;
var
  code, matCode: Variant;
  data: Variant;
begin
  if ActiveUserType = 0 then begin
    btn_AddWork.Enabled:= false;
    btn_EditWork.Enabled:= false;
    btn_DeleteWork.Enabled:= False;
    btn_MatAdd.Enabled:= False;
    btn_MatEdit.Enabled:= False;
    btn_MatDelete.Enabled:= False;
    brm1Bar2.Visible:= False;
    brm1Bar1.Visible:= False;
  end else begin
    code:= v1.GetColumnByFieldName('CODE').EditValue;
    data:= v1.GetColumnByFieldName('DATA').EditValue;
    matCode:= v2.GetColumnByFieldName('CODE').EditValue;
    btn_AddWork.Enabled:= True;
    btn_EditWork.Enabled:= (not VarIsType(code,[varNull, varEmpty]) and data > fFilter.fMinPeriodData);
    btn_DeleteWork.Enabled:= btn_EditWork.Enabled;
    btn_MatAdd.Enabled:= data > fFilter.fMinPeriodData;
    btn_MatEdit.Enabled:= (not VarIsType(matCode,[varNull, varEmpty]) and data > fFilter.fMinPeriodData);
    btn_MatDelete.Enabled:= (not VarIsType(matCode,[varNull, varEmpty]) and data > fFilter.fMinPeriodData);
  end;
  //lGrplc1Group6.Enabled:= False;
  //v2.EndUpdate;
end;

procedure TWorkListTOForm.SetData;
var
  d, d1: TDateTime;
  y: Variant;
  M: Integer;
begin
  Y:= cbb_Y.EditValue;
  case cbb_Period.ItemIndex of
    0: M:= 12;
    else
      M:= cbb_Period.ItemIndex;
  end;
  d:= StrToDate('26.'+IntToStr(M)+'.'+VarTostr(Y));
  d1:= SysUtils.IncMonth(d)-1;
  dtBegin.Date:= d;
  dtEnd.Date:=d1;
end;

procedure TWorkListTOForm.v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  planCode, houseCode: Variant;
begin
  SetButtonEnable;
  GetJurnalRec(v1.FN('JWork'));
  if AFocusedRecord<>nil then begin
    planCode:= AFocusedRecord.Values[clv1TOPLAN.Index];
    houseCode:= AFocusedRecord.Values[clv1HOUSE.Index];
  end;
  CheckPlanRecod(planCode, houseCode);
end;

procedure TWorkListTOForm.v2FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

end;

{ TFilter }

procedure TFilter.CheckParams;
begin
  if VarIsType(fDateBegin,[varNull, varEmpty]) then
     raise dezException.Create('Укажите период!');
  if VarIsType(fDateEnd,[varNull, varEmpty]) then
     raise dezException.Create('Укажите период!');
end;

function TFilter.CreateClause: string;
begin
  CheckParams;
  //Data
  Result:= 'WL.DATA BETWEEN :d1 and :d2 ';
  //Kontragent
  if not VarIsType(fKontragent,[varNull, varEmpty]) then
    Result:= Result+#10#13+'and WL.KONTRAGENT=:KONTRAGENT';
  //House
  if not VarIsType(fHouse,[varNull, varEmpty]) then
    Result:= Result+#10#13+'and WL.HOUSE=:HOUSE' else
    //Street
  if not VarIsType(fStreet,[varNull, varEmpty]) then
    Result:= Result+#10#13+'and WL.HOUSE in (SELECT CODE FROM HOUSE WHERE STREET =:STREET)';
  //SERVISWORK
  if not VarIsType(fMlist,[varNull, varEmpty]) then
    Result:= Result+#10#13+'and WL.SERVISWORK=:SERVISWORK';
  //WORKER
  if not VarIsType(fMaster,[varNull, varEmpty]) then
    Result:= Result+#10#13+'and W1.CODE=:WORKER';
end;

initialization
 RegisterClass(TWorkListTOForm);
end.
