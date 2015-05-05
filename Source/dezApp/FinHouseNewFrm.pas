unit FinHouseNewFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, Menus,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  BaseForm,
  pFIBDataSet, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, dxLayoutControlAdapters, dxSkinDevExpressStyle;

type
  TFinHouseNewForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    btn_Ok: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    ds1: TpFIBDataSet;
    src_ds1: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1SUMY: TcxGridDBColumn;
    clv1SUMOST: TcxGridDBColumn;
    clv1SUM1: TcxGridDBColumn;
    clv1SUM2: TcxGridDBColumn;
    clv1SUM3: TcxGridDBColumn;
    clv1SUM4: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
    fY: Integer;
    fAType: Variant;
    fDS: TpFIBDataSet;
    bdr, sum, ost: Variant;
    SQL: string;
    procedure SetY(const Value: Integer);
    procedure SetAType(const Value: Variant);
    procedure GetBDRCode;
    procedure GetSum;
    procedure GetOst;
    procedure SetDS(const Value: TpFIBDataSet);
    //
    procedure MakeSQL;
    procedure AddHouse;
    procedure ReopenDs;
  public
    { Public declarations }
    property Y: Integer read fY write SetY;
    // 0-общестрой 1-лифт
    property AType: Variant read fAType write SetAType;
    //
    property DS: TpFIBDataSet read fDS write SetDS;
  end;

var
  FinHouseNewForm: TFinHouseNewForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}

{ TFinHouseNewForm }

procedure TFinHouseNewForm.AddHouse;
begin
  with DS do begin
    Append;
    FN('Y').AsVariant:=Y;
    FN('HOUSE').AsVariant:=gFN(v1,'CODE');
    FN('SUMY').AsVariant:=gFN(v1,'SUMY');
    FN('SUM1').AsVariant:=gFN(v1,'SUM1');
    FN('SUM2').AsVariant:=gFN(v1,'SUM2');
    FN('SUM3').AsVariant:=gFN(v1,'SUM3');
    FN('SUM4').AsVariant:=gFN(v1,'SUM4');
    FN('SUMOST').AsVariant:=gFN(v1,'SUMOST');
    Post;
  end;
  ReopenDs;
end;

procedure TFinHouseNewForm.btn_OkClick(Sender: TObject);
begin
  AddHouse;
end;

procedure TFinHouseNewForm.FormShow(Sender: TObject);
begin
  MakeSQL;
end;

procedure TFinHouseNewForm.GetBDRCode;
var
  Q: TFIBQuery;
  housesrv: Variant;
begin
  case Integer(AType) of
    0: housesrv:=6;
    1: housesrv:=8;
  end;
  Q:=GetQueryForUse(cmDB.RT,
    'select CODE from PBDR' + #13#10 +
    'where M=12 and Y=:Y and HOUSESRV=:housesrv');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('housesrv').AsVariant:=housesrv;
    Q.ExecQuery;
    bdr:=Q.FN('CODE').AsVariant;
    if bdr = null then
      raise EMyException.Create('Не найдена запись в списке планов БДР!');
    GetSum;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinHouseNewForm.GetOst;
begin

end;

procedure TFinHouseNewForm.GetSum;
var
  Q: TFIBQuery;
  fTable: String;
  fField: String;
begin
  case Integer(AType) of
    0: begin
         fTable:='PBDR2';
         fField:='F34';
       end;
    1: begin
         fTable:='PBDR3';
         fField:='F28';
       end;
  end;
  //
  Q:=GetQueryForUse(cmDB.RT,
    'select '+fField+' from '+fTable + #13#10 +
    'where HOUSE=:HOUSE and PBDR=:bdr');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('HOUSE').AsVariant:=gFN(v1,'CODE');
    Q.ParamByName('bdr').AsVariant:=bdr;
    Q.ExecQuery;
    if Q.FN(fField).AsVariant = null then
      raise EMyException.Create('Запись в плане БДР не найдена!');
    sum:=Q.FN(fField).AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinHouseNewForm.MakeSQL;
begin
  case Integer(AType) of
    0: SQL:=
      'select h.code, h.nomer, s.name SNAME, pbdr2.f34*12 SumY, fbdr2.f31 SumOst,' + #13#10 +
      '      (pbdr2.f34*12)/100*15 Sum1, (pbdr2.f34*12)/100*35 Sum2,' + #13#10 +
      '      (pbdr2.f34*12)/100*35 Sum3,(pbdr2.f34*12)/100*15 Sum4' + #13#10 +
      'from house h' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join pbdr on pbdr.y=:y and pbdr.m=12 and pbdr.housesrv=6' + #13#10 +
      'left outer join pbdr2 on pbdr2.house = h.code and pbdr2.pbdr = pbdr.code' + #13#10 +
      'left outer join fbdr on fbdr.y=:y and fbdr.m=12 and fbdr.housesrv=6' + #13#10 +
      'left outer join fbdr2 on fbdr2.house = h.code and fbdr2.fbdr = fbdr.code' + #13#10 +
      'where h.code not in (select house from trfinplan where Y=:Y1)' + #13#10 +
      '      and pbdr2.f34 is not null and pbdr2.f34<>0' + #13#10 +
      'order by s.name, h.nomer';
    1: SQL:=
      'select h.code, h.nomer, s.name SNAME, pbdr3.f28*12 SumY, fbdr3.f30 SumOst,' + #13#10 +
      '      (pbdr3.f28*12)/100*15 Sum1, (pbdr3.f28*12)/100*35 Sum2,' + #13#10 +
      '      (pbdr3.f28*12)/100*35 Sum3,(pbdr3.f28*12)/100*15 Sum4' + #13#10 +
      'from house h' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join pbdr on pbdr.y=:y and pbdr.m=12 and pbdr.housesrv=8' + #13#10 +
      'left outer join pbdr3 on pbdr3.house = h.code and pbdr3.pbdr = pbdr.code' + #13#10 +
      'left outer join fbdr on fbdr.y=:y and fbdr.m=12 and fbdr.housesrv=8' + #13#10 +
      'left outer join fbdr3 on fbdr3.house = h.code and fbdr3.fbdr = fbdr.code' + #13#10 +
      'where h.code not in (select house from trlfinplan where Y=:Y1)' + #13#10 +
      '      and pbdr3.f28 is not null and pbdr3.f28<>0' + #13#10 +
      'order by s.name, h.nomer';
  end;
  ReopenDs;
end;

procedure TFinHouseNewForm.ReopenDs;
begin
  with ds1 do begin
    Close;
    SelectSQL.Text:= SQL;
    ParamByName('y').AsVariant:=y-1;
    ParamByName('y1').AsVariant:=y;
    Open;
  end;
  btn_Ok.Enabled:=not ds1.Eof;
end;

procedure TFinHouseNewForm.SetAType(const Value: Variant);
begin
  fAType:= Value;
end;

procedure TFinHouseNewForm.SetDS(const Value: TpFIBDataSet);
begin
  fDS:= Value;
end;

procedure TFinHouseNewForm.SetY(const Value: Integer);
begin
  fY:= Value;
end;

end.





