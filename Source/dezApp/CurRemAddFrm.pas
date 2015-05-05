unit CurRemAddFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, Menus, dxLayoutcxEditAdapters, cxContainer, cxEdit, DB,
  FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons, cxPropertiesStore,
  cxCurrencyEdit, BaseForm, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TCurRemAddForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    itm_cbbmat: TdxLayoutItem;
    btn_mlistAdd: TcxButton;
    itm_btnAdd: TdxLayoutItem;
    cbb_mlist: TcxLookupComboBox;
    ds_mat: TpFIBDataSet;
    src_mat: TDataSource;
    prop1: TcxPropertiesStore;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    grp_2: TdxLayoutGroup;
    cedt_sum: TcxCurrencyEdit;
    itm_sum: TdxLayoutItem;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    cedt_proc1: TcxCurrencyEdit;
    itm_proc1: TdxLayoutItem;
    cedt_sum1: TcxCurrencyEdit;
    itm_sum1: TdxLayoutItem;
    cedt_proc2: TcxCurrencyEdit;
    itm_proc2: TdxLayoutItem;
    cedt_sum2: TcxCurrencyEdit;
    itm_sum2: TdxLayoutItem;
    cedt_proc3: TcxCurrencyEdit;
    itm_propc3: TdxLayoutItem;
    cedt_sum3: TcxCurrencyEdit;
    itm_sum3: TdxLayoutItem;
    cedt_proc4: TcxCurrencyEdit;
    itm_proc4: TdxLayoutItem;
    cedt_sum4: TcxCurrencyEdit;
    itm_sum4: TdxLayoutItem;
    txt1: TcxTextEdit;
    itm_txt1: TdxLayoutItem;
    procedure btn_mlistAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cedt_proc1PropertiesChange(Sender: TObject);
    procedure cedt_proc2PropertiesChange(Sender: TObject);
    procedure cedt_proc3PropertiesChange(Sender: TObject);
    procedure cedt_sumPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    function CheckParam :Boolean;
    procedure SetVariable;
    procedure CalcProc;
    procedure CalcSum;
  public
    { Public declarations }
    mlist, kontr, sum :Variant;
  end;

var
  CurRemAddForm: TCurRemAddForm;

implementation

uses AddMatFrm, AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TCurRemAddForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TCurRemAddForm.btn_mlistAddClick(Sender: TObject);
var
  F :TAddMatForm;
  m :Integer;
begin
  m:=0;
  F:=TAddMatForm.CreateModal(Self,true);
  //F.ShowModal;
  if F.ShowModal=mrOk then
  begin
    ds_mat.CloseOpen(true);
    if F.v1.GetColumnByFieldName('Code').EditValue<>null then
    cbb_mlist.EditValue:=F.v1.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

procedure TCurRemAddForm.btn_OkClick(Sender: TObject);
begin
  if CheckParam then
  begin
    SetVariable;
    ModalResult:=mrOk;
  end else ModalResult:=mrNone;
end;

procedure TCurRemAddForm.cedt_proc1PropertiesChange(Sender: TObject);
begin
  cedt_proc1.PostEditValue;
  //CalcProc;
  //CalcSum;
end;

procedure TCurRemAddForm.cedt_proc2PropertiesChange(Sender: TObject);
begin
  cedt_proc2.PostEditValue;
  //CalcProc;
  //CalcSum;
end;

procedure TCurRemAddForm.cedt_proc3PropertiesChange(Sender: TObject);
begin
  cedt_proc3.PostEditValue;
  //CalcProc;
  //CalcSum;
end;

procedure TCurRemAddForm.cedt_sumPropertiesChange(Sender: TObject);
begin
  //CalcProc;
  //CalcSum;
end;

procedure TCurRemAddForm.CalcProc;
begin
  cedt_proc4.Value:=100-cedt_proc1.Value-cedt_proc2.Value-cedt_proc3.Value;
end;

procedure TCurRemAddForm.CalcSum;
begin
  {if cedt_sum.Value=0 then Exit;
  cedt_sum1.EditValue:=cedt_sum.Value/100 * cedt_proc1.EditValue;
  cedt_sum2.EditValue:=cedt_sum.Value/100 * cedt_proc2.EditValue;
  cedt_sum3.EditValue:=cedt_sum.Value/100 * cedt_proc3.EditValue;
  cedt_sum4.EditValue:=cedt_sum.Value/100 * cedt_proc4.EditValue; }
end;

function TCurRemAddForm.CheckParam :Boolean;
begin
  Result:=True;
  if cbb_mlist.EditValue=null then
  begin
    cmShowMessage('Не указан вид работ!',true);
    Result:=False;
    Exit;
  end;
  if cbb_mlist.EditValue<>1 then
  if cbb_kontr.EditValue=null then
  begin
    cmShowMessage('Не указана подрядная организация!',true);
    Result:=False;
    Exit;
  end;
  if cedt_sum.EditValue=null then
     cedt_sum.EditValue:=0;
end;

procedure TCurRemAddForm.SetVariable;
begin
  mlist:=cbb_mlist.EditValue;
  kontr:=cbb_kontr.EditValue;
  sum:=cedt_sum.EditValue;
end;

procedure TCurRemAddForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TCurRemAddForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
   //проверка что не кнопка then Key:=#0
   if ActiveControl.ClassType<>TcxButton then
   SelectNext(ActiveControl,True,True) else
   Key:=0;
   //FocusControl(FindNextControl(ActiveControl,True,True,true));
  end;
  if Key=VK_ESCAPE then
  ModalResult:=mrCancel;
end;

procedure TCurRemAddForm.OpenDS;
begin
  ds_mat.CloseOpen(true);
  with ds_kontr do
  begin
    Close;
    OrderClause:='Name';
    Open;
  end;
end;

end.
