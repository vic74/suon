unit PlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonForm,fs_xml,PlanShablon,FIBQuery,pFIBCacheQueries, cmUtils,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxSplitter,
  dxLayoutControl, cxPropertiesStore, dxSkinsdxRibbonPainter, cxClasses,
  dxRibbon, dxLayoutLookAndFeels, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  Menus, StdCtrls, cxButtons, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, dxmdaset, cxVGrid,
  cxInplaceContainer, cxGridBandedTableView, cxGridDBBandedTableView, BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, dxRibbonSkins,
  dxSkinDevExpressStyle;

type
  TPlanForm = class(TDezForm)
    grp_left: TdxLayoutGroup;
    lcntr_left: TdxLayoutControl;
    spl1: TcxSplitter;
    grp_right: TdxLayoutGroup;
    lcntr_right: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    Itm_month: TdxLayoutItem;
    cbb_month: TcxComboBox;
    Itm_year: TdxLayoutItem;
    spn_year: TcxSpinEdit;
    btn_refresh: TcxButton;
    Itm_refresh: TdxLayoutItem;
    grp_refresh: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    ds_plan: TpFIBDataSet;
    SourcePlan: TDataSource;
    btn_exec: TcxButton;
    Itm_btnExec: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1PLANDATE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1PLANDATA: TcxGridDBColumn;
    clv1SRVLIST: TcxGridDBColumn;
    clv1BUDGET: TcxGridDBColumn;
    clv1BUDGETNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Itm_grd3: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    mt_recv: TdxMemData;
    mt_dlist: TdxMemData;
    src_recv: TDataSource;
    src_dlist: TDataSource;
    grd2: TcxVerticalGrid;
    Itm_grd2: TdxLayoutItem;
    Total_SQ: TcxEditorRow;
    Living_SQ: TcxEditorRow;
    Lodger_CNT: TcxEditorRow;
    Flat_CNT: TcxEditorRow;
    AccCode_CNT: TcxEditorRow;
    strep1: TcxStyleRepository;
    styl_select1: TcxStyle;
    clv3Srv: TcxGridDBColumn;
    clv3Tarif: TcxGridDBColumn;
    clv3TBase: TcxGridDBColumn;
    clv3SrvName: TcxGridDBColumn;
    clv3TBaseName: TcxGridDBColumn;
    vb3: TcxGridDBBandedTableView;
    clvb3Srv: TcxGridDBBandedColumn;
    clvb3SrvName: TcxGridDBBandedColumn;
    clvb3Tarif: TcxGridDBBandedColumn;
    clvb3TBase: TcxGridDBBandedColumn;
    clvb3TBaseName: TcxGridDBBandedColumn;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    Itm_grd4: TdxLayoutItem;
    clv4AccCode_CNT: TcxGridDBColumn;
    clv4Flat_CNT: TcxGridDBColumn;
    clv4Living_SQ: TcxGridDBColumn;
    clv4Lodger_CNT: TcxGridDBColumn;
    clv4Total_SQ: TcxGridDBColumn;
    vb4: TcxGridDBBandedTableView;
    clvb4AccCode_CNT: TcxGridDBBandedColumn;
    clvb4Flat_CNT: TcxGridDBBandedColumn;
    clvb4Living_SQ: TcxGridDBBandedColumn;
    clvb4Lodger_CNT: TcxGridDBBandedColumn;
    clvb4Total_SQ: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_execClick(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_monthPropertiesChange(Sender: TObject);
    procedure spn_yearPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    function GetYMDate :string;
    procedure RefreshPlan;
    procedure GetRecv;
    procedure GetDlist(list :TdezNachList);
    procedure CreateMem;
    procedure ClearTable(Table :TDataSet);
    procedure SetOptV3;
    procedure CreateMTRec;
  public
    { Public declarations }
  end;

var
  PlanForm: TPlanForm;

implementation

uses AppUtils, cmDBUnit,  SQLList;

{$R *.dfm}
procedure TPlanForm.btn_execClick(Sender: TObject);
var
  DNH: TdezNachHouses;
  S: string;
begin
 if cmMessageBox('Вы действительно хотите расчитать начисления за указанный период?') then
 begin
    DNH:=TdezNachHouses.Create;
    S:=GetYMDate;
    S:=Copy(S,2,Length(S)-2);
    DNH.MakeHousePlan(StrToDate(S));
    DNH.Free;
 end;
end;
{-------------------------------------------------------------------------------
 btn_refreshClick|Обновить
-------------------------------------------------------------------------------}
procedure TPlanForm.btn_refreshClick(Sender: TObject);
begin
  RefreshPlan;
end;

procedure TPlanForm.cbb_monthPropertiesChange(Sender: TObject);
begin
  btn_exec.Caption:='Расчет плановых начислений за '+cbb_month.Text+' '+
                                                       IntToStr(spn_year.Value);
end;

function TPlanForm.GetYMDate :string;
var
  M,Y :string;
begin
  Result:='';
  m:=IntToStr(cbb_month.ItemIndex+1);
  if Length(m)=1 then m:='0'+m;
  Y:=IntToStr(spn_year.EditValue);
  Result:=#39'01.'+M+'.'+Y+#39;
end;

procedure TPlanForm.RefreshPlan;
var
  plandate :string;
begin
  with ds_plan do
  begin
    DisableControls;
    Close;
    SelectSQL.Text:=PLANHOUSE;
    plandate:=GetYMDate;
    if plandate<>'' then
    ParamByName('where_clause').AsString:=
    ' ph.plandate='+Plandate;
    Open;
    EnableControls;
    v1.ApplyBestFit();
  end;
end;

procedure TPlanForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetRecv;
end;

procedure TPlanForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  GetRecv;
end;

procedure TPlanForm.GetRecv;
var
 NachHouse : TdezNachHouse;
begin
 NachHouse:=TdezNachHouse.Create(
    v1.GetColumnByFieldName('House').EditValue,
    v1.GetColumnByFieldName('CODE').EditValue,
    v1.GetColumnByFieldName('PLANDATE').EditValue );
 NachHouse.LoadFromBase;
   with mt_recv do
   begin
     Close;
     Open;
     Append;
       FieldByName('Total_SQ').AsFloat:=NachHouse.Recv.Total_SQ;
       FieldByName('Living_SQ').AsFloat:=NachHouse.Recv.Living_SQ;
       FieldByName('Lodger_CNT').AsInteger:=NachHouse.Recv.Lodger_CNT;
       FieldByName('Flat_CNT').AsInteger:=NachHouse.Recv.Flat_CNT;
       FieldByName('AccCode_CNT').AsInteger:=NachHouse.Recv.AccCode_CNT;
     Post;
   end;
   Total_SQ.Properties.Value:=NachHouse.Recv.Total_SQ;
   Living_SQ.Properties.Value:=NachHouse.Recv.Living_SQ;
   Lodger_CNT.Properties.Value:=NachHouse.Recv.Lodger_CNT;
   Flat_CNT.Properties.Value:=NachHouse.Recv.Flat_CNT;
   AccCode_CNT.Properties.Value:=NachHouse.Recv.AccCode_CNT;
 GetDlist(NachHouse.DList);
 NachHouse.Free;
end;

procedure TPlanForm.GetDlist(list :TdezNachList);
var
  i :Integer;
  Q :TFIBQuery;
begin
  ClearTable(mt_dlist);
  Q:=GetQueryForUse(cmDB.RT,'select NAME from SRVLIST where SRV=:srv');
  for I := 0 to List.Count - 1 do
  begin
    with mt_dlist do
    begin
      Append;
      FieldByName('Srv').AsString:=list.Nach[i].Srv;
      Q.ParamByName('Srv').AsString:=list.Nach[i].Srv;
      Q.ExecQuery;
      FieldByName('SrvName').AsString:=Q.FN('Name').AsString;
      FieldByName('Tarif').AsCurrency:=list.Nach[i].Tarif;
      FieldByName('TBase').AsInteger:=list.Nach[i].TBase;
      FieldByName('TBaseName').AsString:=GetTBaseName(list.Nach[i].TBase);
      Post;
    end;
  end;
  FreeQueryForUse(Q);
  //SetOptV3;
end;

procedure TPlanForm.ClearTable(Table :TDataSet);
begin
  Table.Close;
  Table.Open;
end;

procedure TPlanForm.SetOptV3;
begin
  vb3.ApplyBestFit();
  vb4.ApplyBestFit();
end;

procedure TPlanForm.spn_yearPropertiesChange(Sender: TObject);
begin
  btn_exec.Caption:='Расчет плановых начислений за '+cbb_month.Text+' '+
                                                       IntToStr(spn_year.Value);
end;

procedure TPlanForm.CreateMTRec;
begin
  with mt_recv.FieldDefs do
  begin
    CreateField(mt_recv,'Total_SQ',ftFloat);
    CreateField(mt_recv,'Living_SQ',ftFloat);
    CreateField(mt_recv,'Lodger_CNT',ftInteger);
    CreateField(mt_recv,'Flat_CNT',ftInteger);
    CreateField(mt_recv,'AccCode_CNT',ftInteger);
  end;
  mt_recv.Open;
end;

procedure TPlanForm.CreateMem;
begin
  with mt_dlist.FieldDefs do
  begin
    CreateField(mt_dlist,'Srv',ftString,64);
    CreateField(mt_dlist,'SrvName',ftString,128);
    CreateField(mt_dlist,'Tarif',ftCurrency);
    CreateField(mt_dlist,'TBase',ftSmallint);
    CreateField(mt_dlist,'TBaseName',ftString,128);
  end;
  mt_dlist.Open;
end;

procedure TPlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  CreateMTRec;
  btn_exec.Caption:='Расчет плановых начислений за '+cbb_month.Text+' '+
                                                       IntToStr(spn_year.Value);
end;

initialization
 RegisterClass(TPlanForm);
end.
