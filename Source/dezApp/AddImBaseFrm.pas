unit AddImBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutcxEditAdapters,
  dxLayoutControl, cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxMemo,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
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
  TAddImBaseForm = class(TDezModalForm)
    grLayoutControl1Group_Root: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    grlc1Group1: TdxLayoutGroup;
    itmlc1Item1: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itmlc1Item2: TdxLayoutItem;
    itmlc1Item3: TdxLayoutItem;
    itmlc1Item4: TdxLayoutItem;
    itmlc1Item11: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    cbb_ATYPE: TcxComboBox;
    ced_Cost: TcxCalcEdit;
    itmlc1Item12: TdxLayoutItem;
    ced_SQ: TcxCalcEdit;
    cbb_Dtype: TcxComboBox;
    mmo_Note: TcxMemo;
    itmlc1Item5: TdxLayoutItem;
    itmlc1Item13: TdxLayoutItem;
    btn_Add: TcxButton;
    ds_IMMKD: TpFIBDataSet;
    src_IMMKD: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
  private
    { Private declarations }

    procedure OpenDS;
    procedure GetHouse;
    procedure AddRec(isEdit: boolean);
    function CheckParam: Boolean;
  public
    { Public declarations }
    code :Variant;
  end;

var
  AddImBaseForm: TAddImBaseForm;

implementation

uses cmDBUnit, AppUtils, cmUtils;

{$R *.dfm}

procedure TAddImBaseForm.btn_AddClick(Sender: TObject);
begin
  AddRec(false);
end;

procedure TAddImBaseForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  GetHouse;
end;

procedure TAddImBaseForm.FormCreate(Sender: TObject);
begin
  OpenDS;
end;

procedure TAddImBaseForm.OpenDS;
begin
  DSOptoins(ds_IMMKD,'','IMMKD','CODE','IMMKD_GEN');
  ds_STREET.Open;
end;

procedure TAddImBaseForm.GetHouse;
begin
  //cbb_house.EditValue:=null;
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue = null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='Nomer';
    Open;
  end;
end;

procedure TAddImBaseForm.AddRec(isEdit: boolean);
begin
  if not CheckParam then Exit;
  with ds_IMMKD do begin
    if isEdit then Edit else
    Append;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('NOTE').AsVariant:=mmo_Note.EditValue;
    FN('COST').AsVariant:=ced_Cost.EditValue;
    FN('SQ').AsVariant:=ced_SQ.EditValue;
    FN('ATYPE').AsVariant:=cbb_ATYPE.ItemIndex;
    FN('DTYPE').AsVariant:=cbb_DTYPE.ItemIndex;
    Post;
    code:=FN('CODE').AsVariant;
  end;
  ModalResult:=mrOk;
end;

function TAddImBaseForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_street.EditValue=null then
  begin
    cmShowMessage('Не указана улица!',true);
    cbb_street.SetFocus;
    Result:=False;
    Exit;
  end;
  if cbb_house.EditValue=null then
  begin
    cmShowMessage('Не указан дом!',true);
    cbb_house.SetFocus;
    Result:=False;
    Exit;
  end;
end;

end.
