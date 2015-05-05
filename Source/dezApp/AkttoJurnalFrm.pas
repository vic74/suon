unit AkttoJurnalFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  Menus, dxLayoutcxEditAdapters, dxLayoutControl, DB, FIBDataSet, pFIBDataSet,
  dxLayoutLookAndFeels, cxCheckBox, StdCtrls, cxButtons, cxTextEdit, cxMemo,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControlAdapters, dxLayoutContainer,
  BaseForm,
  dxSkinDevExpressStyle, KontragentRepository, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TAkttoJurnalForm = class(TDezModalForm)
    lc1: TdxLayoutControl;
    cbb_WorkType: TcxLookupComboBox;
    dt_RegDate: TcxDateEdit;
    cbb_Kontr: TcxLookupComboBox;
    cbb_street: TcxLookupComboBox;
    cbb_house: TcxLookupComboBox;
    mmo_desc: TcxMemo;
    txt_place: TcxTextEdit;
    dt_PlanDate: TcxDateEdit;
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    chk_fakt: TcxCheckBox;
    grp1: TdxLayoutGroup;
    itm_WorkType: TdxLayoutItem;
    itm_RegDate: TdxLayoutItem;
    itm_kontr: TdxLayoutItem;
    itm_street: TdxLayoutItem;
    itm_house: TdxLayoutItem;
    itm_desc: TdxLayoutItem;
    itm_place: TdxLayoutItem;
    itm_PlanDate: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    itm_Ok: TdxLayoutItem;
    itm_Cancel: TdxLayoutItem;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    ds_JWorkType: TpFIBDataSet;
    src_JWorkType: TDataSource;
    src_kontr: TDataSource;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDs;
    function CheckParam :Boolean;
  public
    { Public declarations }
    procedure SetDefParam;
  end;

var
  AkttoJurnalForm: TAkttoJurnalForm;

implementation

uses AppUtils, cmDBUnit, dezCommon, cmUtils;

{$R *.dfm}

{ TAkttoJurnalForm }

procedure TAkttoJurnalForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TAkttoJurnalForm.btn_OkClick(Sender: TObject);
begin
  if CheckParam then
  ModalResult:=mrOk else
  ModalResult:=mrNone;
end;

procedure TAkttoJurnalForm.cbb_streetPropertiesChange(Sender: TObject);
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

function TAkttoJurnalForm.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_WorkType.EditValue=null then
  begin
    cmShowMessage('”кажите тип работы!',true);
    Result:=False;
    Exit;
  end;
end;

procedure TAkttoJurnalForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  OpenDs;
end;

procedure TAkttoJurnalForm.FormDestroy(Sender: TObject);
begin
  fController.Free;
end;

procedure TAkttoJurnalForm.OpenDs;
begin
  ds_JWorkType.Open;
  src_kontr.DataSet:= fController.DS;
  if ActiveUserType = 0 then
    fController.GetActiveKontragents()
  else begin
    fController.GetById(ActiveKontragent);
    cbb_Kontr.EditValue := ActiveKontragent;
  end;
  ds_street.Open;
end;

procedure TAkttoJurnalForm.SetDefParam;
begin
  dt_RegDate.Date := Date;
  dt_PlanDate.Date := Date + 30;
end;

end.
