unit GetDogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  cxDBLookupComboBox, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TGetDogForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_dog: TpFIBDataSet;
    src_dog: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1AType: TcxGridDBColumn;
    clv1ACTIVE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1house: TcxGridDBColumn;
    clv1LIVING_SQ: TcxGridDBColumn;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    clv1KName: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetDogForm: TGetDogForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon;

{$R *.dfm}

procedure TGetDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:=caFree;
end;

procedure TGetDogForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_kontr.Open;
  if ActiveUserType=1 then
  with ds_dog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1 and sd.KONTRAGENT=:kontr';
    ParamByName('kontr').AsVariant:=ActiveKontragent;
    GroupByClause:='sd.CODE,sd.KONTRAGENT,k.NAME,sd.NOMER,sd.D1,'+
                   'sd.D2,sd."ACTIVE",sd.DATA,sd.atype';
    Open;
  end else
  with ds_dog do begin
    Close;
    MainWhereClause:='sd."ACTIVE"=1';
    GroupByClause:='sd.CODE,sd.KONTRAGENT,k.NAME,sd.NOMER,sd.D1,'+
                   'sd.D2,sd."ACTIVE",sd.DATA,sd.atype';
    Open;
  end;
end;


procedure TGetDogForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult:=mrOk;
end;

procedure TGetDogForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then ModalResult:=mrOk;
end;

initialization
 RegisterClass(TGetDogForm);
end.
