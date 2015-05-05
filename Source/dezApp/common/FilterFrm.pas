unit FilterFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, Data.DB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPropertiesStore,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxSpinEdit,
  cxTimeEdit, cxCheckBox;

type
  TFilterForm = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    dt1: TcxDateEdit;
    LItemLControl1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    LItemLControl1Item11: TdxLayoutItem;
    cbb_JobType: TcxLookupComboBox;
    LItemLControl1Item12: TdxLayoutItem;
    src_JobType: TDataSource;
    prop1: TcxPropertiesStore;
    cbb_JobSubtype: TcxLookupComboBox;
    LItemLControl1Item13: TdxLayoutItem;
    src_JobSubtype: TDataSource;
    cbb_Location: TcxLookupComboBox;
    LItemLControl1Item14: TdxLayoutItem;
    src_Location: TDataSource;
    cbb_Status: TcxLookupComboBox;
    LItemLControl1Item15: TdxLayoutItem;
    src_Status: TDataSource;
    lgrpLControl1Group2: TdxLayoutGroup;
    btn_Ok: TcxButton;
    LItemLControl1Item16: TdxLayoutItem;
    btn_Cancel: TcxButton;
    LItemLControl1Item17: TdxLayoutItem;
    tm1: TcxTimeEdit;
    LItemLControl1Item18: TdxLayoutItem;
    tm2: TcxTimeEdit;
    LItemLControl1Item19: TdxLayoutItem;
    lgrpLControl1Group4: TdxLayoutGroup;
    lgrpLControl1Group1: TdxLayoutGroup;
    lgrpLControl1Group3: TdxLayoutGroup;
    lgrpLControl1Group5: TdxLayoutGroup;
    lgrpLControl1Group6: TdxLayoutGroup;
    lgrpLControl1Group7: TdxLayoutGroup;
    lgrpLControl1Group8: TdxLayoutGroup;
    lgrpLControl1Group9: TdxLayoutGroup;
    chk_IsEmergency: TcxCheckBox;
    LItemLControl1Item110: TdxLayoutItem;
    chk_IsPaid: TcxCheckBox;
    LItemLControl1Item111: TdxLayoutItem;
    chk_IsOutdated: TcxCheckBox;
    LItemLControl1Item112: TdxLayoutItem;
    cbb_CanceledCompany: TcxLookupComboBox;
    LItemLControl1Item113: TdxLayoutItem;
    src_CanceledCompany: TDataSource;
    cbb_UserCanceled: TcxLookupComboBox;
    LItemLControl1Item114: TdxLayoutItem;
    src_Users: TDataSource;
    cbb_MgmtCompany: TcxLookupComboBox;
    LItemLControl1Item115: TdxLayoutItem;
    src_MgmtCompany: TDataSource;
    cbb_DU: TcxLookupComboBox;
    LItemLControl1Item116: TdxLayoutItem;
    src_DU: TDataSource;
    cbb_STreet: TcxLookupComboBox;
    LItemLControl1Item117: TdxLayoutItem;
    src_Street: TDataSource;
    cbb_HOUSE: TcxLookupComboBox;
    LItemLControl1Item118: TdxLayoutItem;
    src_HOUSE: TDataSource;
    txt_Flat: TcxTextEdit;
    LItemLControl1Item119: TdxLayoutItem;
    txt_ExecutorName: TcxTextEdit;
    LItemLControl1Item120: TdxLayoutItem;
    txt_RequesterPhone: TcxTextEdit;
    LItemLControl1Item121: TdxLayoutItem;
    cbb_ClosedCompany: TcxLookupComboBox;
    LItemLControl1Item122: TdxLayoutItem;
    cbb_ClosedUser: TcxLookupComboBox;
    LItemLControl1Item123: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_JobTypePropertiesEditValueChanged(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure cbb_CanceledCompanyPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_MgmtCompanyPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_DUPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_STreetPropertiesEditValueChanged(Sender: TObject);
    procedure lgrpLControl1Group4Button0Click(Sender: TObject);
  private
    { Private declarations }
    procedure CheckParams;
    procedure ClearFilter;
  public
    { Public declarations }
  end;

var
  FilterForm: TFilterForm;

implementation

{$R *.dfm}

uses common;

procedure TFilterForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TFilterForm.btn_OkClick(Sender: TObject);
begin
  CheckParams;
  ModalResult:= mrOk;
end;

procedure TFilterForm.cbb_CanceledCompanyPropertiesEditValueChanged(
  Sender: TObject);
begin
  src_Users.DataSet:= RQ.Get_Users(cbb_CanceledCompany.EditValue);
end;

procedure TFilterForm.cbb_DUPropertiesEditValueChanged(Sender: TObject);
begin
  src_HOUSE.DataSet:= RQ.Get_House(cbb_STreet.EditValue, cbb_DU.EditValue);
end;

procedure TFilterForm.cbb_JobTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbb_JobType.EditValue<>null then
  src_JobSubtype.DataSet:= RQ.JobSubtype(cbb_JobType.EditValue);
end;

procedure TFilterForm.cbb_MgmtCompanyPropertiesEditValueChanged(
  Sender: TObject);
begin
  src_DU.DataSet:= RQ.Get_DU(cbb_MgmtCompany.EditValue);
end;

procedure TFilterForm.cbb_STreetPropertiesEditValueChanged(Sender: TObject);
begin
  src_HOUSE.DataSet:= RQ.Get_House(cbb_STreet.EditValue, cbb_DU.EditValue);
end;

procedure TFilterForm.CheckParams;
begin
  if dt1.EditValue = null then
     raise Exception.Create('Укажите период подачи заявки');
  if dt2.EditValue = null then
     raise Exception.Create('Укажите период подачи заявки');
end;

procedure TFilterForm.ClearFilter;
var
  i: Integer;
begin
  dt1.Date:= Date;
  dt2.Date:= Date;
  tm1.Time:= StrToTime('0:00:00');
  tm2.Time:= StrToTime('23:30:00');
  for I := 0 to ComponentCount -1 do
   if Components[i].ClassType = TcxLookupComboBox then
      TcxLookupComboBox(Components[i]).EditValue:= null else
   if Components[i].ClassType = TcxCheckBox then
      TcxCheckBox(Components[i]).Checked := False else
   if Components[i].ClassType = TcxTextEdit then
      TcxTextEdit(Components[i]).EditValue:= null;
end;

procedure TFilterForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFilterForm.FormCreate(Sender: TObject);
begin
  src_JobType.DataSet:= RQ.Get_JobType;
  src_Location.DataSet:= RQ.Location;
  src_Status.DataSet:= RQ.Status;
  src_CanceledCompany.DataSet:= RQ.GetCanceledCompany;
  src_Users.DataSet:= RQ.Get_Users(cbb_CanceledCompany.EditValue);
  src_MgmtCompany.DataSet:= RQ.Get_MgmtCompany;
  src_DU.DataSet:= RQ.Get_DU(cbb_MgmtCompany.EditValue);
  src_Street.DataSet:= RQ.Get_Street;
  src_HOUSE.DataSet:= RQ.Get_House(cbb_STreet.EditValue, cbb_DU.EditValue);
end;

procedure TFilterForm.lgrpLControl1Group4Button0Click(Sender: TObject);
begin
  if MessageBox(Handle,
    'Вы дествительно хотите очистить все значения фильтра?', 'Предупреждение',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    ClearFilter;
  end;
end;

end.
