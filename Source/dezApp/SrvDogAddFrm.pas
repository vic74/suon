unit SrvDogAddFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxBar, DB, FIBDataSet, pFIBDataSet, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxClasses, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  BaseForm,
  cxDBLookupComboBox, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils,
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
  TSrvDogAddForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    src_kontr: TDataSource;
    ds_SRVDOGTYPE: TpFIBDataSet;
    src_SRVDOGTYPE: TDataSource;
    bm1: TdxBarManager;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    m_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_type: TcxLookupComboBox;
    itm_type: TdxLayoutItem;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmcnt1Item1: TdxLayoutItem;
    btn_add: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    cbb_FIRM: TcxLookupComboBox;
    litmcnt1Item1: TdxLayoutItem;
    cbb_SIGN: TcxLookupComboBox;
    litm_cnt1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
    procedure AddRec(isEdit: boolean = false);
    function CheckParams: Boolean;
    procedure FillControl;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
    EditRec: Boolean;
    ds: TpFIBDataSet;
  end;

var
  SrvDogAddForm: TSrvDogAddForm;

implementation

uses AppUtils, cmDBUnit, SIGNDogEditFrm, dezCommon;

{$R *.dfm}

procedure TSrvDogAddForm.AddRec(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds do begin
    if isEdit then Edit else
    Append;
    FN('KONTRAGENT').AsVariant:= cbb_kontr.EditValue;
    FN('NOMER').AsVariant:= m_num.EditingValue;
    FN('D1').AsVariant:= dt1.EditValue;
    FN('D2').AsVariant:= dt2.EditValue;
    FN('ATYPE').AsVariant:= cbb_type.EditValue;
    FN('FIRM').AsVariant:= cbb_FIRM.EditValue;
    FN('SIGNDOG').AsVariant:= cbb_SIGN.EditValue;
    if not isEdit then
    FN('"ACTIVE"').AsVariant:= 1;
    Post;
  end;
end;

procedure TSrvDogAddForm.btn_addClick(Sender: TObject);
begin
  AddRec(EditRec);
  ModalResult:= mrOk;
end;

function TSrvDogAddForm.CheckParams: Boolean;
begin
  Result:= False;
  if cbb_kontr.EditValue = null then
     raise EMyException.Create('Укажите принципала!');
  if m_num.EditingValue = null then
     raise EMyException.Create('Укажите номер!');
  if dt1.EditValue = null then
     raise EMyException.Create('Укажите дату заключения!');
  if dt2.EditValue = null then
     raise EMyException.Create('Укажите дату окончания!');
  if cbb_type.EditValue = null then
     raise EMyException.Create('Укажите тип договора!');
  if cbb_FIRM.EditValue = null then
     raise EMyException.Create('Укажите организацию!');
  Result:= True;
end;

procedure TSrvDogAddForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkText;
    AButton.Caption := '+';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TSrvDogAddForm.FillControl;
begin
  with ds do begin
    cbb_kontr.EditValue:= FN('KONTRAGENT').AsVariant;
    m_num.EditValue:= FN('NOMER').AsVariant;
    cbb_type.EditValue:= FN('ATYPE').AsVariant;
    dt1.EditValue:= FN('D1').AsVariant;
    dt2.EditValue:= FN('D2').AsVariant;
    cbb_FIRM.EditValue := FN('FIRM').AsVariant;
    cbb_SIGN.EditValue := FN('SIGNDOG').AsVariant;
  end;
end;

procedure TSrvDogAddForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  OpenDS;
  if ActiveWorker = 35 then //колегова
  CustomizeCombo(cbb_SIGN);
end;

procedure TSrvDogAddForm.FormDestroy(Sender: TObject);
begin
  fController.Free;
end;

procedure TSrvDogAddForm.FormShow(Sender: TObject);
begin
  if EditRec = true then
     FillControl;
end;

procedure TSrvDogAddForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  F: TSIGNDogEditForm;
begin
  if AButtonIndex = 1 then begin
    F:= TSIGNDogEditForm.Create(Application.MainForm);
    try
      if F.ShowModal = mrOk then
      with TcxLookupComboBox(Sender) do
      begin
        EditValue := F.v1.GetColumnByFieldName('ID').EditValue;
        PostEditValue;
      end;
    finally
      FreeAndNil(F);
    end;
  end;
end;

procedure TSrvDogAddForm.OpenDS;
begin
  if cmDb.ds_SIGNDOG.State in [dsInactive] then
     cmDb.ds_SIGNDOG.Open;// else
     //cmDb.ds_SIGNDOG.Refresh;
  {$REGION 'Kontragent'}
  src_kontr.DataSet:= fController.GetActiveKontrShort();
  {$ENDREGION}
  cmDb.ds_FIRM.CloseOpen(False);
  ds_SRVDOGTYPE.Open;
end;

end.
