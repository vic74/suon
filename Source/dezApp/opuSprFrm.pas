unit opuSprFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  Data.DB, FIBDataSet, pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxButtonEdit, cxCheckBox, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  cxContainer, dxSkinsdxBarPainter, dxBar, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxCalc, dxSkinsdxDockControlPainter, dxDockControl,
  dxSkinsDefaultPainters, dxSkinDevExpressStyle, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TopuSprForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    glc1Group1: TdxLayoutGroup;
    glc1Group2: TdxLayoutGroup;
    ds_OPUKONTR: TpFIBDataSet;
    src_OPUKONTR: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1INN: TcxGridDBColumn;
    clv1KPP: TcxGridDBColumn;
    ds_OPUHOUSE: TpFIBDataSet;
    src_OPUHOUSE: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item11: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2IP: TcxGridDBColumn;
    clv2ISIP: TcxGridDBColumn;
    glc1Group3: TdxLayoutGroup;
    glc1Group4: TdxLayoutGroup;
    txt_Name: TcxTextEdit;
    itmlc1Item12: TdxLayoutItem;
    cbb_Street: TcxLookupComboBox;
    itmlc1Item13: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itmlc1Item14: TdxLayoutItem;
    txt_IPaddr: TcxTextEdit;
    itmlc1Item15: TdxLayoutItem;
    chk_IP: TcxCheckBox;
    itmlc1Item16: TdxLayoutItem;
    bm1: TdxBarManager;
    docm1: TdxBarDockControl;
    itmlc1Item17: TdxLayoutItem;
    br1: TdxBar;
    btn_Add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    clv2NOMER: TcxGridDBColumn;
    glc1Group5: TdxLayoutGroup;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itmlc1Item18: TdxLayoutItem;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itmlc1Item19: TdxLayoutItem;
    split1: TdxLayoutSplitterItem;
    glc1Group6: TdxLayoutGroup;
    glc1Group7: TdxLayoutGroup;
    glc1Group8: TdxLayoutGroup;
    glc1Group9: TdxLayoutGroup;
    txt_opu_Type: TcxTextEdit;
    itmlc1Item110: TdxLayoutItem;
    txt_Name1: TcxTextEdit;
    itmlc1Item111: TdxLayoutItem;
    cbb_opu_Type: TcxLookupComboBox;
    itmlc1Item112: TdxLayoutItem;
    docm2: TdxBarDockControl;
    itmlc1Item113: TdxLayoutItem;
    docm3: TdxBarDockControl;
    itmlc1Item114: TdxLayoutItem;
    br2: TdxBar;
    btn_Add_opuType: TdxBarButton;
    btn_Edit_opuType: TdxBarButton;
    btn_Del_opuType: TdxBarButton;
    br_DeviceMark: TdxBar;
    btn_Add_DeviceMark: TdxBarButton;
    btn_Edit_DeviceMark: TdxBarButton;
    btn_Del_DeviceMark: TdxBarButton;
    ds_OPUTYPE: TpFIBDataSet;
    src_OPUTYPE: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    ds_OPUDEVICEMARK: TpFIBDataSet;
    src_OPUDEVICEMARK: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    clv4OPU_TYPE: TcxGridDBColumn;
    clv4TNAME: TcxGridDBColumn;
    glc1Group10: TdxLayoutGroup;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    itmlc1Item115: TdxLayoutItem;
    glc1Group11: TdxLayoutGroup;
    glc1Group12: TdxLayoutGroup;
    split3: TdxLayoutSplitterItem;
    ds_OPUDEVICE: TpFIBDataSet;
    src_OPUDEVICE: TDataSource;
    clv5CODE: TcxGridDBColumn;
    clv5OPU_HOUSE: TcxGridDBColumn;
    clv5SNAME: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5OPU_TYPE: TcxGridDBColumn;
    clv5TNAME: TcxGridDBColumn;
    clv5INST_DATE: TcxGridDBColumn;
    clv5INST_KONTRAGENT: TcxGridDBColumn;
    clv5KNAME: TcxGridDBColumn;
    clv5TU_DATA: TcxGridDBColumn;
    clv5TU_KONTRAGENT: TcxGridDBColumn;
    clv5KNAME1: TcxGridDBColumn;
    clv5PROJ_DATE: TcxGridDBColumn;
    clv5PROJ_KONTRAGENT: TcxGridDBColumn;
    clv5KNAME2: TcxGridDBColumn;
    cbb_OType: TcxLookupComboBox;
    itmlc1Item118: TdxLayoutItem;
    dt_Inst: TcxDateEdit;
    itmlc1Item119: TdxLayoutItem;
    cbb_kontr1: TcxLookupComboBox;
    itmlc1Item120: TdxLayoutItem;
    dt_TU: TcxDateEdit;
    itmlc1Item121: TdxLayoutItem;
    cbb_kontr2: TcxLookupComboBox;
    itmlc1Item122: TdxLayoutItem;
    dt_Proj: TcxDateEdit;
    itmlc1Item123: TdxLayoutItem;
    cbb_kontrProj: TcxLookupComboBox;
    itmlc1Item124: TdxLayoutItem;
    docm4: TdxBarDockControl;
    itmlc1Item125: TdxLayoutItem;
    brDevice: TdxBar;
    btn_AddDevice: TdxBarButton;
    btn_EditDevice: TdxBarButton;
    btn_DelDevice: TdxBarButton;
    glc1Group13: TdxLayoutGroup;
    v6: TcxGridDBTableView;
    l6: TcxGridLevel;
    grd6: TcxGrid;
    itmlc1Item126: TdxLayoutItem;
    glc1Group14: TdxLayoutGroup;
    glc1Group15: TdxLayoutGroup;
    split4: TdxLayoutSplitterItem;
    ds_OPUELEMENT: TpFIBDataSet;
    src_OPUELEMENT: TDataSource;
    glc1Group16: TdxLayoutGroup;
    split5: TdxLayoutSplitterItem;
    v7: TcxGridDBTableView;
    l7: TcxGridLevel;
    grd7: TcxGrid;
    itmlc1Item127: TdxLayoutItem;
    clv6CODE: TcxGridDBColumn;
    clv6DEVICE: TcxGridDBColumn;
    clv6DEVICEMARK: TcxGridDBColumn;
    clv6DMARK: TcxGridDBColumn;
    clv6NOMER: TcxGridDBColumn;
    clv6MAKEDATE: TcxGridDBColumn;
    clv6DV: TcxGridDBColumn;
    clv6DR: TcxGridDBColumn;
    clv6QV: TcxGridDBColumn;
    clv6ISDOC: TcxGridDBColumn;
    clv6ISWORK: TcxGridDBColumn;
    clv7CODE: TcxGridDBColumn;
    clv7OPU_HOUSE: TcxGridDBColumn;
    clv7SNAME: TcxGridDBColumn;
    clv7NOMER: TcxGridDBColumn;
    clv7OPU_TYPE: TcxGridDBColumn;
    clv7TNAME: TcxGridDBColumn;
    clv7INST_DATE: TcxGridDBColumn;
    clv7INST_KONTRAGENT: TcxGridDBColumn;
    clv7KNAME: TcxGridDBColumn;
    clv7TU_DATA: TcxGridDBColumn;
    clv7TU_KONTRAGENT: TcxGridDBColumn;
    clv7KNAME1: TcxGridDBColumn;
    clv7PROJ_DATE: TcxGridDBColumn;
    clv7PROJ_KONTRAGENT: TcxGridDBColumn;
    clv7KNAME2: TcxGridDBColumn;
    cbb_DeviceMark: TcxLookupComboBox;
    itmlc1Item128: TdxLayoutItem;
    txt_num: TcxTextEdit;
    itmlc1Item129: TdxLayoutItem;
    dt_Make: TcxDateEdit;
    itmlc1Item130: TdxLayoutItem;
    clc_DV: TcxCalcEdit;
    itmlc1Item131: TdxLayoutItem;
    clc_DR: TcxCalcEdit;
    itmlc1Item132: TdxLayoutItem;
    clc_QV: TcxCalcEdit;
    itmlc1Item133: TdxLayoutItem;
    chk_isDoc: TcxCheckBox;
    itmlc1Item134: TdxLayoutItem;
    chk_isWork: TcxCheckBox;
    itmlc1Item135: TdxLayoutItem;
    docm5: TdxBarDockControl;
    itmlc1Item136: TdxLayoutItem;
    brElement: TdxBar;
    btn_AddElement: TdxBarButton;
    btn_EditElement: TdxBarButton;
    btn_DelElement: TdxBarButton;
    glc1Group17: TdxLayoutGroup;
    v8: TcxGridDBTableView;
    l8: TcxGridLevel;
    grd8: TcxGrid;
    itmlc1Item137: TdxLayoutItem;
    glc1Group18: TdxLayoutGroup;
    glc1Group19: TdxLayoutGroup;
    split6: TdxLayoutSplitterItem;
    ds_WORKACT: TpFIBDataSet;
    src_WORKACT: TDataSource;
    clv8CODE: TcxGridDBColumn;
    clv8DEVICE: TcxGridDBColumn;
    clv8NOMER: TcxGridDBColumn;
    clv8ACT_DATA: TcxGridDBColumn;
    clv8ACT_KONTRAGENT: TcxGridDBColumn;
    clv8KNAME: TcxGridDBColumn;
    clv8LASTDATA: TcxGridDBColumn;
    glc1Group20: TdxLayoutGroup;
    split7: TdxLayoutSplitterItem;
    grd9: TcxGrid;
    v9: TcxGridDBTableView;
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
    cl15: TcxGridDBColumn;
    l9: TcxGridLevel;
    itmlc1Item2: TdxLayoutItem;
    txt_num1: TcxTextEdit;
    itmlc1Item138: TdxLayoutItem;
    dt_act: TcxDateEdit;
    itmlc1Item139: TdxLayoutItem;
    cbb_KontrAct: TcxLookupComboBox;
    itmlc1Item140: TdxLayoutItem;
    dt_LastData: TcxDateEdit;
    itmlc1Item141: TdxLayoutItem;
    docm6: TdxBarDockControl;
    itmlc1Item142: TdxLayoutItem;
    brAct: TdxBar;
    btn_AddAct: TdxBarButton;
    btn_EditAct: TdxBarButton;
    btn_DelAct: TdxBarButton;
    glc1Group21: TdxLayoutGroup;
    v10: TcxGridDBTableView;
    l10: TcxGridLevel;
    grd10: TcxGrid;
    itmlc1Item143: TdxLayoutItem;
    v11: TcxGridDBTableView;
    l11: TcxGridLevel;
    grd11: TcxGrid;
    itmlc1Item144: TdxLayoutItem;
    split8: TdxLayoutSplitterItem;
    glc1Group22: TdxLayoutGroup;
    glc1Group23: TdxLayoutGroup;
    split9: TdxLayoutSplitterItem;
    clv10CODE: TcxGridDBColumn;
    clv10DEVICE: TcxGridDBColumn;
    clv10DEVICEMARK: TcxGridDBColumn;
    clv10DMARK: TcxGridDBColumn;
    clv10NOMER: TcxGridDBColumn;
    clv10MAKEDATE: TcxGridDBColumn;
    clv10DV: TcxGridDBColumn;
    clv10DR: TcxGridDBColumn;
    clv10QV: TcxGridDBColumn;
    clv10ISDOC: TcxGridDBColumn;
    clv10ISWORK: TcxGridDBColumn;
    ds_PROVERKA: TpFIBDataSet;
    src_PROVERKA: TDataSource;
    clv11CODE: TcxGridDBColumn;
    clv11OUTDATE: TcxGridDBColumn;
    clv11INDATE: TcxGridDBColumn;
    clv11KONTRAGENT: TcxGridDBColumn;
    clv11KNAME: TcxGridDBColumn;
    clv11GARANTDATE: TcxGridDBColumn;
    clv11ELEMENT: TcxGridDBColumn;
    dt_OutDate: TcxDateEdit;
    itmlc1Item145: TdxLayoutItem;
    dt_InDate: TcxDateEdit;
    itmlc1Item146: TdxLayoutItem;
    cbb_Kontr: TcxLookupComboBox;
    itmlc1Item147: TdxLayoutItem;
    dt_GarantDate: TcxDateEdit;
    itmlc1Item148: TdxLayoutItem;
    docm7: TdxBarDockControl;
    itmlc1Item149: TdxLayoutItem;
    br_Proverka: TdxBar;
    btn_Addp: TdxBarButton;
    btn_Editp: TdxBarButton;
    btnDelp: TdxBarButton;
    cbb_opuhouse: TcxLookupComboBox;
    itmlc1Item150: TdxLayoutItem;
    clv5HNAME: TcxGridDBColumn;
    DockManager1: TdxDockingManager;
    v12: TcxGridDBTableView;
    l12: TcxGridLevel;
    grd12: TcxGrid;
    LItemlc1Item11: TdxLayoutItem;
    fds_Prodact: TpFIBDataSet;
    ds_Prodact: TDataSource;
    clv12CODE: TcxGridDBColumn;
    clv12NAME: TcxGridDBColumn;
    lblItm1: TdxLayoutLabeledItem;
    lgrplc1Group1: TdxLayoutGroup;
    clv4PNAME: TcxGridDBColumn;
    cbb_PRODACT: TcxLookupComboBox;
    LItemlc1Item1: TdxLayoutItem;
    clv6HNAME: TcxGridDBColumn;
    clv10HNAME: TcxGridDBColumn;
    clv11HNAME: TcxGridDBColumn;
    clv8HNAME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure cbb_StreetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_Add_opuTypeClick(Sender: TObject);
    procedure btn_Edit_opuTypeClick(Sender: TObject);
    procedure btn_Del_opuTypeClick(Sender: TObject);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_Add_DeviceMarkClick(Sender: TObject);
    procedure btn_Edit_DeviceMarkClick(Sender: TObject);
    procedure btn_Del_DeviceMarkClick(Sender: TObject);
    procedure cbb_kontr1PropertiesEditValueChanged(Sender: TObject);
    procedure v5CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddDeviceClick(Sender: TObject);
    procedure btn_EditDeviceClick(Sender: TObject);
    procedure btn_DelDeviceClick(Sender: TObject);
    procedure v7CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v7KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddElementClick(Sender: TObject);
    procedure btn_EditElementClick(Sender: TObject);
    procedure btn_DelElementClick(Sender: TObject);
    procedure v6CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v6KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v9CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v9KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddActClick(Sender: TObject);
    procedure btn_EditActClick(Sender: TObject);
    procedure btn_DelActClick(Sender: TObject);
    procedure v8CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v8KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v10CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v10KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_AddpClick(Sender: TObject);
    procedure btn_EditpClick(Sender: TObject);
    procedure btnDelpClick(Sender: TObject);
    procedure v11CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v11KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grp1TabChanged(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    function CheckParams: Boolean;
    //block
    procedure AddRecBlock(isEdit: boolean=true);
    procedure DeleteBlock;
    procedure FillBlock;
    //opu_Type
    procedure AddOPUType(isEdit: boolean=true);
    procedure DeleteOPUType;
    procedure FillOPYType;
    //DEVICEMARK
    procedure AddDEVICEMARK(isEdit: boolean = true);
    procedure DeleteDEVICEMARK;
    procedure FillDEVICEMARK;
    //DEVICE
    procedure AddDevice(isEdit: boolean = true);
    procedure DelDevice;
    procedure FillDevice;
    //ELEMENT
    procedure ReOpenElement;
    procedure AddElement(isEdit: boolean = true);
    procedure DelElement;
    procedure FillElement;
    //OPU_WORKACT
    procedure ReopenAKT;
    procedure AddAct(isEdit: boolean = true);
    procedure DelAkt;
    procedure FillAKT;
    //OPU_PROVERKA
    procedure ReOpenProverka;
    procedure AddProv(isEdit: boolean = true);
    procedure DelProv;
    procedure FillProv;
    //проверка доступа
    procedure SetRoleAccess(role: Integer; isEdit: Boolean);
    procedure SetWorkerAccess(worker: integer; isEdit: Boolean);
    procedure SetEditAccess(isEdit: Boolean);
    procedure SetAccess;
  public
    { Public declarations }
  end;

var
  opuSprForm: TopuSprForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TopuSprForm.AddAct(isEdit: boolean);
begin
  if v9.FN('CODE') = null then
     raise dezException.Create('Не указан узел учета!');
  if txt_num1.EditingValue = null then
     raise dezException.Create('Не указан номер!');
  with ds_WORKACT do begin
    if isEdit then Edit else
    Append;
     FN('DEVICE').AsVariant:= v9.FN('CODE');
     FN('NOMER').AsVariant:= txt_num1.EditingValue;
     FN('ACT_DATA').AsVariant:= dt_act.EditValue;
     FN('ACT_KONTRAGENT').AsVariant:= cbb_KontrAct.EditValue;
     FN('LASTDATA').AsVariant:= dt_LastData.EditValue;
    Post;
  end;
end;

procedure TopuSprForm.AddDevice(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds_OPUDEVICE do begin
    if isEdit then Edit else
    Append;
    FN('OPU_HOUSE').AsVariant:= cbb_opuhouse.EditValue;
    FN('OPU_TYPE').AsVariant:=  cbb_OType.EditValue;
    FN('INST_DATE').AsVariant:= dt_Inst.EditValue;
    FN('INST_KONTRAGENT').AsVariant:= cbb_kontr1.EditValue;
    FN('TU_DATA').AsVariant:= dt_TU.EditValue;
    FN('TU_KONTRAGENT').AsVariant:= cbb_kontr2.EditValue;
    FN('PROJ_DATE').AsVariant:= dt_Proj.EditValue;
    FN('PROJ_KONTRAGENT').AsVariant:= cbb_kontrProj.EditValue;
    Post;
  end;
end;

procedure TopuSprForm.AddDEVICEMARK(isEdit: boolean);
begin
  if txt_Name1.EditingValue = null then
     raise dezException.Create('Укажите наименование прибора!');
  if cbb_opu_Type.EditValue = null then
     raise dezException.Create('Укажите тип прибора!');
  with ds_OPUDEVICEMARK do begin
    if isEdit then  Edit else
    Append;
    FN('NAME').AsVariant:= txt_Name1.EditingValue;
    FN('OPU_TYPE').AsVariant:= cbb_opu_Type.EditValue;
    FN('OPU_PRODACT').AsVariant:= cbb_PRODACT.EditValue;
    Post;
  end;
end;

procedure TopuSprForm.AddElement(isEdit: boolean);
begin
  if v7.FN('CODE') = null then
     raise dezException.Create('Не выбран узел учета!');
  if cbb_DeviceMark.EditValue = null then
     raise dezException.Create('Не указана марка прибора!');
  with ds_OPUELEMENT do begin
    if isEdit then Edit else
    Append;
    FN('DEVICE').AsVariant:= v7.FN('CODE');
    FN('DEVICEMARK').AsVariant:= cbb_DeviceMark.EditValue;
    FN('NOMER').AsVariant:= txt_num.EditingValue;
    FN('MAKEDATE').AsVariant:= dt_Make.EditValue;
    FN('DV').AsVariant:= clc_DV.EditValue;
    FN('DR').AsVariant:= clc_DR.EditValue;
    FN('QV').AsVariant:= clc_QV.EditValue;
    FN('ISDOC').AsVariant:= chk_isDoc.EditValue;
    FN('ISWORK').AsVariant:= chk_isWork.EditValue;
    Post;
  end;
  ReOpenElement;
end;

procedure TopuSprForm.AddOPUType(isEdit: boolean);
begin
  if txt_opu_Type.EditingValue = null then
     raise dezException.Create('Укажите наименование типа!');
  with ds_OPUTYPE do begin
    if isEdit then Edit else
    Append;
    FN('NAME').AsVariant:= txt_opu_Type.EditingValue;
    Post;
  end;

end;

procedure TopuSprForm.AddProv(isEdit: boolean);
begin
  if v10.FN('CODE') = null then
     raise dezException.Create('Не указан прибор учета!');
  with ds_PROVERKA do begin
    if isEdit then Edit else
    Append;
     FN('OUTDATE').AsVariant:= dt_OutDate.EditValue;
     FN('INDATE').AsVariant:= dt_InDate.EditValue;
     FN('KONTRAGENT').AsVariant:= cbb_Kontr.EditValue;
     FN('GARANTDATE').AsVariant:= dt_GarantDate.EditValue;
     FN('ELEMENT').AsVariant:= v10.FN('CODE');
    Post;
  end;
end;

procedure TopuSprForm.AddRecBlock(isEdit: boolean);
var
  s: string;
begin
  if not CheckParams then Exit;
  s:= cbb_Street.EditText+', '+cbb_house.EditText;
  with ds_OPUHOUSE do begin
    if isEdit then Edit else
    Append;
      FN('NAME').AsVariant:= s;
      FN('HOUSE').AsVariant:= cbb_house.EditingValue;
      FN('IP').AsVariant:= txt_IPaddr.EditingValue;
      FN('ISIP').AsVariant:= chk_IP.EditValue;
    Post;
  end;
end;

procedure TopuSprForm.btnDelpClick(Sender: TObject);
begin
  DelProv;
end;

procedure TopuSprForm.btn_AddActClick(Sender: TObject);
begin
  AddAct(false);
end;

procedure TopuSprForm.btn_AddClick(Sender: TObject);
begin
  AddRecBlock(false);
end;

procedure TopuSprForm.btn_AddDeviceClick(Sender: TObject);
begin
  AddDevice(false);
end;

procedure TopuSprForm.btn_AddElementClick(Sender: TObject);
begin
  AddElement(false);
end;

procedure TopuSprForm.btn_AddpClick(Sender: TObject);
begin
  AddProv(false);
end;

procedure TopuSprForm.btn_Add_DeviceMarkClick(Sender: TObject);
begin
  AddDEVICEMARK(false);
end;

procedure TopuSprForm.btn_Add_opuTypeClick(Sender: TObject);
begin
  AddOPUType(false);
end;

procedure TopuSprForm.btn_DelActClick(Sender: TObject);
begin
  DelAkt;
end;

procedure TopuSprForm.btn_DelDeviceClick(Sender: TObject);
begin
  DelDevice;
end;

procedure TopuSprForm.btn_DelElementClick(Sender: TObject);
begin
  DelElement;
end;

procedure TopuSprForm.btn_DeleteClick(Sender: TObject);
begin
  DeleteBlock;
end;

procedure TopuSprForm.btn_Del_DeviceMarkClick(Sender: TObject);
begin
 DeleteDEVICEMARK;
end;

procedure TopuSprForm.btn_Del_opuTypeClick(Sender: TObject);
begin
  DeleteOPUType;
end;

procedure TopuSprForm.btn_EditActClick(Sender: TObject);
begin
  AddAct;
end;

procedure TopuSprForm.btn_EditClick(Sender: TObject);
begin
  AddRecBlock;
end;

procedure TopuSprForm.btn_EditDeviceClick(Sender: TObject);
begin
  AddDevice;
end;

procedure TopuSprForm.btn_EditElementClick(Sender: TObject);
begin
 AddElement;
end;

procedure TopuSprForm.btn_EditpClick(Sender: TObject);
begin
  AddProv;
end;

procedure TopuSprForm.btn_Edit_DeviceMarkClick(Sender: TObject);
begin
  AddDEVICEMARK;
end;

procedure TopuSprForm.btn_Edit_opuTypeClick(Sender: TObject);
begin
  AddOPUType;
end;

procedure TopuSprForm.cbb_kontr1PropertiesEditValueChanged(Sender: TObject);
begin
  if cbb_kontr2.EditValue = null then
     cbb_kontr2.EditValue:= cbb_kontr1.EditValue;
  if cbb_kontrProj.EditValue = null then
     cbb_kontrProj.EditValue:= cbb_kontr1.EditValue;
end;

procedure TopuSprForm.cbb_StreetPropertiesEditValueChanged(Sender: TObject);
begin
  with cmdb.ds_HOUSE do begin
    Close;
    ParamByName('CODE').AsVariant:= cbb_Street.EditValue;
    Open;
  end;
end;

function TopuSprForm.CheckParams: Boolean;

  function CheckBlok: boolean;
  begin
    Result:= False;
    //if txt_Name.EditingValue = null then
    //   raise dezException.Create('Укажите наименование блока!');
    if cbb_house.EditValue = null then
       raise dezException.Create('Укажите дом!');
    Result:= true;
  end;

  function CheckDevice: boolean;
  begin
    Result:= false;
    if cbb_opuhouse.EditValue = null then
       raise dezException.Create('Укажите узел учета!');
    if cbb_OType.EditValue = null then
       raise dezException.Create('Укажите тип прибора!');
    Result:= true;
  end;

begin
  case grp1.ItemIndex of
    1: Result:= CheckBlok;   //Общедомовой блок учета
    3: Result:= CheckDevice; //Узел учета
    else Result:= true;
  end;
end;

procedure TopuSprForm.DelAkt;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_WORKACT.Delete;
  end;
end;

procedure TopuSprForm.DelDevice;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OPUDEVICE.Delete;
  end;
end;

procedure TopuSprForm.DelElement;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OPUELEMENT.Delete;
  end;
end;

procedure TopuSprForm.DeleteBlock;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OPUHOUSE.Delete;
  end;
end;

procedure TopuSprForm.DeleteDEVICEMARK;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OPUDEVICEMARK.Delete;
  end;
end;

procedure TopuSprForm.DeleteOPUType;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OPUTYPE.Delete;
  end;
end;

procedure TopuSprForm.DelProv;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ds_PROVERKA.Delete;
  end;
end;

procedure TopuSprForm.FillAKT;
begin
  with ds_WORKACT do begin
     txt_num1.EditValue:= FN('NOMER').AsVariant;
     dt_act.EditValue:= FN('ACT_DATA').AsVariant;
     cbb_KontrAct.EditValue:= FN('ACT_KONTRAGENT').AsVariant;
     dt_LastData.EditValue:= FN('LASTDATA').AsVariant;
  end;
end;

procedure TopuSprForm.FillBlock;
begin
  with ds_OPUHOUSE do begin
    txt_Name.EditValue:= FN('NAME').AsVariant;
    cbb_Street.EditValue:= FN('STREET').AsVariant;
    cbb_house.EditValue:= FN('HOUSE').AsVariant;
    txt_IPaddr.EditValue:= FN('IP').AsVariant;
    chk_IP.EditValue:= FN('ISIP').AsVariant;
  end;
end;

procedure TopuSprForm.FillDevice;
begin
  with ds_OPUDEVICE do begin
    cbb_opuhouse.EditValue:= FN('OPU_HOUSE').AsVariant;
    cbb_OType.EditValue:= FN('OPU_TYPE').AsVariant;
    dt_Inst.EditValue:= FN('INST_DATE').AsVariant;
    cbb_kontr1.EditValue:= FN('INST_KONTRAGENT').AsVariant;
    dt_TU.EditValue:= FN('TU_DATA').AsVariant;
    cbb_kontr2.EditValue:= FN('TU_KONTRAGENT').AsVariant;
    dt_Proj.EditValue:= FN('PROJ_DATE').AsVariant;
    cbb_kontrProj.EditValue:= FN('PROJ_KONTRAGENT').AsVariant;
  end;
end;

procedure TopuSprForm.FillDEVICEMARK;
begin
  with ds_OPUDEVICEMARK do begin
    txt_Name1.EditValue:= FN('NAME').AsVariant;
    cbb_opu_Type.EditValue:= FN('OPU_TYPE').AsVariant;
  end;
end;

procedure TopuSprForm.FillElement;
begin
  with ds_OPUELEMENT do begin
    cbb_DeviceMark.EditValue:= FN('DEVICEMARK').AsVariant;
    txt_num.EditValue:= FN('NOMER').AsVariant;
    dt_Make.EditValue:= FN('MAKEDATE').AsVariant;
    clc_DV.EditValue:= FN('DV').AsVariant;
    clc_DR.EditValue:= FN('DR').AsVariant;
    clc_QV.EditValue:= FN('QV').AsVariant;
    chk_isDoc.EditValue:= FN('ISDOC').AsVariant;
    chk_isWork.EditValue:= FN('ISWORK').AsVariant;
  end;
end;

procedure TopuSprForm.FillOPYType;
begin
  with ds_OPUTYPE do begin
    txt_opu_Type.EditValue:= FN('NAME').AsVariant;
  end;
end;

procedure TopuSprForm.FillProv;
begin
  with ds_PROVERKA do begin
     dt_OutDate.EditValue:= FN('OUTDATE').AsVariant;
     dt_InDate.EditValue:= FN('INDATE').AsVariant;
     cbb_Kontr.EditValue:= FN('KONTRAGENT').AsVariant;
     dt_GarantDate.EditValue:= FN('GARANTDATE').AsVariant;
  end;
end;

procedure TopuSprForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TopuSprForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
  SetAccess;
end;

procedure TopuSprForm.grp1TabChanged(Sender: TObject);
begin
  case grp1.ItemIndex of
    7 : ReOpenElement;
    5 : ReOpenElement;
    //else openWithClause;
  end;
end;

procedure TopuSprForm.OpenDS;
begin
  //OPU_DEVICEMARK
  DSOptoins(ds_OPUDEVICEMARK,'','OPU_DEVICEMARK', 'CODE', 'OPU_DEVICEMARK_GEN');
  ds_OPUDEVICEMARK.First;
  FillDEVICEMARK;
  //OPU_KONTRAGENT
  DSOptoins(ds_OPUKONTR,'','OPU_KONTRAGENT', 'CODE', 'OPU_KONTRAGENT_GEN');
  ds_OPUKONTR.First;
  //OPU_HOUSE
  cmDb.ds_STREET.Open;
  DSOptoins(ds_OPUHOUSE,'','OPU_HOUSE', 'CODE', 'OPU_HOUSE_GEN');
  ds_OPUHOUSE.First;
  FillBlock;
  //OPU_TYPE
  DSOptoins(ds_OPUTYPE,'','OPU_TYPE', 'CODE', 'OPU_TYPE_GEN');
  ds_OPUTYPE.First;
  FillOPYType;
  //OPU_DEVICE
  DSOptoins(ds_OPUDEVICE,'','OPU_DEVICE', 'CODE', 'OPU_DEVICE_GEN');
  ds_OPUDEVICE.First;
  FillDevice;
  //OPU_ELEMENT
  DSOptoins(ds_OPUELEMENT,'','OPU_ELEMENT', 'CODE', 'OPU_ELEMENT_GEN');
  ds_OPUELEMENT.First;
  //OPU_WORKACT
  DSOptoins(ds_WORKACT,'','OPU_WORKACT', 'CODE', 'OPU_WORKACT_GEN');
  ds_WORKACT.First;
  //OPU_PROVERKA
  DSOptoins(ds_PROVERKA,'','OPU_PROVERKA', 'CODE', 'OPU_PROVERKA_GEN');
  ds_PROVERKA.First;
  FillProv;
  //opu_Prodact
  DSOptoins(fds_Prodact,'','OPU_PRODACT', 'CODE', 'OPU_PRODACT_GEN');
  fds_Prodact.First;
end;


procedure TopuSprForm.ReopenAKT;
begin
  with ds_WORKACT do begin
    Close;
     MainWhereClause:='OW.DEVICE=:CODE';
     ParamByName('CODE').AsVariant:= v9.FN('CODE');
    Open;
  end;
  FillAKT;
end;

procedure TopuSprForm.ReOpenElement;

  procedure openWithOutClause;
  begin
    with ds_OPUELEMENT do begin
      Close;
      MainWhereClause:= '';
      //ParamByName('CODE').AsVariant:= v7.FN('CODE');
      Open;
      //ShowMessage(SelectSQL.Text);
      FillElement;
    end;
  end;

  procedure openWithClause;
  begin
    with ds_OPUELEMENT do begin
      Close;
      MainWhereClause:= 'OL.DEVICE = :CODE';
      ParamByName('CODE').AsVariant:= v7.FN('CODE');
      Open;
      FillElement;
    end;
  end;
begin
  case grp1.ItemIndex of
    7 : openWithOutClause;
    else openWithClause;
  end;
end;

procedure TopuSprForm.ReOpenProverka;
begin
  if v10.FN('CODE') = null then Exit;
  with ds_PROVERKA do begin
    Close;
    MainWhereClause:='OP.ELEMENT=:CODE';
    ParamByName('CODE').AsVariant:= v10.FN('CODE');
    Open;
  end;
  FillProv;
end;

procedure TopuSprForm.SetAccess;
begin
  case ActiveWorker of
    4: SetWorkerAccess(4, false);        //начальнику СЭ Шалимовой В.Е.
    35: SetWorkerAccess(35, false);      //зам. начальника СЭ Колеговой Т.Г.
    11: SetWorkerAccess(11, false);      //старшему менеджеру СЭ Сокол Н.Л
    12: SetWorkerAccess(12, false);      //старшему менеджеру СЭ Банниковой А.А.
    40: SetWorkerAccess(40, false);      //старшему менеджеру СЭ Урванцевой О.В.
    36: SetWorkerAccess(36, false);      //энергетику СЭ Суворову О.Л.
    6: SetWorkerAccess(6, false);
  end;
end;

procedure TopuSprForm.SetEditAccess(isEdit: Boolean);

  procedure SetGridEditing(grid: TcxGridDBTableView; editing: Boolean);
  begin
        with grid.OptionsData do begin
          Appending := editing;
          Deleting:= editing;
          Editing:= editing;
          Inserting:= editing;
        end;
  end;

begin
  //TODO убрать case т.к. все равно компоненты создаються при создании формы и можно установить значения всем сразу

  //контрагенты
      SetGridEditing(v1, isEdit);
  // Производители
      SetGridEditing(v12, isEdit);
  //Блок учета
      SetGridEditing(v2, isEdit);
      glc1Group3.Visible:= isEdit;
  //Типы приборов
      glc1Group6.Visible:= isEdit;
      glc1Group8.Visible:= isEdit;
  //Узел учета
      glc1Group11.Visible:= isEdit;
  //Прибор учета
      SetGridEditing(v7, isEdit);
      SetGridEditing(v6, isEdit);
      glc1Group14.Visible:= isEdit;
  //Акты
      SetGridEditing(v9, isEdit);
      SetGridEditing(v8, isEdit);
      glc1Group18.Visible:= isEdit;
  //Поверка приборов
      SetGridEditing(v10, isEdit);
      SetGridEditing(v11, isEdit);
      glc1Group22.Visible:= isEdit;

  {case grp1.ItemIndex of
    0: //контрагенты
      SetGridEditing(v1, isEdit);
    1: // Производители
      SetGridEditing(v12, isEdit);
    2: //Блок учета
      begin
        SetGridEditing(v2, isEdit);
        glc1Group3.Visible:= isEdit;
      end;
    3: //Типы приборов
      begin
        glc1Group6.Visible:= isEdit;
        glc1Group8.Visible:= isEdit;
      end;
    4: //Узел учета
      begin
        glc1Group11.Visible:= isEdit;
      end;
    5: //Прибор учета
      begin
        SetGridEditing(v7, isEdit);
        SetGridEditing(v6, isEdit);
        glc1Group14.Visible:= isEdit;
      end;
    6: //Акты
      begin
        SetGridEditing(v9, isEdit);
        SetGridEditing(v8, isEdit);
        glc1Group18.Visible:= isEdit;
      end;
    7: //Поверка приборов
      begin
        SetGridEditing(v10, isEdit);
        SetGridEditing(v11, isEdit);
        glc1Group22.Visible:= isEdit;
      end;
  end;}
end;

procedure TopuSprForm.SetRoleAccess(role: Integer; isEdit: Boolean);
begin
  SetEditAccess(isEdit);
end;

procedure TopuSprForm.SetWorkerAccess(worker: integer; isEdit: Boolean);
begin
  SetEditAccess(isEdit);
end;

procedure TopuSprForm.v10CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReOpenProverka;
end;

procedure TopuSprForm.v10KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: ReOpenProverka;
    VK_DOWN: ReOpenProverka;
  end;
end;

procedure TopuSprForm.v11CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillProv;
end;

procedure TopuSprForm.v11KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillProv;
    VK_DOWN: FillProv;
  end;
end;

procedure TopuSprForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillBlock;
end;

procedure TopuSprForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillBlock;
    VK_DOWN: FillBlock;
  end;
end;

procedure TopuSprForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillOPYType;
end;

procedure TopuSprForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillOPYType;
    VK_DOWN: FillOPYType;
  end;
end;

procedure TopuSprForm.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillDEVICEMARK;
end;

procedure TopuSprForm.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillDEVICEMARK;
    VK_DOWN: FillDEVICEMARK;
  end;
end;

procedure TopuSprForm.v5CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillDevice;
end;

procedure TopuSprForm.v5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillDevice;
    VK_DOWN: FillDevice;
  end;
end;

procedure TopuSprForm.v6CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillElement;
end;

procedure TopuSprForm.v6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillElement;
    VK_DOWN: FillElement;
  end;
end;

procedure TopuSprForm.v7CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReOpenElement;
end;

procedure TopuSprForm.v7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: ReOpenElement;
    VK_DOWN: ReOpenElement;
  end;
end;

procedure TopuSprForm.v8CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillAKT;
end;

procedure TopuSprForm.v8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: FillAKT;
    VK_DOWN: FillAKT;
  end;
end;

procedure TopuSprForm.v9CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReopenAKT;
end;

procedure TopuSprForm.v9KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: ReopenAKT;
    VK_DOWN: ReopenAKT;
  end;
end;

initialization
 RegisterClass(TopuSprForm);
end.
