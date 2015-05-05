unit HouseRecvFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  DateUtils, BaseForm,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels,
  cxPropertiesStore, FIBDataSet, pFIBDataSet, cxDropDownEdit, dxmdaset,
  cxDBLookupComboBox, dxLayoutContainer;

type
  THouseRecvForm = class(TDezModalForm)
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
    ds_HOUSERECV: TpFIBDataSet;
    src_HOUSERECV: TDataSource;
    ds_HOUSERECVLIST: TpFIBDataSet;
    src_HOUSERECVLIST: TDataSource;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2HOUSERECV: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    clv2FLOOR_COUNT: TcxGridDBColumn;
    clv2ACC_CNT: TcxGridDBColumn;
    clv2LODGER_CNT: TcxGridDBColumn;
    clv2TOT_SPACE: TcxGridDBColumn;
    m_month: TdxMemData;
    src_month: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure OpenDS;
    procedure LoadRecv;
    procedure CreateMonth;
  public
    { Public declarations }
  end;

var
  HouseRecvForm: THouseRecvForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure THouseRecvForm.CreateMonth;
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

procedure THouseRecvForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure THouseRecvForm.FormCreate(Sender: TObject);
begin
  OpenDS;
  LoadRecv;
end;

procedure THouseRecvForm.LoadRecv;
begin
  with ds_HOUSERECVLIST do
  begin
    Close;
    if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
    MainWhereClause:='hr.HOUSERECV=:HOUSERECV';
    ParamByName('HOUSERECV').AsVariant:=
                                      v1.GetColumnByFieldName('CODE').EditValue;
    Open;
  end;
  itm_grd2.Caption:=LongMonthNames[Integer(gFN(v1,'M'))]+ ' '+ VarToStr(gFN(v1,'Y'));
end;

procedure THouseRecvForm.OpenDS;
begin
  CreateMonth;
  ds_HOUSERECV.Open;
  DSOptoins(ds_HOUSERECVLIST,'','HOUSERECVLIST','CODE','HOUSERECV_GEN',false);
end;

procedure THouseRecvForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadRecv;
end;

procedure THouseRecvForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP :LoadRecv;
    VK_DOWN :LoadRecv;
  end;
end;

initialization
RegisterClass(THouseRecvForm);
end.
