
unit AccFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinMcSkin,
  dxRibbonForm,Fibdatabase,FIBQuery, pFIBCacheQueries,
  dxSkinsDefaultPainters, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsdxRibbonPainter, dxRibbon,
  dxSkinscxPCPainter, dxLayoutControl, cxPropertiesStore, dxLayoutLookAndFeels,
  AppUtils, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Menus, StdCtrls, cxButtons, DB, FIBDataSet, pFIBDataSet, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLocalization, ImgList, dxmdaset, cxCheckBox, dxSkinBlue,
   cxImageComboBox,
  dxSkinOffice2010Blue, BaseForm, dxRibbonSkins, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle;

type
  TAccForm = class(TDezForm)
    bm1: TdxBarManager;
    btn1: TdxBarButton;
    btn2: TdxBarButton;
    prop1: TcxPropertiesStore;
    grp_root: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    grp2: TdxLayoutGroup;
    splt2: TdxLayoutSplitterItem;
    grp3: TdxLayoutGroup;
    grp_top: TdxLayoutGroup;
    LookAndFeelList: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    grp4: TdxLayoutGroup;
    dt1: TcxDateEdit;
    Item_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    Item_dt2: TdxLayoutItem;
    cbb1: TcxComboBox;
    Item_cbb1: TdxLayoutItem;
    txt1: TcxTextEdit;
    Item_txt1: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    Item_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    Item_house: TdxLayoutItem;
    cbb_flat: TcxLookupComboBox;
    Item_flat: TdxLayoutItem;
    btn_find: TcxButton;
    Item_find: TdxLayoutItem;
    ds_street: TpFIBDataSet;
    StreetSource: TDataSource;
    ds_house: TpFIBDataSet;
    HouseSource: TDataSource;
    ds_flat: TpFIBDataSet;
    flatSource: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Item_grd1: TdxLayoutItem;
    ds_find: TpFIBDataSet;
    findSource: TDataSource;
    clv1ACCCODE: TcxGridDBColumn;
    clv1MASTER: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv1TOTAL_SQ: TcxGridDBColumn;
    clv1LIVING_SQ: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1DATE_OPEN: TcxGridDBColumn;
    clv1DATE_CLOSE: TcxGridDBColumn;
    clv1PHONE: TcxGridDBColumn;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1nomer: TcxGridDBColumn;
    clv1flat: TcxGridDBColumn;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Item_grd2: TdxLayoutItem;
    ds_history: TpFIBDataSet;
    historySource: TDataSource;
    clv2REC_TYPE: TcxGridDBColumn;
    clv2DATE_VAL: TcxGridDBColumn;
    clv2PRV_NAME: TcxGridDBColumn;
    clv2PSUM: TcxGridDBColumn;
    clv2RSUM: TcxGridDBColumn;
    clv2SALDO: TcxGridDBColumn;
    clv2ACCCODE: TcxGridDBColumn;
    clv2SRV: TcxGridDBColumn;
    clv2PAY_DATE: TcxGridDBColumn;
    clv2ACC_DATE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2DU: TcxGridDBColumn;
    grplcntr1Group1: TdxLayoutGroup;
    bar1: TdxBar;
    btn_checkAll: TdxBarButton;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Item_srv: TdxLayoutItem;
    doc1: TdxBarDockControl;
    Item_doc: TdxLayoutItem;
    grp5: TdxLayoutGroup;
    il1: TImageList;
    btn_UnCheckAll: TdxBarButton;
    btn_SaveSrv: TdxBarButton;
    btn_OpenSrv: TdxBarButton;
    mt1: TdxMemData;
    splt4: TdxLayoutSplitterItem;
    clv3Flag: TcxGridDBColumn;
    clv3Srv: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    mt1Source: TDataSource;
    StateIL: TImageList;
    clv2OSUM: TcxGridDBColumn;
    mt_history: TdxMemData;
    il2: TcxImageList;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    Item_grd4: TdxLayoutItem;
    splt5: TdxLayoutSplitterItem;
    ds_detailed: TpFIBDataSet;
    Source_Detailed: TDataSource;
    clv4REC_TYPE: TcxGridDBColumn;
    clv4ACCCODE: TcxGridDBColumn;
    clv4SRV: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    clv4DATE_VAL: TcxGridDBColumn;
    clv4PAY_DATE: TcxGridDBColumn;
    clv4ACC_DATE: TcxGridDBColumn;
    clv4SUMMA: TcxGridDBColumn;
    clv4HOUSE: TcxGridDBColumn;
    clv4DU: TcxGridDBColumn;
    clv1LODGER_CNT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb1PropertiesChange(Sender: TObject);
    procedure cbb_streetPropertiesChange(Sender: TObject);
    procedure cbb_housePropertiesChange(Sender: TObject);
    procedure btn_findClick(Sender: TObject);
    procedure cbb_flatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_houseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dt1PropertiesChange(Sender: TObject);
    procedure btn_checkAllClick(Sender: TObject);
    procedure btn_UnCheckAllClick(Sender: TObject);
    procedure btn_SaveSrvClick(Sender: TObject);
    procedure btn_OpenSrvClick(Sender: TObject);
    procedure clv3FlagPropertiesEditValueChanged(Sender: TObject);
    procedure clv1DATE_CLOSEGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    procedure DSOpen(DS :TFIBDataSet; forcibly :boolean=false);
    procedure FindSchet;
    procedure GetPrv(AcCode :string);
    procedure CreateMemTable;
    function DSCreate(db :TFibdatabase) :TFIBDataSet;
    procedure LoadSrv;
    procedure SrvMark(AMark: boolean);
    procedure SrvListSave;
    function GetSrvList: string;
    procedure SetSrvList(S: string);
    procedure SrvListLoad;
    function GetSrv: string;
    procedure CreateHistoryTable;
    procedure GetSaldo(Srv,Accode :string);
    procedure FillPrv;
    procedure GetDetail;
    procedure WMHotKey(var HTK: TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  AccForm: TAccForm;

implementation

uses cmDBUnit, NameFrm, SrvSaveListFrm;

{$R *.dfm}



procedure TAccForm.btn_checkAllClick(Sender: TObject);
begin
 SrvMark(True);
end;

procedure TAccForm.btn_UnCheckAllClick(Sender: TObject);
begin
 SrvMark(false);
end;

procedure TAccForm.btn_findClick(Sender: TObject);
begin
  FindSchet;
end;

procedure TAccForm.btn_OpenSrvClick(Sender: TObject);
begin
  SrvListLoad;
end;

procedure TAccForm.btn_SaveSrvClick(Sender: TObject);
begin
  SrvListSave;
end;
{-------------------------------------------------------------------------------
GetSaldo|Получаем сальдо по счету
-------------------------------------------------------------------------------}
procedure TAccForm.GetSaldo(Srv,Accode :string);
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
  'select Sum(Summa) Saldo from GetSaldo(:D1, :AccCode)'+
  ' where'+
  ' @@where_clause% 1=1@');
  if srv<>'' then
  Q.ParamByName('where_clause').AsString:=
  ' srv in ('+srv+')' else
  Q.ParamByName('where_clause').SetDefMacroValue;
  Q.ParamByName('d1').AsDateTime:=dt1.Date;
  Q.ParamByName('AccCode').AsString:=Accode;
  Q.ExecQuery;
  //очищаем таблицу
  mt_history.Close;
  mt_history.Open;

  mt_history.Append;
  mt_history.FieldByName('PRV_NAME').AsString:='Сальдо';
  mt_history.FieldByName('Saldo').AsCurrency:=Q.FN('Saldo').AsCurrency;
  mt_history.Post;
  FreeQueryForUse(Q);
end;
{-------------------------------------------------------------------------------
FillPrv|Заполняем временную таблицу проводками
-------------------------------------------------------------------------------}
procedure TAccForm.FillPrv;
var
  Saldo :Currency;
  D :TDateTime;
  RT :Integer;
 procedure SumPrv;
 begin
   with mt_history do
   begin
    Edit;
     if ds_history.FN('PSum').AsCurrency<>0 then
     FieldByName('PSUM').AsCurrency:=FieldByName('PSUM').AsCurrency+
                                               ds_history.FN('PSum').AsCurrency;
     if ds_history.FN('RSum').AsCurrency<>0 then
     FieldByName('RSum').AsCurrency:=FieldByName('RSum').AsCurrency+
                                               ds_history.FN('RSum').AsCurrency;
     if ds_history.FN('OSum').AsCurrency<>0 then
     FieldByName('OSum').AsCurrency:=FieldByName('OSum').AsCurrency+
                                               ds_history.FN('OSum').AsCurrency;
     Saldo:=Saldo+ds_history.FN('PSum').AsCurrency-
                    ds_history.FN('RSum').AsCurrency+
                    ds_history.FN('OSum').AsCurrency;
     FieldByName('SALDO').AsCurrency:=Saldo;
    Post;
   end;
 end;
begin
  Saldo:=mt_history.FieldByName('SALDO').AsCurrency;
  while not ds_history.Eof do
  begin
    D :=ds_history.FN('DATE_VAL').AsDateTime;
    RT :=ds_history.FN('REC_TYPE').AsInteger;
    with mt_history do
    begin
      if (D=FieldByName('DATE_VAL').AsDateTime) and
         (RT=FieldByName('REC_TYPE').AsInteger) then
         SumPrv else
      begin
        Append;
        FieldByName('REC_TYPE').AsInteger:=ds_history.FN('REC_TYPE').AsInteger;
        FieldByName('DATE_VAL').AsDateTime:=ds_history.FN('DATE_VAL').AsDateTime;
        FieldByName('PRV_NAME').AsString:=ds_history.FN('PRV_NAME').AsString;
        Saldo:=Saldo+ds_history.FN('PSum').AsCurrency-
                    ds_history.FN('RSum').AsCurrency+
                    ds_history.FN('OSum').AsCurrency;
        FieldByName('SALDO').AsCurrency:=Saldo;
        FieldByName('ACCCODE').AsString:=ds_history.FN('ACCCODE').AsString;
        FieldByName('SRV').AsString:=ds_history.FN('SRV').AsString;
        FieldByName('PAY_DATE').AsDateTime:=ds_history.FN('PAY_DATE').AsDateTime;
        FieldByName('ACC_DATE').AsDateTime:=ds_history.FN('ACC_DATE').AsDateTime;
        FieldByName('HOUSE').AsInteger:=ds_history.FN('HOUSE').AsInteger;
        FieldByName('DU').AsInteger:=ds_history.FN('DU').AsInteger;
        if ds_history.FN('PSum').AsCurrency<>0 then
        FieldByName('PSUM').AsCurrency:=ds_history.FN('PSum').AsCurrency;
        if ds_history.FN('RSum').AsCurrency<>0 then
        FieldByName('RSum').AsCurrency:=ds_history.FN('RSum').AsCurrency;
        if ds_history.FN('OSum').AsCurrency<>0 then
        FieldByName('OSum').AsCurrency:=ds_history.FN('OSum').AsCurrency;
        Post;
      end;
    end;
    ds_history.Next;
  end;
end;

{-------------------------------------------------------------------------------
GetPrv|Получить проводки по счету
-------------------------------------------------------------------------------}
procedure TAccForm.GetPrv(AcCode :string);
var
  srv :string;

begin
  if AcCode='' then Exit;
  srv:=GetSrv;
  mt_history.DisableControls;
  SetWaitCursor(true);
    //получаем начальное сальдо
    GetSaldo(srv,AcCode);
    //получаем проводки
    ds_history.ParamByName('accode').AsString:=AcCode;
    ds_history.ParamByName('d1').AsDateTime:=dt1.Date;
    ds_history.ParamByName('d2').AsDateTime:=dt2.Date;
    if srv<>'' then
    ds_history.ParamByName('where_clause').AsString:=
        ' srv in ('+srv+','#39#39')' else
    ds_history.ParamByName('where_clause').SetDefMacroValue;
    ds_history.CloseOpen(false);
    FillPrv;
  SetWaitCursor;
  mt_history.Last;
  mt_history.EnableControls;
  ds_detailed.Close;
 // clv2REC_TYPE.SortOrder:=soAscending;
 // clv2DATE_VAL.SortOrder:=soAscending;
end;

procedure TAccForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetPrv(GetSelected('ACCCODE',grd1));
end;

procedure TAccForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
  GetPrv(GetSelected('ACCCODE',grd1));
end;
{-------------------------------------------------------------------------------
GetDetail|Получение детальной информации по начислению
-------------------------------------------------------------------------------}
procedure TAccForm.GetDetail;
var
  srv,clause :string;
begin
  if mt_history.IsEmpty then Exit;
  if mt_history.FieldByName('REC_TYPE').AsString='' then Exit;//если сальдо
  SetWaitCursor(true);
  with ds_detailed do
  begin
    close;
    DisableControls;
    srv:=GetSrv;
    clause:=' a.acccode='#39+GetSelected('ACCCODE',grd1)+#39;
    clause:=clause+' and a.date_val='#39+
                   DateToStr(mt_history.FieldByName('DATE_VAL').AsDateTime)+#39;
    clause:=clause+' and a.rec_type='+
                                    mt_history.FieldByName('REC_TYPE').AsString;
    if srv<>'' then
       clause:=clause+' and a.srv in('+srv+')';
    ParamByName('where_clause').AsString:=clause;
    PlanClause:=' JOIN (A INDEX (ACCCODEPRV_IDX3), S INDEX (PK_SRVLIST))';
    CloseOpen(False);
    EnableControls;
  end;
  SetWaitCursor(false);
end;

procedure TAccForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetDetail;
end;

procedure TAccForm.v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_UP) or (Key = VK_DOWN) then
  GetDetail;
end;

{-------------------------------------------------------------------------------
 FindSchet|Поиск счетов
-------------------------------------------------------------------------------}
procedure TAccForm.FindSchet;
var
  Street,House :Integer;
  Flat,clause :string;
begin
  SetWaitCursor(true);
  if cbb1.ItemIndex=2 then  //поиск по адресу
  begin
    with cbb_street.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 0]<>null then
    Street := Values[FocusedRecordIndex, 0] else Street:=0;
    with cbb_house.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 0]<>null then
    House := Values[FocusedRecordIndex, 0] else House:=0;
    with cbb_flat.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 1]<>null then
    Flat := Values[FocusedRecordIndex, 1] else Flat:='';
    if Street>0 then clause:=' ac.street='+IntToStr(Street);
    if House>0 then clause:=clause+' and ac.House='+IntToStr(House);
    if Flat<>'' then clause:=clause+' and a.Flat='#39+Flat+#39;
    ds_find.ParamByName('where_clause').AsString:=clause;
    ds_find.CloseOpen(true);
  end;
  if cbb1.ItemIndex=1 then  //Владелец
  begin
    if txt1.Text<>'' then
    begin
      clause:=' ac.MASTER starting('#39+AnsiUpperCase(txt1.Text)+#39')';
      ds_find.ParamByName('where_clause').AsString:=clause;
      ds_find.CloseOpen(true);
    end;
  end;
  if cbb1.ItemIndex=0 then
  begin
    if txt1.Text<>'' then
    begin
      clause:=' ac.ACCCODE =('#39+txt1.Text+#39')';
      ds_find.ParamByName('where_clause').AsString:=clause;
      ds_find.CloseOpen(true);
    end;
  end;
  SetWaitCursor(false);
end;

procedure TAccForm.cbb1PropertiesChange(Sender: TObject);
begin
  if cbb1.ItemIndex=2 then
  begin
    Item_street.Visible:=True;
    Item_house.Visible:=True;
    Item_flat.Visible:=True;
    Item_txt1.Visible:=False;
    if ds_street.IsEmpty then
    ds_street.Open;
  end else
  begin
    Item_street.Visible:=false;
    Item_house.Visible:=false;
    Item_flat.Visible:=false;
    Item_txt1.Visible:=True;
  end;
end;
{-------------------------------------------------------------------------------
 cbb_streetPropertiesChange|Получаем список домов по улице
-------------------------------------------------------------------------------}
procedure TAccForm.cbb_streetPropertiesChange(Sender: TObject);
var
  Street :Integer;
begin
  with cbb_street.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 0]<>null then
    Street :=Values[FocusedRecordIndex, 0] else Street:=0;
 if Street>0 then
 ds_house.ParamByName('Street').AsInteger:=Street;
 ds_house.CloseOpen(true);
end;

procedure TAccForm.clv1DATE_CLOSEGetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
begin
  if AText='30.12.1899' then AText:='';

end;

procedure TAccForm.clv3FlagPropertiesEditValueChanged(Sender: TObject);
var
  rec :string;
begin
  if mt1.State in [dsEdit] then
  mt1.Post;
  mt1.DisableControls;
  rec:=mt1.FieldByName('srv').AsString;
  GetPrv(GetSelected('ACCCODE',grd1));
  mt1.Locate('srv',rec,[]);
  mt1.EnableControls;
end;

procedure TAccForm.cbb_houseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) or (Key=VK_BACK) then
  begin
    ds_house.CloseOpen(true);
    ds_flat.CloseOpen(true);
    cbb_flat.Clear;
  end;
end;
{-------------------------------------------------------------------------------
 cbb_housePropertiesChange|Получаем список квартир по номеру дома
-------------------------------------------------------------------------------}
procedure TAccForm.cbb_housePropertiesChange(Sender: TObject);
var
  House,Street :Integer;
begin
  with cbb_street.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 0]<>null then
    Street :=Values[FocusedRecordIndex, 0] else Street:=0;
  with cbb_house.Properties.Grid.DataController do
    if Values[FocusedRecordIndex, 0]<>null then
    House := Values[FocusedRecordIndex, 0] else House:=0;
  ds_flat.ParamByName('Street').AsInteger:=Street;
  ds_flat.ParamByName('House').AsInteger:=House;
  ds_flat.CloseOpen(true);
end;

procedure TAccForm.cbb_flatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) or (Key=VK_BACK) then
  ds_flat.CloseOpen(true);
end;

procedure TAccForm.DSOpen(DS :TFIBDataSet; forcibly :boolean=false);
begin
  if (not DS.IsEmpty) and (forcibly=false) then Exit;
  DS.CloseOpen(True);
end;

procedure TAccForm.dt1PropertiesChange(Sender: TObject);
begin
  GetPrv(GetSelected('ACCCODE',grd1));
end;

procedure TAccForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 UnRegisterHotkey( Handle, 1 ); //F3 поиск
 Action:=caFree;
end;

procedure TAccForm.SrvMark(AMark: boolean);
begin
 mt1.DisableControls;
 with mt1 do
  begin
   First;
   while not Eof do
    begin
     if mt1.FieldByName('flag').AsBoolean<>AMark then
      begin
       Edit;
       mt1.FieldByName('flag').AsBoolean:=AMark;
       Post;
      end;
     Next;
    end;
   First;
  end;
 GetPrv(GetSelected('ACCCODE',grd1));
 mt1.EnableControls;
end;

procedure TAccForm.CreateMemTable;
begin
  with mt1.FieldDefs do
  begin
    CreateField(mt1,'Flag',ftBoolean);
    CreateField(mt1,'Srv',ftString);
    CreateField(mt1,'Name',ftString);
  end;
  mt1.Open;
  LoadSrv;
end;
{-------------------------------------------------------------------------------
 SetSrvList|Установка списка видов начислений
-------------------------------------------------------------------------------}
procedure TAccForm.SetSrvList(S: string);
begin
 mt1.DisableControls;
 with mt1 do
  begin
   First;
   while not Eof do
     begin
      Edit;
      if Pos(';'+FieldByName('Srv').AsString+';', S)<>0 then
      FieldByName('flag').AsBoolean:=true else
      FieldByName('flag').AsBoolean:=false;
      Post;
      Next;
     end;
   First;
  end;
 GetPrv(GetSelected('ACCCODE',grd1));
 mt1.EnableControls;
end;

procedure TAccForm.SrvListLoad;
 var Form: TSrvSaveListForm;
     S: string;
begin
 S:='';
 Form:=TSrvSaveListForm.Create(Application);
 if Form.ShowModal=mrOk then
    S:=Form.GetSrvList;
 Form.Free;
 if S<>'' then SetSrvList(S);
end;
{-------------------------------------------------------------------------------
GetSrvList | Получаем список видов начислений
-------------------------------------------------------------------------------}
function TAccForm.GetSrvList: string;
begin
 Result:=';';
 mt1.DisableControls;
 with mt1 do
  begin
   First;
   while not Eof do
    begin
     if FieldByName('flag').AsBoolean=true then
       Result:=Result+FieldByName('Srv').AsString+';';
     Next;
    end;
   First;
  end;
  if Result=';' then Result:='';
 mt1.EnableControls;
end;
{-------------------------------------------------------------------------------
 SrvListSave | Сохраняем список услуг
-------------------------------------------------------------------------------}
procedure TAccForm.SrvListSave;
 var Form: TNameForm;
begin
 Form:=TNameForm.Create(Application);
 Form.SrvList:=GetSrvList;
 Form.ShowModal;
 Form.Free;
end;
{-------------------------------------------------------------------------------
LoadSrv | Загружаем список служб
-------------------------------------------------------------------------------}
procedure TAccForm.LoadSrv;
var
  DS :TFIBDataSet;
begin
  DS:=DSCreate(cmDB.db);
  //DSTemp.Close;
  DS.SelectSQL.Text:=
    'SELECT -1 Flag, Srv, NAME FROM SRVLIST ORDER BY Name';
  DS.Open;
  //DSTemp.RecordCount;
  mt1.LoadFromDataSet(DS);
  DS.Free;
end;
{-------------------------------------------------------------------------------
DSCreate | Создаем временный датасет и возвращаем ссылку на него
-------------------------------------------------------------------------------}
function TAccForm.DSCreate(db :TFibdatabase) :TFIBDataSet;
var
  DST :TFIBDataSet;
begin
  DST:=TFIBDataSet.Create(nil);
  DST.Database:=db;
  DST.Transaction:=db.DefaultTransaction;
  Result:=DST;
end;
{-------------------------------------------------------------------------------
CreateHistoryTable|Создаем таблицу в памяти для историий по счету
-------------------------------------------------------------------------------}
procedure TAccForm.CreateHistoryTable;
begin
  with mt_history.FieldDefs do
  begin
    CreateField(mt_history,'REC_TYPE',ftSmallint);
    CreateField(mt_history,'DATE_VAL',ftDate);
    CreateField(mt_history,'PRV_NAME',ftString);
    CreateField(mt_history,'SALDO',ftCurrency);
    CreateField(mt_history,'ACCCODE',ftString);
    CreateField(mt_history,'SRV',ftString);
    CreateField(mt_history,'PAY_DATE',ftDate);
    CreateField(mt_history,'ACC_DATE',ftDate);
    CreateField(mt_history,'HOUSE',ftInteger);
    CreateField(mt_history,'DU',ftInteger);
    CreateField(mt_history,'PSUM',ftCurrency);
    CreateField(mt_history,'RSUM',ftCurrency);
    CreateField(mt_history,'OSUM',ftCurrency);
  end;
  mt_history.Open;
end;
{-------------------------------------------------------------------------------
  FormCreate|Создание формы
-------------------------------------------------------------------------------}
procedure TAccForm.FormCreate(Sender: TObject);
begin
 //загружаем параметры формы
 LoadForm(prop1,Self.Name);
 //создаем таблицу
 CreateMemTable;
 CreateHistoryTable;
  if not RegisterHotkey(Handle, 1, 0, VK_F3) then   //Поиск
  btn_find.Hint:='Поиск.' else btn_find.Hint:='Поиск <F3>';
end;

procedure TAccForm.FormDeactivate(Sender: TObject);
begin
  UnRegisterHotkey( Handle, 1 ); //F3 поиск
end;

{-------------------------------------------------------------------------------
  GetSrv|Спмсок видов услуг через запятую
-------------------------------------------------------------------------------}
function TAccForm.GetSrv: string;
begin
 Result:='';
 mt1.DisableControls;
 with mt1 do
  begin
   First;
   while not Eof do
    begin
     if FieldByName('flag').AsBoolean=true then
     if Result='' then
       Result:=#39+FieldByName('Srv').AsString+#39 else
       Result:=Result+','#39+FieldByName('Srv').AsString+#39;
     Next;
    end;
   First;
  end;
 mt1.EnableControls;
end;
{-------------------------------------------------------------------------------
  WMHotKey|События глобальных клавиш
-------------------------------------------------------------------------------}
procedure TAccForm.WMHotKey(var HTK: TWMHotKey);
begin
  case HTK.HotKey of
  1: FindSchet;
  end;
end;

initialization
 RegisterClass(TAccForm);
end.
