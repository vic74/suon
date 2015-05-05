unit IPUEDITFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.ComCtrls, dxCore, cxDateUtils,
  Data.DB, FIBDataSet, pFIBDataSet, cxCalc, cxDropDownEdit, cxCalendar,
  Data.Bind.Components, cxSpinEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TIPUEDITForm = class(TForm)
    grpLayoutControl1Group_Root: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    llflf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    cbb_STREET: TcxLookupComboBox;
    lItmlc1Item1: TdxLayoutItem;
    cbb_HOUSE: TcxLookupComboBox;
    lItmlc1Item11: TdxLayoutItem;
    txt_Flat: TcxTextEdit;
    lItmlc1Item12: TdxLayoutItem;
    spn_CNT: TcxSpinEdit;
    lItmlc1Item13: TdxLayoutItem;
    BindingsList1: TBindingsList;
    bndlnkspn_CNT: TBindLink;
    dt_DATA: TcxDateEdit;
    lItmlc1Item14: TdxLayoutItem;
    clc_SUMA: TcxCalcEdit;
    lItmlc1Item15: TdxLayoutItem;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    btn_Ok: TcxButton;
    lItmlc1Item16: TdxLayoutItem;
    btn_Cancel: TcxButton;
    lItmlc1Item17: TdxLayoutItem;
    procedure cbb_STREETPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spn_CNTPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure GetHouse;
    procedure SaveRec;
    procedure FillControls;
    procedure CalcSum;
  public
    { Public declarations }
    DS, DSPRICE: TpFIBDataSet;
    isNewRec: Boolean;
  end;

var
  IPUEDITForm: TIPUEDITForm;

implementation

{$R *.dfm}

uses cmDBUnit;

procedure TIPUEDITForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TIPUEDITForm.btn_OkClick(Sender: TObject);
begin
  SaveRec;
end;

procedure TIPUEDITForm.CalcSum;
begin
  if DSPRICE.Locate('CNT', spn_CNT.Value,[]) then
  clc_SUMA.Value:= DSPRICE.FN('SUMA').AsVariant;
end;

procedure TIPUEDITForm.cbb_STREETPropertiesEditValueChanged(Sender: TObject);
begin
  GetHouse;
end;

procedure TIPUEDITForm.FillControls;
begin
  with DS do begin
    cbb_STREET.EditValue:= FN('SCODE').AsVariant;
    cbb_HOUSE.EditValue:= FN('HOUSE').AsVariant;
    txt_Flat.EditValue:= FN('FLAT').AsVariant;
    spn_CNT.EditValue:= FN('CNT').AsVariant;
    dt_DATA.EditValue:= FN('DATA').AsVariant;
    clc_SUMA.EditValue:= FN('SUMA').AsVariant;
  end;
end;

procedure TIPUEDITForm.FormCreate(Sender: TObject);
begin
  isNewRec:= True;
  cmDb.ds_STREET.Open;
end;

procedure TIPUEDITForm.FormShow(Sender: TObject);
begin
  if not isNewRec then
     FillControls;
end;

procedure TIPUEDITForm.GetHouse;
begin
  with ds_HOUSE do begin
    Close;
    MainWhereClause:= 'STREET = :STREET';
    ParamByName('STREET').AsVariant:= cbb_STREET.EditValue;
    Open;
  end;
end;

procedure TIPUEDITForm.SaveRec;

  procedure CheckParams;
  begin
    if cbb_HOUSE.EditValue = null then
      raise dezException.Create('Не указан дом!');
  end;

begin
  CheckParams;
  with DS do begin
    if isNewRec then Append else
    Edit;
    FN('HOUSE').AsVariant:= cbb_HOUSE.EditValue;
    FN('FLAT').AsVariant:= txt_Flat.EditingValue;
    FN('CNT').AsVariant:= spn_CNT.Value;
    FN('DATA').AsVariant:= dt_DATA.EditValue;
    FN('SUMA').AsVariant:= clc_SUMA.Value;
    Post;
  end;
  ModalResult:= mrOk;
end;

procedure TIPUEDITForm.spn_CNTPropertiesEditValueChanged(Sender: TObject);
begin
  CalcSum;
end;

end.
