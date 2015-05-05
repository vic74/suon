unit ShHouseGetFrm;

interface

uses
  dxRibbonForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  cxStyles, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxmdaset, FIBDataSet, pFIBDataSet, dxLayoutLookAndFeels, dxRibbon, BaseForm,
  cxImageComboBox, ImgList, dxRibbonSkins, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TShHouseGetForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    ds_osm: TpFIBDataSet;
    src_osm: TDataSource;
    mt_type: TdxMemData;
    mt_state: TdxMemData;
    src_type: TDataSource;
    src_state: TDataSource;
    Itm2: TdxLayoutItem;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1SHOWDATE: TcxGridDBColumn;
    clv1STYPE: TcxGridDBColumn;
    clv1SYEAR: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    l2: TcxGridLevel;
    clv2NOMER: TcxGridDBColumn;
    clv2KONTNAME: TcxGridDBColumn;
    clv2Kontr: TcxGridDBColumn;
    clv2GRAPHLIST: TcxGridDBColumn;
    clv2SHOWPRIKAZPO: TcxGridDBColumn;
    clv2ALOCK: TcxGridDBColumn;
    iml1: TcxImageList;
    clv2ATYPE: TcxGridDBColumn;
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    code :Integer;
    clause :string;
  end;

var
  ShHouseGetForm: TShHouseGetForm;

implementation

uses dezCommon, cmDBUnit;

{$R *.dfm}

procedure TShHouseGetForm.FormShow(Sender: TObject);
begin
  with ds_osm do
  begin
    Close;
      if ActiveUserType=1 then
      begin
        if clause<>'' then
        MainWhereClause:=clause else
        begin
          MainWhereClause:='sd.kontragent=:kontr';
          ParamByName('kontr').AsInteger:=ActiveKontragent;
        end;
      end else
      if clause<>'' then
       MainWhereClause:=clause;
    Open;
  end;
end;

procedure TShHouseGetForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  code:=v2.GetColumnByFieldName('Code').EditValue;
  //ShowMessage(ACellViewInfo.Value);
  ModalResult:=mrOk;
end;

end.
