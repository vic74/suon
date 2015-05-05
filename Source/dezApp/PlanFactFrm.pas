unit PlanFactFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, dxLayoutLookAndFeels, DB, FIBDataSet, pFIBDataSet, cxMemo,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPropertiesStore,
  DateUtils, cxCurrencyEdit, BaseForm, dxmdaset, cxCalendar, cxCalc,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  dxSkinVS2010;

type
  TPlanFactForm = class(TDezForm)
    LControl: TdxLayoutControl;
    grp_root: TdxLayoutGroup;
    grp1: TdxLayoutGroup;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    lkf1: TdxLayoutLookAndFeelList;
    cbb_House: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    ds_House: TpFIBDataSet;
    src_House: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_Plan: TpFIBDataSet;
    src_Plan: TDataSource;
    laf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MLISTNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    clv1SUMALL: TcxGridDBColumn;
    clv1SUMOST: TcxGridDBColumn;
    clv1SUMFACT: TcxGridDBColumn;
    clv1FSUM1: TcxGridDBColumn;
    clv1FSUM2: TcxGridDBColumn;
    clv1FSUM3: TcxGridDBColumn;
    clv1FSUM4: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1SHOWCODE: TcxGridDBColumn;
    ds_trfact: TpFIBDataSet;
    src_trfact: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2MANAGER: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2NCALC: TcxGridDBColumn;
    clv2NDOP: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2PLANCODE: TcxGridDBColumn;
    ds_manager: TpFIBDataSet;
    src_manager: TDataSource;
    clv2NSUMMA: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    m_state: TdxMemData;
    src_state: TDataSource;
    procedure btn_execClick(Sender: TObject);
    procedure HousePropertiesInitPopup(Sender: TObject);
    procedure StreetPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_streetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_trfactAfterInsert(DataSet: TDataSet);
    procedure ds_trfactBeforePost(DataSet: TDataSet);
    procedure ds_trfactBeforeDelete(DataSet: TDataSet);
    procedure ds_trfactBeforeEdit(DataSet: TDataSet);
    procedure ds_trfactAfterCancel(DataSet: TDataSet);
    procedure v2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure clv2STATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2DATAPropertiesEditValueChanged(Sender: TObject);
    procedure clv2SUMMAPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function CheckParam :Boolean;
    procedure OpenDs;
    procedure OpenHouse;
    procedure OpenFact;
    procedure SetDefParam;
    procedure SumQuart;
    procedure CorrectQuart;
    function GetFieldName(Data :TDateTime) :string;
    procedure RightForEdit;
    procedure CreateMState;
  public
    { Public declarations }
  end;

var
  PlanFactForm: TPlanFactForm;

implementation

uses AppUtils, cmUtils, cmDBUnit, LoadingSplash, dezCommon;

{$R *.dfm}


procedure TPlanFactForm.OpenDs;
begin
  with ds_Plan do
  begin
    Close;
    MainWhereClause:='tp.House=:House and TP.Y=:Y';
    ParamByName('House').AsVariant:=cbb_House.EditValue;
    ParamByName('Y').AsVariant:=edt_year.EditValue;
    OrderClause:='m.Name';
    Open;
  end;
end;

procedure TPlanFactForm.OpenFact;
begin
  if v1.GetColumnByFieldName('Code').EditValue=null then Exit;
  with ds_trfact do
  begin
    Close;
    MainWhereClause:='tf.plancode = :plan';
    ParamByName('plan').AsVariant:=v1.GetColumnByFieldName('Code').EditValue;
    Open;
  end;
end;

procedure TPlanFactForm.OpenHouse;
begin
  if cbb_street.EditValue=null then Exit;
  SplashVisibility(True,'Загружаем дома...');
  try
    with ds_House do
    begin
      Close;
      MainWhereClause:='street=:Street';
      ParamByName('Street').AsVariant:=cbb_street.EditValue;
      OrderClause:='Nomer';
      Open;
    end;
  finally
    SplashVisibility(False);
  end;
end;

procedure TPlanFactForm.cbb_streetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  FocusControl(cbb_House);
end;

procedure TPlanFactForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  OpenHouse;
end;

function TPlanFactForm.CheckParam :Boolean;
begin
  Result:=True;
  if edt_year.Text='' then
  begin
    cmShowMessage('Укажите год.',true);
    Result:=False;
    Exit;
  end;
  if cbb_street.EditValue=NULL then
  begin
    cmShowMessage('Укажите улицу.',true);
    Result:=False;
    Exit;
  end;
  if cbb_House.EditValue=NULL then
  begin
    cmShowMessage('Укажите дом.',true);
    Result:=False;
    Exit;
  end;
end;

procedure TPlanFactForm.clv2DATAPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TPlanFactForm.clv2STATEPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TPlanFactForm.clv2SUMMAPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TPlanFactForm.ds_trfactAfterCancel(DataSet: TDataSet);
begin
  SumQuart;
end;

procedure TPlanFactForm.ds_trfactAfterInsert(DataSet: TDataSet);
begin
  if v1.GetColumnByFieldName('Code').EditValue=null then
  Abort else
  begin
    //устанавливаем начальные значения полей
    SetDefParam;
  end;
end;

procedure TPlanFactForm.ds_trfactBeforeDelete(DataSet: TDataSet);
begin
  CorrectQuart;
end;

procedure TPlanFactForm.ds_trfactBeforeEdit(DataSet: TDataSet);
begin
  CorrectQuart;
end;

procedure TPlanFactForm.ds_trfactBeforePost(DataSet: TDataSet);
var
  stat :Boolean;
begin
  stat:=True;
  with ds_trfact do
  begin
    if FN('HOUSE').AsVariant=null then stat:=False;
    if FN('MLIST').AsVariant=null then stat:=False;
    if FN('KONTRAGENT').AsVariant=null then stat:=False;
    //if FN('MANAGER').AsVariant=null then stat:=False;
    if FN('PLANCODE').AsVariant=null then stat:=False;
  end;
  if stat=false then
  begin
    cmShowMessage('Не заполнены обязятельные параметры!',true);
    Abort;
  end else
    SumQuart;
end;

procedure TPlanFactForm.SumQuart;
var
  FName :string;
  sum   :Variant;
begin
  FName:=GetFieldName(VarToDateTime(v2.GetColumnByFieldName('DATA').EditValue));
  with ds_Plan do
  begin
    Edit;
    if FN(FName).AsVariant=null then sum:=0 else
       sum:=FN(FName).AsVariant;

    FN(FName).AsVariant:=sum + v2.GetColumnByFieldName('SUMMA').EditValue;
    Post;
  end;
end;

function TPlanFactForm.GetFieldName(Data :TDateTime) :string;
var
  Quart :Integer;
begin
  Quart:=RetDate(Data,4);
  Result:='FSUM'+IntToStr(Quart);
end;

procedure TPlanFactForm.CorrectQuart;
var
  FName :string;
begin
  FName:=GetFieldName(VarToDateTime(v2.GetColumnByFieldName('DATA').EditValue));
  with ds_Plan do
  begin
    Edit;
    FN(FName).AsVariant:=FN(FName).AsVariant -
                                     v2.GetColumnByFieldName('SUMMA').EditValue;
    Post;
  end;
end;

procedure TPlanFactForm.CreateMState;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with m_state do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(m_state,'CODE',ftInteger);
  CreateField(m_state,'NAME',ftString,128);
  m_state.Open;
  AddType(0,'предремонтная встреча');
  AddType(1,'дефектная ведомость');
  AddType(2,'калькуляция');
  AddType(3,'доп. соглашение');
  AddType(4,'в работе');
  AddType(5,'завершено');
end;

procedure TPlanFactForm.SetDefParam;
begin
  with ds_trfact do
  begin
    if not (State in dsEditModes) then Exit;
    FN('HOUSE').AsVariant:=v1.GetColumnByFieldName('HOUSE').EditValue;
    FN('MLIST').AsVariant:=v1.GetColumnByFieldName('MLIST').EditValue;
    FN('KONTRAGENT').AsVariant:=v1.GetColumnByFieldName('KONTRAGENT').EditValue;
    FN('MANAGER').AsVariant:=v1.GetColumnByFieldName('MANAGER').EditValue;
    FN('PLANCODE').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
  end;
end;

procedure TPlanFactForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TPlanFactForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMState;
  DSOptoins(ds_Plan,'','TRPLAN','CODE','TRPLAN_GEN',false);
  DSOptoins(ds_trfact,'','TRFACT','CODE','TRFACT_GEN',false);
  ds_street.Open;
  ds_manager.Open;
end;

procedure TPlanFactForm.btn_execClick(Sender: TObject);
begin
  if not CheckParam then Exit;
  SplashVisibility(True,'Загружаем данные...');
  try
    OpenDs;
  finally
    SplashVisibility(False);
  end;
end;

procedure TPlanFactForm.HousePropertiesInitPopup(Sender: TObject);
begin
  if cbb_street.EditValue=null then
  begin
    ActiveControl:=cbb_street;
    cmShowMessage('Укажите улицу.',true);
    Exit;
  end;
end;

procedure TPlanFactForm.StreetPropertiesChange(Sender: TObject);
begin
  //OpenHouse;
end;

procedure TPlanFactForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenFact;
end;

procedure TPlanFactForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  OpenFact;
end;

procedure TPlanFactForm.v2EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast {and FocusedRecord.IsLast} and (Key = VK_RETURN) then
    begin
      Key := 0;
      Sender.DataController.Post;
    end;
end;

procedure TPlanFactForm.RightForEdit;
begin
  if (ActiveRole=53) then               //инженер СЭ
     v2.OptionsData.Editing:=False else
     v2.OptionsData.Editing:=true;
end;

initialization
  RegisterClass(TPlanFactForm);

end.
