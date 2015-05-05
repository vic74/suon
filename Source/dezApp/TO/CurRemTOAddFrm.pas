unit CurRemTOAddFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxPropertiesStore, Data.DB,
  FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxSpinEdit,
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
  TCurRemTOAddForm = class(TDezModalForm)
    lc1: TdxLayoutControl;
    cbb_mlist: TcxLookupComboBox;
    cbb_kontr: TcxLookupComboBox;
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    CurrencyEdit_proc1: TcxCurrencyEdit;
    CurrencyEdit_sum1: TcxCurrencyEdit;
    CurrencyEdit_proc2: TcxCurrencyEdit;
    CurrencyEdit_sum2: TcxCurrencyEdit;
    CurrencyEdit_proc3: TcxCurrencyEdit;
    CurrencyEdit_sum3: TcxCurrencyEdit;
    CurrencyEdit_proc4: TcxCurrencyEdit;
    CurrencyEdit_sum4: TcxCurrencyEdit;
    txt1: TcxTextEdit;
    lGrpgrp1: TdxLayoutGroup;
    litm_btnAdd: TdxLayoutItem;
    litm_kontr: TdxLayoutItem;
    litm_sum1: TdxLayoutItem;
    litm_sum2: TdxLayoutItem;
    litm_sum3: TdxLayoutItem;
    litm_sum4: TdxLayoutItem;
    litm_txt1: TdxLayoutItem;
    lGrpgrplc1Group1: TdxLayoutGroup;
    litm_Ok: TdxLayoutItem;
    litm_Cancel: TdxLayoutItem;
    litm_proc1: TdxLayoutItem;
    litm_proc2: TdxLayoutItem;
    litm_propc3: TdxLayoutItem;
    litm_proc4: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    ds_mat: TpFIBDataSet;
    src_mat: TDataSource;
    prop1: TcxPropertiesStore;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    CurrencyEdit_sum: TcxSpinEdit;
    litm_lc1Item1: TdxLayoutItem;
    txt_ost: TcxTextEdit;
    litm_lc1Item11: TdxLayoutItem;
    procedure btn_OkClick(Sender: TObject);
    procedure cbb_mlistPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CurrencyEdit_sumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CurrencyEdit_sum1PropertiesEditValueChanged(Sender: TObject);
    procedure CurrencyEdit_sum2PropertiesEditValueChanged(Sender: TObject);
    procedure CurrencyEdit_sum3PropertiesEditValueChanged(Sender: TObject);
    procedure CurrencyEdit_sum4PropertiesEditValueChanged(Sender: TObject);
    procedure CurrencyEdit_sumPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    DS: TDataSet;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrepareDS;
    function Validate: Boolean;
    procedure FillControls;
    procedure RecalcSum;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; fds: TDataSet);
  end;

var
  CurRemTOAddForm: TCurRemTOAddForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils, AddMatFrm;

procedure TCurRemTOAddForm.btn_OkClick(Sender: TObject);
begin
  if Validate then
    ModalResult:= mrOk;
end;

procedure TCurRemTOAddForm.cbb_mlistPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsType(cbb_mlist.EditValue,[varNull, varEmpty]);
end;

constructor TCurRemTOAddForm.Create(AOwner: TComponent; fds: TDataSet);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  DS:= fds;
  PrepareDS;
  case fds.State of
    dsEdit: Self.Caption:= 'Редакирование записи';
    dsInsert: Self.Caption:= 'Создание записи';
    dsNewValue: Self.Caption:= 'Создание записи';
  end;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sum1PropertiesEditValueChanged(
  Sender: TObject);
begin
  RecalcSum;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sum2PropertiesEditValueChanged(
  Sender: TObject);
begin
  RecalcSum;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sum3PropertiesEditValueChanged(
  Sender: TObject);
begin
  RecalcSum;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sum4PropertiesEditValueChanged(
  Sender: TObject);
begin
  RecalcSum;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sumPropertiesEditValueChanged(
  Sender: TObject);
begin
  RecalcSum;
end;

procedure TCurRemTOAddForm.CurrencyEdit_sumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsType(DisplayValue,[varNull, varEmpty]);
end;

procedure TCurRemTOAddForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=0;
    AButton.Hint:='Выбрать из справочника';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TCurRemTOAddForm.FillControls;
begin
  cbb_mlist.EditValue:= DS.FieldByName('MLIST').AsVariant;
  CurrencyEdit_sum.EditValue := DS.FieldByName('SUMY').AsVariant;
  txt1.EditValue:= DS.FieldByName('NOTE').AsVariant;
  CurrencyEdit_sum1.EditValue:= DS.FieldByName('SUM1').AsVariant;
  CurrencyEdit_sum2.EditValue:= DS.FieldByName('SUM2').AsVariant;
  CurrencyEdit_sum3.EditValue:= DS.FieldByName('SUM3').AsVariant;
  CurrencyEdit_sum4.EditValue:= DS.FieldByName('SUM4').AsVariant;
end;

procedure TCurRemTOAddForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F :TAddMatForm;
begin
  if AButtonIndex = 1 then begin
    F:= TAddMatForm.Create(Application.MainForm);
    try
      if F.ShowModal = mrOk then
      with TcxLookupComboBox(Sender) do
      begin
        EditValue := F.v1.GetColumnByFieldName('CODE').EditValue;
        PostEditValue;
      end;
    finally
      FreeAndNil(F);
    end;
  end;
end;

procedure TCurRemTOAddForm.PrepareDS;
begin
  CustomizeCombo(cbb_mlist);
  ds_mat.Open;
  FillControls;
end;

procedure TCurRemTOAddForm.RecalcSum;
var
  sum: Variant;
begin
  sum:= StrToFloat(VarToStrDef(CurrencyEdit_sum1.EditValue,'0'))+
        StrToFloat(VarToStrDef(CurrencyEdit_sum2.EditValue,'0'))+
        StrToFloat(VarToStrDef(CurrencyEdit_sum3.EditValue,'0'))+
        StrToFloat(VarToStrDef(CurrencyEdit_sum4.EditValue,'0'));
  txt_ost.EditValue:= CurrencyEdit_sum.EditValue - sum;
end;

function TCurRemTOAddForm.Validate: Boolean;
begin
  Result:= False;
  if CurrencyEdit_sum.ValidateEdit(False) and
     cbb_mlist.ValidateEdit(false) then
  Result:= True;
end;

end.
