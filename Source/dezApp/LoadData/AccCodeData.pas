unit AccCodeData;

interface

uses
  SysUtils, Classes, DateUtils, cmTables;

type

  TcmSrvObj = class

  end;

  TcmAccCodeObj = class

  end;

  TcmHomeObj = class

  end;

  TcmDUObj = class
  private
    fDUCode: integer;
    fDUName: string;
    fHouseList: TStringList;
  public
    property DUCode: integer read fDUCode write fDUCode;
    property DUName: string read fDUName write fDUName;
    property HouseList: TStringList read fHouseList write fHouseList;
    constructor Create;
    destructor Destroy; override;
  end;


  TcmDEZData = class
  private
    D1, D2: TDateTime;
    Q1, Q2: TcmSQL;
    AccCodeQ: TcmSQL;
    fDUList: TStringList;
    procedure ClearData;
    procedure ScanData;
    procedure AddSaldo;
    procedure AddSaldoRec;
    procedure AddRec;
  public
    property DUList: TStringList read fDUList write fDUList;
    constructor Create;
    destructor Destroy; override;
    procedure MakeMonthData(ADate: TDateTime; SrvList: string);
  end;

implementation

{ TcmDUObj }

constructor TcmDUObj.Create;
begin
  inherited;
  fHouseList:=TStringList.Create;
end;

destructor TcmDUObj.Destroy;
begin
  fHouseList.Free;
  inherited;
end;

{ TcmDEZData }

procedure TcmDEZData.AddRec;
begin

end;

procedure TcmDEZData.AddSaldo;
var
  DUObj: TcmDUObj;
  DU: string;
begin
  if Q1.Eof then Exit;
  //ищем объект DU
  AccCodeQ.PN('AccCode').Str:=Q1.FN('AccCode').Str;
  AccCodeQ.ExecQuery;
  DUObj:=TcmDUObj.Create;
  DUObj.DUCode:=AccCodeQ.FN('DU').Int;
  DUObj.DUName:=AccCodeQ.FN('Name').Str;
  DU:=AccCodeQ.FN('DU').Str;
  if DUList.IndexOf(DU)<0 then
    DUList.AddObject(DU, DUObj);

end;

procedure TcmDEZData.AddSaldoRec;
begin

end;

procedure TcmDEZData.ClearData;
var
  i: integer;
begin
  //чистка списков
  for i:=0 to DUList.Count-1 do DUList.Objects[i].Free;
  DUList.Free;

end;

constructor TcmDEZData.Create;
begin
  DUList:=TStringList.Create;
end;

destructor TcmDEZData.Destroy;
begin
  Q1.Free;
  Q2.Free;
  AccCodeQ.Free;
  DUList.Free;
  inherited;
end;

procedure TcmDEZData.MakeMonthData(ADate: TDateTime; SrvList: string);
var
  S: string;
begin
  //чистка
  ClearData;

  //получаем период отчета
  D1:=StartOfTheMonth(ADate);
  D2:=EndOfTheMonth(ADate);

  //формируем запросы для выборки сальдо
  S:='select * from AccCodeSaldo where OP_Date = :D1';
  if SrvList<>'' then S:=S+' and Srv in ('+SrvList+')';
  S:=S+' ORDER BY AccCode, Srv';
  Q1:=TcmSQL.Create(S);
  Q1.PN('D1').Date:=D1;
  Q1.ExecQuery;

  //формируем выборку из таблицы проводок
  S:='select * from AccCodePrv where Date_Val BETWEEN :D1 and :D2';
  if SrvList<>'' then S:=S+' and Srv in ('+SrvList+')';
  S:=S+' ORDER BY AccCode, Srv';
  Q2:=TcmSQL.Create(S);
  Q2.PN('D1').Date:=D1;
  Q2.PN('D2').Date:=D2;
  Q2.ExecQuery;

  //запрос на поиск реквизитов лицевого счета
  AccCodeQ:=TcmSQL.Create('select a.DU, b.Name from AccCode a left join DU b on a.DU=b.Code '+
    'where AccCode=:AccCode');
  //сканируем данные
  ScanData;
end;

procedure TcmDEZData.ScanData;
var
  AccCode1, AccCode2: string;
begin
  //сальдо
  if not Q1.Eof then
    AccCode1:=Q1.FN('AccCode').Str
  else
    AccCode1:='';
  //проводки
  if not Q1.Eof then
    AccCode2:=Q2.FN('AccCode').Str
  else
    AccCode2:='';

  //определяем тип операции
  if AccCode1<AccCode2 then
    AddSaldo
  else if AccCode1=AccCode2 then
    AddSaldoRec
  else if AccCode1>AccCode2 then
    AddRec;

end;

end.
