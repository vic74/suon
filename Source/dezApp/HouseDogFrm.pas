unit HouseDogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxCalc,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutLookAndFeels, BaseForm, FIBDataSet, pFIBDataSet, cxPropertiesStore,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsdxBarPainter, dxBar, cxBarEditItem;

type
  THouseDogForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_left: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    txt_du: TcxTextEdit;
    itm_du: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    dt_DataPUK: TcxDateEdit;
    itm_DataPUK: TdxLayoutItem;
    edt_NumDog: TcxMaskEdit;
    itm_NumDog: TdxLayoutItem;
    dt_StartData: TcxDateEdit;
    itm_StartData: TdxLayoutItem;
    dt_EndData: TcxDateEdit;
    itm_EndData: TdxLayoutItem;
    clc_ProcUK: TcxCalcEdit;
    itm_ProcUK: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    prop1: TcxPropertiesStore;
    ds_HOUSEDOG: TpFIBDataSet;
    src_HOUSEDOG: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1DATAPUK: TcxGridDBColumn;
    clv1NUMDOG: TcxGridDBColumn;
    clv1STARTDATA: TcxGridDBColumn;
    clv1ENDDATA: TcxGridDBColumn;
    clv1PROCUK: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    barM1: TdxBarManager;
    br1: TdxBar;
    cbb_Firm: TcxBarEditItem;
    btn_LoadData: TdxBarButton;
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_housePropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_housePropertiesChange(Sender: TObject);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);
    procedure btn_LoadDataClick(Sender: TObject);
  private
    { Private declarations }
    fFirm: Variant;
    procedure Gethouse;
    procedure SetDu;
    procedure OpenDs;
    function CheckParam :Boolean;
    procedure AddRec(isEdit :Boolean=false);
    procedure FillEdit;
    procedure LoadData;
    procedure ClearEdit;
  public
    { Public declarations }
  end;

var
  HouseDogForm: THouseDogForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, CommonDm;

{$R *.dfm}

procedure THouseDogForm.AddRec(isEdit :Boolean=false);
begin
  if not CheckParam then Exit;
  with ds_HOUSEDOG do
  begin
    if isEdit then Edit else
    Append;
    FN('HOUSE').AsVariant:= cbb_house.EditValue;
    FN('DATAPUK').AsVariant:= dt_DataPUK.EditValue;
    FN('NUMDOG').AsVariant:= edt_NumDog.EditValue;
    FN('STARTDATA').AsVariant:= dt_StartData.EditValue;
    FN('ENDDATA').AsVariant:= dt_EndData.EditValue;
    FN('PROCUK').AsVariant:= clc_ProcUK.EditValue;
    FN('FIRM').AsVariant:= fFirm;
    Post;
  end;
end;

procedure THouseDogForm.btn_delClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('Code').EditValue=null) or
     (v1.GetColumnByFieldName('Code').EditValue=Unassigned) then Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
     ds_HOUSEDOG.Delete;
end;

procedure THouseDogForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure THouseDogForm.btn_LoadDataClick(Sender: TObject);
begin
  LoadData;
end;

procedure THouseDogForm.btn_okClick(Sender: TObject);
begin
  AddRec;
end;

procedure THouseDogForm.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  fFirm:= cbb_Firm.EditValue;
  ds_HOUSEDOG.Close;
  ClearEdit;
end;

procedure THouseDogForm.cbb_housePropertiesChange(Sender: TObject);
begin
  SetDu;
end;

procedure THouseDogForm.cbb_housePropertiesEditValueChanged(Sender: TObject);
begin
  //SetDu;
end;

procedure THouseDogForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  Gethouse;
end;

function THouseDogForm.CheckParam: Boolean;
begin
  if VarIsType(cbb_house.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите дом!');
  if VarIsType(dt_DataPUK.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите дату протокола.');
  if VarIsType(edt_NumDog.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите номер договора.');
  if VarIsType(dt_StartData.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите дату заключения договора.');
  if VarIsType(dt_EndData.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите дату завершения договора.');
  if VarIsType(clc_ProcUK.EditValue,[varNull, varEmpty]) then
    raise dezException.Create('Укажите процент вознаграждения УК.');
  if VarIsType(fFirm,[varNull, varEmpty]) then
    raise dezException.Create('Не указана организация.');
  Result:=True;
end;

procedure THouseDogForm.ClearEdit;
begin
    cbb_street.Clear;
    cbb_house.Clear;
    dt_DataPUK.Clear;
    edt_NumDog.Clear;
    txt_du.Clear;
    dt_StartData.Clear;
    dt_EndData.Clear;
    clc_ProcUK.Clear;
end;

procedure THouseDogForm.FillEdit;
begin
  if (v1.GetColumnByFieldName('Code').EditValue=null) or
     (v1.GetColumnByFieldName('Code').EditValue=Unassigned) then Exit;
  with ds_HOUSEDOG do
  begin
    cbb_street.EditValue:=FN('STREET').AsVariant;
    cbb_house.EditValue:=FN('HOUSE').AsVariant;

    dt_DataPUK.EditValue:=FN('DataPUK').AsVariant;
    edt_NumDog.EditValue:=FN('NumDog').AsVariant;
    txt_du.EditValue:=FN('DUNAME').AsVariant;
    dt_StartData.EditValue:=FN('StartData').AsVariant;
    dt_EndData.EditValue:=FN('EndData').AsVariant;
    clc_ProcUK.EditValue:=FN('ProcUK').AsVariant;
  end;
end;

procedure THouseDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseDogForm.FormCreate(Sender: TObject);
begin
  OpenDs;
  LoadForm(prop1,Self.Name);
end;

procedure THouseDogForm.Gethouse;
begin
  if VarIsType(cbb_street.EditValue,[varEmpty, varNull]) then begin
    ds_house.Close;
    Exit;
  end;
  if ds_house.State = dsInactive then
  with ds_house do
  begin
    Close;
    ParamByName('FIRM').AsVariant:=fFirm;
    Open;
      //
    Filtered:= False;
    Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
    Filtered:= True;
  end else with ds_house do
  begin
    Filtered:= False;
    Filter:= 'STREET = '+VarToStr(cbb_street.EditValue);
    Filtered:= True;
  end;
end;

procedure THouseDogForm.LoadData;
begin
  if VarIsType(fFirm,[varNull, varEmpty]) then
    fFirm:= cbb_Firm.EditValue;
  if VarIsType(fFirm,[varNull, varEmpty]) then Exit;
  with ds_HOUSEDOG do begin
    Close;
      MainWhereClause:='hd.FIRM=:FIRM';
      ParamByName('FIRM').AsVariant:= fFirm;
    Open;
  end;
end;

procedure THouseDogForm.OpenDs;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  com_dm.ds_street.CloseOpen(true);
  DSOptoins(ds_HOUSEDOG,'','HOUSEDOG','CODE','HOUSEDOG_GEN', False);
end;

procedure THouseDogForm.SetDu;
begin
 // with cbb_house.Properties.Grid.DataController do
 // txt_du.EditValue := Values[FocusedRecordIndex, 2];
end;


procedure THouseDogForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure THouseDogForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillEdit;
    VK_DOWN :FillEdit;
  end;
end;

initialization
RegisterClass(THouseDogForm);
end.
