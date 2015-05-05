unit HousePrvFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridExportLink,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, BaseForm,
  cxPropertiesStore, dxmdaset, FIBDataSet, pFIBDataSet, cxDBLookupComboBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, cxCheckBox,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  THousePrvForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_HousePrv: TpFIBDataSet;
    src_HousePrv: TDataSource;
    ds_HousePrvList: TpFIBDataSet;
    src_HousePrvList: TDataSource;
    m_month: TdxMemData;
    src_month: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2HOUSEPRV: TcxGridDBColumn;
    clv2SRVNAME: TcxGridDBColumn;
    clv2HOUSESRV: TcxGridDBColumn;
    clv2CHARGE_PRI: TcxGridDBColumn;
    clv2PAY: TcxGridDBColumn;
    clv2PRIV_MAKET: TcxGridDBColumn;
    clv2SALDO_OUT: TcxGridDBColumn;
    clv2SALDO_IN: TcxGridDBColumn;
    clv2REPAY: TcxGridDBColumn;
    clv2PRIVILEGE: TcxGridDBColumn;
    clv2MAKET: TcxGridDBColumn;
    clv2CHARGE_100: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    ppm1: TcxGridPopupMenu;
    clvDUName: TcxGridDBColumn;
    ppm2: TcxGridPopupMenu;
    pm1: TPopupMenu;
    Excel1: TMenuItem;
    clv2A: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2DataControllerSummaryFooterSummaryItemsSummary(
      ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
      var OutArguments: TcxSummaryEventOutArguments);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMonth;
    procedure OpenDS;
    procedure GetRec;
  public
    { Public declarations }
  end;

var
  HousePrvForm: THousePrvForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}

procedure THousePrvForm.CreateMonth;
var
  i :Integer;
  procedure AddRec(ACode: Integer; AName: string);
  begin
    with m_month do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_month,'Code',ftInteger);
  CreateField(m_month,'Name',ftString,64);
  m_month.Open;
  for I := 1 to 12 do
  AddRec(i,LongMonthNames[i]);
end;

procedure THousePrvForm.Excel1Click(Sender: TObject);
begin
  if dlgSave1.Execute then
    ExportGridToExcel(dlgSave1.FileName, grd2, True, True, True, 'xls');
end;

procedure THousePrvForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THousePrvForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
  GetRec;
end;

procedure THousePrvForm.GetRec;
begin
  with ds_HousePrvList do
  begin
    Close;
    if v1.GetColumnByFieldName('Code').EditValue=Unassigned then Exit;
    MainWhereClause:='hp.HOUSEPRV=:HPRV';
    ParamByName('HPRV').AsVariant:=v1.GetColumnByFieldName('Code').EditValue;
    Open;
  end;
  itm_grd2.Caption:=LongMonthNames[Integer(gFN(v1,'M'))]+ ' '+ VarToStr(gFN(v1,'Y'));
end;

procedure THousePrvForm.OpenDS;
begin
  CreateMonth;
  ds_HousePrv.Open;
  DSOptoins(ds_HousePrvList,'','HOUSEPRVLIST','CODE','HOUSEPRVLIST_GEN',false);
end;



procedure THousePrvForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetRec;
end;

procedure THousePrvForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :GetRec;
    VK_DOWN :GetRec;
  end;
end;

procedure THousePrvForm.v2DataControllerSummaryFooterSummaryItemsSummary(
  ASender: TcxDataSummaryItems; Arguments: TcxSummaryEventArguments;
  var OutArguments: TcxSummaryEventOutArguments);
begin
  if Arguments.SummaryItem.Kind=skSum then
     Arguments.SummaryItem.Format:='#,###.00' else
     Arguments.SummaryItem.Format:='';
end;

initialization
RegisterClass(THousePrvForm);

end.
