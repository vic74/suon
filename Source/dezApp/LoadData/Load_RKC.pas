unit Load_RKC;

interface

uses
  SysUtils, Classes, cmDBUnit, FIBQuery, jbDBF, jclFileUtils, cmLoadDataSet,
  cmUtils;

type

  TdzLoadBlock = class
  private
    tblDoc: TcmDBFDataSet;
    tblLs: TcmDBFDataSet;
    tblSaldo: TcmDBFDataSet;
    fDir: string;
    fD1: TDateTime;
    fD2: TDateTime;
    fLoadType: byte;
  public
    property Dir: string read fDir write fDir;
    property D1: TDateTime read fD1 write fD1;
    property D2: TDateTime read fD2 write fD2;
    property LoadType: byte read fLoadType write fLoadType;
    constructor Create(ADir: string);
    destructor Destroy; override;
    procedure Prepare;
  end;

  TdzRKC = class
  private
    LoadBlock: TdzLoadBlock;
    StreetLook: TFIBQuery;
    StreetAdd: TFIBQuery;
    HouseLook: TFIBQuery;
    HouseAdd: TFIBQuery;
    HouseUpdate: TFIBQuery;
    DULook: TFIBQuery;
    DUAdd: TFIBQuery;
    AddrLook: TFIBQuery;
    AddrAdd: TFIBQuery;
    AddrUpdate: TFIBQuery;
    SrvLook: TFIBQuery;
    SrvAdd: TFIBQuery;
    AccCodeLook: TFIBQuery;
    AccCodeAdd: TFIBQuery;
    AccCodeUpdate: TFIBQuery;
    AddSaldo: TFIBQuery;
    AddPrv: TFIBQuery;
    fPosition, fIncRec, fUpdateRec: integer;
    fMin, fMax: integer;
    fMsg: string;
    fOnMessage: TNotifyEvent;
    fOnAccCodeNext: TNotifyEvent;
    procedure Prepare;
    function GetStreetByName(AName,AStr_Type: string): integer;
    function GetDUByName(ADU: string): integer;
    function GetHouseByNomer(ANomer: string; AStreet, ADU: integer): integer;
    function GetAddr(AFlat, AOwnerShip, AHabit_Type: string;
      AStreet, AHouse, ADU, ALodger_CNT: integer; ATotal_SQ, ALiving_SQ: double): integer;
    function GetSrv(ACode,AName: string): string;
    function AddAccCode(AccCode, Master, Phone: string; Addr, House, Street, DU: integer;
      Date_Open, Date_Close: TDateTime): integer;
    procedure LoadAccCode;
    procedure ScanAccCodeList;
    procedure SetMsg(Value: string);
    function GetRecType(S: string): integer;
    procedure LoadPrv;
    procedure AddPrvRecord;
    procedure AddSaldoRecord;
  public
    property Position: integer read fPosition write fPosition;
    property IncRec: integer read fIncRec write fIncRec;
    property UpdateRec: integer read fUpdateRec write fUpdateRec;
    property Min: integer read fMin write fMin;
    property Max: integer read fMax write fMax;
    property Msg: string read fMsg write SetMsg;
    constructor Create(ALoadBlock: TdzLoadBlock);
    destructor Destroy; override;
    procedure LoadData;
    property OnMessage: TNotifyEvent read fOnMessage write fOnMessage;
    property OnAccCodeNext: TNotifyEvent read fOnAccCodeNext write fOnAccCodeNext;
  end;


implementation

{ TdzLoadBlock }

constructor TdzLoadBlock.Create(ADir: string);
begin
  inherited Create;
  fDir:=ADir;
end;

destructor TdzLoadBlock.Destroy;
begin
  tblDoc.Free;
  tblLs.Free;
  if Assigned(tblSaldo) then
    tblSaldo.Free;
  inherited;
end;

procedure TdzLoadBlock.Prepare;
var
  DS: TcmDBFDataSet;
begin
  if not DirectoryExists(Dir) then
    raise Exception.Create('Каталог не найден - '+Dir);

  DS:=TcmDBFDataSet.Create;
  DS.Open(Dir+'recv.dbf');
  LoadType:=StrToInt(DS.Load('AType'));
  D1:=DS.StrDate('D1');
  if LoadType=0 then
    D2:=DS.StrDate('D2')-1;
  DS.Free;

  tblDoc:=TcmDBFDataSet.Create;
  tblDoc.Open(Dir+'doc.dbf');

  tblLs:=TcmDBFDataSet.Create;
  tblLs.Open(Dir+'ls.dbf');

  if FileExists(Dir+'saldo.dbf') then
  begin
    tblSaldo:=TcmDBFDataSet.Create;
    tblSaldo.Open(Dir+'saldo.dbf');
  end;

end;

{ TdzRKC }

function TdzRKC.AddAccCode(AccCode, Master, Phone: string; Addr, House, Street,
  DU: integer; Date_Open, Date_Close: TDateTime): integer;
begin
  Result:=0;
  AccCodeLook.ParamByName('AccCode').AsString:=AccCode;
  AccCodeLook.ExecQuery;
  if AccCodeLook.Eof then
  begin
    Result:=1;
    AccCodeAdd.ParamByName('AccCode').AsString:=AccCode;
    AccCodeAdd.ParamByName('Master').AsString:=Master;
    AccCodeAdd.ParamByName('Phone').AsString:=Phone;
    AccCodeAdd.ParamByName('Addr').AsInteger:=Addr;
    AccCodeAdd.ParamByName('House').AsInteger:=House;
    AccCodeAdd.ParamByName('Street').AsInteger:=Street;
    AccCodeAdd.ParamByName('DU').AsInteger:=DU;
    AccCodeAdd.ParamByName('Date_Open').AsDate:=Date_Open;
    AccCodeAdd.ParamByName('Date_Close').AsDate:=Date_Close;
    AccCodeAdd.ExecQuery;
    AccCodeLook.ExecQuery;
  end;
  if (AccCodeLook.FN('Master').AsString<>Master) or
    (AccCodeLook.FN('Phone').AsString<>Phone) or
    (AccCodeLook.FN('Addr').AsInteger<>Addr) or
    (AccCodeLook.FN('House').AsInteger<>House) or
    (AccCodeLook.FN('Street').AsInteger<>Street) or
    (AccCodeLook.FN('DU').AsInteger<>DU) or
    (AccCodeLook.FN('Date_Open').AsDate<>Date_Open) or
    (AccCodeLook.FN('Date_Close').AsDate<>Date_Close) then
  begin
    Result:=2;
    AccCodeUpdate.ParamByName('AccCode').AsString:=AccCode;
    AccCodeUpdate.ParamByName('Master').AsString:=Master;
    AccCodeUpdate.ParamByName('Phone').AsString:=Phone;
    AccCodeUpdate.ParamByName('Addr').AsInteger:=Addr;
    AccCodeUpdate.ParamByName('House').AsInteger:=House;
    AccCodeUpdate.ParamByName('Street').AsInteger:=Street;
    AccCodeUpdate.ParamByName('DU').AsInteger:=DU;
    AccCodeUpdate.ParamByName('Date_Open').AsDate:=Date_Open;
    AccCodeUpdate.ParamByName('Date_Close').AsDate:=Date_Close;
    AccCodeUpdate.ExecQuery;
  end;
end;

procedure TdzRKC.AddPrvRecord;
var
  DS: TcmDBFDataSet;
  AccCode, Srv: string;
  RecType: integer;
begin
  DS:=LoadBlock.tblDoc;
  AccCode:=DS.Load('Acc_Code');
  RecType:=GetRecType(DS.Load('Rec_Type'));
  Srv:=DS.Load('SRV_ID');
  GetSrv(Srv, DS.Load('SRV_NAME'));

  AccCodeLook.ParamByName('AccCode').AsString:=AccCode;
  AccCodeLook.ExecQuery;
  if AccCodeLook.Eof then Exit;

  //добавляем запись
  AddPrv.ParamByName('Rec_Type').AsInteger:=RecType;
  AddPrv.ParamByName('AccCode').AsString:=AccCode;
  AddPrv.ParamByName('Srv').AsString:=Srv;
  AddPrv.ParamByName('Date_Val').AsDate:=DS.StrDate('Date_Val');
  AddPrv.ParamByName('Pay_Date').AsDate:=DS.StrDate('Pay_Date');
  AddPrv.ParamByName('Acc_Date').AsDate:=DS.StrDate('Acc_Date');
  AddPrv.ParamByName('Summa').AsCurrency:=DS.Numeric('Summa');
  AddPrv.ParamByName('DU').AsInteger:=AccCodeLook.FN('DU').AsInteger;
  AddPrv.ParamByName('House').AsInteger:=AccCodeLook.FN('House').AsInteger;
  AddPrv.ExecQuery;
end;

procedure TdzRKC.AddSaldoRecord;
var
  DS: TcmDBFDataSet;
  AccCode, Srv: string;
begin
  DS:=LoadBlock.tblSaldo;
  AccCode:=DS.Load('Acc_Code');
  Srv:=DS.Load('Srv_ID');
  GetSrv(Srv, DS.Load('SRV_NAME'));

  //добавляем запись
  AddSaldo.ParamByName('AccCode').AsString:=AccCode;
  AddSaldo.ParamByName('Srv').AsString:=Srv;
  AddSaldo.ParamByName('Saldo').AsCurrency:=DS.Numeric('Saldo');
  AddSaldo.ParamByName('OP_Date').AsDate:=LoadBlock.D1;
  AddSaldo.ExecQuery;
end;

constructor TdzRKC.Create(ALoadBlock: TdzLoadBlock);
begin
  inherited Create;
  LoadBlock:=ALoadBlock;
  Prepare;
end;

destructor TdzRKC.Destroy;
begin
  cmDB.FreeQuery(StreetLook);
  cmDB.FreeQuery(StreetAdd);
  cmDB.FreeQuery(DULook);
  cmDB.FreeQuery(DUAdd);
  cmDB.FreeQuery(HouseLook);
  cmDB.FreeQuery(HouseAdd);
  cmDB.FreeQuery(HouseUpdate);
  cmDB.FreeQuery(AddrLook);
  cmDB.FreeQuery(AddrAdd);
  cmDB.FreeQuery(AddrUpdate);
  cmDB.FreeQuery(SrvLook);
  cmDB.FreeQuery(SrvAdd);
  cmDB.FreeQuery(AccCodeLook);
  cmDB.FreeQuery(AccCodeAdd);
  cmDB.FreeQuery(AccCodeUpdate);
  cmDB.FreeQuery(AddSaldo);
  cmDB.FreeQuery(AddPrv);
  inherited;
end;

function TdzRKC.GetAddr(AFlat, AOwnerShip, AHabit_Type: string; AStreet, AHouse,
  ADU, ALodger_CNT: integer; ATotal_SQ, ALiving_SQ: double): integer;
begin
  AddrLook.ParamByName('Flat').AsString:=AFlat;
  AddrLook.ParamByName('Street').AsInteger:=AStreet;
  AddrLook.ParamByName('House').AsInteger:=AHouse;
  AddrLook.ExecQuery;
  if AddrLook.Eof then
  begin
    AddrAdd.ParamByName('Flat').AsString:=AFlat;
    AddrAdd.ParamByName('OwnerShip').AsString:=AOwnerShip;
    AddrAdd.ParamByName('Habit_Type').AsString:=AHabit_Type;
    AddrAdd.ParamByName('Street').AsInteger:=AStreet;
    AddrAdd.ParamByName('House').AsInteger:=AHouse;
    AddrAdd.ParamByName('DU').AsInteger:=ADU;
    AddrAdd.ParamByName('Lodger_CNT').AsInteger:=ALodger_CNT;
    AddrAdd.ParamByName('Total_SQ').AsDouble:=ATotal_SQ;
    AddrAdd.ParamByName('Living_SQ').AsDouble:=ALiving_SQ;
    AddrAdd.ExecQuery;
    AddrLook.ExecQuery;
  end;
  Result:=AddrLook.FN('Code').AsInteger;
  if (AddrLook.FN('OwnerShip').AsString<>AOwnerShip) or
    (AddrLook.FN('Habit_Type').AsString<>AHabit_Type) or
    (AddrLook.FN('DU').AsInteger<>ADU) or
    (AddrLook.FN('Lodger_CNT').AsInteger<>ALodger_CNT) or
    (AddrLook.FN('Total_SQ').AsDouble<>ATotal_SQ) or
    (AddrLook.FN('Living_SQ').AsDouble<>ALiving_SQ) then
    begin
      AddrUpdate.ParamByName('OwnerShip').AsString:=AOwnerShip;
      AddrUpdate.ParamByName('Habit_Type').AsString:=AHabit_Type;
      AddrUpdate.ParamByName('DU').AsInteger:=ADU;
      AddrUpdate.ParamByName('Lodger_CNT').AsInteger:=ALodger_CNT;
      AddrUpdate.ParamByName('Total_SQ').AsDouble:=ATotal_SQ;
      AddrUpdate.ParamByName('Living_SQ').AsDouble:=ALiving_SQ;
      AddrUpdate.ParamByName('Addr').AsInteger:=Result;
      AddrUpdate.ExecQuery;
    end;

end;

function TdzRKC.GetDUByName(ADU: string): integer;
begin
  DULook.ParamByName('Name').AsString:=ADU;
  DULook.ExecQuery;
  if DULook.Eof then
  begin
    DUAdd.ParamByName('Name').AsString:=ADU;
    DUAdd.ExecQuery;
    DULook.ExecQuery;
  end;
  Result:=DULook.FN('Code').AsInteger;
end;

function TdzRKC.GetHouseByNomer(ANomer: string; AStreet, ADU: integer): integer;
begin
  HouseLook.ParamByName('Street').AsInteger:=AStreet;
  HouseLook.ParamByName('Nomer').AsString:=ANomer;
  HouseLook.ExecQuery;
  if HouseLook.Eof then
  begin
    HouseAdd.ParamByName('Nomer').AsString:=ANomer;
    HouseAdd.ParamByName('Street').AsInteger:=AStreet;
    HouseAdd.ParamByName('DU').AsInteger:=ADU;
    HouseAdd.ExecQuery;
    HouseLook.ExecQuery;
  end;
  Result:=HouseLook.FN('Code').AsInteger;
  if HouseLook.FN('DU').AsInteger<>ADU then
  begin
    HouseUpdate.ParamByName('DU').AsInteger:=ADU;
    HouseUpdate.ParamByName('House').AsInteger:=Result;
    HouseUpdate.ExecQuery;
  end;
end;

function TdzRKC.GetRecType(S: string): integer;
begin
  if S='CHARGE' then Result:=0
  else
    if S='INCOMING' then Result:=1
  else
    if S='MAKET' then Result:=2
  else
    if S='REPAYMENT' then Result:=3
  else
    if S='SUBSIDY' then Result:=4
  else
    raise Exception.Create('Неизвестный код услуги - '+S);
end;

function TdzRKC.GetSrv(ACode,AName: string): string;
begin
  SrvLook.ParamByName('Srv').AsString:=ACode;
  SrvLook.ExecQuery;
  if SrvLook.Eof then
  begin
    SrvAdd.ParamByName('Srv').AsString:=ACode;
    SrvAdd.ParamByName('Name').AsString:=AName;
    SrvAdd.ExecQuery;
    SrvLook.ExecQuery;
  end;
  Result:=SrvLook.FN('Srv').AsString;
end;

function TdzRKC.GetStreetByName(AName, AStr_Type: string): integer;
begin
  StreetLook.ParamByName('Name').AsString:=AName;
  StreetLook.ParamByName('Str_Type').AsString:=AStr_Type;
  StreetLook.ExecQuery;
  if StreetLook.Eof then
  begin
    StreetAdd.ParamByName('Name').AsString:=AName;
    StreetAdd.ParamByName('Str_Type').AsString:=AStr_Type;
    StreetAdd.ExecQuery;
    StreetLook.ExecQuery;
  end;
  Result:=StreetLook.FN('Code').AsInteger;
end;

procedure TdzRKC.LoadAccCode;
var
  DS: TcmDBFDataSet;
  AccCode, Phone: string;
  Street, DU, House, Addr: integer;
  Num: smallint;
begin
  DS:=LoadBlock.tblLs;
  AccCode:=DS.Load('Acc_Code');
  DU:=GetDUByName(DS.Load('Filial'));
  Street:=GetStreetByName(DS.Load('Street'), DS.Load('Str_Type'));
  House:=GetHouseByNomer(DS.Load('House'), Street, DU);
  Addr:=GetAddr(DS.Load('Flat_Num'), DS.Load('OwnerShip'), DS.Load('Habit_Type'),
    Street, House, DU, StrToInt(DS.Load('Lodger_CNT')), DS.Numeric('Total_SQ'),
    DS.Numeric('Living_SQ'));
  Phone:=cmReplaceWord(DS.Load('Phone'),'(ТЕЛЕФОН)','');
  Num:=AddAccCode(AccCode, DS.Load('Master'), Phone, Addr, House, Street, DU,
    DS.StrDate('Date_Open'), DS.StrDate('Date_Close'));

  if Num=1 then
    IncRec:=IncRec+1
  else
    if Num=2 then
      UpdateRec:=UpdateRec+1;
  Position:=Position+1;
  if Assigned(OnAccCodeNext) then
    OnAccCodeNext(Self);

end;

procedure TdzRKC.LoadData;
begin
  //загрузка списка счетов
  ScanAccCodeList;
  //загрузка проводок по счетам
  LoadPrv;

  Msg:='Загрузка данных завершена.';
end;

procedure TdzRKC.LoadPrv;
var
  S: string;
  Q: TFIBQuery;
  DS: TcmDBFDataSet;
begin
  //чистим таблицы данных
  Msg:='Чистим таблицу проводок...';
  if LoadBlock.LoadType=0 then
    S:='delete from AccCodePrv where Date_Val between :D1 and :D2'
  else
    S:='delete from AccCodePrv where Acc_Date between :D1 and :D2';
  Q:=cmDB.GetQuery(S, cmDB.WT);
  Q.ParamByName('D1').AsDate:=LoadBlock.D1;
  Q.ParamByName('D2').AsDate:=LoadBlock.D2;
  Q.ExecQuery;
  Q.Free;

  if LoadBlock.LoadType=0 then
  begin
    Msg:='Чистим таблицу сальдо...';
    Q:=cmDB.GetQuery('delete from AccCodeSaldo where OP_Date=:D1', cmDB.WT);
    Q.ParamByName('D1').AsDate:=LoadBlock.D1;
    Q.ExecQuery;
    Q.Free;
  end;

  //загрузка проводок
  DS:=LoadBlock.tblDoc;
  Min:=0;
  Max:=DS.RecordCount;
  Position:=0;
  IncRec:=0;
  UpdateRec:=0;
  Msg:='Загрузка проводок по счетам...';

  while not DS.Eof do
  begin
    AddPrvRecord;
    DS.GoToNext;
    Position:=Position+1;
    if Assigned(OnAccCodeNext) then OnAccCodeNext(Self);
  end;

  //загрузка сальдо
  if LoadBlock.LoadType=0 then
  begin
    DS:=LoadBlock.tblSaldo;
    Min:=0;
    Max:=DS.RecordCount;
    Position:=0;
    IncRec:=0;
    UpdateRec:=0;
    Msg:='Загрузка сальдо по счетам...';

    while not DS.Eof do
    begin
      if DS.Numeric('Saldo')<>0 then AddSaldoRecord;
      DS.GoToNext;
      Position:=Position+1;
      if Assigned(OnAccCodeNext) then OnAccCodeNext(Self);
    end;
  end;

end;

procedure TdzRKC.Prepare;
begin
  StreetLook:=cmDB.GetQuery('select * from Street where Name=:Name and Str_Type=:Str_Type', cmDB.WT);
  StreetAdd:=cmDB.GetQuery('insert into Street(Name,Str_Type) values(:Name,:Str_Type)', cmDB.WT);
  DULook:=cmDB.GetQuery('select * from DU where Name=:Name', cmDB.WT);
  DUAdd:=cmDB.GetQuery('insert into DU(Name) values(:Name)', cmDB.WT);
  HouseLook:=cmDB.GetQuery('select * from House where Street=:Street and Nomer=:Nomer', cmDB.WT);
  HouseAdd:=cmDB.GetQuery('insert into House(Nomer, Street, DU) values(:Nomer, :Street, :DU)', cmDB.WT);
  HouseUpdate:=cmDB.GetQuery('update House set DU=:DU where Code=:House', cmDB.WT);
  AddrLook:=cmDB.GetQuery('select * from Addr where Flat=:Flat and Street=:Street and House=:House', cmDB.WT);
  AddrAdd:=cmDB.GetQuery('insert into Addr(Flat, Street, House, Total_SQ, Living_SQ, Lodger_Cnt, OwnerShip, Habit_Type, DU) '+
    'values(:Flat, :Street, :House, :Total_SQ, :Living_SQ, :Lodger_Cnt, :OwnerShip, :Habit_Type, :DU)', cmDB.WT);
  AddrUpdate:=cmDB.GetQuery('update Addr set Total_SQ=:Total_SQ, Living_SQ=:Living_SQ,'+
    'Lodger_CNT=:Lodger_CNT, OwnerShip=:OwnerShip, Habit_Type=:Habit_Type, DU=:DU '+
    'where Code=:Addr', cmDB.WT);
  SrvLook:=cmDB.GetQuery('select * from SrvList where Srv=:Srv', cmDB.WT);
  SrvAdd:=cmDB.GetQuery('insert into SrvList(Srv,Name) values(:Srv,:Name)', cmDB.WT);
  AccCodeLook:=cmDB.GetQuery('select * from AccCode where AccCode=:AccCode', cmDB.WT);
  AccCodeAdd:=cmDB.GetQuery('insert into AccCode(AccCode, Master, Addr, House, Street, Date_Open, Date_Close, Phone, DU) '+
    'values(:AccCode, :Master, :Addr, :House, :Street, :Date_Open, :Date_Close, :Phone, :DU)', cmDB.WT);
  AccCodeUpdate:=cmDB.GetQuery('update AccCode set Master=:Master, Addr=:Addr, House=:House,'+
    'Street=:Street, Date_Open=:Date_Open, Date_Close=:Date_Close, Phone=:Phone, DU=:DU '+
    'where AccCode=:AccCode', cmDB.WT);
  AddSaldo:=cmDB.GetQuery('insert into AccCodeSaldo(OP_Date, AccCode, Srv, Saldo) '+
    'values(:OP_Date, :AccCode, :Srv, :Saldo)', cmDB.WT);
  AddPrv:=cmDB.GetQuery('insert into AccCodePrv(Rec_Type, AccCode, Srv, Date_Val, Pay_Date,'+
    'Acc_Date, Summa, House, DU) values(:Rec_Type, :AccCode, :Srv, :Date_Val, :Pay_Date,'+
    ':Acc_Date, :Summa, :House, :DU)', cmDB.WT);
end;

procedure TdzRKC.ScanAccCodeList;
var
  DS: TcmDBFDataSet;
begin
  DS:=LoadBlock.tblLs;
  Min:=0;
  Max:=DS.RecordCount;
  Position:=0;
  IncRec:=0;
  UpdateRec:=0;
  Msg:='Загрузка списка счетов...';

  while not DS.Eof do
  begin
    LoadAccCode;
    DS.GotoNext;
  end;

  Msg:='Загрузка списка счетов завершена.';
end;

procedure TdzRKC.SetMsg(Value: string);
begin
  fMsg:=Value;
  if Assigned(OnMessage) then OnMessage(Self);
end;

end.
