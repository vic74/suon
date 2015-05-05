unit OtherPlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxDBLookupComboBox, cxCalc, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinDevExpressStyle;

type
  TOtherPlanForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lItmlc1Item1: TdxLayoutItem;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1HSNAME: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    l1: TcxGridLevel;
    src_HOUSESRV: TDataSource;
    ds_HOUSESRV: TpFIBDataSet;
    ds_COMMFACT: TpFIBDataSet;
    src_COMMFACT: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure ds_COMMFACTBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  OtherPlanForm: TOtherPlanForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TOtherPlanForm.ds_COMMFACTBeforePost(DataSet: TDataSet);
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

procedure TOtherPlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TOtherPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;

procedure TOtherPlanForm.OpenDS;
begin
  ds_HOUSESRV.Open;
  DSOptoins(ds_COMMFACT,'','COMMPLAN','CODE','COMMPLAN_GEN');
end;

procedure TOtherPlanForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
    if FocusedItem.IsLast and FocusedRecord.IsLast and (Key = VK_RETURN) then
    begin
      Key := 0;
      //Sender.DataController.Append;
      Sender.DataController.Post;
    end;
end;

initialization
 RegisterClass(TOtherPlanForm);
end.
