unit ControlWorkListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxCalendar, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel,
  FIBQuery,pFIBCacheQueries,pFIBProps, DateUtils,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBar, cxBarEditItem, dxmdaset, EXLReportExcelTLB,
  EXLReportBand, EXLReport, dxLayoutContainer, dxSkinDevExpressStyle,
  dxSkinVS2010;

type
  TControlWorkListForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_Exec: TdxBarButton;
    itm_beg: TcxBarEditItem;
    itm_end: TcxBarEditItem;
    itm_kontr: TcxBarEditItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    ds_SRVDOGHOUSE: TpFIBDataSet;
    src_SRVDOGHOUSE: TDataSource;
    m1: TdxMemData;
    src_m1: TDataSource;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1Days: TcxGridDBColumn;
    xl1: TEXLReport;
    btn_excel: TdxBarButton;
    clv1DiffDays: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
  private
    { Private declarations }
    procedure MakeReoprt;
    procedure GetParam(var D1, D2, Dog, Kontr :Variant);
    procedure OpenDS;
    procedure CreateMem;
    procedure FillTable(d1,d2,kontr :variant);
    function CheckParam :Boolean;
    procedure ExpExl;
    function GetDiffOfDate(d1, d2: TDateTime): Integer;
  public
    { Public declarations }
  end;

var
  ControlWorkListForm: TControlWorkListForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, dezCommon;

{$R *.dfm}

procedure TControlWorkListForm.ExpExl;
begin
  xl1.Template:='rep\nc.xls';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:F5';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A6:F6';

  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A7:F7';
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='D_BEG';
    ValueAsString:=VarToStr(itm_beg.EditValue);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='D_END';
    ValueAsString:=VarToStr(itm_end.EditValue);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    with TcxLookupComboBoxProperties(itm_kontr.Properties).Grid.DataController do
    begin
      ValueAsString:=VarToStr(Values[FocusedRecordIndex,2]);
    end;
  end;
  m1.DisableControls;
  xl1.Show();
  m1.EnableControls;
end;

procedure TControlWorkListForm.btn_excelClick(Sender: TObject);
begin
  if not m1.IsEmpty then
  ExpExl;
end;

procedure TControlWorkListForm.btn_ExecClick(Sender: TObject);
begin
  if CheckParam then
  MakeReoprt;
end;

function TControlWorkListForm.CheckParam: Boolean;
begin
  Result:=True;
  if itm_beg.EditValue=null then
  begin
    cmShowMessage('Укажите дату начала периода!',true);
    itm_beg.SetFocus();
    Result:=False;
    Exit;
  end;
  if itm_end.EditValue=null then
  begin
    cmShowMessage('Укажите дату окончания периода!',true);
    itm_end.SetFocus();
    Result:=False;
    Exit;
  end;
  if itm_kontr.EditValue=null then
  begin
    cmShowMessage('Укажите подрядную огранизацию!',true);
    itm_kontr.SetFocus();
    Result:=False;
    Exit;
  end;
end;

procedure TControlWorkListForm.CreateMem;
begin
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'STREET',ftinteger);
  CreateField(m1,'SNAME',ftString,128);
  CreateField(m1,'D1',ftDateTime);
  CreateField(m1,'D2',ftDateTime);
  CreateField(m1,'Days',ftInteger);
  CreateField(m1,'DiffDays',ftInteger);
  m1.Open;
end;

procedure TControlWorkListForm.FillTable(d1,d2,kontr :variant);
var
  Q, Q1, Q2 :TFIBQuery;
  cnt :Integer;

  function GetDiffDays(code: variant): Integer;
  var n, d: Integer;
  begin
    n:=0;
    with Q2 do begin
      ParamByName('code').AsVariant:= code;
      ExecQuery;
      while not Eof do begin
        //получаем дни просрочки
        d:= GetDiffOfDate(FN('DATA').AsDateTime, FN('FDATA').AsDateTime);
        //если просрочка более 2-х дней добавляем в общее кол-во
        if d>2 then
           n:=n+d;
        Next;
      end;
    end;
    Result:=n;
  end;

  function GetD2(code :variant) :Variant;
  begin
    Q1.ParamByName('wl').AsVariant:= code;
    Q1.ExecQuery;
    Result:=Q1.FN('DATA').AsVariant;
  end;

  procedure GetDate(house :Variant);
  begin
    Q.ParamByName('d1').AsVariant:= d1;
    Q.ParamByName('d2').AsVariant:= d2;
    Q.ParamByName('house').AsVariant:= house ;
    Q.ParamByName('kontr').AsVariant:= kontr;
    Q.ExecQuery;
    m1.FieldByName('D1').AsVariant:=Q.FN('DATA').AsVariant;
    m1.FieldByName('D2').AsVariant:=GetD2(Q.FN('CODE').AsVariant);
    m1.FieldByName('DiffDays').AsVariant:= GetDiffDays(Q.FN('CODE').AsVariant);
  end;

begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE,DATA from worklist' + #13#10 +
                            'where data between :d1 and :d2' + #13#10 +
                            'and house=:house and kontragent=:kontr' + #13#10 +
                            'order by data DESC');
  Q1:=GetQueryForUse(cmDB.RT,'select max(fdata)data from workspeclist' + #13#10 +
                             'where worklist=:wl');
  Q2:= GetQueryForUse(cmDb.RT, 'SELECT DATA, FDATA FROM WORKSPECLIST' + #13 +
                              #10 + 'WHERE WORKLIST=:CODE');
  SplashVisibility(True,'Получаем данные ...');
  try
    m1.DisableControls;
    with ds_SRVDOGHOUSE do begin
      cnt :=RecordCountFromSrv;
      while not EOF do begin
        m1.Append;
        m1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
        m1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
        m1.FieldByName('STREET').AsVariant:=FN('STREET').AsVariant;
        m1.FieldByName('SNAME').AsVariant:=FN('SNAME').AsVariant;
        GetDate(FN('HOUSE').AsVariant);

        m1.FieldByName('Days').AsVariant:= (Date - m1.FieldByName('D2').AsVariant);
        m1.Post;
        SetCapt(IntToStr(RecNo)+' - '+IntToStr(cnt));
        Next;
      end;
    end;
    m1.EnableControls;
  finally
    SplashVisibility(false);
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
  end;
end;

procedure TControlWorkListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TControlWorkListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
  CreateMem;
end;

function TControlWorkListForm.GetDiffOfDate(d1, d2: TDateTime): Integer;
//d1 - ручная дата записи
//d2 - дата создания записи (авто)
var
  n: Integer;
begin
  n:=0;
  if d2>d1 then begin
    repeat
      case DayOfTheWeek(d1) of
        1..5: Inc(n);
      end;
      d1:=IncDay(d1);
    until d2=d1;
    Result:=n;
  end else
    Result:=0;
end;

procedure TControlWorkListForm.GetParam(var D1, D2, Dog, Kontr :Variant);
begin
  D1:=itm_beg.EditValue;
  D2:=itm_end.EditValue;
  with TcxLookupComboBoxProperties(itm_kontr.Properties).Grid.DataController do
  begin
    Kontr :=Values[FocusedRecordIndex,1];
    Dog := Values[FocusedRecordIndex,0];
  end;
end;

procedure TControlWorkListForm.MakeReoprt;
var
  D1, D2, Dog, Kontr :Variant;
begin
  GetParam(D1,D2,Dog,Kontr);
  with ds_SRVDOGHOUSE do begin
    Close;
    MainWhereClause:='sd.srvdog=:dog';
    ParamByName('dog').AsVariant:=dog;
    OrderClause:='h.street,h.nomer';
    Open;
  end;
  m1.Close; m1.Open;
  FillTable(d1,d2,Kontr);
end;

procedure TControlWorkListForm.OpenDS;
begin
  with ds_SRVDOG do begin
    Close;
    MainWhereClause:='SD."ACTIVE" = 1';
    if ActiveUserType=1 then
    begin
      MainWhereClause:=MainWhereClause+' and SD.KONTRAGENT=:kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
    end;
    OrderClause:='K.NAME';
    Open;
  end;
end;

initialization
 RegisterClass(TControlWorkListForm);
end.



