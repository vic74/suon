unit CommonDm;

interface

uses
  SysUtils, Classes, DB, FIBDataSet, pFIBDataSet, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxmdaset, cxNavigator;

type
  Tcom_dm = class(TDataModule)
    ds_worker: TpFIBDataSet;
    ds_kategory: TpFIBDataSet;
    src_kat: TDataSource;
    src_worker: TDataSource;
    vrep1: TcxGridViewRepository;
    v_worker: TcxGridDBTableView;
    cl_houseCODE: TcxGridDBColumn;
    cl_houseKONTRAGENT: TcxGridDBColumn;
    cl_housePIPLE: TcxGridDBColumn;
    cl_houseFIO: TcxGridDBColumn;
    cl_houseAROLE: TcxGridDBColumn;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    v_house: TcxGridDBTableView;
    clhouseCODE: TcxGridDBColumn;
    clhouseNOMER: TcxGridDBColumn;
    clhouseSTREET: TcxGridDBColumn;
    clhouseSTREETNAME: TcxGridDBColumn;
    clhouseDU: TcxGridDBColumn;
    clhouseDUNAME: TcxGridDBColumn;
    clhouseTOTAL_SQ: TcxGridDBColumn;
    clhouseLIVING_SQ: TcxGridDBColumn;
    clhouseLODGER_CNT: TcxGridDBColumn;
    v_ServisMaterial: TcxGridDBTableView;
    ds_ServisMaterial: TpFIBDataSet;
    src_ServisMaterial: TDataSource;
    cl_ServisMaterial_CODE: TcxGridDBColumn;
    cl_ServisMaterial_KSERVISMATERIAL: TcxGridDBColumn;
    cl_ServisMaterial_GROOP: TcxGridDBColumn;
    cl_ServisMaterial_NAME: TcxGridDBColumn;
    cl_ServisMaterial_ED: TcxGridDBColumn;
    cl_ServisMaterial_PRICE: TcxGridDBColumn;
    stl1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_KONTRAGENT: TpFIBDataSet;
    src_KONTRAGENT: TDataSource;
    v_SHOWPRIKAZ: TcxGridDBTableView;
    cl_SP_CODE: TcxGridDBColumn;
    cl_SP_NUM: TcxGridDBColumn;
    cl_SP_DATA: TcxGridDBColumn;
    cl_SP_SHOWTYPE: TcxGridDBColumn;
    cl_SP_SHNAME: TcxGridDBColumn;
    cl_SP_GENDIR: TcxGridDBColumn;
    cl_SP_CHIEFOE: TcxGridDBColumn;
    cl_SP_CHIEFTO: TcxGridDBColumn;
    ds_SHOWPRIKAZ: TpFIBDataSet;
    src_SHOWPRIKAZ: TDataSource;
    m_month: TdxMemData;
    src_month: TDataSource;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    ds_DOGIMMKD_TYPE: TpFIBDataSet;
    ds_DOGIMMKD_RTYPE: TpFIBDataSet;
    ds_DOGIMMKD_STYPE: TpFIBDataSet;
    src_DOGIMMKD_TYPE: TDataSource;
    src_DOGIMMKD_RTYPE: TDataSource;
    src_DOGIMMKD_STYPE: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  com_dm: Tcom_dm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure Tcom_dm.DataModuleCreate(Sender: TObject);
begin
  //ds_worker.Open;
  //ds_kategory.Open;
end;

end.
