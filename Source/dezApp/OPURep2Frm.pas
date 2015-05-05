unit OPURep2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, cxDBLookupComboBox, dxBar, cxBarEditItem, cxClasses,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsDefaultPainters, dxSkinDevExpressStyle, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TOPURep2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    bItm_street: TcxBarEditItem;
    bItm_house: TcxBarEditItem;
    btn_Exec: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItem1: TdxLayoutItem;
    ds_WORKACT: TpFIBDataSet;
    src_WORKACT: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1OHNAME: TcxGridDBColumn;
    clv1OTNAME: TcxGridDBColumn;
    clv1ACT_DATA: TcxGridDBColumn;
    clv1LASTDATA: TcxGridDBColumn;
    clv1GARANTDATE: TcxGridDBColumn;
    btn_Export: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bItm_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_ExportClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReOpenHouse;
    procedure OpenDS;
    procedure MakeData;
  public
    { Public declarations }
  end;

var
  OPURep2Form: TOPURep2Form;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TOPURep2Form.bItm_streetPropertiesEditValueChanged(Sender: TObject);
begin
  ReOpenHouse;
end;

procedure TOPURep2Form.btn_ExecClick(Sender: TObject);
begin
  MakeData;
end;

procedure TOPURep2Form.btn_ExportClick(Sender: TObject);
var
  List: TStrings;
begin
  List:= TStringList.Create;
  try
    List.Add(Caption);
    ExportInExcel(grd1, List);
  finally
    FreeAndNil(List);
  end;
end;

procedure TOPURep2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TOPURep2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TOPURep2Form.MakeData;
begin
  with ds_WORKACT do begin
    Close;
    ParamByName('house').AsVariant:=bItm_house.EditValue;
    Open;
    btn_Export.Enabled:= not IsEmpty;
  end;
end;

procedure TOPURep2Form.OpenDS;
begin
  cmDb.ds_STREET.CloseOpen(false);
end;

procedure TOPURep2Form.ReOpenHouse;
begin
  with cmDb.ds_HOUSE do begin
    Close;
    ParamByName('CODE').AsVariant:= bItm_street.EditValue;
    Open;
  end;
end;

initialization
 RegisterClass(TOPURep2Form);
end.
