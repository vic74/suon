unit AddJWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, dezCommon, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalendar,
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutLookAndFeels, cxMemo, DB, FIBDataSet, pFIBDataSet,
  Menus, StdCtrls, cxButtons, cxCheckBox, dxLayoutControlAdapters,
  BaseForm, Kontragent,
  dxLayoutContainer, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  KontragentRepository;

type
  TAddType = (atNoLink, atWithLink, atBasis);
  TAddJWorkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    cbb_WorkType: TcxLookupComboBox;
    itm_WorkType: TdxLayoutItem;
    dt_RegDate: TcxDateEdit;
    itm_RegDate: TdxLayoutItem;
    cbb_Kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    mmo_desc: TcxMemo;
    itm_desc: TdxLayoutItem;
    txt_place: TcxTextEdit;
    itm_place: TdxLayoutItem;
    dt_PlanDate: TcxDateEdit;
    itm_PlanDate: TdxLayoutItem;
    ds_JWorkType: TpFIBDataSet;
    src_JWorkType: TDataSource;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    dt_FactDate: TcxDateEdit;
    itm_FactDate: TdxLayoutItem;
    mmo_Note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    chk_fakt: TcxCheckBox;
    itm_fakt: TdxLayoutItem;
    grp_fakt: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    function CheckParam: Boolean;
    procedure OpenDs;
    procedure ReopenHouse;

  public
    { Public declarations }
    fKontr: TKontragent;
    fController: TKontragentController;
    isEdit: Boolean;
    checFact: Boolean;
    AddType: TAddType;
    //IDS: TpFIBDataSet;
    procedure SetEditParam;
    procedure SetDefParam;
  end;

var
  AddJWorkForm: TAddJWorkForm;

implementation

uses cmDBUnit, cmUtils;
{$R *.dfm}

procedure TAddJWorkForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TAddJWorkForm.btn_OkClick(Sender: TObject);
begin
  if CheckParam then
    ModalResult := mrOk
  else
    ModalResult := mrNone;
end;

procedure TAddJWorkForm.cbb_streetPropertiesChange(Sender: TObject);
begin
  //ReopenHouse;
end;

procedure TAddJWorkForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  cbb_street.PostEditValue;
  ReopenHouse;
end;

procedure TAddJWorkForm.ReopenHouse;
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue = null then
      Exit;
    ParamByName('street').AsVariant := cbb_street.EditValue;
    Open;
  end;
end;

procedure TAddJWorkForm.FormCreate(Sender: TObject);
begin
  fKontr:= TKontragent.Create;
  fController:= TKontragentController.Create;
  OpenDs;
end;

procedure TAddJWorkForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fKontr);
  fController.Free;
end;

procedure TAddJWorkForm.SetDefParam;
begin
 // Self.Height := 400;
  Self.Caption := 'Создание записи';
  dt_RegDate.Date := Date;
  dt_PlanDate.Date := Date + 30;
end;

procedure TAddJWorkForm.SetEditParam;
begin
  //Self.Height := 539;
  Self.Caption := 'Редактирование записи';
  grp_fakt.Enabled := True;
  itm_note.Enabled := True;
  //cbb_WorkType.Properties.ReadOnly := True;
  cbb_Kontr.Properties.ReadOnly := True;
  cbb_house.Properties.ReadOnly := True;
  cbb_street.Properties.ReadOnly := True;
end;

procedure TAddJWorkForm.OpenDs;
begin
  ds_JWorkType.Open;
  src_kontr.DataSet:= fController.DS;

  if ActiveUserType = 0 then
    fController.GetActiveKontragents()
  else begin
    fController.GetById(ActiveKontragent);
    cbb_Kontr.Enabled:= False;
  end;
  ds_street.Open;
  // house open automatically as detail [ForceOpen]
end;

function TAddJWorkForm.CheckParam: Boolean;
begin
  Result := False;
  if checFact then
     if chk_fakt.Checked = false then
     raise dezException.Create('Работа должна быть отмечена как выполнена!');
  if cbb_WorkType.EditValue = null then
     raise dezException.Create('Не указан тип работы!');
  if cbb_Kontr.EditValue = null then
     raise dezException.Create('Не указана подрядная организация!');
  if cbb_street.EditValue = null then
     raise dezException.Create('Не указана улица!');
  if cbb_house.EditValue = null then
     raise dezException.Create('Не указан дом!');
  if dt_RegDate.EditValue = null then
     raise dezException.Create('Не указана дата создания!');
  if dt_PlanDate.EditValue = null then
     raise dezException.Create('Не указана плановая дата!');
  if (chk_fakt.Checked) and (dt_FactDate.EditValue = null) then
     raise dezException.Create('Работа отмечена как выполнена, но фактическая дата не установлена!');
  Result:= True;
end;

end.
