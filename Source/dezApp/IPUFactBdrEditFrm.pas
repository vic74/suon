unit IPUFactBdrEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit, DB,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, cxSpinEdit,
  cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutLookAndFeels,
  cxPropertiesStore, dxLayoutControl;

type
  TIPUFactBdrEditForm = class(TDezModalForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    laflf1: TdxLayoutLookAndFeelList;
    llaflcf1: TdxLayoutCxLookAndFeel;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    cbb_Street: TcxLookupComboBox;
    litm_lc1Item1: TdxLayoutItem;
    dt1: TcxDateEdit;
    litm_lc1Item11: TdxLayoutItem;
    cbb_House: TcxLookupComboBox;
    litm_lc1Item12: TdxLayoutItem;
    sp_Summa: TcxSpinEdit;
    litm_lc1Item13: TdxLayoutItem;
    mmo1: TcxMemo;
    litm_lc1Item14: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item15: TdxLayoutItem;
    btn_Ok: TcxButton;
    litm_lc1Item16: TdxLayoutItem;
    procedure cbb_StreetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
    DS: TDataSet;
    procedure OpenDS;
    procedure OpenHouse(aStreet: Variant);
    procedure FillControls;
    procedure SaveRec;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; fds: TDataSet);
  end;

var
  IPUFactBdrEditForm: TIPUFactBdrEditForm;

implementation

{$R *.dfm}

uses cmDBUnit;

{ TIPUFactBdrEditForm }

procedure TIPUFactBdrEditForm.btn_OkClick(Sender: TObject);
begin
  SaveRec;
end;

procedure TIPUFactBdrEditForm.cbb_StreetPropertiesEditValueChanged(
  Sender: TObject);
begin
  OpenHouse(cbb_Street.EditValue);
end;

constructor TIPUFactBdrEditForm.Create(AOwner: TComponent; fds: TDataSet);
begin
  inherited Create(AOwner);
  DS:= fds;
  OpenDS;
  case fds.State of
    dsEdit: Self.Caption:= 'Редакирование записи';
    dsInsert: Self.Caption:= 'Создание записи';
    dsNewValue: Self.Caption:= 'Создание записи';
  end;
end;

procedure TIPUFactBdrEditForm.FillControls;
begin
  with DS do begin
    dt1.EditValue:= FieldByName('DATA').AsVariant;
    cbb_Street.EditValue:= FieldByName('STREET').AsVariant;
    cbb_House.EditValue:= FieldByName('HOUSE').AsVariant;
    sp_Summa.EditValue:= FieldByName('SUMMA').AsVariant;
    mmo1.EditValue:= FieldByName('NOTE').AsVariant;
  end;
end;

procedure TIPUFactBdrEditForm.OpenDS;
begin
  cmDb.ds_STREET.CloseOpen(false);
  FillControls;
end;

procedure TIPUFactBdrEditForm.OpenHouse(aStreet: Variant);
begin
  with cmDb.ds_HOUSE do begin
    Close;
    ParamByName('CODE').AsVariant:= aStreet;
    Open;
  end;
end;

procedure TIPUFactBdrEditForm.SaveRec;
  procedure CheckParas;
  begin
    if VarIsType(dt1.EditValue,[varEmpty, varNull]) then
       raise dezException.Create('Не указана дата!');
    if VarIsType(cbb_House.EditValue,[varEmpty, varNull]) then
       raise dezException.Create('Не указан адрес!');
    if VarIsType(sp_Summa.EditValue,[varEmpty, varNull]) then
       raise dezException.Create('Не указана сумма!');
  end;
begin
  CheckParas;
  with DS do begin
    FieldByName('DATA').AsVariant:= dt1.EditValue;
    FieldByName('STREET').AsVariant:= cbb_Street.EditValue;
    FieldByName('HOUSE').AsVariant:= cbb_House.EditValue;
    FieldByName('SUMMA').AsVariant:= sp_Summa.EditValue;
    FieldByName('NOTE').AsVariant:= mmo1.EditValue;
    Post;
  end;
  ModalResult:= mrOk;
end;

end.
