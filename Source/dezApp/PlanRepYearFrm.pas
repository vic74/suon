unit PlanRepYearFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxPropertiesStore, dxmdaset, cxGridBandedTableView,
  cmMessageBoxFrm, cxGridDBBandedTableView,
  FIBQuery, pFIBCacheQueries, BaseForm, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TPlanRepYearForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    itm_year: TdxLayoutItem;
    edt_year: TcxMaskEdit;
    itm_street: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    cbb_House: TcxLookupComboBox;
    itm_exec: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_grd: TdxLayoutItem;
    grd1: TcxGrid;
    l1: TcxGridLevel;
    grp2: TdxLayoutGroup;
    ds_street: TpFIBDataSet;
    src_street: TDataSource;
    ds_House: TpFIBDataSet;
    src_House: TDataSource;
    prop1: TcxPropertiesStore;
    ds_trplan: TpFIBDataSet;
    src_trplan: TDataSource;
    vb1: TcxGridDBBandedTableView;
    mem1: TdxMemData;
    clvb1CODE: TcxGridDBBandedColumn;
    clvb1Y: TcxGridDBBandedColumn;
    clvb1HOUSE: TcxGridDBBandedColumn;
    clvb1NOMER: TcxGridDBBandedColumn;
    clvb1STREET: TcxGridDBBandedColumn;
    clvb1STREETNAME: TcxGridDBBandedColumn;
    clvb1MLIST: TcxGridDBBandedColumn;
    clvb1MLISTNAME: TcxGridDBBandedColumn;
    clvb1SUMY: TcxGridDBBandedColumn;
    clvb1VidWork: TcxGridDBBandedColumn;
    clvb1Jan: TcxGridDBBandedColumn;
    clvb1Feb: TcxGridDBBandedColumn;
    clvb1Mar: TcxGridDBBandedColumn;
    clvb1Apr: TcxGridDBBandedColumn;
    clvb1May: TcxGridDBBandedColumn;
    clvb1Jun: TcxGridDBBandedColumn;
    clvb1Jul: TcxGridDBBandedColumn;
    clvb1Aug: TcxGridDBBandedColumn;
    clvb1Sep: TcxGridDBBandedColumn;
    clvb1Oct: TcxGridDBBandedColumn;
    clvb1Nov: TcxGridDBBandedColumn;
    clvb1Dec: TcxGridDBBandedColumn;
    clvb1KONTRAGENT: TcxGridDBBandedColumn;
    clvb1KONTNAME: TcxGridDBBandedColumn;
    clvb1MANAGER: TcxGridDBBandedColumn;
    clvb1FIO: TcxGridDBBandedColumn;
    clvb1SHOWCODE: TcxGridDBBandedColumn;
    src_mem1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
    function GetFName(data :TDateTime) :string;
    function CheckParam :Boolean;
    procedure OpenHouse;
    procedure CreateMem;
    procedure OpenDs;
    procedure AddData;
  public
    { Public declarations }
  end;

var
  PlanRepYearForm: TPlanRepYearForm;

implementation

uses AppUtils, cmDBUnit,  LoadingSplash, cmUtils;

{$R *.dfm}

function TPlanRepYearForm.GetFName(data :TDateTime) :string;
var
  month :Integer;
begin
  month:=RetDate(data,2);
  case month of
   1 :Result:='Jan';
   2 :Result:='Feb';
   3 :Result:='Mar';
   4 :Result:='Apr';
   5 :Result:='May';
   6 :Result:='Jun';
   7 :Result:='Jul';
   8 :Result:='Aug';
   9 :Result:='Sep';
   10 :Result:='Oct';
   11 :Result:='Nov';
   12 :Result:='Dec';
   else Result:='Jan';
  end;
end;

procedure TPlanRepYearForm.btn_execClick(Sender: TObject);
begin
  OpenDs;
end;

procedure TPlanRepYearForm.cbb_streetPropertiesEditValueChanged(
  Sender: TObject);
begin
  OpenHouse;
end;

procedure TPlanRepYearForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ds_street.Open;
  CreateMem;
end;

procedure TPlanRepYearForm.OpenDs;
begin
  if CheckParam then
  with ds_trplan do
  begin
    Close;
    MainWhereClause:='TP.Y = :Y';
    ParamByName('Y').AsVariant:=edt_year.EditValue;
    if cbb_House.EditValue<>null then
    begin
      MainWhereClause:=MainWhereClause+' and TP.HOUSE = :HOUSE';
      ParamByName('HOUSE').AsVariant:=cbb_House.EditValue;
    end else
    if cbb_street.EditValue<>null then
    begin
      MainWhereClause:=MainWhereClause+' and h.street = :street';
      ParamByName('street').AsVariant:=cbb_street.EditValue;
    end;
    OrderClause:='h.street,h.nomer';
    Open;
  end;
  AddData;
end;

procedure TPlanRepYearForm.AddData;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'SELECT TF.CODE,TF.DATA,TF.NCALC,TF.NDOP,TF.SUMMA,TF.NOTE'+
    ' FROM TRFACT TF'+
    ' WHERE TF.plancode = :code');
  with ds_trplan do
  begin
    while not Eof do
    begin
      mem1.Append;
      mem1.FieldByName('CODE').AsVariant:=FN('CODE').AsVariant;
      mem1.FieldByName('Y').AsVariant:=FN('Y').AsVariant;
      mem1.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      mem1.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;
      mem1.FieldByName('STREET').AsVariant:=FN('STREET').AsVariant;
      mem1.FieldByName('STREETNAME').AsVariant:=FN('STREETNAME').AsVariant;
      mem1.FieldByName('MLIST').AsVariant:=FN('MLIST').AsVariant;
      mem1.FieldByName('MLISTNAME').AsVariant:=FN('MLISTNAME').AsVariant;
      mem1.FieldByName('SUMY').AsVariant:=FN('SUMY').AsVariant;
      mem1.FieldByName('KONTRAGENT').AsVariant:=FN('KONTRAGENT').AsVariant;
      mem1.FieldByName('KONTNAME').AsVariant:=FN('KONTNAME').AsVariant;
      mem1.FieldByName('MANAGER').AsVariant:=FN('MANAGER').AsVariant;
      mem1.FieldByName('FIO').AsVariant:=FN('FIO').AsVariant;
      mem1.FieldByName('SHOWCODE').AsVariant:=FN('SHOWCODE').AsVariant;

      Q.ParamByName('code').AsVariant:=FN('CODE').AsVariant;
      Q.ExecQuery;
      while not Q.Eof do
      begin
        mem1.Edit;
        mem1.FieldByName(GetFName(Q.FN('DATA').AsDateTime)).AsCurrency:=
        mem1.FieldByName(GetFName(Q.FN('DATA').AsDateTime)).AsCurrency+
                                              Q.FN('SUMMA').AsCurrency;
        if Q.FN('NDOP').AsString<>'' then
        mem1.FieldByName('VidWork').AsString:=   //доп соглашение
                  mem1.FieldByName('VidWork').AsString + Q.FN('NDOP').AsString;
        if Q.FN('NCALC').AsString<>'' then
        mem1.FieldByName('VidWork').AsString:=  //калькул€ци€
               mem1.FieldByName('VidWork').AsString+#32+Q.FN('NCALC').AsString;
        mem1.FieldByName('VidWork').AsString:=  //подр€дчик
             mem1.FieldByName('VidWork').AsString+#32+FN('KONTNAME').AsVariant;
        mem1.FieldByName('VidWork').AsString:=  //примечание
             mem1.FieldByName('VidWork').AsString+#32+Q.FN('NOTE').AsString+#13;
        Q.Next;
      end;
      mem1.Post;
      Next;
    end;
  end;
  //vb1.ApplyBestFit();
  FreeQueryForUse(Q);
end;

function TPlanRepYearForm.CheckParam :Boolean;
begin
  Result:=True;
  if edt_year.Text='' then
  begin
    cmShowMessage('”кажите год.',true);
    Result:=False;
    Exit;
  end;
  if cbb_street.EditValue=NULL then
  begin
    cmShowMessage('”кажите улицу.',true);
    Result:=False;
    Exit;
  end;
  {if cbb_House.EditValue=NULL then
  begin
    cmShowMessage('”кажите дом.',true);
    Result:=False;
    Exit;
  end;}
end;

procedure TPlanRepYearForm.OpenHouse;
begin
  if cbb_street.EditValue=null then Exit;
  SplashVisibility(True,'«агружаем дома...');
  try
    with ds_House do
    begin
      Close;
      MainWhereClause:='street=:Street';
      ParamByName('Street').AsVariant:=cbb_street.EditValue;
      OrderClause:='Nomer';
      Open;
    end;
  finally
    SplashVisibility(False);
  end;
end;

procedure TPlanRepYearForm.CreateMem;
begin
  CreateField(mem1,'CODE',ftInteger);
  CreateField(mem1,'Y',ftInteger);
  CreateField(mem1,'HOUSE',ftInteger);
  CreateField(mem1,'NOMER',ftString,32);
  CreateField(mem1,'STREET',ftInteger);
  CreateField(mem1,'STREETNAME',ftString,128);
  CreateField(mem1,'MLIST',ftInteger);
  CreateField(mem1,'MLISTNAME',ftString,256);
  CreateField(mem1,'SUMY',ftCurrency);
  CreateField(mem1,'VidWork',ftString,1256);
  {CreateField(mem1,'SUM1',ftCurrency);
  CreateField(mem1,'SUM2',ftCurrency);
  CreateField(mem1,'SUM3',ftCurrency);
  CreateField(mem1,'SUM4',ftCurrency);
  CreateField(mem1,'SUMALL',ftCurrency);
  CreateField(mem1,'SUMOST',ftCurrency);
  CreateField(mem1,'SUMFACT',ftCurrency);
  CreateField(mem1,'FSUM1',ftCurrency);
  CreateField(mem1,'FSUM2',ftCurrency);
  CreateField(mem1,'FSUM3',ftCurrency);
  CreateField(mem1,'FSUM4',ftCurrency);}
  //
  CreateField(mem1,'Jan',ftCurrency);
  CreateField(mem1,'Feb',ftCurrency);
  CreateField(mem1,'Mar',ftCurrency);
  CreateField(mem1,'Apr',ftCurrency);
  CreateField(mem1,'May',ftCurrency);
  CreateField(mem1,'Jun',ftCurrency);
  CreateField(mem1,'Jul',ftCurrency);
  CreateField(mem1,'Aug',ftCurrency);
  CreateField(mem1,'Sep',ftCurrency);
  CreateField(mem1,'Oct',ftCurrency);
  CreateField(mem1,'Nov',ftCurrency);
  CreateField(mem1,'Dec',ftCurrency);

  CreateField(mem1,'KONTRAGENT',ftInteger);
  CreateField(mem1,'KONTNAME',ftString,128);
  CreateField(mem1,'MANAGER',ftInteger);
  CreateField(mem1,'FIO',ftString,256);
  CreateField(mem1,'SHOWCODE',ftInteger);

  mem1.Open;
end;

 initialization
 RegisterClass(TPlanRepYearForm);
end.
