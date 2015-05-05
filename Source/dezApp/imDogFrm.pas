unit imDogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxMemo,
  cxCalc, cxDropDownEdit, cxCalendar, cxMaskEdit, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, dxmdaset, cxCheckBox, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, Winapi.ShlObj, cxShellCommon,
  cxShellComboBox, dxSkinDevExpressStyle, cxNavigator;

type
  TimDogForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_bottom: TdxLayoutGroup;
    grp_bleft: TdxLayoutGroup;
    grp_bright: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    grp_edDog: TdxLayoutGroup;
    ds_DOGIMMKD: TpFIBDataSet;
    src_DOGIMMKD: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1ARENDATOR: TcxGridDBColumn;
    clv1ARNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1DTYPE: TcxGridDBColumn;
    clv1RTYPE: TcxGridDBColumn;
    clv1TARIF: TcxGridDBColumn;
    clv1DTYPENAME: TcxGridDBColumn;
    clv1RTYPENAME: TcxGridDBColumn;
    cbb_arend: TcxLookupComboBox;
    itmlc1Item1: TdxLayoutItem;
    msk_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    ced_tarif: TcxCalcEdit;
    itm_ced_tarif: TdxLayoutItem;
    mmo_note: TcxMemo;
    itm_mmo_note: TdxLayoutItem;
    grp_dg_btn: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    btn_dog_add: TcxButton;
    itm_dog_add: TdxLayoutItem;
    btn_dog_ed: TcxButton;
    itm_dog_ed: TdxLayoutItem;
    btn_dog_del: TcxButton;
    itm_dog_del: TdxLayoutItem;
    ds_ARENDATOR: TpFIBDataSet;
    src_ARENDATOR: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    grplc1Group6: TdxLayoutGroup;
    ced_tarif_house: TcxCalcEdit;
    itm_ced_tarif_house: TdxLayoutItem;
    ced_Addr: TcxCalcEdit;
    itm_Addr: TdxLayoutItem;
    dt_begin: TcxDateEdit;
    itm_dt_begin: TdxLayoutItem;
    dt_end: TcxDateEdit;
    itm_end: TdxLayoutItem;
    btn_Add_h: TcxButton;
    itm_add_h: TdxLayoutItem;
    btn_edit_h: TcxButton;
    itm_edit_h: TdxLayoutItem;
    grp_btn_h: TdxLayoutGroup;
    btn_del_h: TcxButton;
    itm_del_h: TdxLayoutItem;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    ds_HOUSEIMMKD: TpFIBDataSet;
    src_HOUSEIMMKD: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DOGIMMKD: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2TARIF: TcxGridDBColumn;
    clv2ADDR: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    ds_SQIMMKD: TpFIBDataSet;
    src_SQIMMKD: TDataSource;
    ds_IMMKD: TpFIBDataSet;
    src_IMMKD: TDataSource;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    vb3: TcxGridDBBandedTableView;
    grp_area: TdxLayoutGroup;
    grplc1Group7: TdxLayoutGroup;
    cbb_obj: TcxLookupComboBox;
    itm_obj: TdxLayoutItem;
    ced_tarif_obj: TcxCalcEdit;
    itm_tarif_obj: TdxLayoutItem;
    dt1_obj: TcxDateEdit;
    itm_dt1_obj: TdxLayoutItem;
    dt2_obj: TcxDateEdit;
    itm_dt2_obj: TdxLayoutItem;
    btn_add_obj: TcxButton;
    itm_add_obj: TdxLayoutItem;
    btn_edit_obj: TcxButton;
    itm_edit_obj: TdxLayoutItem;
    grp_obj_btn: TdxLayoutGroup;
    btn_del_obj: TcxButton;
    itm_del_obj: TdxLayoutItem;
    clvb3CODE: TcxGridDBBandedColumn;
    clvb3DOGIMMKD: TcxGridDBBandedColumn;
    clvb3IMMKD: TcxGridDBBandedColumn;
    clvb3IHOUSE: TcxGridDBBandedColumn;
    clvb3ATYPE: TcxGridDBBandedColumn;
    clvb3ATYPENAME: TcxGridDBBandedColumn;
    clvb3INOTE: TcxGridDBBandedColumn;
    clvb3TARIF: TcxGridDBBandedColumn;
    clvb3D1: TcxGridDBBandedColumn;
    clvb3D2: TcxGridDBBandedColumn;
    clvb3NOMER: TcxGridDBBandedColumn;
    clvb3STNAME: TcxGridDBBandedColumn;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
    spl3: TdxLayoutSplitterItem;
    mt_house: TdxMemData;
    src_memhouse: TDataSource;
    ds_HouseD: TpFIBDataSet;
    clv4CODE: TcxGridDBColumn;
    clv4NOMER: TcxGridDBColumn;
    clv4STREET: TcxGridDBColumn;
    clv4STNAME: TcxGridDBColumn;
    Code1C: TcxMaskEdit;
    lc1Item1: TdxLayoutItem;
    v1Column1: TcxGridDBColumn;
    cbb_data: TcxLookupComboBox;
    itm_data: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    btn_pAdd: TcxButton;
    itm_pAdd: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    ds_DOGIMDATA: TpFIBDataSet;
    src_DOGIMDATA: TDataSource;
    clvb3DATA: TcxGridDBBandedColumn;
    clv2data: TcxGridDBColumn;
    grlc1Group3: TdxLayoutGroup;
    lc1Item2: TdxLayoutItem;
    clv1ArFull: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1STYPE: TcxGridDBColumn;
    clv1STYPENAME: TcxGridDBColumn;
    clv1F1: TcxGridDBColumn;
    cbb_state: TcxComboBox;
    itm_state: TdxLayoutItem;
    grlc1Group4: TdxLayoutGroup;
    clvb3SQ: TcxGridDBBandedColumn;
    btn_spr: TcxButton;
    itm_spr: TdxLayoutItem;
    grlc1Group5: TdxLayoutGroup;
    btn_del_period: TcxButton;
    itm_del_period: TdxLayoutItem;
    cbb_DTYPE: TcxLookupComboBox;
    itm_DTYPE: TdxLayoutItem;
    cbb_rtype: TcxLookupComboBox;
    itm_rtype: TdxLayoutItem;
    cbb_stype: TcxLookupComboBox;
    itm_stypr: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    cbb1: TcxLookupComboBox;
    itmlc1Item3: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    chk_ByAll: TcxCheckBox;
    itm_ByAll: TdxLayoutItem;
    btn_addSel: TcxButton;
    itmAddSel: TdxLayoutItem;
    btn_spec: TcxButton;
    itmlc1Item31: TdxLayoutItem;
    mt: TdxMemData;
    xl1: TEXLReport;
    btnExportHouse: TcxButton;
    imExportBtn: TdxLayoutItem;
    FileName: TcxShellComboBox;
    lc1Item4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_dog_addClick(Sender: TObject);
    procedure btn_dog_edClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_dog_delClick(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure btn_Add_hClick(Sender: TObject);
    procedure btn_edit_hClick(Sender: TObject);
    procedure btn_del_hClick(Sender: TObject);
    procedure btn_add_objClick(Sender: TObject);
    procedure btn_edit_objClick(Sender: TObject);
    procedure btn_del_objClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure v4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure src_DOGIMMKDDataChange(Sender: TObject; Field: TField);
    procedure btn_pAddClick(Sender: TObject);
    procedure cbb_dataPropertiesEditValueChanged(Sender: TObject);
    procedure btn_sprClick(Sender: TObject);
    procedure btn_del_periodClick(Sender: TObject);
    procedure cbb_rtypePropertiesEditValueChanged(Sender: TObject);
    procedure clv2TARIFPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure chk_ByAllPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addSelClick(Sender: TObject);
    procedure btn_specClick(Sender: TObject);
    procedure btnExportHouseClick(Sender: TObject);
  private
    { Private declarations }
    ChangeMode: Boolean;
    HouseNext: Integer;
    noMess: Boolean;
    procedure mt_HouseCreate;
    //
    procedure OpenDS;
    function CheckParamDog: Boolean;
    procedure AddDogRec(isEdit: Boolean = false);
    procedure FillDogEdit(lastDate: Boolean = true);
    procedure OpenHouse_H;
    //
    procedure Open_HOUSEIMMKD;
    procedure Fill_HOUSEIMMKD;
    procedure HouseOpen;
    procedure FillHouseTable;
    procedure HouseAdd;
    procedure HouseDel;
    procedure AddHouse(dog, house: Integer);
    procedure AddHouseDog(isEdit: Boolean = false);
    function CheckParamHD: Boolean;
    //
    procedure Open_SQIMMKD;
    procedure Fill_SQIMMKD;
    procedure AddObjRec(isEdit: Boolean = false);
    function CheckParamObj: Boolean;
    procedure reOpenDOGIMDATA(lastDate: Boolean = true);
    procedure CopyFromLastData(newData: variant);
    procedure ShowSpr;
    procedure DelPeriod;
    procedure RecalcSum;
    procedure ReOpenDOGIMMKD;
    procedure AddAndSel;
    procedure PrintSpec;
    procedure ExportXls;
  public
    { Public declarations }
  end;

var
  imDogForm: TimDogForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, imDogAddDateFrm, LoadingSplash, ImBaseFrm,
  CommonDm, AddImBaseFrm, dezInfo;

{$R *.dfm}

procedure TimDogForm.FillDogEdit(lastDate: Boolean = true);
begin
  reOpenDOGIMDATA(lastDate);
  //
  if (v1.GetColumnByFieldName('CODE').EditValue = Unassigned) or not ChangeMode
  then
    Exit;
  Open_HOUSEIMMKD; // переоткрываем "дома к договору"
  Open_SQIMMKD; // переоткрываем "площади к договору"
  with ds_DOGIMMKD do
  begin
    cbb_arend.EditValue := FN('ARENDATOR').AsVariant;
    msk_num.EditValue := FN('NOMER').AsVariant;
    dt1.EditValue := FN('D1').AsVariant;
    dt2.EditValue := FN('D2').AsVariant;

    if ds_SQIMMKD.IsEmpty then
    begin
      dt1_obj.EditValue := FN('D1').AsVariant;
      dt2_obj.EditValue := FN('D2').AsVariant;
      ced_tarif_obj.EditValue := FN('TARIF').AsVariant;
    end;

    mmo_note.EditValue := FN('NOTE').AsVariant;
    cbb_DTYPE.EditValue := FN('DTYPE').AsVariant;
    cbb_rtype.EditValue := FN('RTYPE').AsVariant;
    ced_tarif.EditValue := FN('TARIF').AsVariant;
    Code1C.EditValue := FN('Code1C').AsVariant;
    cbb_state.ItemIndex := FN('STATE').AsVariant;
    cbb_stype.EditValue := FN('STYPE').AsVariant;
  end;
end;

procedure TimDogForm.Fill_HOUSEIMMKD;
begin
  HouseOpen;
  { with ds_HOUSEIMMKD do begin
    cbb_street.EditValue:=FN('STREET').AsVariant;
    cbb_house.EditValue:=FN('HOUSE').AsVariant;
    ced_tarif_house.EditValue:=FN('TARIF').AsVariant;
    ced_Addr.EditValue:=FN('ADDR').AsVariant;
    dt_begin.EditValue:=FN('D1').AsVariant;
    dt_end.EditValue:=FN('D2').AsVariant;
    end; }
end;

procedure TimDogForm.Fill_SQIMMKD;
begin
  with ds_SQIMMKD do
  begin
    cbb_obj.EditValue := FN('IMMKD').AsVariant;
    ced_tarif_obj.EditValue := FN('TARIF').AsVariant;
    dt1_obj.EditValue := FN('D1').AsVariant;
    dt2_obj.EditValue := FN('D2').AsVariant;
  end;
end;

procedure TimDogForm.HouseOpen;
var
  clause: string;
  function ExtHouse: string;
  var
    s: string;
  begin
    s := '';
    with ds_HOUSEIMMKD do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        s := s + FN('HOUSE').AsString + ',';
        Next;
      end;
      EnableControls;
    end;
    if s <> '' then
      Delete(s, length(s), 1);
    Result := s;
  end;

begin
  clause := ExtHouse;
  if clause <> '' then
  begin
    ds_HouseD.Close;
    ds_HouseD.MainWhereClause := ' h.code not in(' + clause + ')';
    ds_HouseD.OrderClause := 'h.STREET,h.NOMER';
    ds_HouseD.Open;
    FillHouseTable;
  end
  else
  begin
    ds_HouseD.Close;
    ds_HouseD.MainWhereClause := '';
    ds_HouseD.Open;
    FillHouseTable;
  end;
end;

procedure TimDogForm.mt_HouseCreate;
begin
  CreateField(mt_house, 'CODE', ftInteger);
  CreateField(mt_house, 'NOMER', ftString, 32);
  CreateField(mt_house, 'STREET', ftInteger);
  CreateField(mt_house, 'StName', ftString, 128);
end;

procedure TimDogForm.FillHouseTable;
begin
  mt_house.Close;
  mt_house.Open;
  mt_house.LoadFromDataSet(ds_HouseD);
  mt_house.Locate('CODE', HouseNext, []);
end;

procedure TimDogForm.HouseAdd;
var
  dog, house: Integer;
  function GetNextRec: Integer;
  begin
    with mt_house do
    begin
      DisableControls;
      if Eof then
        Result := 0
      else
      begin
        v4.DataController.GotoNext;
        Result := FieldByName('Code').AsInteger;
      end;
      EnableControls;
    end;
  end;

begin
  if not noMess then
    if not cmMessageBox('Вы действительно хотите добавить дом в договор?') then
      Exit;

  v2.BeginUpdate;
  dog := v1.GetColumnByFieldName('Code').EditValue;
  house := v4.GetColumnByFieldName('Code').EditValue;
  HouseNext := GetNextRec;
  if (dog <> null) and (house <> null) then
    AddHouse(dog, house);
  v2.EndUpdate;
end;

procedure TimDogForm.AddHouse(dog, house: Integer);
begin
  with ds_HOUSEIMMKD do
  begin
    Append;
    FN('DOGIMMKD').AsInteger := dog;
    FN('HOUSE').AsInteger := house;
    FN('D1').AsDateTime := Date;
    FN('D2').AsDateTime := Date;
    FN('DATA').AsVariant := cbb_data.EditValue;
    Post;
    CloseOpen(true);
    HouseOpen;
  end;
end;

procedure TimDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TimDogForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  KeyPreview := true;
  noMess := false;
  ChangeMode := true;
  OpenDS;
end;

procedure TimDogForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F5:
      begin
        noMess := not noMess;
        if noMess then
          ShowMessage('Сообщения отключены')
        else
          ShowMessage('Сообщения включены');
      end;
  end;
end;

procedure TimDogForm.Open_HOUSEIMMKD;
begin
  with ds_HOUSEIMMKD do
  begin
    Close;
    if v1.GetColumnByFieldName('Code').EditValue = Unassigned then
      Exit;
    MainWhereClause := 'HM.DOGIMMKD=:dg and HM.DATA=:dt';
    ParamByName('dg').AsVariant := v1.GetColumnByFieldName('Code').EditValue;
    ParamByName('dt').AsVariant := cbb_data.EditValue;
    Open;
  end;
  Fill_HOUSEIMMKD;
end;

procedure TimDogForm.Open_SQIMMKD;
begin
  with ds_SQIMMKD do
  begin
    Close;
    if v1.GetColumnByFieldName('Code').EditValue = Unassigned then
      Exit;
    MainWhereClause := 'SQ.DOGIMMKD=:dg and SQ.data=:d';
    ParamByName('dg').AsVariant := v1.GetColumnByFieldName('Code').EditValue;
    ParamByName('d').AsVariant := cbb_data.EditValue;
    Open;
  end;
  Fill_SQIMMKD;
end;

procedure TimDogForm.PrintSpec;
var
  code, aType: variant;
begin
  code := gFN(v1, 'CODE');
  aType := gFN(v1, 'RTYPE');
  if code = null then
    Exit;
  MKDRep.PrintRep(mt, code, aType);
  ExportXls;
end;

procedure TimDogForm.RecalcSum;
begin
  if gFN(v1, 'RTYPE') <> 2 then
    Exit;
  SplashVisibility(true, 'обновляем сумму по договору');
  try
    with ds_DOGIMMKD do
    begin
      Edit;
      FN('TARIF').AsVariant := v2.DataController.Summary.FooterSummaryValues[1];
      Post;
      ced_tarif.EditValue := v2.DataController.Summary.FooterSummaryValues[1];
    end;
  finally
    SplashVisibility(false);
  end;
end;

procedure TimDogForm.reOpenDOGIMDATA(lastDate: Boolean = true);
begin
  with ds_DOGIMDATA do
  begin
    Close;
    if gFN(v1, 'CODE') = null then
      Exit;
    MainWhereClause := 'DOGIMMKD = :dm';
    ParamByName('dm').AsVariant := gFN(v1, 'CODE');
    OrderClause := 'data desc';
    Open;
    if lastDate then
      cbb_data.EditValue := FN('DATA').AsVariant;
  end;
end;

procedure TimDogForm.ReOpenDOGIMMKD;
begin
  SplashVisibility(true, 'Получаем данные...');
  try
    with ds_DOGIMMKD do
    begin
      Close;
      if not chk_ByAll.Checked then
      begin
        MainWhereClause := 'D.DTYPE=:dt';
        ParamByName('dt').AsVariant := cbb1.EditValue;
      end
      else
        MainWhereClause := '';
      Open;
      FillDogEdit;
    end;
  finally
    SplashVisibility(false);
  end;
end;

procedure TimDogForm.ShowSpr;
var
  F: TImBaseForm;
  obj: variant;
begin
  F := TImBaseForm.CreateModal(Self, true);
  try
    F.v1.FilterRow.Visible := true;
    if F.ShowModal = mrOk then
    begin
      ds_IMMKD.CloseOpen(false);
      cbb_obj.EditValue := F.obj;
    end;
  finally
    F.Free;
  end;
end;

procedure TimDogForm.src_DOGIMMKDDataChange(Sender: TObject; Field: TField);
begin
  if ChangeMode then
    FillDogEdit;
end;

procedure TimDogForm.OpenDS;
begin
  SplashVisibility(true, 'Создаем таблицу в памяти..');
  // SetCapt('Создаем таблицу в памяти..');
  mt_HouseCreate;
  SetCapt('Загружаем список арендаторов...');
  ds_ARENDATOR.Open;
  SetCapt('Загружаем список адресов..');
  ds_STREET.Open;
  SetCapt('Получаем данные по общему имуществу..');
  ds_IMMKD.Open;
  // SetCapt('Загружаем список договоров..');
  v1.BeginUpdate;
  try
    DSOptoins(ds_DOGIMMKD, '', 'DOGIMMKD', 'CODE', 'DOGIMMKD_GEN', false);
    DSOptoins(ds_HOUSEIMMKD, '', 'HOUSEIMMKD', 'CODE', 'HOUSEIMMKD_GEN', false);
    DSOptoins(ds_SQIMMKD, '', 'SQIMMKD', 'CODE', 'SQIMMKD_GEN', false);
    DSOptoins(ds_DOGIMDATA, '', 'DOGIMDATA', 'DATA;DOGIMMKD', '', false);
    //
    com_dm.ds_DOGIMMKD_TYPE.CloseOpen(false);
    com_dm.ds_DOGIMMKD_STYPE.CloseOpen(false);
    com_dm.ds_DOGIMMKD_RTYPE.CloseOpen(false);
    // FillDogEdit;
  finally
    v1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure TimDogForm.OpenHouse_H;
begin
  // cbb_house.EditValue:=null;
  with ds_HOUSE do
  begin
    Close;
    if cbb_street.EditValue = null then
      Exit;
    // MainWhereClause:='Street=:st';
    MainWhereClause := 'h.a=1';
    OrderClause := 'Nomer';
    // ParamByName('st').AsVariant:=cbb_street.EditValue;
    Open;
  end;
end;

procedure TimDogForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillDogEdit;
end;

procedure TimDogForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP:
      FillDogEdit;
    VK_DOWN:
      FillDogEdit;
  end;
end;

procedure TimDogForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  // Fill_HOUSEIMMKD;
end;

procedure TimDogForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  HouseDel;
end;

procedure TimDogForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    // VK_UP :Fill_HOUSEIMMKD;
    // VK_DOWN : Fill_HOUSEIMMKD;
    VK_DELETE:
      HouseDel;
  end;
end;

procedure TimDogForm.v4CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  HouseAdd;
end;

procedure TimDogForm.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    HouseAdd;
end;

procedure TimDogForm.AddAndSel;
var
  F: TAddImBaseForm;
begin
  F := TAddImBaseForm.Create(Self);
  try
    if F.ShowModal = mrOk then
    begin
      ds_IMMKD.CloseOpen(false);
      cbb_obj.EditValue := F.code;
    end;
  finally
    F.Free;
  end;
end;

procedure TimDogForm.AddDogRec(isEdit: Boolean = false);
begin
  if not CheckParamDog then
    Exit;
  try
    ChangeMode := false;
    with ds_DOGIMMKD do
    begin
      if isEdit then
        Edit
      else
        Append;
      FN('ARENDATOR').AsVariant := cbb_arend.EditValue;
      FN('NOMER').AsVariant := msk_num.EditValue;
      FN('D1').AsVariant := dt1.EditValue;
      FN('D2').AsVariant := dt2.EditValue;
      FN('NOTE').AsVariant := mmo_note.EditValue;
      FN('DTYPE').AsVariant := cbb_DTYPE.EditValue;
      FN('RTYPE').AsVariant := cbb_rtype.EditValue;
      FN('TARIF').AsVariant := ced_tarif.EditValue;
      FN('Code1C').AsVariant := Code1C.EditValue;
      FN('STATE').AsVariant := cbb_state.ItemIndex;
      FN('STYPE').AsVariant := cbb_stype.EditValue;
      Post;
    end;
  finally
    ChangeMode := true;
  end;
end;

procedure TimDogForm.HouseDel;
var
  AIndex: Integer;
begin
  if not noMess then
    if not cmMessageBox('Вы действительно хотите удалить дом из договора?') then
      Exit;
  AIndex := v2.DataController.FocusedRecordIndex;
  if v2.GetColumnByFieldName('DOGIMMKD').EditValue <> null then
  begin
    ds_HOUSEIMMKD.Delete;
    HouseOpen;
    if gFN(v1, 'RTYPE') = 2 then
      RecalcSum;
  end;
end;

{ ------------------------------------------------------------------------------
  Добавляем/редактируем запись в "Дома к договору"
  ------------------------------------------------------------------------------- }
procedure TimDogForm.AddHouseDog(isEdit: Boolean);
begin
  if not CheckParamHD then
    Exit;
  if v1.GetColumnByFieldName('CODE').EditValue = Unassigned then
    Exit;
  with ds_HOUSEIMMKD do
  begin
    if isEdit then
      Edit
    else
      Append;
    FN('DOGIMMKD').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
    FN('HOUSE').AsVariant := cbb_house.EditValue;
    FN('TARIF').AsVariant := ced_tarif_house.EditValue;
    FN('ADDR').AsVariant := ced_Addr.EditValue;
    FN('D1').AsVariant := dt_begin.EditValue;
    FN('D2').AsVariant := dt_end.EditValue;
    Post;
  end;
end;

{ ------------------------------------------------------------------------------
  Добавляем запись в "Площади к договору"
  ------------------------------------------------------------------------------- }
procedure TimDogForm.AddObjRec(isEdit: Boolean);
begin
  if not CheckParamObj then
    Exit;
  if v1.GetColumnByFieldName('CODE').EditValue = Unassigned then
    Exit;
  with ds_SQIMMKD do
  begin
    if isEdit then
      Edit
    else
      Append;
    FN('DOGIMMKD').AsVariant := v1.GetColumnByFieldName('CODE').EditValue;
    FN('IMMKD').AsVariant := cbb_obj.EditValue;
    FN('TARIF').AsVariant := ced_tarif_obj.EditValue;
    FN('D1').AsVariant := dt1_obj.EditValue;
    FN('D2').AsVariant := dt2_obj.EditValue;
    FN('DATA').AsVariant := cbb_data.EditValue;
    Post;
  end;
end;

procedure TimDogForm.btnExportHouseClick(Sender: TObject);
const
  Rzd = ';';
var
  List: TStringList;
  S, AFileName: string;

  procedure MakeSQFile;
  begin
    with ds_SQIMMKD do
      while not Eof do
      begin
        S:=FN('StName').AsString+Rzd+FN('Nomer').AsString+Rzd+'0'+Rzd+
          FN('House1C').AsString;
        List.Add(S);
        Next;
      end;
  end;

  procedure MakeHouseFile;
  var
    Tarif: string;
  begin
    with ds_HOUSEIMMKD do
      while not Eof do
      begin
        Tarif:=FN('Tarif').AsString;
        if Tarif='' then
          Tarif:='0';
        if FN('House1C').AsString<>'' then
          S:=FN('StName').AsString+Rzd+FN('Nomer').AsString+Rzd+
            Tarif+Rzd+FN('House1C').AsString;
        List.Add(S);
        Next;
      end;
  end;

begin
  AFileName := FileName.AbsolutePath + '\HouseList.txt';
  List := TStringList.Create;
  try
    // определяем, откуда выгружаем
    ds_SQIMMKD.First;
    ds_HOUSEIMMKD.First;
    if not ds_SQIMMKD.Eof then
      MakeSQFile
    else
      MakeHouseFile;
    // сохраняем сформированный файл выгрузки
    List.SaveToFile(AFileName);
  finally
    List.Free;
  end;
end;

procedure TimDogForm.btn_addSelClick(Sender: TObject);
begin
  AddAndSel;
end;

procedure TimDogForm.btn_Add_hClick(Sender: TObject);
begin
  AddHouseDog;
end;

procedure TimDogForm.btn_add_objClick(Sender: TObject);
begin
  AddObjRec;
end;

procedure TimDogForm.btn_del_hClick(Sender: TObject);
begin
  if (v2.GetColumnByFieldName('Code').EditValue = Unassigned) or
    (v2.GetColumnByFieldName('Code').EditValue = null) then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить дом к договору?') then
    ds_HOUSEIMMKD.Delete;
end;

procedure TimDogForm.btn_del_objClick(Sender: TObject);
begin
  if (vb3.GetColumnByFieldName('Code').EditValue = Unassigned) or
    (vb3.GetColumnByFieldName('Code').EditValue = null) then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить площадь к договору?') then
    ds_SQIMMKD.Delete;
end;

procedure TimDogForm.btn_del_periodClick(Sender: TObject);
begin
  DelPeriod;
end;

procedure TimDogForm.btn_dog_addClick(Sender: TObject);
begin
  AddDogRec;
end;

procedure TimDogForm.btn_dog_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue = Unassigned then
    Exit;
  if cmMessageBox('Вы действительно хотите удалить договор?') then
    ds_DOGIMMKD.Delete;
end;

procedure TimDogForm.btn_dog_edClick(Sender: TObject);
begin
  AddDogRec(true);
end;

procedure TimDogForm.btn_edit_hClick(Sender: TObject);
begin
  AddHouseDog(true);
end;

procedure TimDogForm.btn_edit_objClick(Sender: TObject);
begin
  AddObjRec(true);
end;

procedure TimDogForm.btn_execClick(Sender: TObject);
begin
  ReOpenDOGIMMKD;
end;

procedure TimDogForm.btn_pAddClick(Sender: TObject);
var
  F: TimDogAddDateForm;
  DATA, DOGIMMKD: variant;
begin
  F := TimDogAddDateForm.Create(Application);
  try
    if F.ShowModal = mrOk then
    begin
      // получаем дату и признак копирования
      DATA := F.iDate;
      DOGIMMKD := gFN(v1, 'CODE');
      with ds_DOGIMDATA do
      begin
        Append;
        FN('Data').AsVariant := DATA;
        FN('DOGIMMKD').AsVariant := DOGIMMKD;
        Post;
      end;
      if F.iCopy then
        CopyFromLastData(DATA);
    end;
  finally
    F.Free;
  end;
end;

procedure TimDogForm.btn_specClick(Sender: TObject);
begin
  if gFN(v1, 'CODE') = null Then
    Exit;
  PrintSpec;
end;

procedure TimDogForm.btn_sprClick(Sender: TObject);
begin
  ShowSpr;
end;

procedure TimDogForm.cbb_dataPropertiesEditValueChanged(Sender: TObject);
begin
  FillDogEdit(false);
end;

procedure TimDogForm.cbb_rtypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbb_rtype.EditValue = 2 then // фиксированная сумма по дому
  begin
    ced_tarif.Properties.ReadOnly := true;
    clv2TARIF.Visible := true;
    ced_tarif.EditValue := v2.DataController.Summary.FooterSummaryValues[1];
  end
  else
  begin
    ced_tarif.Properties.ReadOnly := false;
    clv2TARIF.Visible := false;
  end;
end;

procedure TimDogForm.cbb_streetPropertiesChange(Sender: TObject);
begin
  // OpenHouse_H;
end;

procedure TimDogForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse_H;
end;

function TimDogForm.CheckParamDog: Boolean;
begin
  Result := true;
  if cbb_arend.EditValue = null then
  begin
    cmShowMessage('Не указан арендатор!');
    Result := false;
    cbb_arend.SetFocus;
    Exit;
  end;
  if msk_num.EditValue = null then
  begin
    cmShowMessage('Не указан номер договора!');
    Result := false;
    msk_num.SetFocus;
    Exit;
  end;
  if (dt1.EditValue = null) or (dt2.EditValue = null) then
  begin
    cmShowMessage('Проверте даты начала и завершения договора!');
    Result := false;
    Exit;
  end;
end;

{ ------------------------------------------------------------------------------
  Проверка заполенеия параметров к "Дома к договору"
  ------------------------------------------------------------------------------- }
function TimDogForm.CheckParamHD: Boolean;
begin
  Result := true;
  if cbb_house.EditValue = null then
  begin
    cmShowMessage('Не указан дом!', true);
    cbb_house.SetFocus;
    Result := false;
    Exit;
  end;
  if (dt_begin.EditValue = null) or (dt_end.EditValue = null) then
  begin
    cmShowMessage('Проверте даты!', true);
    dt_begin.SetFocus;
    Result := false;
    Exit;
  end;
end;

{ ------------------------------------------------------------------------------
  Проверка заполенеия параметров к "Площади к договору"
  ------------------------------------------------------------------------------- }
function TimDogForm.CheckParamObj: Boolean;
begin
  Result := true;
  if cbb_obj.EditValue = null then
  begin
    cmShowMessage('Не указан объект общего имущества!', true);
    cbb_obj.SetFocus;
    Result := false;
    Exit;
  end;
  if (dt1_obj.EditValue = null) or (dt2_obj.EditValue = null) then
  begin
    cmShowMessage('Проверте даты!', true);
    dt1_obj.SetFocus;
    Result := false;
    Exit;
  end;
end;

procedure TimDogForm.chk_ByAllPropertiesEditValueChanged(Sender: TObject);
begin
  cbb1.Enabled := not chk_ByAll.Checked;
end;

procedure TimDogForm.clv2TARIFPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
  RecalcSum;
end;

procedure TimDogForm.CopyFromLastData(newData: variant);
var
  mData: variant;
  DOGIMMKD: variant;
  Q: TFIBQuery;

  function GetMaxData: variant;
  var
    Q1: TFIBQuery;
  begin
    Q1 := GetQueryForUse(cmDB.RT,
      'select first 1 skip 1 data dt from dogimdata where dogimmkd=:di' + #13 +
      #10 + 'order by data desc');
    Q1.ParamByName('di').AsVariant := DOGIMMKD;
    try
      Q1.ExecQuery;
      Result := Q1.FN('dt').AsVariant;
    finally
      FreeQueryForUse(Q1);
    end;
  end;
  procedure InsertSQIMMKD;
  var
    Q2: TFIBQuery;
  begin
    Q2 := GetQueryForUse(cmDB.WT,
      'insert into SQIMMKD (DOGIMMKD, IMMKD, TARIF, D1, D2, DATA)' + #13 + #10 +
      'select DOGIMMKD, IMMKD, TARIF, D1, D2, :DATA' + #13#10 +
      'from SQIMMKD where DATA=:dat and dogimmkd=:dg');
    Q2.ParamByName('DATA').AsVariant := newData;
    Q2.ParamByName('dat').AsVariant := mData;
    Q2.ParamByName('dg').AsVariant := DOGIMMKD;
    Q2.Options := [qoStartTransaction, qoAutoCommit];
    try
      Q2.ExecQuery;
    finally
      FreeQueryForUse(Q2);
    end;
  end;
  procedure InsertHOUSEIMMKD;
  var
    Q3: TFIBQuery;
  begin
    Q3 := GetQueryForUse(cmDB.WT,
      'insert into HOUSEIMMKD (DOGIMMKD, HOUSE, TARIF, ADDR, D1, D2, DATA)' +
      #13#10 + 'select DOGIMMKD, HOUSE, TARIF, ADDR, D1, D2, :DATA' + #13#10 +
      'from HOUSEIMMKD where DATA=:dat and dogimmkd=:dg');
    Q3.ParamByName('DATA').AsVariant := newData;
    Q3.ParamByName('dat').AsVariant := mData;
    Q3.ParamByName('dg').AsVariant := DOGIMMKD;
    Q3.Options := [qoStartTransaction, qoAutoCommit];
    try
      Q3.ExecQuery;
    finally
      FreeQueryForUse(Q3);
    end;
  end;

begin
  DOGIMMKD := gFN(v1, 'CODE');
  mData := GetMaxData;
  if (mData = null) or (DOGIMMKD = null) then
    Exit;
  SplashVisibility(true, 'Копируем данные');
  try
    InsertSQIMMKD;
    InsertHOUSEIMMKD;
    FillDogEdit;
  finally
    SplashVisibility(false);
  end;
end;

procedure TimDogForm.DelPeriod;
var
  DATA, DOGIMMKD: variant;
  sql: string;
  Q: TFIBQuery;
begin
  DATA := cbb_data.EditValue;
  DOGIMMKD := gFN(v1, 'CODE');
  if (DATA = null) or (DATA = '01.01.2011') then
    Exit;
  if DOGIMMKD = null then
    Exit;
  sql := 'delete from DOGIMDATA' + #13#10 +
    'where (DATA = :DATA) and (DOGIMMKD = :DOGIMMKD)';
  Q := GetQueryForUse(cmDB.WT, sql);
  Q.Options := [qoStartTransaction, qoAutoCommit];
  Q.ParamByName('DATA').AsVariant := DATA;
  Q.ParamByName('DOGIMMKD').AsVariant := DOGIMMKD;
  try
    if Application.MessageBox
      ('Вы действительно хотите удалить данные за указаный период?',
      'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
      = IDYES then
    begin
      Q.ExecQuery;
      reOpenDOGIMDATA(true);
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TimDogForm.ExportXls;
begin
  xl1.Template := 'rep\imkd.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range := 'A1:E9';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range := 'A10:E10';
  // with xl1.Bands.AddBand(xlrbtSummary) do
  // Range:='A16:I34';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range := 'A11:E11';

  // -----------------------------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName := 'DOGCOD';
    ValueAsString := VarToStr(gFN(v1, 'NOMER'));
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName := 'DOGDATA';
    ValueAsString := VarToStr(gFN(v1, 'D1'));
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName := 'AREND';
    ValueAsString := VarToStr(gFN(v1, 'ARNAME'));
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName := 'NOTE';
    ValueAsString := VarToStr(gFN(v1, 'NOTE'));
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName := 'ATYPE';
    ValueAsString := VarToStr(gFN(v1, 'RTYPENAME'));
  end;
  xl1.Show();
end;

initialization

RegisterClass(TimDogForm);

end.
