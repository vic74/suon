unit RepMatUnfFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxClasses, cxCustomData, cxStyles, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Vcl.Menus,
  cxCustomPivotGrid, cxDBPivotGrid, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxExportPivotGridLink,
  cxMaskEdit, cxDropDownEdit, Data.DB, FIBDataSet, pFIBDataSet, dxSkinVS2010,
  SplashFrm, LoadingSplash;

type
  TRepMatUnfForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grid1: TcxDBPivotGrid;
    litm_lc1Item1: TdxLayoutItem;
    ds_Rep: TpFIBDataSet;
    src_Rep: TDataSource;
    lGrplc1Group1: TdxLayoutGroup;
    cbb_Y: TcxComboBox;
    litm_lc1Item2: TdxLayoutItem;
    btn_Exec: TcxButton;
    litm_lc1Item11: TdxLayoutItem;
    fldgrid1HOUSE: TcxDBPivotGridField;
    fldgrid1NOMER: TcxDBPivotGridField;
    fldgrid1STREET: TcxDBPivotGridField;
    fldgrid1STREETNAME: TcxDBPivotGridField;
    fldgrid1MLIST: TcxDBPivotGridField;
    fldgrid1MLISTNAME: TcxDBPivotGridField;
    fldgrid1KONTRAGENT: TcxDBPivotGridField;
    fldgrid1KONTNAME: TcxDBPivotGridField;
    fldgrid1MANAGER: TcxDBPivotGridField;
    fldgrid1FIO: TcxDBPivotGridField;
    fldgrid1NOTE: TcxDBPivotGridField;
    fldgrid1FIRM: TcxDBPivotGridField;
    fldgrid1M1: TcxDBPivotGridField;
    fldgrid1M2: TcxDBPivotGridField;
    fldgrid1M3: TcxDBPivotGridField;
    fldgrid1M4: TcxDBPivotGridField;
    fldgrid1M5: TcxDBPivotGridField;
    fldgrid1M6: TcxDBPivotGridField;
    fldgrid1M7: TcxDBPivotGridField;
    fldgrid1M8: TcxDBPivotGridField;
    fldgrid1M9: TcxDBPivotGridField;
    fldgrid1M10: TcxDBPivotGridField;
    fldgrid1M11: TcxDBPivotGridField;
    fldgrid1M12: TcxDBPivotGridField;
    fldgrid1DUNAME: TcxDBPivotGridField;
    fldgrid1SRVDOG: TcxDBPivotGridField;
    fldgrid1GROOPCODE: TcxDBPivotGridField;
    fldgrid1GROOPNAME: TcxDBPivotGridField;
    btn_exel: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_exelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepMatUnfForm: TRepMatUnfForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TRepMatUnfForm.btn_ExecClick(Sender: TObject);
begin
  grid1.BeginUpdate;
  try
    SplashVisibility(True,'формирование данных...');
    with ds_Rep do begin
      Close;
      ParamByName('Y').AsVariant:= cbb_Y.EditValue;
      ParamByName('FSTREET').AsVariant:= null;
      ParamByName('FWORKER').AsVariant:= null;
      ParamByName('FKONTR').AsVariant:= null;
      Open;
    end;
  finally
    grid1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure TRepMatUnfForm.btn_exelClick(Sender: TObject);
begin
  SimpleExportPivotInExcel(grid1);
end;

procedure TRepMatUnfForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TRepMatUnfForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

initialization
 RegisterClass(TRepMatUnfForm);
end.
