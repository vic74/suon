unit AddGraphToFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue, cxLabel, cxTextEdit,
  cxMemo, Menus, StdCtrls, cxButtons, cxSpinEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, FIBDataSet,
  BaseForm,
  pFIBDataSet, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
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
  TAddGraphToForm = class(TDezModalForm)
    mName: TcxMemo;
    lbl_1: TcxLabel;
    cbb_GraphType: TcxLookupComboBox;
    lbl_2: TcxLabel;
    cbb_GraphPeriod: TcxLookupComboBox;
    lbl_3: TcxLabel;
    dt_PredData: TcxDateEdit;
    lbl_4: TcxLabel;
    spn_ProcFact: TcxSpinEdit;
    lbl_5: TcxLabel;
    btn_Cancel: TcxButton;
    btn_Ok: TcxButton;
    ds_GRAPHPERIOD: TpFIBDataSet;
    src_GRAPHPERIOD: TDataSource;
    ds_GRAPHTYPE: TpFIBDataSet;
    src_GRAPHTYPE: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function CheckParams: boolean;
    procedure FillControl;
    procedure SaveRec;
  public
    { Public declarations }
    isEdit: Boolean;
    DS: TpFIBDataSet;
  end;

var
  AddGraphToForm: TAddGraphToForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TAddGraphToForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TAddGraphToForm.btn_OkClick(Sender: TObject);
begin
  SaveRec;
  ModalResult:= mrOk;
end;

function TAddGraphToForm.CheckParams: boolean;
begin
  Result:= false;
  if mName.EditingValue = null then
    raise EMyException.Create('Укажите наименование графика!');
  if cbb_GraphType.EditValue = null then
    raise EMyException.Create('Укажите тип графика!');
  if cbb_GraphPeriod.EditValue = null then
    raise EMyException.Create('Укажите переодичность просмотра!');
  if dt_PredData.EditingValue = null then
     raise EMyException.Create('Укажите дату представления графика!');
  if spn_ProcFact.EditingValue = null then
     raise EMyException.Create('Укажите плановый процент выполнения!');
  Result:= true;
end;

procedure TAddGraphToForm.FillControl;
begin
  if DS.State in [dsInactive] then Exit;
  with DS do begin
    mName.EditValue:= FN('NAME').AsVariant;
    cbb_GraphType.EditValue := FN('GRAPHTYPE').AsVariant;
    cbb_GraphPeriod.EditValue := FN('GRAPHPERIOD').AsVariant;
    dt_PredData.EditValue := FN('PREDDATA').AsVariant;
    spn_ProcFact.EditValue := FN('PROCFACT').AsVariant;
  end;
end;

procedure TAddGraphToForm.FormCreate(Sender: TObject);
begin
  ds_GRAPHPERIOD.Open;
  ds_GRAPHTYPE.Open;
end;

procedure TAddGraphToForm.FormShow(Sender: TObject);
begin
  if isEdit then FillControl;
end;

procedure TAddGraphToForm.SaveRec;
begin
  if not CheckParams then Exit;
  with DS do begin
    if isEdit then Edit else
       Append;
      FN('NAME').AsVariant:= mName.EditingValue;
      FN('GRAPHTYPE').AsVariant:= cbb_GraphType.EditValue;
      FN('GRAPHPERIOD').AsVariant:= cbb_GraphPeriod.EditValue;
      FN('PREDDATA').AsVariant:=FormatDateTime('dd.mm',dt_PredData.EditValue);
      FN('PROCFACT').AsVariant:=spn_ProcFact.EditValue;
    Post;
  end;
end;

end.
