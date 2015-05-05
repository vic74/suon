unit HousePlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutLookAndFeels, AppUtils, BaseForm, cmDBUnit, cmUtils, FIBDataSet,
  pFIBDataSet, cxPropertiesStore, cxCalc, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinscxPCPainter, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxNavigator, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  THousePlanForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_1: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    grp_grekv: TdxLayoutGroup;
    grp_nrekv: TdxLayoutGroup;
    btn_save: TcxButton;
    itm_btn_save: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_btn_edit: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    btn_delete: TcxButton;
    itm_delete: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_HousePlan: TpFIBDataSet;
    src_HousePlan: TDataSource;
    ds_HouseSrv: TpFIBDataSet;
    src_HouseSrv: TDataSource;
    clc_gfk: TcxCalcEdit;
    itm_clc_kom: TdxLayoutItem;
    clc_gfz: TcxCalcEdit;
    itm_prz: TdxLayoutItem;
    clc_nfk: TcxCalcEdit;
    itm_nfk: TdxLayoutItem;
    clc_nfz: TcxCalcEdit;
    itm_nfz: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1RECV: TcxGridDBColumn;
    grp_org: TdxLayoutGroup;
    clc_kv: TcxCalcEdit;
    itm_kv: TdxLayoutItem;
    clc_ods: TcxCalcEdit;
    itm_ods: TdxLayoutItem;
    clc_drtz: TcxCalcEdit;
    itm_drtz: TdxLayoutItem;
    clc_IPU: TcxCalcEdit;
    lc1Item1: TdxLayoutItem;
    clc_DZI: TcxCalcEdit;
    lc1Item2: TdxLayoutItem;
    clc_VENT: TcxCalcEdit;
    lc1Item3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_editClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_deleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_srvPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    function CheckParam :Boolean;
    procedure SavePlan(isEdit :Boolean=false);
    procedure LoadInEdit;
  public
    { Public declarations }
  end;

var
  HousePlanForm: THousePlanForm;

implementation

{$R *.dfm}

{ THousePlanForm }

procedure THousePlanForm.btn_deleteClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then  Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_HousePlan.Delete;
end;

procedure THousePlanForm.btn_editClick(Sender: TObject);
begin
  if CheckParam then
     SavePlan(true);
end;

procedure THousePlanForm.btn_saveClick(Sender: TObject);
begin
  if CheckParam then
     SavePlan;
end;

procedure THousePlanForm.cbb_srvPropertiesChange(Sender: TObject);
begin
  if cbb_srv.EditValue=6 then
  begin
    grp_org.Visible:=True;
  end else
  begin
    grp_org.Visible:=False;
    clc_kv.EditValue:=null;
    clc_ods.EditValue:=null;
    clc_drtz.EditValue:=null;
    clc_dzi.EditValue:=null;
  end;
end;

function THousePlanForm.CheckParam: Boolean;
begin
  Result:=True;
  if dt1.EditValue=null then
  begin
    cmShowMessage('Не указана дата!',true);
    Result:=False;
    Exit;
  end;
  if cbb_srv.EditValue=null then
  begin
    cmShowMessage('Не указана услуга!',true);
    Result:=False;
    Exit;
  end;
end;

procedure THousePlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure THousePlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDs;
end;

procedure THousePlanForm.LoadInEdit;
var
  Stream :TMemoryStream;
  ls :TStringList;
  i :Integer;
  FName, Value :string;
  clc :TcxCalcEdit;
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then  Exit;
  ls:=TStringList.Create;
  Stream:=TMemoryStream.Create;
  with ds_HousePlan do begin
    dt1.EditValue:=FN('DATA').AsVariant;
    cbb_srv.EditValue:=FN('HOUSESRV').AsVariant;
    TBlobField(FN('RECV')).SaveToStream(Stream);
    if Stream.Size>0 then
    begin
      Stream.Position:=0;
      ls.LoadFromStream(Stream);
      for I := 0 to Ls.Count - 1 do
      begin
        FName:='clc_'+LowerCase(cmGetWord(ls[i],1,'='));
        Value:=cmGetWord(ls[i],2,'=');
        clc:=(Self.FindComponent(FName) as TcxCalcEdit);
        if clc<>nil then clc.EditValue:=Value;
      end;
    end;
  end;
  Stream.Free;
  ls.Free;
end;

procedure THousePlanForm.OpenDs;
begin
  DSOptoins(ds_HousePlan,'','HOUSEPLAN','CODE','HOUSEPLAN_GEN');
  ds_HouseSrv.Open;
end;

procedure THousePlanForm.SavePlan(isEdit :Boolean=false);
var
  Stream :TMemoryStream;
  ls :TStringList;
begin
  ls:=TStringList.Create;
  Stream:=TMemoryStream.Create;
  with ls do
  begin
    Add('GFK='+cmCorrectFloat(VarToStrDef(clc_gfk.EditValue,'0')));
    Add('GFZ='+cmCorrectFloat(VarToStrDef(clc_gfz.EditValue,'0')));
    Add('NFK='+cmCorrectFloat(VarToStrDef(clc_nfk.EditValue,'0')));
    Add('NFZ='+cmCorrectFloat(VarToStrDef(clc_nfz.EditValue,'0')));
    if grp_org.Visible=True then
    begin
      if clc_kv.EditValue<>null then
      Add('KV='+cmCorrectFloat(VarToStrDef(clc_KV.EditValue,'0')));
      if clc_ods.EditValue<>null then
      Add('ODS='+cmCorrectFloat(VarToStrDef(clc_ODS.EditValue,'0')));
      if clc_drtz.EditValue<>null then
      Add('DRTZ='+cmCorrectFloat(VarToStrDef(clc_DRTZ.EditValue,'0')));
      if clc_dzi.EditValue<>null then
        Add('DZI='+cmCorrectFloat(VarToStrDef(clc_DZI.EditValue,'0')));
      if clc_ipu.EditValue<>null then
        Add('IPU='+cmCorrectFloat(VarToStrDef(clc_IPU.EditValue,'0')));
      if clc_vent.EditValue<>null then
        Add('VENT='+cmCorrectFloat(VarToStrDef(clc_VENT.EditValue,'0')));
    end;
    SaveToStream(Stream);
  end;
  with ds_HousePlan do
  begin
    if isEdit then
    Edit else
    Append;
    FN('DATA').AsVariant:=dt1.Date;
    FN('HOUSESRV').AsVariant:=cbb_srv.EditValue;
    TBlobField(FN('RECV')).LoadFromStream(Stream);
    Post;
  end;
  Stream.Free;
  ls.Free;
end;

procedure THousePlanForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadInEdit;
end;

procedure THousePlanForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :LoadInEdit;
    VK_DOWN :LoadInEdit;
  end;
end;

initialization
 RegisterClass(THousePlanForm);
end.
