unit PrincipalFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,Fibdatabase,FIBQuery, pFIBCacheQueries,DateUtils,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinscxPCPainter, dxLayoutControl, cxSplitter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutcxEditAdapters,
  cxContainer, dxSkinsdxBarPainter, Menus, StdCtrls, cxButtons, ImgList, dxBar,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, AppUtils, cmDBUnit, dxLayoutLookAndFeels, cxPropertiesStore, dxmdaset,
  cxCheckBox, FIBDataSet, pFIBDataSet,cxGridDBBandedTableView,
  cxGridBandedTableView, cxSpinEdit, BaseForm, dxRibbonSkins,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TPrincipalForm = class(TDezForm)
    RibbonTab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr_root: TdxLayoutControl;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    splt1: TdxLayoutSplitterItem;
    doc1: TdxBarDockControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm: TdxLayoutItem;
    grp3: TdxLayoutGroup;
    grp_date: TdxLayoutGroup;
    dt1: TcxDateEdit;
    lItm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    Itm_dt2: TdxLayoutItem;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_checkAll: TdxBarButton;
    doc2: TdxBarDockControl;
    lItm_doc: TdxLayoutItem;
    il1: TImageList;
    btn_UnCheckAll: TdxBarButton;
    btn_SaveSrv: TdxBarButton;
    btn_OpenSrv: TdxBarButton;
    btn_exec: TcxButton;
    Itm_exec: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Itm_grd2: TdxLayoutItem;
    dxlytlkndflst2: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl2: TdxLayoutCxLookAndFeel;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    mt1: TdxMemData;
    ds1: TDataSource;
    clv1Flag: TcxGridDBColumn;
    clv1Srv: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    dsRep: TpFIBDataSet;
    SourceRep: TDataSource;
    vb2: TcxGridDBBandedTableView;
    mt_period: TdxMemData;
    ds_saldo: TpFIBDataSet;
    cb_month :TcxComboBox;
    sp_year :TcxSpinEdit;
    ds_1: TpFIBDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_checkAllClick(Sender: TObject);
    procedure btn_UnCheckAllClick(Sender: TObject);
    procedure btn_SaveSrvClick(Sender: TObject);
    procedure btn_OpenSrvClick(Sender: TObject);
    procedure v1DblClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_execClick(Sender: TObject);
    procedure dsRepAfterFetchRecord(FromQuery: TFIBQuery; RecordNumber: Integer;
      var StopFetching: Boolean);
  private
    { Private declarations }
    AccLs,Saldols :TStringList; //Список счетов

    d1, d2 :TDateTime;
    procedure CreateMemTable;
    procedure MakeReport;
    procedure GetAccByPeriod;
    procedure CreatePeriodTable;
    procedure FillMemTable(T :TDataSet);
    procedure CreateGrid;
    {---------------------------------------------------}
    procedure GetDistinctAccCode;
    procedure GetSum;
    procedure GetSaldo(s :string);
    {---------------------------------------------------}
    procedure GetAccSum;
    procedure Grooping(Q :TFIBQuery);
    procedure GetSaldoAcc;
  public
    { Public declarations }
     list :TStringList;
     StartTime :TTime;
  end;

var
  PrincipalForm: TPrincipalForm;

implementation

uses MainFrm, cmUtils, PlanShablon;

{$R *.dfm}

procedure TPrincipalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  list.Free;
  AccLs.Free;
  Saldols.Free;
  action:=caFree;
end;
{-------------------------------------------------------------------------------
 btn_checkAllClick|Отмечаем услуги
-------------------------------------------------------------------------------}
procedure TPrincipalForm.btn_checkAllClick(Sender: TObject);
begin
  SrvMark(True,mt1);
end;
{-------------------------------------------------------------------------------
 btn_UnCheckAllClick|Снимает отметки услуг
-------------------------------------------------------------------------------}
procedure TPrincipalForm.btn_execClick(Sender: TObject);
var
  day :Integer;
  D: TDateTime;
  N: TdezNachHouses;
begin
  {if not cmMessageBox('Сформировать документы за октябрь 2010 период ?') then Exit;
  D:=StrToDate('01.10.2010');
  N:=TdezNachHouses.Create;
  try
    N.MakeHousePlan(D);
  finally
    N.Free;
  end; }

 day:= DaysBetween(dt1.Date, dt2.Date);
 if day>60 then
 begin
  if MessageDlg('Вы действительно хотите сформировать отчет за' + #13#10 +
                '                '+DateName(day)+
                ' ?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
     MakeReport;
  end else Exit;
 end else MakeReport;
end;
{-------------------------------------------------------------------------------
MakeReport|Формируем отчет
-------------------------------------------------------------------------------}
procedure TPrincipalForm.MakeReport;
begin
  StartTime:=Time;  //начало формирования отчета
  // получаем записи за период из таблицы acccodeprv

  d1:=GetPeriod(IntToStr(cb_month.ItemIndex+1),sp_year.Text);
  d2:=GetPeriod(IntToStr(cb_month.ItemIndex+1),sp_year.Text,true);
   //создаем таблицу в памяти
  SetMes('создаем таблицу в памяти');
  Application.ProcessMessages;
  CreatePeriodTable;
  GetAccSum;
  SetMes('получаем записи за период из таблицы acccodeprv');
  Application.ProcessMessages;
  //GetAccByPeriod;
  //GetDistinctAccCode;

  //заполнякм таблицу в памяти
  SetMes('заполнякм таблицу в памяти');
  Application.ProcessMessages;
  //FillMemTable(mt_period);
  //создаем грид
  SetMes('создаем грид');
  Application.ProcessMessages;
  CreateGrid;
  SetMes(TimeToStr(Time-StartTime));
  // группировка по месяцам, разбиваем по оплатам/начислениям
end;
{-------------------------------------------------------------------------------
  GetAccByPeriod|Получаем счета за период
-------------------------------------------------------------------------------}
procedure TPrincipalForm.GetAccByPeriod;
var
  sql :string;
begin
  sql :=
      'SELECT a.REC_TYPE, a.ACCCODE, a.SRV,'+
      ' a.DATE_VAL, a.PAY_DATE, a.ACC_DATE,'+
      ' iif(a.REC_TYPE=0,a.SUMMA,0) PSum,'+
      ' iif(a.REC_TYPE=1,a.summa,0) RSum,'+
      ' a.HOUSE, a.DU'+
      ' FROM ACCCODEPRV a'+
      ' where a.date_val between :d1 and :d2'+
      ' order by a.ACCCODE';
  d1:=GetPeriod(IntToStr(cb_month.ItemIndex+1),sp_year.Text);
  d2:=GetPeriod(IntToStr(cb_month.ItemIndex+1),sp_year.Text,true);
  with dsRep do
  begin
    DisableControls;
    Close;
    SelectSQL.Text:=sql;
    ParamByName('d1').AsDateTime:=d1;
    ParamByName('d2').AsDateTime:=d2;
    CloseOpen(true);
    EnableControls;
  end;
end;
{-------------------------------------------------------------------------------
CreatePeriodTable|Создаем основную временную таблицу
-------------------------------------------------------------------------------}
procedure TPrincipalForm.CreatePeriodTable;
var
  YM1,YM2 :string;
begin
  YM1:=FormatDateTime('yy',d1)+FormatDateTime('mm',d1);
  YM2:=FormatDateTime('yy',d2)+FormatDateTime('mm',d2);
  if YM1>YM2 then
  begin
    ShowMessage('Некорректно указан период формирования отчета.');
    Exit;
  end;
  mt_period.Close;
  with mt_period.FieldDefs do
  begin
    Clear;
    CreateField(mt_period,'REC_TYPE',ftSmallint);
    CreateField(mt_period,'ACCCODE',ftString);
    CreateField(mt_period,'Master',ftString,256);
    CreateField(mt_period,'STREET',ftString,256);
    CreateField(mt_period,'SRV',ftString);
    CreateField(mt_period,'Ost',ftCurrency);        //начальное сальдо

    CreateField(mt_period,'PSum',ftCurrency);       //начисления
    CreateField(mt_period,'RSum',ftCurrency);       //оплаты
    CreateField(mt_period,'KSum',ftCurrency);       //коррекция
    CreateField(mt_period,'PrSum',ftCurrency);      //пересчет
    CreateField(mt_period,'SSum',ftCurrency);       //субсидия

    CreateField(mt_period,'HOUSE',ftString);    //дом
    CreateField(mt_period,'DU',ftString,256);       //домоуправление
    {repeat
      CreateField(mt_period,'P'+YM1, ftCurrency); //начисления в течении месяца
      CreateField(mt_period,'R'+YM1, ftCurrency); //оплаты в течении месяца
      CreateField(mt_period,'U'+YM1, ftCurrency); //увеличение задолженности
      CreateField(mt_period,'D'+YM1, ftCurrency); //уменьшение задолженности
      CreateField(mt_period,'M'+YM1, ftCurrency); //общее отклонение
      YM1:=NextYM(YM1); //к следующему месяцу
    until YM1>YM2;}
  end;
  mt_period.Open;
end;
procedure TPrincipalForm.dsRepAfterFetchRecord(FromQuery: TFIBQuery;
  RecordNumber: Integer; var StopFetching: Boolean);
begin
 // MainForm.stb1.Panels[2].Text:='Получаем записи из базы данных.';
 // MainForm.stb1.Panels[1].Text:=IntToStr(RecordNumber);
 // Application.ProcessMessages;
end;

{-------------------------------------------------------------------------------
FillMemTable|Заполняем таблицу в памяти
-------------------------------------------------------------------------------}
procedure TPrincipalForm.FillMemTable(T :TDataSet);
var
  FName,YM,cnt :string;
begin
  if dsRep.IsEmpty then Exit;
  cnt:=IntToStr(dsRep.RecordCount);
  while not dsRep.Eof do
  begin
    Application.ProcessMessages;
    SetMes(IntToStr(dsRep.RecNo)+' из '+cnt);
    MainForm.stb1.Panels[0].Text:=TimeToStr(Time-StartTime);
    if T.FieldByName('ACCCODE').AsString<>dsRep.FN('ACCCODE').AsString then
    begin
      T.Append;
      //T.FieldByName('REC_TYPE').AsInteger:=dsRep.FN('REC_TYPE').AsInteger;
      T.FieldByName('ACCCODE').AsString:=dsRep.FN('ACCCODE').AsString;

      {YM:=FormatDateTime('yy',dsRep.FN('DATE_VAL').AsDateTime)+
          FormatDateTime('mm',dsRep.FN('DATE_VAL').AsDateTime);}
        //начисления
        //FName:='P'+YM;
        FName:='P'+dsRep.FN('YM').AsString;
        T.FieldByName(FName).AsCurrency:=dsRep.FN('PSum').AsCurrency;
        //оплаты
        //FName:='R'+YM;
        FName:='R'+dsRep.FN('YM').AsString;
        T.FieldByName(FName).AsCurrency:=dsRep.FN('RSum').AsCurrency;
      T.FieldByName('HOUSE').AsInteger:=dsRep.FN('HOUSE').AsInteger;
      T.FieldByName('DU').AsInteger:=dsRep.FN('DU').AsInteger;
      //начальное сальдо
      if ds_saldo.Locate('acccode',T.FieldByName('ACCCODE').AsString,[]) then
              T.FieldByName('Ost').AsCurrency:=ds_saldo.FN('SUM').AsCurrency;
      T.Post;
    end else
    begin
      T.Edit;
      {YM:=FormatDateTime('yy',dsRep.FN('DATE_VAL').AsDateTime)+
          FormatDateTime('mm',dsRep.FN('DATE_VAL').AsDateTime);}
        //начисления

        //FName:='P'+YM;
        FName:='P'+dsRep.FN('YM').AsString;
        T.FieldByName(FName).AsCurrency:=T.FieldByName('P').AsCurrency+
                                                   dsRep.FN('PSum').AsCurrency;
        //оплаты
        //FName:='R'+YM;
        FName:='R'+dsRep.FN('YM').AsString;
        T.FieldByName(FName).AsCurrency:=T.FieldByName(FName).AsCurrency+
                                                   dsRep.FN('RSum').AsCurrency;
      T.Post;
    end;
   dsRep.Next;
  end;
end;
{-------------------------------------------------------------------------------
CreateGrid|Create cxGrid runtime
-------------------------------------------------------------------------------}
procedure TPrincipalForm.CreateGrid;
var
  C :TcxGridDBBandedColumn;
  i :Integer;
  YM1,YM2 :string;
begin
  YM1:=FormatDateTime('yy',d1)+FormatDateTime('mm',d1);
  YM2:=FormatDateTime('yy',d2)+FormatDateTime('mm',d2);
        vb2.ClearItems;
        vb2.Bands.Clear;
      i:=0;
        vb2.Bands.Add;
        vb2.Bands[i].Caption := ' ';
        vb2.Bands[i].FixedKind:=fkLeft;
        vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'AccCode';
      C.Name := 'cl'+'AccCode';
      C.Caption:='Счет';
      C.Width:=60;
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skCount;

        vb2.Bands.Add;
        Inc(i);
        vb2.Bands[i].Caption := 'Лицевой счет';
        vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;
      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'Master';
      C.Name := 'cl'+'Master';
      C.Caption:='Владелец';
      C.Width:=120;
      C.Position.BandIndex := i;

        vb2.Bands.Add;
        Inc(i);
        vb2.Bands[i].Caption := 'Адрес';
        vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;
      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'Street';
      C.Name := 'cl'+'Street';
      C.Caption:='Улица';
      C.Width:=120;
      C.Position.BandIndex := i;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'House';
      C.Name := 'cl'+'House';
      C.Caption:='Дом';
      C.Position.BandIndex := i;

        vb2.Bands.Add;
        inc(i);
        vb2.Bands[i].Caption := 'Оплаты';
        vb2.Bands[i].Options.Moving:=False; //не перемещать
        vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'Ost';
      C.Name := 'cl'+'Ost';
      C.Caption:='Нач.остаток';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';
     // C.RepositoryItem:=CurrencyItem1;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'PSum';
      C.Name := 'cl'+'PSum';
      C.Caption:='Начисл.';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';
      //C.RepositoryItem:=CurrencyItem1;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'RSum';
      C.Name := 'cl'+'RSum';
      C.Caption:='Оплаты';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';
      //C.RepositoryItem:=CurrencyItem1;

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'KSum';
      C.Name := 'cl'+'KSum';
      C.Caption:='Коррекция';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'PrSum';
      C.Name := 'cl'+'PrSum';
      C.Caption:='Перерасчет';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';

      C := vb2.CreateColumn;
      C.DataBinding.FieldName := 'SSum';
      C.Name := 'cl'+'SSum';
      C.Caption:='Субсидия';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';

        vb2.Bands.Add;
        Inc(i);
        vb2.Bands[i].Caption := '';
        vb2.Bands[i].Options.HoldOwnColumnsOnly:=True;
      C := vb2.CreateColumn;
      //C.DataBinding.FieldName := 'Saldo';
      C.Name := 'cl'+'Saldo';
      C.Caption:='Кон.ост';
      C.Position.BandIndex := i;
      C.Summary.FooterKind:=skSum;
      C.Summary.FooterFormat:= ',0.00';
      //C.RepositoryItem:=CurrencyItem1;
      vb2.DataController.DataSource:=SourceRep;
end;

procedure TPrincipalForm.btn_OpenSrvClick(Sender: TObject);
begin
  SrvListLoad(mt1);
end;

procedure TPrincipalForm.btn_SaveSrvClick(Sender: TObject);
begin
  SrvListSave(mt1);
end;

procedure TPrincipalForm.btn_UnCheckAllClick(Sender: TObject);
begin
  SrvMark(False,mt1);
end;
{-------------------------------------------------------------------------------
CreateMemTable|Создаем таблицу видов оплат
-------------------------------------------------------------------------------}
procedure TPrincipalForm.CreateMemTable;
begin
  with mt1.FieldDefs do
  begin
    CreateField(mt1,'Flag',ftBoolean);
    CreateField(mt1,'Srv',ftString);
    CreateField(mt1,'Name',ftString);
  end;
  mt1.Open;
  LoadSrv(cmDB.DB,mt1);
end;

procedure TPrincipalForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMemTable;
  List:=TStringList.Create;
  AccLs:=TStringList.Create;
  Saldols:=TStringList.Create;
end;

procedure TPrincipalForm.v1DblClick(Sender: TObject);
begin
  CheckFlag(mt1);
end;

procedure TPrincipalForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_SPACE then CheckFlag(mt1);
end;

{------------------------------------------------------------------------------}
procedure TPrincipalForm.GetDistinctAccCode;
var
  sql :string;
begin
  sql :=
  'select distinct a.ACCCODE'+
  ' from acccodeprv a'+
  ' where a.date_val between :d1 and :d2';
  with dsRep do
  begin
    DisableControls;
    Close;
    SelectSQL.Text:=sql;
    ParamByName('d1').AsDateTime:=d1;
    ParamByName('d2').AsDateTime:=d2;
    CloseOpen(true);
    EnableControls;
  end;
  list.Clear;
  //заполняем список по 1000
  GetListDsValue(dsRep,list,'ACCCODE',1500,True);
  //собираем суммы
  SetMes('собираем суммы');
  Application.ProcessMessages;
  GetSum;
end;
{-------------------------------------------------------------------------------
 GetSaldo|Получаем начальное сальдо
-------------------------------------------------------------------------------}
procedure TPrincipalForm.GetSaldo(s :string);
var
  sql :string;
begin
  sql:=
  'select a.acccode,sum(a.saldo)'+
  ' from acccodesaldo a';
  with ds_saldo do
  begin
    Close;
    SelectSQL.Text:=sql;
    MainWhereClause:=
       ' a.acccode in ('+s+')'+
       ' and a.op_date between '#39+
       DateToStr(d1)+#39' and '#39+DateToStr(d2)+#39;
    GroupByClause:=' a.acccode';
    {PlanClause:=
    ' (A ORDER ACCCODESALDO_IDX3 INDEX (ACCCODESALDO_IDX3,ACCCODESALDO_IDX1))';}
    SetMes('Получаем начальное сальдо');
    Open;
  end;
end;
{-------------------------------------------------------------------------------
GetSum|Получаем суммы
-------------------------------------------------------------------------------}
procedure TPrincipalForm.GetSum;
var
  sql :string;
  i :Integer;
  prevText: string;
begin
  if list.Count=0 then Exit;
  dsRep.Close;
    sql:=
    'SELECT *'+
    {'SELECT a.ACCCODE,'+
        ' substring(a.date_val FROM 3 FOR 2) ||'+
        ' substring(a.date_val FROM 6 FOR 2) YM,'+
        ' sum(iif(a.REC_TYPE=0,a.SUMMA,0)) PSum'+
        ' ,sum(iif(a.REC_TYPE=1,a.summa,0)) RSum'+
        ' ,a.HOUSE, a.DU'+}
    ' FROM ACCCODEPRV a';
  dsRep.SelectSQL.Text:=sql;
  //dsRep.AutoUpdateOptions.CanChangeSQLs:=True;
  prevText := MainForm.stb1.Panels[1].Text;
  for I := 0 to List.Count - 1 do
  begin
    with dsRep do
    begin
      Close;
      MainWhereClause:=
           ' a.acccode in ('+List[i]+')'+
           ' and a.date_val between '#39+
           DateToStr(d1)+#39' and '#39+DateToStr(d2)+#39;
      GroupByClause:=' a.ACCCODE';
     // PlanClause:=' (a INDEX (ACCCODEPRV_IDX3))';
     // OrderClause:=' a.ACCCODE';
      CloseOpen(true);
      MainForm.stb1.Panels[1].Text:=IntToStr(i)+' из '+IntToStr(list.Count -1);
      Application.ProcessMessages;
      GetSaldo(list[i]);
      //заполняем таблицу
      FillMemTable(mt_period);
    end;
    MainForm.stb1.Panels[1].Text:= prevText;
  end;
end;
{------------------------------------------------------------------------------}

procedure TPrincipalForm.GetAccSum;
var
  sql :string;
  Q :TFIBQuery;
begin
  sql :=
  'select sum(iif(rec_type=0,summa,0)) psum,'+
      ' sum(iif(rec_type=1,summa,0)) rsum,'+
      ' sum(iif(rec_type=2,summa,0)) Ksum,'+
      ' sum(iif(rec_type=3,summa,0)) Prsum,'+
      ' sum(iif(rec_type=4,summa,0)) Ssum,'+
      ' AccCode'+
  ' from ACCCODEPRV';
    Q:=GetQueryForUse(cmDB.RT,sql);
    Q.MainWhereClause:=
       'DATE_VAL between '#39+
       DateToStr(d1)+#39' and '#39+DateToStr(d2)+#39;
    Q.GroupByClause:='ACCCODE';
    SetMes('Получаем записи из базы');
    Q.ExecQuery;

  Grooping(Q);
  FreeQueryForUse(Q);
end;

procedure TPrincipalForm.Grooping(Q :TFIBQuery);
var
  QInf, QSl :TFIBQuery;
  sql :string;
  i :integer;

   procedure GetSaldo;
   begin
     QSl.ParamByName('Acc').AsString:=Q.FN('AccCode').AsString;
     QSl.ParamByName('d1').AsDateTime:=d1;
     QSl.ExecQuery;
     with mt_period do
     begin
       Edit;
       FieldByName('Ost').AsCurrency:=QSl.FN('saldo').AsCurrency;
       Post;
     end;
   end;

  procedure GetInfo;
  begin
    QInf.ParamByName('acc').AsString:=Q.FN('AccCode').AsString;
    QInf.ExecQuery;
    with mt_period do
    begin
      Edit;
      FieldByName('Master').AsString:=QInf.FN('Master').AsString;
      FieldByName('HOUSE').AsString:=QInf.FN('nomer').AsString;
      FieldByName('DU').AsString:=QInf.FN('Name').AsString;
      FieldByName('STREET').AsString:=QInf.FN('StreetName').AsString;
      Post;
    end;
  end;

  procedure AddRec;
  begin
    with mt_period do
    begin
      Append;
      FieldByName('ACCCODE').AsString:=Q.FN('AccCode').AsString;
      FieldByName('PSum').AsCurrency:=Q.FN('psum').AsCurrency;
      FieldByName('RSum').AsCurrency:=Q.FN('rsum').AsCurrency;
      FieldByName('KSum').AsCurrency:=Q.FN('Ksum').AsCurrency;
      FieldByName('PrSum').AsCurrency:=Q.FN('Prsum').AsCurrency;
      FieldByName('SSum').AsCurrency:=Q.FN('Ssum').AsCurrency;
      Post;
    end;
    GetInfo;
    //GetSaldo;
  end;

begin
  AccLs.Clear;
  mt_period.DisableControls;
  //
  sql:=
  'SELECT ac.ACCCODE,'+
        ' ac.MASTER,'+
        ' ac.street, s.name StreetName,'+
        ' ac.HOUSE,h.nomer,'+
        ' ac.DU, d.name'+
  ' FROM ACCCODE ac'+
  ' left outer join House h on ac.house=h.code'+
  ' left outer join street s on ac.street=s.code'+
  ' left outer join DU d on ac.du=d.code';
  Qinf:=GetQueryForUse(cmDB.RT,sql);
  QInf.MainWhereClause:='ac.acccode=:acc';
  //Saldo
  QSl:=GetQueryForUse(cmDB.RT,'select sum(a.saldo) saldo from acccodesaldo a');
  QSl.MainWhereClause:='a.acccode=:Acc and a.op_date = :d1';
  i:=0;
  while not Q.Eof do
  begin
    //AccLs.Add(#39+Q.FN('AccCode').AsString+#39);

    AddRec;

    SetMes(TimeToStr(Time-StartTime));
    //inc(i);
    Q.Next;
  end;
  //GetSaldoAcc;
  FreeQueryForUse(QInf);
  FreeQueryForUse(QSl);
  mt_period.EnableControls;
end;

procedure TPrincipalForm.GetSaldoAcc;
var
  i,n :Integer;
  s :string;
  QSl :TFIBQuery;

   procedure GetSaldo(ls :string);
   begin
     QSl:=GetQueryForUse(cmDB.RT,
             'select  a.acccode,iif(sum(a.saldo) is null,0,sum(a.saldo)) saldo'+
             ' from acccodesaldo a');
     QSl.MainWhereClause:='a.acccode in ('+ls+') and a.op_date = :d1';
     QSl.GroupByClause:='a.acccode';
     //QSl.ParamByName('Acc').AsWideString:=ls;
     QSl.ParamByName('d1').AsDateTime:=d1;
     QSl.ExecQuery;
     while not QSl.Eof do
     begin
       Saldols.Values[QSl.FN('acccode').AsString]:=QSl.FN('saldo').AsString;
       QSl.Next;
     end;
   end;

begin
  SetMes('Получаем начальный остаток');
  n:=0; s:='';
  for I := 0 to AccLs.Count - 1 do
  begin
    if n=1500 then
    begin
      Delete(s,Length(s),1);
      GetSaldo(s);
      n:=0;
      s:='';
    end;
    s:=s+Accls[i]+',';
    inc(n);
    SetMes(IntToStr(i));
  end;
  if s<>'' then
  begin
    Delete(s,Length(s),1);
    GetSaldo(s);
  end;
  mt_period.First;
  SetMes('Заполняем таблицу');
  while not mt_period.Eof do
  begin
    mt_period.Edit;
    mt_period.FieldByName('Saldo').AsCurrency:=
      StrToCurrDef(Saldols.Values[mt_period.FieldByName('Acccode').AsString],0);
    mt_period.Post;
    mt_period.Next;
  end;
  FreeQueryForUse(QSl);
end;

initialization
 RegisterClass(TPrincipalForm);
end.
