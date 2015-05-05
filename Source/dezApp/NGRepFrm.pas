unit NGRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, dxSkinDevExpressStyle;

type
  TNGRepForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_lc1Group1: TdxLayoutGroup;
    grp_lc1Group2: TdxLayoutGroup;
    grp_lc1Group3: TdxLayoutGroup;
    spl_1: TdxLayoutSplitterItem;
    cbb_M: TcxComboBox;
    itm_lc1Item1: TdxLayoutItem;
    ms_Y: TcxMaskEdit;
    itm_lc1Item11: TdxLayoutItem;
    btn_Exec: TcxButton;
    itm_lc1Item12: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_lc1Item13: TdxLayoutItem;
    ds_HOUSENG: TpFIBDataSet;
    src_HOUSENG: TDataSource;
    cl_v1KCODE: TcxGridDBColumn;
    cl_v1CNT: TcxGridDBColumn;
    cl_v1NAME: TcxGridDBColumn;
    cl_v1SQ: TcxGridDBColumn;
    ds: TpFIBDataSet;
    src_ds: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_lc1Item14: TdxLayoutItem;
    cl_v2KCODE: TcxGridDBColumn;
    cl_v2NAME: TcxGridDBColumn;
    cl_v2NOTE: TcxGridDBColumn;
    cl_v2SQ: TcxGridDBColumn;
    cl_v2SNAME: TcxGridDBColumn;
    cl_v2NOMER: TcxGridDBColumn;
    btn_Excel: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenData;
    procedure OpenDetailData;
  public
    { Public declarations }
  end;

var
  NGRepForm: TNGRepForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TNGRepForm.btn_ExcelClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TNGRepForm.btn_ExecClick(Sender: TObject);
begin
  ds.Close;
  OpenData;
end;

procedure TNGRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TNGRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TNGRepForm.OpenData;
var
  M, Y: Variant;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    M:= cbb_M.ItemIndex +1;
    Y:= ms_Y.EditValue;
    with ds_HOUSENG do begin
      Close;
      ParamByName('M').AsVariant := M;
      ParamByName('Y').AsVariant := Y;
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TNGRepForm.OpenDetailData;
var
  M, Y: Variant;
begin
  v2.BeginUpdate(lsimImmediate);
  try
    M:= cbb_M.ItemIndex +1;
    Y:= ms_Y.EditValue;
    with ds do begin
      Close;
      ParamByName('M').AsVariant := M;
      ParamByName('Y').AsVariant := Y;
      ParamByName('KCODE').AsVariant := v1.GetColumnByFieldName('KCODE').EditValue;
      Open;
    end;
  finally
    v2.EndUpdate;
  end;
end;

procedure TNGRepForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDetailData;
end;

initialization
 RegisterClass(TNGRepForm);
end.
