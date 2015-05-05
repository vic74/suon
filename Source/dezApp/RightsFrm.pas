unit RightsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  AppUtils, cxPropertiesStore, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, cxCheckBox, dxmdaset,
  BaseForm, cxDBLookupComboBox, dxRibbonSkins, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TRightsForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    prop1: TcxPropertiesStore;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
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
    ds_roles: TpFIBDataSet;
    src_roles: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    ds_rights: TpFIBDataSet;
    src_rights: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2AROLE: TcxGridDBColumn;
    ds_pr: TpFIBDataSet;
    src_pr: TDataSource;
    clv2ch: TcxGridDBColumn;
    mt_d: TdxMemData;
    clv1Kontragent: TcxGridDBColumn;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_rolesBeforePost(DataSet: TDataSet);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2EditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure OpenDs;
    procedure GetRight;
    procedure ChangeRight;
    procedure CreateMem;
  public
    { Public declarations }
  end;

var
  RightsForm: TRightsForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TRightsForm.ChangeRight;
var
  Q :TFIBQuery;
  isql, dsql :string;
begin
  isql:='insert into RIGHTS (ARIGHT, AROLE)'+
        ' values (:ARIGHT, :AROLE)';
  dsql:='delete from RIGHTS'+
        ' where (ARIGHT = :ARIGHT) and (AROLE = :AROLE)';
  if v2.GetColumnByFieldName('ch').EditValue=1 then
  begin
    if cmDB.WT.Active=false then cmDB.WT.StartTransaction;
    Q:=GetQueryForUse(cmDB.WT,isql);
    Q.ParamByName('AROLE').AsInteger:=v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('ARIGHT').AsInteger:=v2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    FreeQueryForUse(Q);
    cmDB.WT.Commit;
  end else
  begin
    if cmDB.WT.Active=false then cmDB.WT.StartTransaction;
    Q:=GetQueryForUse(cmDB.WT,dsql);
    Q.ParamByName('AROLE').AsInteger:=v1.GetColumnByFieldName('CODE').EditValue;
    Q.ParamByName('ARIGHT').AsInteger:=v2.GetColumnByFieldName('CODE').EditValue;
    Q.ExecQuery;
    FreeQueryForUse(Q);
    cmDB.WT.Commit;
  end;
end;

procedure TRightsForm.ds_rolesBeforePost(DataSet: TDataSet);
var
  i :Integer;
begin
  for i := 0 to DataSet.FieldCount - 1 do
  if DataSet.Fields[i].AsVariant=null then
  begin
    ShowMessage('Ќе заполнены об€зательные параметры!');
    Abort;
  end;
end;

procedure TRightsForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRightsForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;

procedure TRightsForm.OpenDs;
begin
  DSOptoins(ds_roles,'','ROLES','CODE','ROLES_GEN');
  if not ds_roles.Eof then GetRight;
  ds_kontr.Open;
end;

procedure TRightsForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetRight;
end;

procedure TRightsForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  begin
    GetRight;
  end;
end;

procedure TRightsForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v2.GetColumnByFieldName('ch').EditValue=0 then
     v2.GetColumnByFieldName('ch').EditValue:=1 else
     v2.GetColumnByFieldName('ch').EditValue:=0;
     v2.DataController.PostEditingData;
   ChangeRight;
end;

procedure TRightsForm.v2EditKeyUp(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
    if v2.GetColumnByFieldName('ch').EditValue=0 then
       v2.GetColumnByFieldName('ch').EditValue:=1 else
       v2.GetColumnByFieldName('ch').EditValue:=0;
       v2.DataController.PostEditingData;
     ChangeRight;
  end;
end;

procedure TRightsForm.GetRight;
begin
  if v1.GetColumnByFieldName('Code').EditValue=null then Exit;
  with ds_pr do
  begin
    Close;
    ParamByName('arole').AsInteger:=v1.GetColumnByFieldName('Code').EditValue;
    Open;

    mt_d.Close;
    mt_d.Open;
    mt_d.LoadFromDataSet(ds_pr);
  end;
end;

procedure TRightsForm.CreateMem;
begin
  CreateField(mt_d,'CODE',ftInteger);
  CreateField(mt_d,'NAME',ftString,256);
  CreateField(mt_d,'CH',ftInteger);
  mt_d.Open;
end;

initialization
 RegisterClass(TRightsForm);
end.
