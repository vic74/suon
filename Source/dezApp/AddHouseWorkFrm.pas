unit AddHouseWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutLookAndFeels, dxLayoutControl, AppUtils, cmDBUnit, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons, cxCheckComboBox,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet, ImgList,
  cmUtils, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle, cxCheckBox,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TAddHouseWorkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_mlist: TpFIBDataSet;
    src_mlist: TDataSource;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_mlist: TcxLookupComboBox;
    itm_mlist: TdxLayoutItem;
    edt_year: TcxMaskEdit;
    itm_year: TdxLayoutItem;
    cbb_ent: TcxCheckComboBox;
    itm_ent: TdxLayoutItem;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    btn_lock: TcxButton;
    itm_lock: TdxLayoutItem;
    il1: TcxImageList;
    ds_SRVDOGTYPE: TpFIBDataSet;
    src_SRVDOGTYPE: TDataSource;
    cbb_Type: TcxLookupComboBox;
    itm_Type: TdxLayoutItem;
    procedure btn_lockClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_CancelClick(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    lock :Boolean;
    procedure SaveValue;
    function CheckParam :Boolean;
    procedure OpenDs;
    procedure ReopenHouse;
  public
    { Public declarations }
  end;

var
  AddHouseWorkForm: TAddHouseWorkForm;

implementation

uses HouseWorkFrm;

{$R *.dfm}

procedure TAddHouseWorkForm.btn_CancelClick(Sender: TObject);
begin
  lock:=False;
  ModalResult:=mrCancel;
end;

procedure TAddHouseWorkForm.btn_lockClick(Sender: TObject);
begin
  if lock then
  begin
    btn_lock.Caption:='Закрепить форму.';
    il1.GetImage(1,btn_lock.Glyph);
    lock:=False;
  end else
  begin
    btn_lock.Caption:='Снять закрепление формы.';
    il1.GetImage(0,btn_lock.Glyph);
    lock:=True;
  end;
end;

procedure TAddHouseWorkForm.btn_OkClick(Sender: TObject);
begin
  //сохраняем данные
  //SaveValue;
  if CheckParam then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TAddHouseWorkForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  ReopenHouse;
end;

function TAddHouseWorkForm.CheckParam: Boolean;
begin
  Result:=True;
  if (cbb_house.EditValue=null) or
     (cbb_house.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите дом.',true);
    Result:=False;
    Exit;
  end;
  if (cbb_mlist.EditValue=null) or
     (cbb_mlist.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите вид работ.',true);
    Result:=False;
    Exit;
  end;
  if edt_year.EditValue=null then
  begin
    cmShowMessage('Укажите год.',true);
    Result:=False;
    Exit;
  end;
end;

procedure TAddHouseWorkForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not lock then
  CanClose:=True else
  CanClose:=False;
end;

procedure TAddHouseWorkForm.FormCreate(Sender: TObject);
begin
  OpenDs;
end;

procedure TAddHouseWorkForm.OpenDs;
begin
  ds_street.Open;
  ds_mlist.Open;
  ds_SRVDOGTYPE.Open;
end;

procedure TAddHouseWorkForm.ReopenHouse;
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue<>null then
    begin
      MainWhereClause:='street = :street';
      ParamByName('street').AsVariant:=cbb_street.EditValue;
      Open;
    end;
  end;
end;

procedure TAddHouseWorkForm.SaveValue;
var
  F : THouseWorkForm;
begin
  if CheckParam then
  {with HouseWorkForm do
  begin
    ds_HouseKWork.DisableControls;
    ds_HouseKWork.Append;
    ds_HouseKWork.FN('Street').AsVariant:=cbb_street.EditValue;
    ds_HouseKWork.FN('HOUSE').AsVariant:=cbb_house.EditValue;
    ds_HouseKWork.FN('MLIST').AsVariant:=cbb_mlist.EditValue;
    ds_HouseKWork.FN('Y').AsVariant:=edt_year.EditValue;
    ds_HouseKWork.FN('ENT').AsVariant:=cbb_ent.EditValue;
    ds_HouseKWork.Post;
    ds_HouseKWork.EnableControls;
  end; }

  {HouseWorkForm.SaveData(cbb_street.EditValue,
             cbb_house.EditValue,
             cbb_mlist.EditValue,
             edt_year.EditValue,
             cbb_ent.EditValue);}
end;

end.
