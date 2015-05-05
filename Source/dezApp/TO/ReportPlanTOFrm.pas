unit ReportPlanTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FIBDataSet, pFIBDataSet, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TReportPlanTOForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTNAME: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MLISTNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1sumFact: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    clv1FSUM1: TcxGridDBColumn;
    clv1FSUM2: TcxGridDBColumn;
    clv1FSUM3: TcxGridDBColumn;
    clv1FSUM4: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1SHOWCODE: TcxGridDBColumn;
    l1: TcxGridLevel;
    litm_lc1Item1: TdxLayoutItem;
    ds_RepTO: TpFIBDataSet;
    src_RepTO: TDataSource;
    clv1SRVDOG: TcxGridDBColumn;
    clv1WORKER: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    cbb_Y: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    cbb_street: TcxLookupComboBox;
    litm_lc1Item2: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    litm_lc1Item12: TdxLayoutItem;
    cbb_manager: TcxLookupComboBox;
    litm_lc1Item13: TdxLayoutItem;
    lGrplc1Group5: TdxLayoutGroup;
    btn_Exec: TcxButton;
    litm_lc1Item14: TdxLayoutItem;
    lGrplc1Group4: TdxLayoutGroup;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReopenWorker;
    procedure OpenDS;
    procedure MakeRport;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
    { Public declarations }
  end;

var
  ReportPlanTOForm: TReportPlanTOForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TReportPlanTOForm.btn_ExecClick(Sender: TObject);
begin
  MakeRport;
end;

procedure TReportPlanTOForm.cbb_kontrPropertiesEditValueChanged(
  Sender: TObject);
begin
  ReopenWorker;
end;

procedure TReportPlanTOForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TReportPlanTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TReportPlanTOForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TReportPlanTOForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if AButtonIndex = 1 then begin
    with TcxLookupComboBox(Sender) do
    begin
      EditValue := null;
      PostEditValue;
    end;
  end;
end;

procedure TReportPlanTOForm.MakeRport;
begin
  with ds_RepTO do begin
    Close;
    ParamByName('Y').AsVariant:= cbb_Y.EditValue;
    ParamByName('FSTREET').AsVariant:= cbb_street.EditValue;
    ParamByName('FWORKER').AsVariant:= cbb_manager.EditValue;
    ParamByName('FKONTR').AsVariant:= cbb_kontr.EditValue;
    Open;
  end;
end;

procedure TReportPlanTOForm.OpenDS;
begin
  ds_street.Open;
  ds_kontr.Open;
  CustomizeCombo(cbb_kontr);
  CustomizeCombo(cbb_street);
  CustomizeCombo(cbb_manager);
  if ActiveUserType = 1 then begin
    cbb_kontr.EditValue:= ActiveKontragent;
    cbb_kontr.Enabled:= False;
    clv1KONTNAME.Visible:= False;
  end;

end;

procedure TReportPlanTOForm.ReopenWorker;
begin
  cbb_manager.EditValue:= null;
  with ds_worker do begin
    Close;
    if VarIsType(cbb_kontr.EditValue,[varNull, varEmpty]) then
       Exit;
    ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
    Open;
  end;
end;

initialization
 RegisterClass(TReportPlanTOForm);
end.
