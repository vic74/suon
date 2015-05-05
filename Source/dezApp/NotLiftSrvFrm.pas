unit NotLiftSrvFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxButtons, FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TNotLiftSrv = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_top: TdxLayoutGroup;
    itm_street: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    ds_STREET: TpFIBDataSet;
    src_STREET: TDataSource;
    src_HOUSE: TDataSource;
    ds_HOUSE: TpFIBDataSet;
    btn_add: TcxButton;
    itm_btn_add: TdxLayoutItem;
    btn_delete: TcxButton;
    itm_delete: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    ds_NOTLIFTSRV: TpFIBDataSet;
    src_NOTLIFTSRV: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOTABC: TcxGridDBColumn;
    clv1NOTLDSS: TcxGridDBColumn;
    clv1NOTKAB: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure clv1NOTABCPropertiesEditValueChanged(Sender: TObject);
    procedure clv1NOTLDSSPropertiesEditValueChanged(Sender: TObject);
    procedure clv1NOTKABPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    function CheckParam :Boolean;
    procedure GetHouse;
    procedure OpenDS;
    procedure AddRec;
  public
    { Public declarations }
  end;

var
  NotLiftSrv: TNotLiftSrv;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TNotLiftSrv.AddRec;
begin
  if not CheckParam then Exit;
  with ds_NOTLIFTSRV do begin
    Append;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('STREET').AsVariant:=cbb_street.EditValue;
    FN('NOTABC').AsVariant:=0;
    FN('NOTLDSS').AsVariant:=0;
    Post;
  end;
end;

procedure TNotLiftSrv.btn_addClick(Sender: TObject);
begin
  AddRec;
end;

procedure TNotLiftSrv.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  GetHouse;
end;

function TNotLiftSrv.CheckParam: Boolean;
var
  s :string;
begin
  Result:=true;
  if (cbb_house.EditValue=null) or (cbb_house.EditValue=Unassigned) then
  begin
    s:='Не указан дом!';
    Application.MessageBox(PChar(S), 'Внимание', MB_OK + MB_ICONSTOP +
      MB_TOPMOST);
    Result:=false;
    Exit;
  end;
end;

procedure TNotLiftSrv.clv1NOTABCPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TNotLiftSrv.clv1NOTKABPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TNotLiftSrv.clv1NOTLDSSPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TNotLiftSrv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TNotLiftSrv.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TNotLiftSrv.GetHouse;
begin
  //cbb_house.EditValue:=null;
  with ds_HOUSE do begin
    Close;
    if cbb_street.EditValue = null then Exit;
    MainWhereClause:='Street=:street';
    ParamByName('street').AsVariant:=cbb_street.EditValue;
    OrderClause:='Nomer';
    Open;
  end;
end;

procedure TNotLiftSrv.OpenDS;
begin
  ds_STREET.Open;
  DSOptoins(ds_NOTLIFTSRV,'','NOTLIFTSRV','CODE','NOTLIFTSRV_GEN');
end;

initialization
 RegisterClass(TNotLiftSrv);
end.
