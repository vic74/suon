unit IspFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery, pFIBCacheQueries,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutControl, cxClasses, dxRibbon, AppUtils, cmDBUnit, cxPropertiesStore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxmdaset, dxLayoutLookAndFeels, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, ImgList, BaseForm, dxRibbonSkins, dxLayoutContainer;

type
  TIspForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    cbb_itype: TcxLookupComboBox;
    Itm_itype: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    mt_itype: TdxMemData;
    src_itype: TDataSource;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    ds_isp: TpFIBDataSet;
    src_isp: TDataSource;
    clCODE: TcxGridDBColumn;
    clNAME: TcxGridDBColumn;
    clITYPE: TcxGridDBColumn;
    clNOTE: TcxGridDBColumn;
    il1: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_ispAfterInsert(DataSet: TDataSet);
    procedure cbb_itypePropertiesChange(Sender: TObject);
    procedure ds_ispBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDs;
  public
    { Public declarations }
  end;

var
  IspForm: TIspForm;

implementation

{$R *.dfm}


procedure TIspForm.cbb_itypePropertiesChange(Sender: TObject);
begin
  if cbb_itype.EditValue=null then Exit;
  with ds_isp do
  begin
    Close;
    MainWhereClause:='ITYPE =:tp';
    ParamByName('tp').AsInteger:=cbb_itype.EditValue;
    Open;
  end;
end;

procedure TIspForm.ds_ispAfterInsert(DataSet: TDataSet);
begin
  //if cbb_itype.EditValue=null then Exit;
  ds_isp.FN('ITYPE').AsInteger:= 2;
end;

procedure TIspForm.ds_ispBeforePost(DataSet: TDataSet);
begin
  if ds_isp.FN('Name').AsString='' then
  begin
    ShowMessage('Ќе заполнены об€зательные параметры!');
    Abort;
  end;
end;

procedure TIspForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TIspForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
  OpenDs;
end;

procedure TIspForm.OpenDs;
begin
  CreateAType(mt_itype,'itype');
  DSOptoins(ds_isp,'','ISPOLNIT','CODE','ISPOLNIT_GEN');
end;

initialization
 RegisterClass(TIspForm);
end.
