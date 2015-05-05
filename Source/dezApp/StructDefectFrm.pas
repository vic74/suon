unit StructDefectFrm;

interface

uses
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxClasses, dxRibbon,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cmDBUnit, AppUtils, FIBDataSet, pFIBDataSet,
  FIBDatabase, pFIBDatabase, cxDBLookupComboBox, BaseForm, dxRibbonSkins,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TStructDefectForm = class(Tdezform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    ds_defect: TpFIBDataSet;
    src_defect: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SHOWSTRUCT: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    ds_constr: TpFIBDataSet;
    src_constr: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_defectBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  StructDefectForm: TStructDefectForm;

implementation

{$R *.dfm}


procedure TStructDefectForm.ds_defectBeforePost(DataSet: TDataSet);
var
  i :Integer;
begin
  for I := 0 to ds_defect.FieldCount - 1 do
  begin
    if ds_defect.Fields[i].AsVariant=null then
    begin
      ShowMessage('Не запонены обязательные параметры!');
      Abort;
    end;
  end;
end;

procedure TStructDefectForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TStructDefectForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);

  OpenDS;
end;

procedure TStructDefectForm.OpenDS;
begin
  ds_constr.CloseOpen(true);
  DSOptoins(ds_defect,'','STRUCTDEFECT','CODE','STRUCTDEFECT_GEN');
end;

initialization
 RegisterClass(TStructDefectForm);
end.
