unit GraphTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, dxLayoutLookAndFeels,
  cxPropertiesStore, cxCheckComboBox, cxCalendar, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxLayoutContainer;

type
  TGraphTOForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_Add: TdxBarButton;
    btn_edit: TdxBarButton;
    btn_delete: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_GraphTO: TpFIBDataSet;
    src_GraphTO: TDataSource;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1PDATE: TcxGridDBColumn;
    clv1SHABLON: TcxGridDBColumn;
    cl_GRAPHPERIOD: TcxGridDBColumn;
    cl_GPNAME: TcxGridDBColumn;
    cl_GRAPHTYPE: TcxGridDBColumn;
    cl_GHNAME: TcxGridDBColumn;
    cl_PROCFACT: TcxGridDBColumn;
    cl_PREDDATA: TcxGridDBColumn;
    procedure btn_AddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure ds_GraphTOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDs;
    procedure AddGraph(isEdit: boolean = false);
  public
    { Public declarations }
  end;

var
  GraphTOForm: TGraphTOForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, AddGraphToFrm;

{$R *.dfm}

procedure TGraphTOForm.AddGraph(isEdit: boolean);
var
  F: TAddGraphToForm;
begin
  F:= TAddGraphToForm.Create(Application);
  try
    F.DS:= ds_GraphTO;
    F.isEdit := isEdit;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TGraphTOForm.btn_AddClick(Sender: TObject);
begin
  //ds_GraphTO.Insert;
  //v1.DataController.Insert;
  AddGraph;
end;

procedure TGraphTOForm.btn_deleteClick(Sender: TObject);
begin
  //v1.DataController.DeleteRecord(v1.DataController.FocusedRecordIndex);
  if (v1.GetColumnByFieldName('CODE').EditValue<>null) and
  (v1.GetColumnByFieldName('CODE').EditValue<>Unassigned) then
  if cmMessageBox('¬ы действительно хотите удалить шаблон '+#10#13+
  v1.GetColumnByFieldName('NAME').EditValue) then
  ds_GraphTO.Delete;
end;

procedure TGraphTOForm.btn_editClick(Sender: TObject);
begin
  //v1.DataController.Edit;
  AddGraph(true);
end;

procedure TGraphTOForm.ds_GraphTOBeforePost(DataSet: TDataSet);
begin
  if ds_GraphTO.FN('SHABLON').AsVariant=null then
     ds_GraphTO.FN('SHABLON').AsVariant:='graf_4.fr3';
end;

procedure TGraphTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TGraphTOForm.FormCreate(Sender: TObject);
begin
  OpenDs;
  LoadForm(prop1,Self.Name);
end;

procedure TGraphTOForm.OpenDs;
begin
  DSOptoins(ds_GraphTO,'','GRAPHTO','CODE','GRAPHTO_GEN');
end;


procedure TGraphTOForm.v1EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
  if FocusedItem.IsLast and (Key=VK_RETURN) then
  begin
    Key := 0;
    Sender.DataController.Post;
  end;
end;

initialization
RegisterClass(TGraphTOForm);
end.
