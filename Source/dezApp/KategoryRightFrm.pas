unit KategoryRightFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxPropertiesStore,
  cxClasses, dxRibbon, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutLookAndFeels, FIBDataSet, pFIBDataSet, cmDBUnit, dxmdaset,
  cxCheckBox, BaseForm, dxRibbonSkins, dxLayoutContainer;

type
  TKategoryRightForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    prop1: TcxPropertiesStore;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm_grd2: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    ds_kat: TpFIBDataSet;
    src_kat: TDataSource;
    ds_klist: TpFIBDataSet;
    mt_klist: TdxMemData;
    src_klist: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1Name: TcxGridDBColumn;
    clv2ARIGHT: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure OpenDs;
    procedure CreateMem;
    procedure GetKatRight;
    procedure SetKatRight;
  public
    { Public declarations }
  end;

var
  KategoryRightForm: TKategoryRightForm;

implementation

uses AppUtils;

{$R *.dfm}

procedure TKategoryRightForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TKategoryRightForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.name);
  OpenDs;
  //CreateMem;
end;

procedure TKategoryRightForm.OpenDs;
begin
  DSOptoins(ds_kat,'','KATEGORY','CODE','KATEGORY_GEN');
  GetKatRight;
end;

procedure TKategoryRightForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetKatRight;
end;

procedure TKategoryRightForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  begin
    GetKatRight;
  end;
end;

procedure TKategoryRightForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    if v2.GetColumnByFieldName('ARIGHT').EditValue=0 then
     v2.GetColumnByFieldName('ARIGHT').EditValue:=1 else
     v2.GetColumnByFieldName('ARIGHT').EditValue:=0;
     v2.DataController.PostEditingData;
  SetKatRight;
end;

procedure TKategoryRightForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    if v2.GetColumnByFieldName('ARIGHT').EditValue=0 then
     v2.GetColumnByFieldName('ARIGHT').EditValue:=1 else
     v2.GetColumnByFieldName('ARIGHT').EditValue:=0;
     v2.DataController.PostEditingData;
    SetKatRight;
  end;
end;

procedure TKategoryRightForm.SetKatRight;
var
  Q :TFIBQuery;
  sql :string;
begin
  if v2.GetColumnByFieldName('ARIGHT').EditValue=1 then
  begin
    sql:='insert into KATEGORYRIGHTS (KATEGORY, AROLE)'+
         ' values (:KATEGORY, :AROLE)';
    if cmDB.WT.Active=false then cmDB.WT.StartTransaction;
    Q:=GetQueryForUse(cmDB.WT,sql);
    Q.ParamByName('KATEGORY').AsInteger:=v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('AROLE').AsInteger:=v2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    cmDB.WT.Commit;
  end else
  begin
    sql:='delete from KATEGORYRIGHTS'+
         ' where (KATEGORY = :KATEGORY) and (AROLE = :AROLE)';
    if cmDB.WT.Active=false then cmDB.WT.StartTransaction;
    Q:=GetQueryForUse(cmDB.WT,sql);
    Q.ParamByName('KATEGORY').AsInteger:=v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('AROLE').AsInteger:=v2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    cmDB.WT.Commit;
  end;
end;

procedure TKategoryRightForm.GetKatRight;
begin
 if v1.GetColumnByFieldName('CODE').EditValue=null then Exit;
  with ds_klist do
  begin
    Close;
     ParamByName('KATEGORY').AsInteger:=v1.GetColumnByFieldName('CODE').EditValue;
    Open;
    mt_klist.Close;
    mt_klist.LoadFromDataSet(ds_klist);
  end;
end;

procedure TKategoryRightForm.CreateMem;
begin
  CreateField(mt_klist,'ARIGHT',ftInteger);
  CreateField(mt_klist,'NAME',ftString,256);
  mt_klist.Open;
end;

 initialization
  RegisterClass(TKategoryRightForm);
end.
