unit HouseLiftRepFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxDBLookupComboBox, cxMaskEdit, cxStyles,
  dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, dxmdaset, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBar, cxBarEditItem, dxLayoutLookAndFeels,
  cxGridExportLink,
  cxPropertiesStore, dxLayoutContainer;

type
  THouseLiftRepForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    bar1: TdxBarManager;
    bar: TdxBar;
    itm_month: TcxBarEditItem;
    itm_year: TcxBarEditItem;
    btn_exec: TdxBarButton;
    btn_fill: TdxBarButton;
    itm_grd1: TdxLayoutItem;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clvLIFTLIST: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1TEXOS: TcxGridDBColumn;
    clv1EXP: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1ENTRANCE: TcxGridDBColumn;
    l1: TcxGridLevel;
    ds_HOUSELIFTGR: TpFIBDataSet;
    src_HOUSELIFTGR: TDataSource;
    m_month: TdxMemData;
    src_month: TDataSource;
    prop1: TcxPropertiesStore;
    btn_excel: TdxBarButton;
    dlgSave: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMonth;
    function ChekParam :Boolean;
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  HouseLiftRepForm: THouseLiftRepForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure THouseLiftRepForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseLiftRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMonth;
end;

procedure THouseLiftRepForm.OpenDS;
begin
  with ds_HOUSELIFTGR do
  begin
    Close;
    if not ChekParam then Exit;
    ParamByName('m').AsVariant:=itm_month.EditValue;
    ParamByName('y').AsVariant:=itm_year.EditValue;
    Open;
  end;
end;

procedure THouseLiftRepForm.btn_excelClick(Sender: TObject);
begin
  if dlgSave.Execute then
    ExportGridToExcel(dlgSave.FileName, grd1, True, True, True, 'xls');
end;

procedure THouseLiftRepForm.btn_execClick(Sender: TObject);
begin
  OpenDS;
end;

function THouseLiftRepForm.ChekParam: Boolean;
begin
  Result:=True;
  if itm_month.EditValue=null then
  begin
    cmShowMessage('Не указан месяц',true);
    Result:=False;
    itm_month.SetFocus();
    Exit;
  end;
  if itm_year.EditValue=null then
  begin
    cmShowMessage('Не указан год',true);
    Result:=False;
    itm_year.SetFocus();
    Exit;
  end;
end;

procedure THouseLiftRepForm.CreateMonth;
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

 initialization
 RegisterClass(THouseLiftRepForm);
end.
