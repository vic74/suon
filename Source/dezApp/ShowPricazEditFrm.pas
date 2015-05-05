unit ShowPricazEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, ShowPrikazUnit, dxSkinBlack, dxSkinBlue,
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
  TShowPricazEditForm = class(TDezModalForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    laflkf1: TdxLayoutLookAndFeelList;
    llaflaf1: TdxLayoutCxLookAndFeel;
    txt_fNum: TcxTextEdit;
    litm_lc1Item1: TdxLayoutItem;
    dt_fData: TcxDateEdit;
    litm_lc1Item11: TdxLayoutItem;
    cbb_fShowType: TcxComboBox;
    litm_lc1Item12: TdxLayoutItem;
    msk_GenDir: TcxMaskEdit;
    litm_lc1Item2: TdxLayoutItem;
    msk_ChiefOE: TcxMaskEdit;
    litm_lc1Item3: TdxLayoutItem;
    msk_ChiefTO: TcxMaskEdit;
    litm_lc1Item4: TdxLayoutItem;
    txt_fStNum: TcxTextEdit;
    litm_lc1Item5: TdxLayoutItem;
    litm_lc1Item6: TdxLayoutItem;
    dt_fStDate: TcxDateEdit;
    txt_fChiefFIN: TcxTextEdit;
    litm_lc1Item13: TdxLayoutItem;
    txt_fCheifUO: TcxTextEdit;
    litm_lc1Item14: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    btn_Save: TcxButton;
    litm_lc1Item15: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item16: TdxLayoutItem;
    procedure dt_fDataPropertiesEditValueChanged(Sender: TObject);
    procedure txt_fNumPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_fShowTypePropertiesEditValueChanged(Sender: TObject);
    procedure txt_fStNumPropertiesEditValueChanged(Sender: TObject);
    procedure dt_fStDatePropertiesEditValueChanged(Sender: TObject);
    procedure msk_GenDirPropertiesEditValueChanged(Sender: TObject);
    procedure txt_fChiefFINPropertiesEditValueChanged(Sender: TObject);
    procedure msk_ChiefTOPropertiesEditValueChanged(Sender: TObject);
    procedure msk_ChiefOEPropertiesEditValueChanged(Sender: TObject);
    procedure txt_fCheifUOPropertiesEditValueChanged(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    ShowPrikaz: TShowPrikaz;
    isChangeValue: Boolean;
    procedure CangeningValue;
    procedure FillControls;
    procedure MapToObject;
    procedure Save;
    function Validate: Boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; fId: Variant);
  end;

var
  ShowPricazEditForm: TShowPricazEditForm;

implementation

{$R *.dfm}

uses cmDBUnit;

{ TShowPricazEditForm }

procedure TShowPricazEditForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TShowPricazEditForm.btn_SaveClick(Sender: TObject);
begin
  Save;
end;

procedure TShowPricazEditForm.CangeningValue;
begin
  if (txt_fNum.EditValue <> ShowPrikaz.Num) or
     (cbb_fShowType.ItemIndex <> ShowPrikaz.ShowType) or
     (txt_fStNum.EditValue <> ShowPrikaz.StNum) or
     (dt_fStDate.EditValue <> ShowPrikaz.StDate) or
     (msk_GenDir.EditValue <> ShowPrikaz.GenDir) or
     (txt_fChiefFIN.EditValue <> ShowPrikaz.ChiefFIN) or
     (msk_ChiefTO.EditValue <> ShowPrikaz.ChiefTO) or
     (msk_ChiefOE.EditValue <> ShowPrikaz.ChiefOE) or
     (txt_fCheifUO.EditValue <> ShowPrikaz.CheifUO) or
     (dt_fData.EditValue <>ShowPrikaz.Data) then
    isChangeValue:= True;

  btn_Save.Enabled:= isChangeValue;
end;

procedure TShowPricazEditForm.cbb_fShowTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

constructor TShowPricazEditForm.Create(AOwner: TComponent; fId: Variant);
begin
  inherited Create(AOwner);
  ShowPrikaz:= TShowPrikaz.Create;
  isChangeValue:= False;
  if not VarIsType(fId,[0,1]) then begin
     ShowPrikaz.FindById(fId);
     FillControls;
  end;
end;

procedure TShowPricazEditForm.dt_fDataPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.dt_fStDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.FillControls;
begin
  txt_fNum.EditValue:= ShowPrikaz.Num;
  dt_fData.EditValue:= ShowPrikaz.Data;
  cbb_fShowType.ItemIndex:= ShowPrikaz.ShowType;
  txt_fStNum.EditValue:= ShowPrikaz.StNum;
  dt_fStDate.EditValue:= ShowPrikaz.StDate;
  //
  msk_GenDir.EditValue:= ShowPrikaz.GenDir;
  txt_fChiefFIN.EditValue:= ShowPrikaz.ChiefFIN;
  msk_ChiefTO.EditValue:= ShowPrikaz.ChiefTO;
  msk_ChiefOE.EditValue:= ShowPrikaz.ChiefOE;
  txt_fCheifUO.EditValue:= ShowPrikaz.CheifUO;
end;

procedure TShowPricazEditForm.FormDestroy(Sender: TObject);
begin
  if Assigned(ShowPrikaz) then
     FreeAndNil(ShowPrikaz);
end;

procedure TShowPricazEditForm.MapToObject;
begin
  ShowPrikaz.Num:= txt_fNum.EditValue;
  ShowPrikaz.Data:= dt_fData.EditValue;
  ShowPrikaz.ShowType:= cbb_fShowType.ItemIndex;
  ShowPrikaz.StNum:= txt_fStNum.EditValue;
  ShowPrikaz.StDate:= dt_fStDate.EditValue;
  //
  ShowPrikaz.GenDir:= msk_GenDir.EditValue;
  ShowPrikaz.ChiefFIN:= txt_fChiefFIN.EditValue;
  ShowPrikaz.ChiefTO:= msk_ChiefTO.EditValue;
  ShowPrikaz.ChiefOE:= msk_ChiefOE.EditValue;
  ShowPrikaz.CheifUO:= txt_fCheifUO.EditValue;
end;

procedure TShowPricazEditForm.msk_ChiefOEPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.msk_ChiefTOPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.msk_GenDirPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.Save;
begin
  if not Validate then Exit;
  MapToObject;
  ShowPrikaz.Save;
  ModalResult:= mrOk;
end;

procedure TShowPricazEditForm.txt_fCheifUOPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.txt_fChiefFINPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.txt_fNumPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

procedure TShowPricazEditForm.txt_fStNumPropertiesEditValueChanged(
  Sender: TObject);
begin
  CangeningValue;
end;

function TShowPricazEditForm.Validate: Boolean;
begin
  Result:= True;
  if VarIsType(txt_fNum.EditValue,[0,1]) then
     raise dezException.Create('Не указан номер');
  if VarIsType(dt_fData.EditValue,[0,1]) then
     raise dezException.Create('Не указана дата');
  if VarIsType(msk_GenDir.EditValue,[0,1]) then
     raise dezException.Create('Не указан Ген. директор');
  if VarIsType(txt_fChiefFIN.EditValue,[0,1]) then
     raise dezException.Create('Не указан Фин. директор');
  if VarIsType(msk_ChiefTO.EditValue,[0,1]) then
     raise dezException.Create('Не указан Тех. директор');
  if VarIsType(msk_ChiefOE.EditValue,[0,1]) then
     raise dezException.Create('Не указан Начальник СЭ');
end;

end.
