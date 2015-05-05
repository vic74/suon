unit ScanBDR;

interface

uses
  SysUtils, Classes, Dialogs, cmUtils, cmDBUnit, cmLoadDataSet, FIBQuery,
  dezLoadData, dxmdaset, AppUtils, DB, DateUtils;

type

  TBaseScanClass = class
  private
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
  public
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
  end;

  //список улиц
  TStreetObject = class
  private
    fCode: integer;
    fName: string;
    function GetCode: integer;
    function GetName: string;
    procedure SetCode(const Value: integer);
    procedure SetName(const Value: string);
  public
    property Code: integer read GetCode write SetCode;
    property Name: string read GetName write SetName;
  end;

  TStreetList = class(TBaseScanClass)
  private
    fList: TStringList;
    function GetStreet(Code: integer): TStreetObject;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CreateStreetList;
    function AddStreet(Code: integer; Name: string): TStreetObject;
    property Street[Code: integer]: TStreetObject read GetStreet; default;
  end;

  //список домов
  THouseObject = class
  private
    fCode: integer;
    fNomer: string;
    fStreet: TStreetObject;
    function GetNomer: string;
    function GetStreet: TStreetObject;
    procedure SetNomer(const Value: string);
    procedure SetStreet(const Value: TStreetObject);
    function GetCode: integer;
    procedure SetCode(const Value: integer);
  public
    property Code: integer read GetCode write SetCode;
    property Nomer: string read GetNomer write SetNomer;
    property Street: TStreetObject read GetStreet write SetStreet;
    constructor Create(ACode: integer; ANomer: string; AStreet: TStreetObject);
  end;

  THouseList = class(TBaseScanClass)
  private
    fList: TStringList;
    fStreetList: TStreetList;
    function GetHouse(Code: integer): THouseObject;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CreateHouseList;
    function AddHouse(Code: integer; Nomer: string; Street: TStreetObject): THouseObject;
    property House[Code: integer]: THouseObject read GetHouse; default;
  end;

  //контроль площадей план-факт
  TBDRCompare = class
  private
    fHouse: THouseObject;
    fPlanSQ: double;
    fFactSQ: double;
    function GetFactSQ: double;
    function GetHouse: THouseObject;
    function GetPlanSQ: double;
    procedure SetFactSQ(const Value: double);
    procedure SetHouse(const Value: THouseObject);
    procedure SetPlanSQ(const Value: double);
  public
    property House: THouseObject read GetHouse write SetHouse;
    property PlanSQ: double read GetPlanSQ write SetPlanSQ;
    property FactSQ: double read GetFactSQ write SetFactSQ;
    procedure AddRecord(Mem: TdxMemData);
  end;

  TBDRCompareList = class(TBaseScanClass)
  private
    fMonth: integer;
    fYear: integer;
    fList: TStringList;
    fHouseList: THouseList;
    function GetMonth: integer;
    function GetYear: integer;
    procedure SetMonth(const Value: integer);
    procedure SetYear(const Value: integer);
    function GetBDR(i: integer): TBDRCompare;
    function GetBDRCode(IsPlan: boolean): integer;
    function ScanBDR(IsPlan: boolean): boolean;
  public
    constructor Create(Month,Year: integer; AHouseList: THouseList);
    destructor Destroy; override;
    property Month: integer read GetMonth write SetMonth;
    property Year: integer read GetYear write SetYear;
    function Count: integer;
    property BDR[i: integer]: TBDRCompare read GetBDR; default;
    function GetByHouse(AHouse: THouseObject): TBDRCompare;
    procedure Execute(Mem: TdxMemData);
  end;

  //договор с подрядчиком
  DogObject = class
  private
    fCode: integer;
    fDogType: integer;
    fHouseList: TStringList;
    function GetCode: integer;
    function GetDogType: integer;
    procedure SetCode(const Value: integer);
    procedure SetDogType(const Value: integer);
  public
    property Code: integer read GetCode write SetCode;
    property DogType: integer read GetDogType write SetDogType;
  end;

implementation

{ TBaseScanClass }

procedure TBaseScanClass.Msg(S: string);
begin
  if Assigned(fOnMessage) then
    OnMessage(S);
end;

procedure TBaseScanClass.Progress(Count, Poz: integer);
begin
  if Assigned(fOnProgress) then
    OnProgress(Count, Poz);
end;

{ TStreetObject }

function TStreetObject.GetCode: integer;
begin
  Result:=fCode;
end;

function TStreetObject.GetName: string;
begin
  Result:=fName;
end;

procedure TStreetObject.SetCode(const Value: integer);
begin
  fCode:=Value;
end;

procedure TStreetObject.SetName(const Value: string);
begin
  fName:=Value;
end;

{ TStreetList }

function TStreetList.AddStreet(Code: integer; Name: string): TStreetObject;
var
  i: integer;
begin
  if (fList.Find(IntToStr(Code), i)) then
    Result:=fList.Objects[i] as TStreetObject
  else
  begin
    Result:=TStreetObject.Create;
    Result.Code:=Code;
    Result.Name:=Name;
    fList.AddObject(IntToStr(Code), Result);
    fList.Sort;
  end;
end;

constructor TStreetList.Create;
begin
  fList:=TStringList.Create;
  fList.OwnsObjects:=true;
end;

procedure TStreetList.CreateStreetList;
var
  Q: TfibQuery;
begin
  Msg('Формируем список улиц... ');
  Q:=cmDB.GetQuery('select * from Street', cmDB.RT);
  Q.ExecQuery;
  try
    while not Q.Eof do
    begin
      AddStreet(Q.FN('Code').AsInteger, Q.FN('Name').AsString);
      Q.Next;
    end;
  finally
    cmDb.FreeQuery(Q);
  end;
end;

destructor TStreetList.Destroy;
begin
  fList.Free;
  inherited;
end;

function TStreetList.GetStreet(Code: integer): TStreetObject;
var
  i: integer;
begin
  if (fList.Find(IntToStr(Code), i)) then
    Result:=fList.Objects[i] as TStreetObject
  else
    Result:=nil;
end;

{ THouseObject }

constructor THouseObject.Create(ACode: integer; ANomer: string; AStreet: TStreetObject);
begin
  fCode:=ACode;
  fNomer:=ANomer;
  fStreet:=AStreet;
end;

function THouseObject.GetCode: integer;
begin
  Result:=fCode;
end;

function THouseObject.GetNomer: string;
begin
  Result:=fNomer;
end;

function THouseObject.GetStreet: TStreetObject;
begin
  Result:=fStreet;
end;

procedure THouseObject.SetCode(const Value: integer);
begin
  fCode:=Value;
end;

procedure THouseObject.SetNomer(const Value: string);
begin
  fNomer:=Value;
end;

procedure THouseObject.SetStreet(const Value: TStreetObject);
begin
  fStreet:=Value;
end;

{ THouseList }

function THouseList.AddHouse(Code: integer; Nomer: string;
  Street: TStreetObject): THouseObject;
var
  i: integer;
begin
  if fList.Find(IntToStr(Code), i) then
    Result:=fList.Objects[i] as THouseObject
  else
  begin
    Result:=THouseObject.Create(Code, Nomer, Street);
    fList.AddObject(IntToStr(Code), Result);
    fList.Sort;
  end;
end;

constructor THouseList.Create;
begin
  //список домов
  fList:=TStringList.Create;
  fList.OwnsObjects:=true;
  //список улиц
  fStreetList:=TStreetList.Create;
end;

procedure THouseList.CreateHouseList;
var
  Q: TFibQuery;
begin
  //формируем список улиц
  fStreetList.OnMessage:=Msg;
  fStreetList.CreateStreetList;
  //формируем список домов
  Msg('Формируем список домов...');
  Q:=cmDB.GetQuery('select * from House', cmDB.RT);
  Q.ExecQuery;
  try
    while not Q.Eof do
    begin
      AddHouse(Q.FN('Code').AsInteger, Q.FN('Nomer').AsString,
        fStreetList[Q.FN('Street').AsInteger]);
      Q.Next;
    end;
  finally
    cmDB.FreeQuery(Q);
  end;
end;

destructor THouseList.Destroy;
begin
  fList.Free;
  fStreetList.Free;
  inherited;
end;

function THouseList.GetHouse(Code: integer): THouseObject;
var
  i: integer;
begin
  if fList.Find(IntToStr(Code), i) then
    Result:=fList.Objects[i] as THouseObject
  else
    Result:=nil;
end;

{ TBDRCompare }

procedure TBDRCompare.AddRecord(Mem: TdxMemData);
begin
  Mem.Append;
  Mem.FieldByName('House').AsInteger:=House.Code;
  Mem.FieldByName('Nomer').AsString:=House.Nomer;
  Mem.FieldByName('Street').AsInteger:=House.Street.Code;
  Mem.FieldByName('StreetName').AsString:=House.Street.Name;
  Mem.FieldByName('PlanSQ').AsFloat:=PlanSQ;
  Mem.FieldByName('FactSQ').AsFloat:=FactSQ;
  Mem.FieldByName('Razn').AsFloat:=StrToFloat(FormatFloat('0.00', PlanSQ-FactSQ));
  Mem.Post;
end;

function TBDRCompare.GetFactSQ: double;
begin
  Result:=fFactSQ;
end;

function TBDRCompare.GetHouse: THouseObject;
begin
  Result:=fHouse;
end;

function TBDRCompare.GetPlanSQ: double;
begin
  Result:=fPlanSQ;
end;

procedure TBDRCompare.SetFactSQ(const Value: double);
begin
  fFactSQ:=Value;
end;

procedure TBDRCompare.SetHouse(const Value: THouseObject);
begin
  fHouse:=Value;
end;

procedure TBDRCompare.SetPlanSQ(const Value: double);
begin
  fPlanSQ:=Value;
end;

{ TBDRCompareList }

function TBDRCompareList.Count: integer;
begin
  Result:=fList.Count;
end;

constructor TBDRCompareList.Create(Month,Year: integer; AHouseList: THouseList);
begin
  fMonth:=Month;
  fYear:=Year;
  fList:=TStringList.Create;
  fList.OwnsObjects:=true;
  fHouseList:=AHouseList;
end;

destructor TBDRCompareList.Destroy;
begin
  fList.Free;
  inherited;
end;

procedure TBDRCompareList.Execute(Mem: TdxMemData);
var
  i: integer;
begin
  //подготавливаем таблицу
  if Mem.FieldCount=1 then
  begin
    CreateField(Mem,'House',ftInteger);
    CreateField(Mem, 'Nomer', ftString, 32);
    CreateField(Mem, 'Street', ftInteger);
    CreateField(Mem, 'StreetName', ftString, 64);
    CreateField(Mem, 'PlanSQ', ftFloat);
    CreateField(Mem, 'FactSQ', ftFloat);
    CreateField(Mem, 'Razn', ftFloat);
  end;

  Mem.ClearData;
  //формируем данные
  if not ScanBDR(true) then Exit;
  if not ScanBDR(false) then Exit;
  //заполняем таблицу
  for i:=0 to Count-1 do
  begin
    BDR[i].AddRecord(Mem);
  end;
end;

function TBDRCompareList.GetBDR(i: integer): TBDRCompare;
begin
  Result:=fList.Objects[i] as TBDRCompare;
end;

function TBDRCompareList.GetBDRCode(IsPlan: boolean): integer;
var
  SQL: string;
  Q: TFIBQuery;
begin
  SQL:='select * from ';
  if IsPlan then
    SQL:=SQL+'PBDR'
  else
    SQL:=SQL+'FBDR';
  SQL:=SQL+' where HouseSrv=6 and M='+IntToStr(Month)+' and Y='+IntToStr(Year);
  Q:=cmDB.GetQuery(SQL, cmDB.RT);
  Q.ExecQuery;
  if not Q.Eof then
     Result:=Q.FN('Code').AsInteger
  else
  begin
     Result:=-1;
     if IsPlan then
       Msg('Не найден БДР план.')
     else
       Msg('Не найден БДР факт.');
  end;
  cmDB.FreeQuery(Q);
end;

function TBDRCompareList.GetByHouse(AHouse: THouseObject): TBDRCompare;
var
  i: integer;
begin
  if fList.Find(IntToStr(AHouse.Code), i) then
    Result:=BDR[i]
  else
  begin
    Result:=TBDRCompare.Create;
    Result.House:=AHouse;
    fList.AddObject(IntToStr(AHouse.Code), Result);
    fList.Sort;
  end;
end;

function TBDRCompareList.GetMonth: integer;
begin
  Result:=fMonth;
end;

function TBDRCompareList.GetYear: integer;
begin
  Result:=fYear;
end;

function TBDRCompareList.ScanBDR(IsPlan: boolean): boolean;
var
  SQL: string;
  Code: integer;
  Q: TFIBQuery;
  AHouse: THouseObject;
  ARec: TBDRCompare;
begin
  Result:=true;
  Code:=GetBDRCode(IsPlan);
  if Code<0 then
  begin
    Result:=false;
    Exit;
  end;
  //сообщение
  if IsPlan then
     Msg('Получаем данные БДР план.')
  else
     Msg('Получаем данные БДР факт.');
  //сканируем БДР
  if IsPlan then
     SQL:='select * from PBDR2 where PBDR='+IntToStr(Code)
  else
     SQL:='select * from FBDR2 where FBDR='+IntToStr(Code)+' and F3<>0';
  Q:=cmDB.GetQuery(SQL, cmDB.RT);
  Q.ExecQuery;
  try
    while not Q.Eof do
    begin
      AHouse:=fHouseList[Q.FN('House').AsInteger];
      if AHouse=nil then
      begin
        Result:=false;
        Msg('Не найден дом с кодом - '+IntToStr(AHouse.Code));
        Break;
      end;
      ARec:=GetByHouse(AHouse);
      if IsPlan then
        ARec.PlanSQ:=Q.FN('F4').AsDouble
      else
        ARec.FactSQ:=Q.FN('F3').AsDouble;
      Q.Next;
    end;
  finally
    cmDB.FreeQuery(Q);
  end;
end;

procedure TBDRCompareList.SetMonth(const Value: integer);
begin
  fMonth:=Value;
end;

procedure TBDRCompareList.SetYear(const Value: integer);
begin
  fYear:=Value;
end;

{ DogObject }

function DogObject.GetCode: integer;
begin
  Result:=fCode;
end;

function DogObject.GetDogType: integer;
begin
  Result:=fDogType;
end;

procedure DogObject.SetCode(const Value: integer);
begin
  fCode:=Value;
end;

procedure DogObject.SetDogType(const Value: integer);
begin
  fDogType:=Value;
end;

end.
