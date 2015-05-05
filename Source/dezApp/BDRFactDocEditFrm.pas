unit BDRFactDocEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.DateUtils, Data.DB,
  FIBDataSet, pFIBDataSet, FIBQuery, pFIBCacheQueries, pFIBProps,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxPropertiesStore,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxSpinEdit, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TBDRFactDocEditForm = class(TForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    laflf1: TdxLayoutLookAndFeelList;
    llaflcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_FIRM: TcxLookupComboBox;
    litmlc1Item1: TdxLayoutItem;
    cbb_MONTH: TcxComboBox;
    litmlc1Item11: TdxLayoutItem;
    sp_Y: TcxSpinEdit;
    litmlc1Item12: TdxLayoutItem;
    cbb_SRV: TcxLookupComboBox;
    litmlc1Item13: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    btn_SAVE: TcxButton;
    litmlc1Item14: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litmlc1Item15: TdxLayoutItem;
    procedure btn_SAVEClick(Sender: TObject);
  private
    { Private declarations }
    FACTDOC: TpFIBDataSet;
    isEdit: Boolean;
    isRKC: Boolean;  //true = Корректировки (услуги РКЦ)
    procedure OpenDS;
    procedure FillControls;
    procedure SaveRec;
    function CheckParams: Boolean;
    function isExists: Boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; DS: TpFIBDataSet; fRKC: Boolean = True; fEdit: Boolean = False);
  end;

var
  BDRFactDocEditForm: TBDRFactDocEditForm;

implementation

{$R *.dfm}

uses AppUtils, cmDBUnit;

procedure TBDRFactDocEditForm.btn_SAVEClick(Sender: TObject);
begin
  SaveRec;
  ModalResult:= mrOk;
end;

function TBDRFactDocEditForm.CheckParams: Boolean;
begin
  Result:= False;
  if cbb_FIRM.EditValue = null then
     raise dezException.Create('Укажите организацию!');
  if cbb_MONTH.ItemIndex<1 then
     raise dezException.Create('Укажите месяц!');
  if sp_Y.EditValue = null then
     raise dezException.Create('Укажите год!');
  if cbb_SRV.EditValue = null then
     raise dezException.Create('Укажите услугу!');
  if not isEdit then
  if isExists  then
     raise dezException.Create('Данная запись уже существует!');
  Result:= True;
end;

constructor TBDRFactDocEditForm.Create(AOwner: TComponent; DS: TpFIBDataSet; fRKC: Boolean;
  fEdit: Boolean);
begin
  inherited Create(AOwner);
  FACTDOC:= DS;
  isEdit:= fEdit;
  isRKC:= fRKC;
  OpenDS;
  if isEdit then
    FillControls;
end;

procedure TBDRFactDocEditForm.FillControls;
begin
  with FACTDOC do begin
    cbb_FIRM.EditValue:= FN('FIRM').AsVariant;
    cbb_MONTH.ItemIndex:= FN('M').AsVariant;
    sp_Y.EditValue:= FN('Y').AsVariant;
    cbb_SRV.EditValue:= FN('HOUSESRV').AsVariant;
  end;
end;

function TBDRFactDocEditForm.isExists: Boolean;
var
  Q: TFIBQuery;
  TableName: string;
begin
  if isRKC then
    TableName:= 'FACTDOC' else
    TableName:= 'FACT1DOC';
  Q:= GetQueryForUse(cmDb.RT,'select CODE from '+TableName+' where M=:M and Y=:Y and HOUSESRV =:SRV and FIRM = :FIRM');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('M').AsVariant:= cbb_month.ItemIndex;
    Q.ParamByName('Y').AsVariant:= sp_Y.EditValue;
    Q.ParamByName('SRV').AsVariant:= cbb_srv.EditValue;
    Q.ParamByName('FIRM').AsVariant:= cbb_FIRM.EditValue;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant<>null;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TBDRFactDocEditForm.OpenDS;
begin
  cmDb.ds_FIRM.CloseOpen(False);
  if isRKC then begin
    cbb_SRV.Properties.ListSource := cmDb.src_HOUSESRV;
    if cmDb.ds_HOUSESRV.State = dsInactive then
       cmDb.ds_HOUSESRV.Open;
  end else begin
    cbb_SRV.Properties.ListSource := cmDb.src_SRV;
    if cmDb.ds_SRV.State = dsInactive then
       cmDb.ds_SRV.Open;
  end;
  sp_Y.EditValue:= System.DateUtils.YearOf(Date);
  cbb_MONTH.ItemIndex:= System.DateUtils.MonthOf(Date);
  cbb_FIRM.EditValue:= 1;
end;

procedure TBDRFactDocEditForm.SaveRec;
begin
  if not CheckParams then Exit;
  //
  with FACTDOC do begin
    if isEdit then Edit else
    Append;
    FN('FIRM').AsVariant:= cbb_FIRM.EditValue;
    FN('M').AsVariant:=cbb_month.ItemIndex;
    FN('Y').AsVariant:=sp_Y.EditValue;
    FN('HOUSESRV').AsVariant:=cbb_srv.EditValue;
    Post;
  end;
end;

end.
