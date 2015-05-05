unit AddShablonSmetaHouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutContainer, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, BaseForm,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutLookAndFeels, dxLayoutControl, dxLayoutControlAdapters, Menus,
  StdCtrls, cxButtons;

type
  TAddShablonSmetaHouseForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    grpcnt1Group1: TdxLayoutGroup;
    grpcnt1Group2: TdxLayoutGroup;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmcnt1Item1: TdxLayoutItem;
    ds_HOUSE: TpFIBDataSet;
    src_HOUSE: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    btn_Ok: TcxButton;
    itmcnt1Item11: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itmcnt1Item12: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenHouse;
  public
    { Public declarations }
    houseEx: WideString;
  end;

var
  AddShablonSmetaHouseForm: TAddShablonSmetaHouseForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

{ TAddShablonSmetaHouseForm }

procedure TAddShablonSmetaHouseForm.btn_OkClick(Sender: TObject);
begin
  if v1.Controller.FocusedRecord is TcxGridFilterRow then
     raise dezException.Create('Выберите адрес');
  if v1.FN('CODE') = null then
     raise dezException.Create('Не выбран адрес!');
end;

procedure TAddShablonSmetaHouseForm.FormShow(Sender: TObject);
begin
  OpenHouse;
end;

procedure TAddShablonSmetaHouseForm.OpenHouse;
begin
  with ds_HOUSE do begin
    Close;
    if houseEx<>'' then
    MainWhereClause:='('+#39+houseEx+#39+' not containing '','' || h.CODE || '','') and h.A=1' else
    MainWhereClause:= 'h.A=1';
    OrderClause:='s.name, h.NOMER';
    Open;
  end;
end;

end.


