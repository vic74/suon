unit oiFactShbFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, FIBDataSet,
  pFIBDataSet, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, dxSkinDevExpressStyle;

type
  ToiFactShbForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    ds_FBDR: TpFIBDataSet;
    src_FBDR: TDataSource;
    clv1Y: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1ISOI: TcxGridDBColumn;
    msk_Y: TcxMaskEdit;
    itmlc1Item1: TdxLayoutItem;
    btn_Exec: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    v1Column1: TcxGridDBColumn;
    v1Column2: TcxGridDBColumn;
    v1Column3: TcxGridDBColumn;
    v1Column4: TcxGridDBColumn;
    v1Column5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clv1ISOIPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure makeRep;
    function CheckParams: boolean;
  public
    { Public declarations }
  end;

var
  oiFactShbForm: ToiFactShbForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure ToiFactShbForm.btn_ExecClick(Sender: TObject);
begin
  makeRep;
end;

function ToiFactShbForm.CheckParams: boolean;
begin
  Result:= false;
  if msk_Y.EditingValue = null then
    raise EMyException.Create('Укажите год!');
  Result:= true;
end;

procedure ToiFactShbForm.clv1ISOIPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure ToiFactShbForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure ToiFactShbForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure ToiFactShbForm.makeRep;
begin
  if Not CheckParams then Exit;
  with ds_FBDR do begin
    Close;
    MainWhereClause:= 'f.Y=:Y and HouseSrv=6';
    ParamByName('Y').AsVariant:= msk_Y.EditingValue;
    OrderClause:='f.y,  f.m';
    Open;
  end;
end;

procedure ToiFactShbForm.OpenDS;
begin
  DSOptoins(ds_FBDR,'','FBDR','CODE','FBDR_GEN',false);
end;

initialization
 RegisterClass(ToiFactShbForm);
end.
