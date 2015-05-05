unit HouseNGFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridExportLink,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, BaseForm,
  FIBDataSet, pFIBDataSet, dxmdaset, cxDBLookupComboBox, Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  THouseNGForm = class(TDezModalForm)
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
    spl1: TdxLayoutSplitterItem;
    ds_HOUSENG: TpFIBDataSet;
    src_HOUSENG: TDataSource;
    ds_HOUSENGLIST: TpFIBDataSet;
    src_HOUSENGLIST: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSENG: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KCODE: TcxGridDBColumn;
    clv1INN: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1TOTAL: TcxGridDBColumn;
    clv1SN: TcxGridDBColumn;
    clv1NACH: TcxGridDBColumn;
    clv1OPL: TcxGridDBColumn;
    clv1SK: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2M: TcxGridDBColumn;
    clv2Y: TcxGridDBColumn;
    m_month: TdxMemData;
    src_month: TDataSource;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    Excel1: TMenuItem;
    v1Column1: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure OpenDs;
    procedure CreateMonth;
    procedure ReOpenHuoseList;
  public
    { Public declarations }
  end;

var
  HouseNGForm: THouseNGForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure THouseNGForm.CreateMonth;
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

procedure THouseNGForm.Excel1Click(Sender: TObject);
begin
  if dlgSave1.Execute then
    ExportGridToExcel(dlgSave1.FileName, grd1, True, True, True, 'xls');
end;

procedure THouseNGForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseNGForm.FormCreate(Sender: TObject);
begin
  CreateMonth;
  OpenDs;
end;

procedure THouseNGForm.OpenDs;
begin
  ds_HOUSENG.Open;
  DSOptoins(ds_HOUSENGLIST,'','HOUSENGLIST','CODE','HOUSENGLIST_GEN',False);
  ReOpenHuoseList;
end;


procedure THouseNGForm.ReOpenHuoseList;
begin
  SplashVisibility(true,'Получаем данные...');
  v1.BeginUpdate;
  try
    with ds_HOUSENGLIST do begin
      Close;
      MainWhereClause:='hn.houseng=:code';
      ParamByName('code').AsVariant:=gFN(v2,'CODE');
      Open;
    end;
    itm_grd1.Caption:=LongMonthNames[Integer(gFN(v2,'M'))]+ ' '+ VarToStr(gFN(v2,'Y'));
  finally
    v1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure THouseNGForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReOpenHuoseList;
end;

procedure THouseNGForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :ReOpenHuoseList;
    VK_DOWN :ReOpenHuoseList;
  end;
end;

initialization
RegisterClass(THouseNGForm);
end.
