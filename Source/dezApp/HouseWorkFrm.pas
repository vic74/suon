unit HouseWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControl, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, cmDBUnit, AppUtils, FIBDataSet, pFIBDataSet,
  cxPropertiesStore, BaseForm, cxCheckComboBox, cmUtils, dxBar, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxLayoutContainer, dxSkinDevExpressStyle, dxSkinBlack, dxSkinBlue,
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
  THouseWorkForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_street: TpFIBDataSet;
    ds_house: TpFIBDataSet;
    ds_HouseKWork: TpFIBDataSet;
    ds_mlist: TpFIBDataSet;
    src_street: TDataSource;
    src_house: TDataSource;
    src_houseKwork: TDataSource;
    src_mlist: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1ENT: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_add: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    clv1_SRVDOGTYPE: TcxGridDBColumn;
    clv1SDName: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure ReOpenHouse;
    procedure OpenHouseKWork;
    procedure ShowAddForm(edit :Boolean);
    function IsNotLocate(House, Mlist, Y :Variant) :Boolean;

  public
    { Public declarations }
    procedure SaveData(Street,House,Mlist,Y, ENT,SRVDOGTYPE :Variant; edt:boolean);
  end;

var
  HouseWorkForm: THouseWorkForm;

implementation

uses AddHouseWorkFrm;

{$R *.dfm}

procedure THouseWorkForm.btn_addClick(Sender: TObject);
begin
  ShowAddForm(false);
end;

procedure THouseWorkForm.btn_deleteClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('Code').EditValue<>null) or
     (v1.GetColumnByFieldName('Code').EditValue<>Unassigned) then
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  v1.DataController.DataSet.Delete;

end;

procedure THouseWorkForm.btn_editClick(Sender: TObject);
begin
  ShowAddForm(true);
end;

procedure THouseWorkForm.btn_execClick(Sender: TObject);
begin
  OpenHouseKWork;
end;

procedure THouseWorkForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  ReOpenHouse;
end;

procedure THouseWorkForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseWorkForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDs;
end;

procedure THouseWorkForm.OpenDs;
begin
 // ds_street.Open;
  ds_mlist.Open;
  DSOptoins(ds_HouseKWork,'','HOUSEKWORK','CODE','HOUSEKWORK_GEN',true);
end;

procedure THouseWorkForm.OpenHouseKWork;
begin
  {with ds_HouseKWork do
  begin
    Close;
    if (cbb_house.EditValue<>null) or
       (cbb_house.EditValue<>Unassigned) then
    begin
      MainWhereClause:='hw.house=:dom';
      ParamByName('dom').AsVariant:=cbb_house.EditValue;
      Open;
    end;
  end;}
end;

procedure THouseWorkForm.ReOpenHouse;
begin
  {with ds_house do
  begin
    Close;
    if cbb_street.EditValue<>null then
    begin
      MainWhereClause:='street = :street';
      ParamByName('street').AsVariant:=cbb_street.EditValue;
      Open;
    end;
  end; }
end;

function THouseWorkForm.IsNotLocate(House, Mlist, Y :Variant) :Boolean;
begin
  Result:=True;
  with ds_HouseKWork do
  begin
    DisableControls;
    if Locate('HOUSE;MLIST;Y',VarArrayOf([House,Mlist,Y]),[]) then
    begin
      cmShowMessage('Данная запись уже присутствует.');
      Result:=False;
    end;
    EnableControls;
  end;
end;

procedure THouseWorkForm.SaveData(Street, House, Mlist, Y, ENT,SRVDOGTYPE: Variant; edt :Boolean);
begin
  if not edt then
  if not IsNotLocate(House, Mlist, Y) then Exit;
  with ds_HouseKWork do
  begin
    DisableControls;
    if edt then Edit else
    Append;
    FN('Street').AsVariant:=Street;
    FN('HOUSE').AsVariant:=House;
    FN('MLIST').AsVariant:=Mlist;
    FN('Y').AsVariant:=Y;
    FN('ENT').AsVariant:=ENT;
    FN('SRVDOGTYPE').AsVariant:= SRVDOGTYPE;
    Post;
    EnableControls;
  end;
end;

procedure THouseWorkForm.ShowAddForm(edit :Boolean);
var
  FClass: TFormClass;
  sprform: TAddHouseWorkForm;
begin
 {try
    FClass := TFormClass(FindClass('TAddHouseWorkForm'));
  except
    on E: EClassNotFound do
      Exit;
  end; }
  sprform := TAddHouseWorkForm.Create(Application);
  if edit then
  begin
    sprform.cbb_street.EditValue:=v1.GetColumnByFieldName('Street').EditValue;
    sprform.cbb_house.EditValue:=v1.GetColumnByFieldName('House').EditValue;
    sprform.cbb_mlist.EditValue:=v1.GetColumnByFieldName('Mlist').EditValue;
    sprform.edt_year.EditValue:=v1.GetColumnByFieldName('Y').EditValue;
    sprform.cbb_ent.EditValue:=v1.GetColumnByFieldName('ENT').EditValue;
    sprform.cbb_Type.EditValue:= v1.GetColumnByFieldName('SRVDOGTYPE').EditValue;
  end;
  sprform.FormStyle := fsStayOnTop;
  //sprform.WindowState := wsNormal;
  sprform.Position := poMainFormCenter;
  //sprform.Visible := false;
  //sprform.Show;
  if sprform.ShowModal=mrOk then
  SaveData(
             sprform.cbb_street.EditValue,
             sprform.cbb_house.EditValue,
             sprform.cbb_mlist.EditValue,
             sprform.edt_year.EditValue,
             sprform.cbb_ent.EditValue,
             sprform.cbb_Type.EditValue,edit
  );
  sprform.Free;
end;

initialization

RegisterClass(THouseWorkForm);

end.
