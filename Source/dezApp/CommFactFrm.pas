unit CommFactFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalc, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TCommFactForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_COMMFACT: TpFIBDataSet;
    src_COMMFACT: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1HSNAME: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  CommFactForm: TCommFactForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TCommFactForm.ds_COMMFACTBeforePost(DataSet: TDataSet);
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

procedure TCommFactForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCommFactForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


procedure TCommFactForm.OpenDS;
begin
  ds_HOUSESRV.Open;
  DSOptoins(ds_COMMFACT,'','COMMFACT','CODE','COMMFACT_GEN');
end;

procedure TCommFactForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
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
 RegisterClass(TCommFactForm);
end.
