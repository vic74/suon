unit SrvDogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonForm,FIBQuery,pFIBCacheQueries, pFIBProps,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxRibbonPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, dxRibbon, AppUtils,
  cxPropertiesStore, cmDBUnit, FIBDataSet, pFIBDataSet, cxDBLookupComboBox,
  FIBDatabase, pFIBDatabase, dxmdaset, ImgList, BaseForm, dxLayoutContainer,
  dxRibbonSkins, dxSkinsdxBarPainter, dxBar, dxSkinDevExpressStyle, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxCommon, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, KontragentRepository;

type
  TSrvDogForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm2: TdxLayoutItem;
    ppm1: TcxGridPopupMenu;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Itm3: TdxLayoutItem;
    grp3: TdxLayoutGroup;
    splt2: TdxLayoutSplitterItem;
    prop1: TcxPropertiesStore;
    ds_dog: TpFIBDataSet;
    src_dog: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1ACTIVE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    src_kontr: TDataSource;
    ds_DogHouse: TpFIBDataSet;
    src_DogHouse: TDataSource;
    clv2SRVDOG: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3STREET: TcxGridDBColumn;
    mt_active: TdxMemData;
    src_active: TDataSource;
    mt_house: TdxMemData;
    src_memhouse: TDataSource;
    dshouse: TpFIBDataSet;
    src_hs: TDataSource;
    clv2street: TcxGridDBColumn;
    il1: TcxImageList;
    clv1house: TcxGridDBColumn;
    clv1LIVING_SQ: TcxGridDBColumn;
    clv2living_sq: TcxGridDBColumn;
    clvAType: TcxGridDBColumn;
    m_AType: TdxMemData;
    src_AType: TDataSource;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    gr4: TdxLayoutGroup;
    gr5: TdxLayoutGroup;
    gr6: TdxLayoutGroup;
    gr7: TdxLayoutGroup;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
    ds_ZTOPATH: TpFIBDataSet;
    src_ZTOPATH: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4SRVDOG: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    spl3: TdxLayoutSplitterItem;
    spl4: TdxLayoutSplitterItem;
    grlcntr1Group3: TdxLayoutGroup;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    itm_grd5: TdxLayoutItem;
    v6: TcxGridDBTableView;
    l6: TcxGridLevel;
    grd6: TcxGrid;
    itm_grd6: TdxLayoutItem;
    ds_SRVDOGHOUSE: TpFIBDataSet;
    src_SRVDOGHOUSE: TDataSource;
    m_ZTOHOUSE: TdxMemData;
    src_ZTOHOUSE: TDataSource;
    clv5SRVDOG: TcxGridDBColumn;
    clv5HOUSE: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5SNAME: TcxGridDBColumn;
    clv5ZTOPATH: TcxGridDBColumn;
    clv6HOUSE: TcxGridDBColumn;
    clv6STREET: TcxGridDBColumn;
    clv6CODE: TcxGridDBColumn;
    ds1: TpFIBDataSet;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_addDog: TdxBarButton;
    btn_EdidDog: TdxBarButton;
    clv1KNAME: TcxGridDBColumn;
    clv2TOTAL_SQ: TcxGridDBColumn;
    clv2LODGER_CNT: TcxGridDBColumn;
    clv2CELLAR_SQ: TcxGridDBColumn;
    clv2FLAT_CNT: TcxGridDBColumn;
    clv2ACCCODE_CNT: TcxGridDBColumn;
    clv2FLOOR_CNT: TcxGridDBColumn;
    clv2LIFT_CNT: TcxGridDBColumn;
    clv2ENTRANCE_CNT: TcxGridDBColumn;
    clv2GARBAGE_CNT: TcxGridDBColumn;
    clv2COMMERCE_SQ: TcxGridDBColumn;
    clv2BUILDYEAR: TcxGridDBColumn;
    cprint1: TdxComponentPrinter;
    GridReportLink1: TdxGridReportLink;
    src_SRVDOGTYPE: TDataSource;
    ds_SRVDOGTYPE: TpFIBDataSet;
    clv1FIRM: TcxGridDBColumn;
    clv1SIGNDOG: TcxGridDBColumn;
    clv1SIGNNAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_dogBeforePost(DataSet: TDataSet);
    procedure ds_DogHouseBeforePost(DataSet: TDataSet);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_ZTOPATHBeforePost(DataSet: TDataSet);
    procedure v6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v5CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_addDogClick(Sender: TObject);
    procedure btn_EdidDogClick(Sender: TObject);
    procedure clv1ACTIVEPropertiesEditValueChanged(Sender: TObject);
    procedure src_dogDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    fController: TKontragentController;
    HouseNext,ZHouseNext :Integer;
    procedure DSOpen;
    procedure GridOptions;
    procedure AddMem;
    procedure AddHouse(dog,house :integer);
    procedure HouseAdd;
    procedure HouseDel;
    procedure MemHouseCreate;
    procedure HouseOpen;
    procedure FillHouseTable;
    procedure HouseDogOpen;
    {$REGION 'Права доступа'}
    ///<summary>Права доступа на редактирование договоров.</summary>
    {$ENDREGION}
    procedure RightEdit;
    procedure GetHouseForSector;
    procedure CreateMemSector;
    procedure SectorHouseOpen;
    procedure FillSectorHouse;
    procedure AddSectorHouse;
    procedure reOpenSRVDOGHOUSE;
    procedure reOpenZTOPATH;
    procedure DelSectorHouse;
  public
    { Public declarations }
    KontrName: string;
  end;

var
  SrvDogForm: TSrvDogForm;

implementation

uses dezCommon, cmUtils, SrvDogAddFrm;

{$R *.dfm}
{-------------------------------------------------------------------------------
   |Проверка на заполнение обязятельных полей  в таблице договоров
-------------------------------------------------------------------------------}
procedure TSrvDogForm.ds_dogBeforePost(DataSet: TDataSet);
var
  i :Integer;
begin
  {with ds_dog do
  begin
    for I := 0 to FieldCount - 5 do  // кроме блоб поля DATA
    if ds_dog.Fields[i].AsVariant=null then
    begin
      ShowMessage('Не запонены обязательные параметры!');
      Abort;
    end;
  end; }
end;

procedure TSrvDogForm.ds_DogHouseBeforePost(DataSet: TDataSet);
var
  i :Integer;
begin
  {with DataSet do
  begin
    for I := 0 to FieldCount - 3 do
    if Fields[i].AsVariant=null then
    begin
      ShowMessage('Не запонены обязательные параметры!');
      Abort;
    end;
  end;}
end;

procedure TSrvDogForm.ds_ZTOPATHBeforePost(DataSet: TDataSet);
begin
  if gFN(v1,'CODE')=null then Exit;
  ds_ZTOPATH.FN('SRVDOG').AsVariant:=gFN(v1,'CODE');
end;

procedure TSrvDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TSrvDogForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  GridOptions;
  AddMem;
  MemHouseCreate;
  CreateMemSector;
  DSOpen;
  RightEdit;
end;

procedure TSrvDogForm.DSOpen;
begin
  ds_SRVDOGTYPE.Open;
  cmDb.ds_FIRM.CloseOpen(True);
  DSOptoins(ds_dog,'','SRVDOG','CODE','SRVDOG_GEN',false);
  if ActiveUserType=1 then
  begin
    ds_dog.MainWhereClause:='KONTRAGENT =:kontr';
    ds_dog.ParamByName('kontr').AsVariant:=ActiveKontragent;
    ds_dog.Open;
  end else ds_dog.Open;
  DSOptoins(ds_ZTOPATH,'','ZTOPATH','CODE','ZTOPATH_GEN',false);
  DSOptoins(ds_DogHouse,'','SRVDOGHOUSE','SRVDOG;HOUSE','');
  ds_street.CloseOpen(true);
  dshouse.CloseOpen(true);
  {$REGION 'Kontragent'}
  //открываем полный список т.к. это lookup
  src_kontr.DataSet:= fController.LoadKontragents('',True,True);
  {$ENDREGION}
  //
  HouseDogOpen;
  HouseOpen;
  reOpenZTOPATH;
end;

procedure TSrvDogForm.GetHouseForSector;
begin
  //
end;

procedure TSrvDogForm.GridOptions;
begin
  GridOptionsDef(v3);
  GridOptionsDef(v2);
end;

procedure TSrvDogForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    reOpenZTOPATH;
    HouseDogOpen;
    HouseOpen;
    KontrName:= v1.FN('KNAME');
end;

procedure TSrvDogForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP)or (Key=VK_DOWN)  then
  begin
    HouseDogOpen;
    HouseOpen;
    reOpenZTOPATH;
    KontrName:= v1.FN('KNAME');
  end;
end;

procedure TSrvDogForm.HouseDogOpen;
var
  SRVDOG : string;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=null then Exit;
  SRVDOG:=v1.GetColumnByFieldName('CODE').EditValue;
  if SRVDOG<>'' then
  with ds_DogHouse do
  begin
    Close;
    MainWhereClause:=' SRVDOG ='+SRVDOG;
    Open;
  end;
end;

procedure TSrvDogForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  HouseDel;
end;

procedure TSrvDogForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then HouseDel;
end;

procedure TSrvDogForm.HouseDel;
var
  AIndex :Integer;
  Q :TFIBQuery;
begin
  if ActiveUserType =1 then exit;
  if not cmMessageBox('Вы действительно хотите удалить дом из договора?') then Exit;
  AIndex:=v2.DataController.FocusedRecordIndex;
  if v2.GetColumnByFieldName('SRVDOG').EditValue<>null then
  begin
    ds_DogHouse.Delete;
   { if not cmDB.WT.Active then cmDB.WT.StartTransaction;
    v2.BeginUpdate;
    Q:=GetQueryForUse(cmDB.WT,
    'DELETE FROM SRVDOGHOUSE WHERE SRVDOG = :OLD_SRVDOG and HOUSE = :OLD_HOUSE');
    Q.ParamByName('OLD_SRVDOG').AsInteger:=
                                    v2.GetColumnByFieldName('SRVDOG').EditValue;
    Q.ParamByName('OLD_HOUSE').AsInteger:=
                                    v2.GetColumnByFieldName('HOUSE').EditValue;
    Q.ExecQuery;
    cmDB.WT.Commit;
    FreeQueryForUse(Q);
    v2.EndUpdate;
    ds_DogHouse.CloseOpen(true);}
    HouseOpen;
  end;
end;

procedure TSrvDogForm.v3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    HouseAdd;
end;

procedure TSrvDogForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then HouseAdd;
end;

procedure TSrvDogForm.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  reOpenSRVDOGHOUSE;
end;

procedure TSrvDogForm.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :reOpenSRVDOGHOUSE;
    VK_DOWN :reOpenSRVDOGHOUSE;
  end;
end;

procedure TSrvDogForm.v5CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DelSectorHouse;
end;

procedure TSrvDogForm.DelSectorHouse;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'update SRVDOGHOUSE  set ZTOPATH = :ZTOPATH' + #13#10 +
    'where (SRVDOG = :SRVDOG) and (HOUSE = :HOUSE)');
  Q.ParamByName('SRVDOG').AsVariant:=gFN(v1,'CODE');
  Q.ParamByName('HOUSE').AsVariant:=gFN(v5,'HOUSE');
  Q.ParamByName('ZTOPATH').AsVariant:=0;  
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  try
    Q.ExecQuery;
    reOpenSRVDOGHOUSE;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TSrvDogForm.v6CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  AddSectorHouse;
end;

procedure TSrvDogForm.AddSectorHouse;
var
  Q :TFIBQuery;
  function GetNextRec :Integer;
  begin
    with m_ZTOHOUSE do
    begin
      DisableControls;
      if Eof then Result:=0 else
      begin
        v6.DataController.GotoNext;
        Result:=FieldByName('Code').AsInteger;
      end;
      EnableControls;
    end;
  end;  
begin
  Q:=GetQueryForUse(cmDB.WT,
    'update SRVDOGHOUSE  set ZTOPATH = :ZTOPATH' + #13#10 +
    'where (SRVDOG = :SRVDOG) and (HOUSE = :HOUSE)');
  Q.ParamByName('SRVDOG').AsVariant:=gFN(v1,'CODE');
  Q.ParamByName('HOUSE').AsVariant:=gFN(v6,'CODE');
  Q.ParamByName('ZTOPATH').AsVariant:=gFN(v4,'CODE');  
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  try
    Q.ExecQuery;
    ZHouseNext:=GetNextRec;
    reOpenSRVDOGHOUSE;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TSrvDogForm.btn_addDogClick(Sender: TObject);
var
  F: TSrvDogAddForm;
begin
  F:= TSrvDogAddForm.Create(self);
  try
    F.EditRec:= False;
    F.ds:= ds_dog;
    if F.ShowModal = mrOk then begin
      reOpenZTOPATH;
      HouseDogOpen;
      HouseOpen;
      KontrName:= v1.FN('KNAME');
    end;
  finally
    F.Free;
  end;
end;

procedure TSrvDogForm.btn_EdidDogClick(Sender: TObject);
var
  F: TSrvDogAddForm;
begin
  F:= TSrvDogAddForm.Create(self);
  try
    F.EditRec:= true;
    F.ds:= ds_dog;
    F.ShowModal;
    //if F.ShowModal = mrOk then
    //  ds_dog.Refresh;
  finally
    F.Free;
  end;
end;

procedure TSrvDogForm.clv1ACTIVEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TSrvDogForm.HouseAdd;
var
  dog,house :Integer;
  function GetNextRec :Integer;
  begin
    with mt_house do
    begin
      DisableControls;
      if Eof then Result:=0 else
      begin
        v3.DataController.GotoNext;
        Result:=FieldByName('Code').AsInteger;
      end;
      EnableControls;
    end;
  end;
begin
  if ActiveUserType =1 then exit;
  if not cmMessageBox('Вы действительно хотите добавить дом в договор?') then Exit;

    v2.BeginUpdate;
      dog:=v1.GetColumnByFieldName('Code').EditValue;
      house:=v3.GetColumnByFieldName('Code').EditValue;
      HouseNext:=GetNextRec;
      if (dog<>null) and (house<>null) then
      AddHouse(dog,house);
    v2.EndUpdate;
end;

procedure TSrvDogForm.AddMem;
  procedure AddType(ACode :integer; AName :string);
  begin
    with mt_active do
    begin
      Append;
      FieldByName('Active').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  with mt_active.FieldDefs do
  begin
    CreateField(mt_active,'Active',ftSmallint);
    CreateField(mt_active,'Name',ftString,64);
  end;
  mt_active.Open;
  AddType(0,'не активен');
  AddType(1,'активен');
end;
procedure TSrvDogForm.CreateMemSector;
begin
  //CreateField(m_ZTOHOUSE,'SRVDOG',ftInteger);
  CreateField(m_ZTOHOUSE,'CODE',ftInteger);
  CreateField(m_ZTOHOUSE,'NOMER',ftString,32);
  CreateField(m_ZTOHOUSE,'STREET',ftInteger);
  
  //CreateField(m_ZTOHOUSE,'SNAME',ftInteger);
  m_ZTOHOUSE.open;
end;

{-------------------------------------------------------------------------------
AddHouse|Добавляем дом
-------------------------------------------------------------------------------}
procedure TSrvDogForm.AddHouse(dog,house :integer);
begin
  with ds_DogHouse do
  begin
    Append;
    FN('SrvDog').AsInteger:=dog;
    FN('House').AsInteger:=house;
    Post;
    CloseOpen(True);
    HouseOpen;
  end;
end;

procedure TSrvDogForm.HouseOpen;
var
  clause :string;
  function ExtHouse :string;
  var
    s :string;
  begin
    s :='';
    with ds_DogHouse do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        s:=s+FN('HOUSE').AsString+',';
        Next;
      end;
      EnableControls;
    end;
    if s<>'' then Delete(s,length(s),1);
    Result:=s;
  end;
begin
  clause:=ExtHouse;
  if clause<>'' then
  begin
    ds_house.Close;
    ds_house.MainWhereClause:=' code not in('+clause+')';
    ds_house.Open;
    FillHouseTable;
  end else
  begin
    ds_house.Close;
    ds_house.MainWhereClause:='';
    ds_house.Open;
    FillHouseTable;
  end;
end;

procedure TSrvDogForm.FillHouseTable;
begin
  mt_house.Close;
  mt_house.Open;
  mt_house.LoadFromDataSet(ds_house);
  mt_house.Locate('CODE',HouseNext,[]);
end;

procedure TSrvDogForm.FillSectorHouse;
begin
  with m_ZTOHOUSE do begin
    close;
    Open;
    LoadFromDataSet(ds1);
    Locate('CODE',ZHouseNext,[]);
  end;
end;

procedure TSrvDogForm.MemHouseCreate;
  procedure AddType(ACode :integer; AName :string);
  begin
    with m_AType do
    begin
      Append;
      FieldByName('CODE').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  with mt_house.FieldDefs do
  begin
    CreateField(mt_house,'CODE',ftInteger);
    CreateField(mt_house,'NOMER',ftString,32);
    CreateField(mt_house,'STREET',ftInteger);
    //CreateField(mt_house,'SNAME',ftString,256);
  end;
  mt_active.Open;

    CreateField(m_AType,'CODE',ftInteger);
    CreateField(m_AType,'NAME',ftString,64);
    m_AType.Open;
    AddType(0,'Сантехника и общестрой');
    AddType(1,'Электрика');
    AddType(2,'Лифты');
    AddType(3,'Санитария');
    AddType(4,'ВДГО');
    AddType(5,'Вентиляция');
    AddType(6,'Вывоз ТБО');
    AddType(7,'Дератизация');
    AddType(8,'Дезинфекция');
    AddType(9,'ТО ОПУ тепло');
end;

procedure TSrvDogForm.reOpenSRVDOGHOUSE;
begin
  with ds_SRVDOGHOUSE do begin
    Close;
    if gFN(v4,'CODE')=null then Exit;
    MainWhereClause:='sd.ZTOPATH = :code';
    ParamByName('code').AsVariant:=gFN(v4,'CODE');
    Open;
    SectorHouseOpen;                       
  end;
end;

procedure TSrvDogForm.reOpenZTOPATH;
begin
  with ds_ZTOPATH do begin
    Close;
    if gFN(v1,'CODE')=null then Exit;
    MainWhereClause:='SRVDOG=:dg';
    ParamByName('dg').AsVariant:=gFN(v1,'CODE');
    Open;                   
  end;
end;

procedure TSrvDogForm.RightEdit;
begin
  if ActiveUserType = 1 then begin
    GridEditDisable(false,v1);
    GridEditDisable(false,v2);
    GridEditDisable(false,v3);
    bar1.Visible:= False;
  end;
end;

procedure TSrvDogForm.SectorHouseOpen;
var
  clause :string;
  function ExtHouse :string;
  var
    s :string;
  begin
    s :='';
    with ds_SRVDOGHOUSE do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        s:=s+FN('HOUSE').AsString+',';
        Next;
      end;
      EnableControls;
    end;
    if s<>'' then Delete(s,length(s),1);
    Result:=s;
  end;
begin
  clause:=ExtHouse;
  if clause<>'' then
  begin
    ds1.Close;
    ds1.MainWhereClause:='s.srvdog=:sd and s.house not in('+clause+') and (ztopath=0 or (ztopath is null) )';
    ds1.ParamByName('sd').AsVariant:=gFN(v1,'CODE');
    ds1.Open;
    FillSectorHouse;
  end else
  begin
    ds1.Close;
    ds1.MainWhereClause:='s.srvdog=:sd and (ztopath=0 or (ztopath is null) )';
    ds1.ParamByName('sd').AsVariant:=gFN(v1,'CODE');
    ds1.Open;
    FillSectorHouse;
  end;
end;

procedure TSrvDogForm.src_dogDataChange(Sender: TObject; Field: TField);
begin
  KontrName:= ds_dog.FN('KNAME').AsString;
end;

initialization
 RegisterClass(TSrvDogForm);
end.

