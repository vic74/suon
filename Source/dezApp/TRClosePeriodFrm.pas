unit TRClosePeriodFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, dxSkinDevExpressStyle;

type
  TTRClosePeriodForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    grp_lc1Group3: TdxLayoutGroup;
    cbb_Month: TcxComboBox;
    itm_lc1Item1: TdxLayoutItem;
    ms_Y: TcxMaskEdit;
    itm_lc1Item11: TdxLayoutItem;
    grp_lc1Group4: TdxLayoutGroup;
    btn_Close: TcxButton;
    itm_lc1Item12: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_lc1Item13: TdxLayoutItem;
    ds_TRFACT_PERIOD: TpFIBDataSet;
    src_TRFACT_PERIOD: TDataSource;
    btn_Open: TcxButton;
    itm_lc1Item14: TdxLayoutItem;
    grp_lc1Group5: TdxLayoutGroup;
    cl_DATA: TcxGridDBColumn;
    cl_Y: TcxGridDBColumn;
    cl_M: TcxGridDBColumn;
    cl_MCOD: TcxGridDBColumn;
    btn_History: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_OpenClick(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_HistoryClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure FillContol;
    procedure ClosePeriod;
    procedure OpenPeriod;
    procedure OpenHistory;
  public
    { Public declarations }
  end;

var
  TRClosePeriodForm: TTRClosePeriodForm;

implementation

uses cmDBUnit, dezCommon, PeriodTrfactHistoryFrm;

{$R *.dfm}


procedure TTRClosePeriodForm.btn_CloseClick(Sender: TObject);
begin
  ClosePeriod;
end;

procedure TTRClosePeriodForm.btn_HistoryClick(Sender: TObject);
begin
  OpenHistory;
end;

procedure TTRClosePeriodForm.btn_OpenClick(Sender: TObject);
begin
  OpenPeriod;
end;

procedure TTRClosePeriodForm.ClosePeriod;
var
  D: TDateTime;
  function FormatData :TDateTime;
  begin
    Result:= StrToDate('01.'+IntToStr(cbb_Month.ItemIndex+1)+'.'+ms_Y.Text);
  end;
begin
  if ms_Y.EditingValue = null then
  raise EMyException.Create('Укажите год!');
  //
  v1.BeginUpdate;
  try
    D:= FormatData;
    if ds_TRFACT_PERIOD.Locate('DATA',D,[]) then
      raise EMyException.Create('Данный период уже присутствует в списке!');
    with ds_TRFACT_PERIOD do begin
      Append;
      FN('DATA').AsVariant := D;
      Post;
    end;
    cmDb.WT.Commit;
  finally
    v1.EndUpdate;
  end;
end;

procedure TTRClosePeriodForm.FillContol;
begin
  if v1.GetColumnByFieldName('DATA').EditValue = null then exit;
  cbb_Month.ItemIndex := v1.GetColumnByFieldName('MCOD').EditValue -1;
  ms_Y.EditValue := v1.GetColumnByFieldName('Y').EditValue;
end;

procedure TTRClosePeriodForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TTRClosePeriodForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  btn_History.Visible:= ActiveWorker=9;  //кнопка истории редактирования
  OpenDS;
end;

procedure TTRClosePeriodForm.OpenDS;
begin
  DSOptoins(ds_TRFACT_PERIOD,'','TRFACT_PERIOD','DATA','');
end;

procedure TTRClosePeriodForm.OpenHistory;
var
  F: TPeriodTrfactHistoryForm;
begin
  F:= TPeriodTrfactHistoryForm.Create(self);
  try
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TTRClosePeriodForm.OpenPeriod;
begin
  if v1.GetColumnByFieldName('DATA').EditValue = null then Exit;
  if Application.MessageBox('Вы действительно хотите открыть период для изменений?',
    'Внимание!', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ds_TRFACT_PERIOD.Delete;
    cmDb.WT.Commit;
  end;
end;

procedure TTRClosePeriodForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillContol;
end;

procedure TTRClosePeriodForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP : FillContol;
    VK_DOWN : FillContol;
  end;
end;

initialization
 RegisterClass(TTRClosePeriodForm);
end.
