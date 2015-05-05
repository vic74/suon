unit RepPlanTRFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, Data.DB, cxDBData, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxProgressBar;

type
  TRepPlanTRForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    cbb_Y: TcxComboBox;
    litm_lc1Item1: TdxLayoutItem;
    cbb_M: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    btnLoad: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item13: TdxLayoutItem;
    ds_Rep: TpFIBDataSet;
    src_Rep: TDataSource;
    clv1Y: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1ALLSUM: TcxGridDBColumn;
    clv1SUMBYMONTH: TcxGridDBColumn;
    clv1FACTSUM: TcxGridDBColumn;
    clv1YPROC: TcxGridDBColumn;
    clv1MPROC: TcxGridDBColumn;
    clv1OSTPLAN: TcxGridDBColumn;
    btn_Excel: TcxButton;
    litm_lc1Item14: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLoadClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadRep;
  public
    { Public declarations }
  end;

var
  RepPlanTRForm: TRepPlanTRForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TRepPlanTRForm.btnLoadClick(Sender: TObject);
begin
  LoadRep;
end;

procedure TRepPlanTRForm.btn_ExcelClick(Sender: TObject);
var
  list: TStringList;
  s: string;
begin
  list:= TStringList.Create;
  try
    list.Add(Caption);
    s:= VarToStr(cbb_M.EditValue)+' '+ VarToStr(cbb_Y.EditValue);
    list.Add(s);
    AppUtils.ExportInExcel(grd1, list, true);
  finally
    FreeAndNil(list);
  end;
end;

procedure TRepPlanTRForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TRepPlanTRForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TRepPlanTRForm.LoadRep;
begin
  with ds_Rep do begin
    Close;
    ParamByName('Y').AsVariant:= cbb_Y.EditValue;
    ParamByName('M').AsVariant:= cbb_M.ItemIndex;
    Open;
  end;
end;

initialization
 RegisterClass(TRepPlanTRForm);
end.
