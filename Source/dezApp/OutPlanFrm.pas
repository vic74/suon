unit OutPlanFrm;

interface

uses
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutControl, cxClasses, dxRibbon, cmDBUnit, AppUtils, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, cxPropertiesStore, FIBDataSet,
  DateUtils, BaseForm,
  pFIBDataSet, StdCtrls, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxmdaset, dxLayoutLookAndFeels, cxCheckBox, ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxCalendar, dxRibbonSkins, dxLayoutContainer,
  dxLayoutControlAdapters, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore,
  cxDateUtils;

type
  TOutPlanForm = class(TDezModalForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    cbb_kontr: TcxLookupComboBox;
    Itm_kontr: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    btn_ok: TcxButton;
    Itm_ok: TdxLayoutItem;
    btn_cancel: TcxButton;
    Itm_cancel: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    prop1: TcxPropertiesStore;
    mt_house: TdxMemData;
    src_house: TDataSource;
    ds_house: TpFIBDataSet;
    clch: TcxGridDBColumn;
    clSRVDOG: TcxGridDBColumn;
    clHOUSE: TcxGridDBColumn;
    clNOMER: TcxGridDBColumn;
    clSTREETNAME: TcxGridDBColumn;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    il2: TImageList;
    ds_osm: TpFIBDataSet;
    dt1: TcxDateEdit;
    Itm_dt1: TdxLayoutItem;
    grp3: TdxLayoutGroup;
    dt2: TcxDateEdit;
    Itm_dt2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cbb_kontrPropertiesChange(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
    function GetCode :Integer;
    function CheckParam :Boolean;
    procedure LoadHouse;
    procedure CreateMem;
    procedure AddData;
    procedure CheckAll (check :Boolean=true);
    procedure InsertData(SRVDOG,STYPE,SYEAR,ASTATE :Integer);
    procedure InsertHouse;
  public
    { Public declarations }
    SYEAR :Integer;  //год
    ShCode :Integer;
  end;

var
  OutPlanForm: TOutPlanForm;

implementation

{$R *.dfm}
procedure TOutPlanForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;
{-------------------------------------------------------------------------------
 |Создаем осмотр
-------------------------------------------------------------------------------}
procedure TOutPlanForm.btn_okClick(Sender: TObject);
begin
  if CheckParam then
  begin
    SYEAR:= YearOf(dt1.Date);
    InsertData(cbb_kontr.EditValue,2,SYEAR,0);
    ModalResult:=mrOk;
  end else
    ModalResult:=mrNone;
end;

function TOutPlanForm.CheckParam :Boolean;
begin
  Result:=True;
  if (dt1.EditValue=null) or
     (dt2.EditValue=null)
  then
  begin
    ShowMessage('Не указанны даты осмотра!');
    Result:=False;
  end;
end;

procedure TOutPlanForm.cbb_kontrPropertiesChange(Sender: TObject);
begin
  LoadHouse;
end;

function TOutPlanForm.GetCode :Integer;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select Gen_id(showhouse_gen,1) FROM RDB$DATABASE');
  Q.ExecQuery;
  Result:=Q.FN('GEN_ID').AsInteger;
  FreeQueryForUse(Q);
end;

procedure TOutPlanForm.InsertData(SRVDOG,STYPE,SYEAR,ASTATE :Integer);
var
  Q :TFIBQuery;
  sql :string;
begin
  ShCode:=GetCode;
  if not cmdb.WT.Active then cmdb.WT.StartTransaction;
  sql:=
    'insert into SHOWHOUSE (CODE, SRVDOG, SHOWDATE, STYPE, SYEAR, STATE)'+
    ' values (:CODE, :SRVDOG, :SHOWDATE, :STYPE, :SYEAR, :STATE)';
   Q:=GetQueryForUse(cmDB.WT,sql);
   Q.ParamByName('CODE').AsInteger:=ShCode;
   Q.ParamByName('SRVDOG').AsInteger:=SRVDOG;
   Q.ParamByName('SHOWDATE').AsDateTime:=Date;
   Q.ParamByName('STYPE').AsInteger:=STYPE;
   Q.ParamByName('SYEAR').AsInteger:=SYEAR;
   Q.ParamByName('STATE').AsInteger:=ASTATE;
   Q.ExecQuery;
   cmDB.WT.Commit;
   FreeQueryForUse(Q);
   InsertHouse;
end;

procedure TOutPlanForm.InsertHouse;
var
  Q :TFIBQuery;
  sql :string;
begin
  sql :='UPDATE OR INSERT INTO SHOWHOUSEPLAN'+
        ' ( SHOWHOUSE, HOUSE, D1, D2)'+
        ' values ( :SHOWHOUSE, :HOUSE, :D1, :D2)'+
        ' MATCHING (SHOWHOUSE, HOUSE);';
  if not cmdb.WT.Active then cmdb.WT.StartTransaction;
  Q:=GetQueryForUse(cmdb.WT,sql);
  with mt_house do
  begin
    DisableControls;
    First;
    Q.ParamByName('SHOWHOUSE').AsInteger:=ShCode;
    Q.ParamByName('D1').AsDate:=dt1.Date;
    Q.ParamByName('D2').AsDate:=dt2.Date;
    while not Eof do
    begin
      if FieldByName('ch').AsInteger=1 then
      begin
        Q.ParamByName('HOUSE').AsInteger:=FieldByName('HOUSE').AsInteger;
        Q.ExecQuery;
      end;
      Next;
    end;
    EnableControls;
  end;
  cmDB.WT.Commit;
  cmDB.WT.StartTransaction;
  FreeQueryForUse(Q);
end;
{-------------------------------------------------------------------------------
  Получаем список домов по договору
-------------------------------------------------------------------------------}
procedure TOutPlanForm.LoadHouse;
var
  dog :Integer;
begin
  if cbb_kontr.EditValue=null then Exit;
  dog:=cbb_kontr.EditValue;
  with ds_house do
  begin
    Close;
    MainWhereClause:='sd.srvdog=:dog';
    ParamByName('dog').AsInteger:=dog;
    OrderClause:='s.name,h.nomer';
    Open;
  end;
  AddData;
end;
procedure TOutPlanForm.N1Click(Sender: TObject);
begin
  CheckAll;
end;

procedure TOutPlanForm.N2Click(Sender: TObject);
begin
  CheckAll(false);
end;

procedure TOutPlanForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v1.GetColumnByFieldName('ch').EditValue=0 then
     v1.GetColumnByFieldName('ch').EditValue:=1 else
     v1.GetColumnByFieldName('ch').EditValue:=0;
end;

procedure TOutPlanForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_SPACE then
  if v1.GetColumnByFieldName('ch').EditValue=0 then
     v1.GetColumnByFieldName('ch').EditValue:=1 else
     v1.GetColumnByFieldName('ch').EditValue:=0;
end;
{-------------------------------------------------------------------------------
 |Устанавливаем / снимаем отметки
-------------------------------------------------------------------------------}
procedure TOutPlanForm.CheckAll (check :Boolean=true);
begin
  with mt_house do
  begin
    DisableControls;
    First;
    if check then
    begin
      while not Eof do
      begin
        Edit;
        FieldByName('ch').AsInteger:=1;
        Post;
        Next;
      end;
    end else
    begin
      while not Eof do
      begin
        Edit;
        FieldByName('ch').AsInteger:=0;
        Post;
        Next;
      end;
    end;
    EnableControls;
  end;
end;

{-------------------------------------------------------------------------------
AddData|Добавляем данные во временную таблицу
-------------------------------------------------------------------------------}
procedure TOutPlanForm.AddData;
begin
  mt_house.Close;
  mt_house.Open;
  mt_house.LoadFromDataSet(ds_house);
end;

procedure TOutPlanForm.CreateMem;
begin
  CreateField(mt_house,'ch',ftInteger);
  CreateField(mt_house,'SRVDOG',ftInteger);
  CreateField(mt_house,'HOUSE',ftInteger);
  CreateField(mt_house,'NOMER',ftString,32);
  CreateField(mt_house,'STREETNAME',ftString,128);
  mt_house.Open;
end;

procedure TOutPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  ds_kontr.Open;
  ds_osm.Open;
end;

initialization
 RegisterClass(TOutPlanForm);
end.
