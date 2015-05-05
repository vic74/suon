unit BgRepFrm;

interface

uses
  dxRibbonForm,FIBQuery, pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  cxStyles, dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxPropertiesStore, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, dxLayoutLookAndFeels,
  dxRibbon, dxSkinsdxBarPainter, cxDropDownEdit, cxSpinEdit, dxBar,
  cxBarEditItem, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, dxmdaset,
  cxDBLookupComboBox, BaseForm, dxRibbonSkins, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TBgRepForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    prop1: TcxPropertiesStore;
    ds_bgRep: TpFIBDataSet;
    src_bgrep: TDataSource;
    bm1: TdxBarManager;
    bar1: TdxBar;
    btn_exec: TdxBarButton;
    ed_bg: TcxBarEditItem;
    ed_month: TcxBarEditItem;
    ed_year: TcxBarEditItem;
    mt_bgRep: TdxMemData;
    ds_house: TpFIBDataSet;
    ds_srv: TpFIBDataSet;
    src_budget: TDataSource;
    ed_budget: TcxBarEditItem;
    src_mtbgRep: TDataSource;
    clvb1CODE: TcxGridDBBandedColumn;
    clvb1REC_TYPE: TcxGridDBBandedColumn;
    clvb1ACCCODE: TcxGridDBBandedColumn;
    clvb1SRVSUM: TcxGridDBBandedColumn;
    clvb1PSRVSUM: TcxGridDBBandedColumn;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1DOM: TcxGridDBBandedColumn;
    clvb1STREET: TcxGridDBBandedColumn;
    clvb1STREETNAME: TcxGridDBBandedColumn;
    clvb1DU: TcxGridDBBandedColumn;
    clvb1DUNAME: TcxGridDBBandedColumn;
    clvb1total_sq: TcxGridDBBandedColumn;
    src_house: TDataSource;
    clvb1Plan: TcxGridDBBandedColumn;
    ed_bonus: TcxBarEditItem;
    ed_Commission: TcxBarEditItem;
    clvb1bonus: TcxGridDBBandedColumn;
    clvb1commission: TcxGridDBBandedColumn;
    clvb1smeta: TcxGridDBBandedColumn;
    ds_bglist: TpFIBDataSet;
    src_bglist: TDataSource;
    ed_bgLine: TcxBarEditItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed_bgPropertiesChange(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure ed_budgetPropertiesChange(Sender: TObject);
    procedure ed_bgLinePropertiesChange(Sender: TObject);
    procedure ds_srvAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    function GetSrvBg :string;
    function GetPeriod (start :Boolean=true) :TDateTime;
    procedure OpenDs;
    procedure CreateMem;
    procedure AddMemData;
    procedure MakeReport;
    function CheckParam :Boolean;
    procedure loadBgShablon (code :integer);
  public
    { Public declarations }
      tarif :Double;
      srv,psrv :string;
      tbase :Integer;
  end;

var
  BgRepForm: TBgRepForm;

implementation

uses AppUtils, cmDBUnit, LoadingSplash;

{$R *.dfm}

procedure TBgRepForm.btn_execClick(Sender: TObject);
begin
  if CheckParam=False then Exit;
  SplashVisibility(True);
  MakeReport;
  SplashVisibility(False);
end;

function TBgRepForm.CheckParam :Boolean;
begin
  Result:=False;
  if (ed_budget.EditValue<>null) and
     (ed_month.EditValue<>null)  and
     (ed_year.EditValue<>null)   and
     (ed_bonus.EditValue>0)      and
     (ed_Commission.EditValue>0)
     then Result:=True else
       ShowMessage('Не верно указаны параметры!');
end;

procedure TBgRepForm.MakeReport;
var
  d1, d2 :TDateTime;
begin
  TcxLookupComboBoxProperties(ed_bgLine.Properties).GridMode:=True; // !!
  with TcxLookupComboBoxProperties(ed_bgLine.Properties).Grid.DataController do
  begin
   tbase:=Values[FocusedRecordIndex, 7];
   srv := Values[FocusedRecordIndex, 2];
   psrv := Values[FocusedRecordIndex, 4];
   tarif:= Values[FocusedRecordIndex, 6];
  end;
  SetCapt('Получаем данные из базы');
  with ds_bgRep do
  begin
    Close;
    MainWhereClause:='a.rec_type<>1 and a.date_val between :d1 and :d2 '+
                     'and a.srv in (:srv,:psrv)';
    ParamByName('d1').AsDateTime:=GetPeriod(true);
    ParamByName('d2').AsDateTime:=GetPeriod(false);
    ParamByName('srv').AsString:=srv;
    ParamByName('psrv').AsString:=psrv;
    ParamByName('tbase').AsInteger:=tbase;
    OrderClause:='A.HOUSE';
    Open;
  end;
  //заполняем таблицу
  mt_bgRep.DisableControls;
  AddMemData;
  mt_bgRep.EnableControls;
end;

procedure TBgRepForm.ed_bgPropertiesChange(Sender: TObject);
begin
  //ShowMessage(GetSrvBg);
end;
{-------------------------------------------------------------------------------
 Выбираем шаблон бюджета
-------------------------------------------------------------------------------}
procedure TBgRepForm.ed_budgetPropertiesChange(Sender: TObject);
begin
  if ed_budget.EditValue=null then
  begin
    ds_bglist.Close;
    Exit;
  end;
  TcxLookupComboBoxProperties(ed_budget.Properties).GridMode:=True;//!!
  with TcxLookupComboBoxProperties(ed_budget.Properties).Grid.DataController do
    loadBgShablon(Values[FocusedRecordIndex, 0]);
end;
{-------------------------------------------------------------------------------
 Выбираем статью
-------------------------------------------------------------------------------}
procedure TBgRepForm.ed_bgLinePropertiesChange(Sender: TObject);
begin
  with TcxLookupComboBoxProperties(ed_bgLine.Properties).Grid.DataController do
  begin
    TcxLookupComboBoxProperties(clvb1HOUSE.Properties).ListFieldIndex:=
                                                  Values[FocusedRecordIndex, 7];
  end;
end;

procedure TBgRepForm.ds_srvAfterOpen(DataSet: TDataSet);
begin
  if ds_srv.IsEmpty then Exit;
  if ed_budget.EditValue=null then
  begin
    loadBgShablon(ds_srv.FN('Code').AsInteger);
  end else
  with TcxLookupComboBoxProperties(ed_budget.Properties).Grid.DataController do
    loadBgShablon(Values[FocusedRecordIndex, 0]);
end;

procedure TBgRepForm.loadBgShablon (code :integer);
begin
  with ds_bglist do
  begin
    Close;
    MainWhereClause:='bl.budget=:bg';
    ParamByName('bg').AsInteger:=code;
    Open;
  end;
end;

procedure TBgRepForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TBgRepForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDs;
end;
{-------------------------------------------------------------------------------
  GetSrvBg|Получаем статьи по типу бюджета
-------------------------------------------------------------------------------}
function TBgRepForm.GetSrvBg :string;
var
 AValue :Variant;
 Aindex :Integer;
begin
  Result:='';
  AValue:=ed_bg.EditValue; if AValue=null then Exit;
  with TcxComboBoxProperties(ed_bg.Properties) do
  Aindex:=Items.IndexOf(AValue);

  {case Aindex of
   0: Result:='4000117'+','+'1089103430';  //вывоз тбо
   1: Result:='524715225'+','+'1089103439';  //вдго
   2: Result:='4000123'+','+'1089103435';  //содержание и ремонт мус.
   else Result:='';
  end;}
end;

function TBgRepForm.GetPeriod (start :Boolean=true) :TDateTime;
var
  M,Y :string;
  AValue :Variant;
  Aindex :Integer;
begin
  AValue:=ed_month.EditValue;
  if AValue=null then Exit;
  with TcxComboBoxProperties(ed_month.Properties) do
  Aindex:=Items.IndexOf(AValue);
  m:=IntToStr(Aindex+1);
  if Length(m)=1 then m:='0'+m;
  Y:=IntToStr(ed_year.EditValue);
  if start=true then
  Result:=StrToDate('01.'+M+'.'+Y) else
  begin
    if m='12' then
    begin
      m:='01';
      Y:=IntToStr(ed_year.EditValue+1);
      Result:=StrToDate('01.'+M+'.'+Y)-1;
    end else
    begin
      m:=IntToStr(StrToInt(m)+1);
      if Length(m)=1 then m:='0'+m;
      Y:=IntToStr(ed_year.EditValue);
      Result:=StrToDate('01.'+M+'.'+Y)-1;
    end;
  end;
end;

procedure TBgRepForm.OpenDs;
begin
  ds_house.CloseOpen(true);
  ds_srv.CloseOpen(true);
end;

procedure TBgRepForm.CreateMem;
begin
  CreateField(mt_bgRep,'CODE',ftInteger);
  CreateField(mt_bgRep,'REC_TYPE',ftInteger);
  CreateField(mt_bgRep,'ACCCODE',ftString,32);
  CreateField(mt_bgRep,'SRV',ftString,32);
  CreateField(mt_bgRep,'DATE_VAL',ftDate);
  CreateField(mt_bgRep,'Plan',ftCurrency);
  CreateField(mt_bgRep,'SRVSUM',ftCurrency);
  CreateField(mt_bgRep,'SumPsrv',ftCurrency);
  CreateField(mt_bgRep,'HOUSE',ftInteger);
  CreateField(mt_bgRep,'DOM',ftString,32);
  CreateField(mt_bgRep,'STREET',ftInteger);
  CreateField(mt_bgRep,'STREETNAME',ftString,128);
  CreateField(mt_bgRep,'DU',ftInteger);
  CreateField(mt_bgRep,'DUNAME',ftString,128);
  CreateField(mt_bgRep,'TARIF',ftFloat);
  CreateField(mt_bgRep,'total',ftFloat);
  CreateField(mt_bgRep,'total_sq',ftFloat);
  CreateField(mt_bgRep,'PSRV',ftString,32);
  CreateField(mt_bgRep,'bonus',ftFloat);            //вознаграждение
  CreateField(mt_bgRep,'commission',ftFloat);       //комиссионный сбор
  CreateField(mt_bgRep,'smeta',ftFloat);            //сметная стоимость
  mt_bgRep.Open;
end;

procedure TBgRepForm.AddMemData;
var
  HOUSE:string;
begin
  HOUSE:='';
  SetCapt('Формируем таблицу в памяти');
  while not ds_bgRep.Eof do
  begin
    with mt_bgRep do
    begin
      if HOUSE<>ds_bgRep.FN('HOUSE').AsString then
      begin
        Append;
         // FieldByName('CODE').AsInteger:=ds_bgRep.FN('CODE').AsInteger;
         // FieldByName('REC_TYPE').AsInteger:=ds_bgRep.FN('REC_TYPE').AsInteger;
        //  FieldByName('ACCCODE').AsString:=ds_bgRep.FN('ACCCODE').AsString;
        //  FieldByName('SRV').AsString:=ds_bgRep.FN('SRV').AsString;
        //  FieldByName('DATE_VAL').AsDateTime:=ds_bgRep.FN('DATE_VAL').AsDateTime;
          FieldByName('HOUSE').AsInteger:=ds_bgRep.FN('HOUSE').AsInteger;
          FieldByName('DOM').AsString:=ds_bgRep.FN('DOM').AsString;
          FieldByName('STREET').AsInteger:=ds_bgRep.FN('STREET').AsInteger;
          FieldByName('STREETNAME').AsString:=ds_bgRep.FN('STREETNAME').AsString;
          FieldByName('DU').AsInteger:=ds_bgRep.FN('DU').AsInteger;
          FieldByName('DUNAME').AsString:=ds_bgRep.FN('DUNAME').AsString;
          FieldByName('total').AsFloat:=ds_bgRep.FN('total').AsFloat;
          FieldByName('total_sq').AsFloat:=ds_bgRep.FN('total_sq').AsFloat;
        //  FieldByName('PSRV').AsString:=ds_bgRep.FN('PSRV').AsString;
          FieldByName('SRVSUM').AsCurrency:=ds_bgRep.FN('SRVSUM').AsCurrency;
          FieldByName('SumPsrv').AsCurrency:=ds_bgRep.FN('SumPsrv').AsCurrency;
          FieldByName('Plan').AsCurrency:=ds_bgRep.FN('total').AsCurrency*
          tarif;
        Post;
      end else
      begin
        Edit;
          FieldByName('SRVSUM').AsCurrency:=
            FieldByName('SRVSUM').AsCurrency+ds_bgRep.FN('SRVSUM').AsCurrency;
          FieldByName('SumPsrv').AsCurrency:=
            FieldByName('SumPsrv').AsCurrency + ds_bgRep.FN('SumPsrv').AsCurrency;
          //bonus
          FieldByName('bonus').AsCurrency:=FieldByName('SRVSUM').AsCurrency*
          ed_bonus.EditValue;
          //commission
          FieldByName('commission').AsCurrency:=
                      FieldByName('SRVSUM').AsCurrency *
                      ed_Commission.EditValue div 100;
          //smeta
          FieldByName('smeta').AsCurrency:=
                      FieldByName('SRVSUM').AsCurrency -
                      FieldByName('bonus').AsCurrency -
                      FieldByName('commission').AsCurrency;
        Post;
      end;
    end;
    HOUSE:=ds_bgRep.FN('HOUSE').AsString;
    Application.ProcessMessages;
    ds_bgRep.Next;
  end;
end;

initialization
 RegisterClass(TBgRepForm);
end.
