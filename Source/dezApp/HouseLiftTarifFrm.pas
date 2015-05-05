unit HouseLiftTarifFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutLookAndFeels, cxPropertiesStore, dxLayoutContainer;

type
  THouseLiftTarifForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_HouseLiftTarif: TpFIBDataSet;
    src_HouseLiftTarif: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATE: TcxGridDBColumn;
    clv1KAB: TcxGridDBColumn;
    clv1TEXOS: TcxGridDBColumn;
    clv1EXP: TcxGridDBColumn;
    clv1ABS: TcxGridDBColumn;
    clv1LDDS: TcxGridDBColumn;
    clv1TO: TcxGridDBColumn;
    prop1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  HouseLiftTarifForm: THouseLiftTarifForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}

procedure THouseLiftTarifForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseLiftTarifForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure THouseLiftTarifForm.OpenDS;
begin
  DSOptoins(ds_HouseLiftTarif,'','HOUSELIFTTARIF','CODE','HOUSELIFTTARIF_GEN');
end;


initialization
RegisterClass(THouseLiftTarifForm);
end.
