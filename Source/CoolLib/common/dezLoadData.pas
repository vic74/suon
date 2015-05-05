unit dezLoadData;

interface

uses
  SysUtils, Classes, cmUtils, cmDBUnit, cmLoadDataSet, FIBQuery, XMLDoc,
  XMLIntf, dezCommon,
  Forms, cxCustomData, cxTL, cxControls, cxTLData, Contnrs;

type
  EMyException = class(Exception);
  TMessageEvent = procedure(S: string) of object;
  TProgressEvent = procedure(ACount, APosition: integer) of object;

  TdezLoad = class(TObject)
  private
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
    fFileName: string;
    ScanSrv, AddSrv: TFIBQuery;
    ScanStreet, GetHouse: TFIBQuery;
    fErrorCount: integer;
    fLog: TStringList;
  protected
    property ErrorCount: integer read fErrorCount write fErrorCount;
    procedure Msg(S: string);
    procedure Progress(ACount, APosition: integer);

    function GetSrvCode(AName: string): integer;

    function CorrectHouseNomer(AHouse: string): string;

    function GetHouseCodeExt(AStreet: integer; ANomer: string): integer;
  public
    procedure Prepare; virtual;
    function GetStreetCode(AName: string): integer;
    function GetHouseCode(AStreet: integer; ANomer: string): integer;
    property FileName: string read fFileName write fFileName;
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    property Log: TStringList read fLog;
    constructor Create;
    destructor Destroy; override;
    procedure SaveLogDate(Y, M, aLoadType: integer);
  end;

  TdezLoadTarif = class(TdezLoad)
  private
    T: TcmDBFDataSet;
    fD1: TDateTime;
    DelHTarif, AddHTarif, GetHTarif: TFIBQuery;
    AddTarif: TFIBQuery;
    procedure ScanRecord(ACode: integer);
    function GetHeadCode(AData: TDateTime): integer;
    procedure CalcNGP_Srv;
  protected
    procedure Prepare; override;
  public
    property D1: TDateTime read fD1 write fD1;
    constructor Create(AFileName: string; ADate: TDateTime);
    destructor Destroy; override;
    procedure Execute;
  end;

  TdezLoadMonth = class(TdezLoad)
  private
    fY, fM: word;
  public
    property Y: word read fY write fY;
    property M: word read fM write fM;
  end;

  TdezLoadVol = class(TdezLoadMonth)
  private
    T: TcmDBFDataSet;
    AddHead, DelHead, GetHead: TFIBQuery;
    AddRec: TFIBQuery;
    AddHead1, DelHead1, GetHead1: TFIBQuery;
    AddRec1: TFIBQuery;
    function GetHeadCode(aM, aY: integer): integer;
    function GetHeadCode1(aM, aY: integer): integer;
    procedure ScanRecord(ACode: integer);
    procedure ScanRecord1(ACode: integer);
  protected
    procedure Prepare; override;
  public
    constructor Create(AFileName: string; aM, aY: integer);
    destructor Destroy; override;
    procedure Execute;
    procedure ExecuteNach;
  end;

  TdezLoadFact = class(TdezLoadMonth)
  private
    T: TcmTextDataSet;
    fSrv: integer;
    fRecordCount: integer;
    AddHead, DelHead, GetHead: TFIBQuery;
    BDR1, BDR2, BDR3: TFIBQuery;
    function RecreateFile: boolean;
    function GetHeadCode: integer;
    procedure ScanRecord(ACode: integer);
  protected
    procedure Prepare; override;
  public
    property Srv: integer read fSrv write fSrv;
    property RecordCount: integer read fRecordCount write fRecordCount;
    constructor Create(AFileName: string; aM, aY, aSrv: integer);
    destructor Destroy; override;
    procedure Execute;
  end;

  TdezLoadFactDoc = class(TdezLoadMonth)
  private
    T: TcmTextDataSet;
    fSrv: integer;
    fRecordCount: integer;
    fSrvType: smallint;
    AddHead, DelHead, GetHead: TFIBQuery;
    AddHead1, DelHead1, GetHead1: TFIBQuery;
    AddSpec, AddSpec1: TFIBQuery;
    function RecreateFile: boolean;
    function GetHeadCode: integer;
    procedure ScanRecord(ACode: integer);
  protected
    procedure Prepare; override;
  public
    property Srv: integer read fSrv write fSrv;
    property SrvType: smallint read fSrvType write fSrvType;
    property RecordCount: integer read fRecordCount write fRecordCount;
    constructor Create(AFileName: string; aM, aY, aSrv: integer);
    destructor Destroy; override;
    procedure Execute;
  end;

  // классы для формирования дерева компонентов при загрузке НЖП
  TcmRec = class
  private
    fParent: TcmRec;
    fKey: string;
    fSQ: double;
    fRecList: TObjectList;
    fDataLevel: integer;
    fChilds: TObjectList;
    fName: string;
    fSN, fNach, fOpl, fSK: currency;
    function GetRecName(const ADataStr: string;
      aDataLevel, AHouse: integer): string;
  protected
    property Parent: TcmRec read fParent;
    property Key: string read fKey;
    property DataLevel: integer read fDataLevel;
    property Childs: TObjectList read fChilds;
  public
    property Name: string read fName;
    property SQ: double read fSQ;
    property SN: currency read fSN;
    property Nach: currency read fNach;
    property Opl: currency read fOpl;
    property SK: currency read fSK;
    constructor Create(ADataStr: string; AParent: TcmRec; aDataLevel: integer;
      ARecList: TObjectList; AHouse: integer);
    destructor Destroy; override;
    function AddChild(ADataStr: string; aDataLevel: integer;
      ARecList: TObjectList; AHouse: integer): TcmRec;
    function FindRec(AKey: string): TcmRec;
    procedure CalcItog;
    procedure MoveSumma(const Code1, Code2: string; Summa: currency);
  end;

  TcmListTreeDS = class(TcxTreeListCustomDataSource)
  private
    FRecordsList: TObjectList;
    FRootHandle: TcmRec;
  protected
    function GetParentRecordHandle(ARecordHandle: TcxDataRecordHandle)
      : TcxDataRecordHandle; override;
    function GetRecordCount: integer; override;
    function GetRecordHandle(ARecordIndex: integer)
      : TcxDataRecordHandle; override;
    function GetChildRecordHandle(AParentHandle: TcxDataRecordHandle;
      AChildIndex: integer): TcxDataRecordHandle; override;
    function GetRootRecordHandle: TcxDataRecordHandle; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
    procedure SetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle; const AValue: Variant); override;
    property RootHandle: TcmRec read FRootHandle;
  public
    constructor Create; virtual;
    destructor Destroy; override;
    procedure CreateRoot(S: string);
    function FindByKey(AKey: string): TcmRec;
    property RecordsList: TObjectList read FRecordsList;
  end;

  TdezXMLData = class
  private
    fCode: string;
    fName: string;
    fINN: string;
    fTotal: currency;
    fStreet: integer;
    fHouse: integer;
    fSN: currency;
    fNach: currency;
    fOpl: currency;
    fSK: currency;
    procedure SetNach(const Value: currency);
    procedure SetOpl(const Value: currency);
    procedure SetSK(const Value: currency);
    procedure SetSN(const Value: currency);
  public
    property Code: string read fCode write fCode;
    property Name: string read fName write fName;
    property INN: string read fINN write fINN;
    property Total: currency read fTotal write fTotal;
    property Street: integer read fStreet write fStreet;
    property House: integer read fHouse write fHouse;
    property SN: currency read fSN write SetSN;
    property Nach: currency read fNach write SetNach;
    property Opl: currency read fOpl write SetOpl;
    property SK: currency read fSK write SetSK;
    constructor Create;
    procedure AddRec(Q: TFIBQuery; AHouseNG: integer);
  end;

  // загрузка НЖП и ОИ
  TdezLoadXML = class(TdezLoadMonth)
  private
    fList: TStringList;
    fBuhFileName: string;
    fVT: TcxVirtualTreeList;
    AddHead, DelHead, GetHead: TFIBQuery;
    AddRec: TFIBQuery;
    FindArendator, AddArendator, EditArendator: TFIBQuery;
    FindDog, AddDog, EditDog: TFIBQuery;
    FindIm, AddIm, EditIm, UpdIm: TFIBQuery;
    FindImSQ, AddImSQ, AddImData: TFIBQuery;
    UpdNGPRoom: TFIBQuery;
    FindNGPRoom: TFIBQuery;
    function GetHeadCode(aM, aY: integer): integer;
  protected
    procedure Prepare; override;
  public
    property BuhFileName: string read fBuhFileName write fBuhFileName;
    property VT: TcxVirtualTreeList read fVT write fVT;
    constructor Create(AFileName: string);
    destructor Destroy; override;
    procedure Execute(NGPOnly: boolean = false);
  end;

  TdezLoadRoom = class(TdezLoadMonth)
  protected
    fList: TStringList;
  public
    constructor Create(AFileName: string);
    destructor Destroy; override;
    procedure Execute;
    procedure ExecuteHouse;
  end;

  ToiCalcType = (oiStandard, oiSQ, oiSumma, oiCount);

  ToiObject = class
  private
    fArendator: integer;
    fDogImMKD: integer;
    fHouse: integer;
    fSaldo: currency;
    fPSum: currency;
    fRSum: currency;
    fSQ: currency;
    fEntrance: smallint;
    fCost: currency;
    fIsData: boolean;
  public
    property Arendator: integer read fArendator write fArendator;
    property DogImMKD: integer read fDogImMKD write fDogImMKD;
    property House: integer read fHouse write fHouse;
    property Saldo: currency read fSaldo write fSaldo;
    property PSum: currency read fPSum write fPSum;
    property RSum: currency read fRSum write fRSum;
    property SQ: currency read fSQ write fSQ;
    property Entrance: smallint read fEntrance write fEntrance;
    property Cost: currency read fCost write fCost;
    property IsData: boolean read fIsData write fIsData;
    constructor Create;
    function GetCalcBase(aCalcType: ToiCalcType): currency;
  end;

  ToiCalcList = class(TStringList)
  private
    Q: TFIBQuery; // начальное сальдо
    Q1: TFIBQuery;
    Q2: TFIBQuery;
    Q3: TFIBQuery;
    fD1: TDateTime;
    fD2: TDateTime;
    fDogImMKD: integer;
    fCalcType: ToiCalcType;
    fDType: smallint;
  public
    property CalcType: ToiCalcType read fCalcType write fCalcType;
    property D1: TDateTime read fD1 write fD1;
    property D2: TDateTime read fD2 write fD2;
    property DogImMKD: integer read fDogImMKD write fDogImMKD;
    property DType: smallint read fDType write fDType;
    constructor Create;
    destructor Destroy; override;
    // выбираем начальное сальдо по домам договора
    procedure MakeStartSaldoList(aDType: smallint; NewSaldo: currency);
    // выбираем площади по договору
    procedure AddSQMKD(ACode: integer);
    // выбираем дома по договору
    procedure AddHouseMKD(ACode: integer);
    // получаем сальдо
    function GetSaldo: currency;
    // получаем расчетный коэфициент для пересчета данных
    function DividKoef(aSumma: currency): double;
    // разноска начального сальдо (если первая запись по договору)
    procedure CorrectStartSaldo(aSaldo: currency);
    // разносим сумму начислений
    procedure SetNachSumma(var aSumma: currency);
    // разносим сумму оплат
    procedure SetOplataSumma(var aSumma: currency);
    // сохраняем сформированные записи
    procedure SaveToBase;
  end;

  ToiProcess = class(TdezLoad)
  private
    Q1: TFIBQuery;
    Q2: TFIBQuery;
    Q3: TFIBQuery;
    Num: integer;
    fD1: TDateTime;
    fD2: TDateTime;
  public
    property D1: TDateTime read fD1 write fD1;
    property D2: TDateTime read fD2 write fD2;
    constructor Create;
    destructor Destroy; override;
    procedure Execute;
  end;

  // загрузка шаблонов из внешних файлов
  TshbLoad = class(TdezLoad)
  private
    DelShb, AddShb: TFIBQuery;
    fList: TStrings;
    fMakeSmetaCode: integer;
  protected
    procedure Prepare; override;
  public
    constructor Create(AMakeSmetaCode: integer);
    procedure Execute;
    destructor Destroy; override;
  end;

function CorrectStreetName(AName: string): string;

implementation

const
  FactFileName = 'fact.dez';
  VirtualHouse = 615;

var
  TDS: TcmListTreeDS;

function CorrectStreetName(AName: string): string;
const
  Shb = ';ПР.;УЛ.;ПЕР.;ПР;УЛ;ПЕР;ПР-КТ;';
var
  i, Count: integer;
  S: string;
begin
  Result := '';
  AName := AnsiUpperCase(Trim(AName));
  Count := cmWordCount(AName, ' ');
  for i := 1 to Count do
  begin
    S := cmGetWord(AName, i, ' ');
    if Pos(';' + S + ';', Shb) = 0 then
    begin
      if Result <> '' then
        Result := Result + ' ';
      Result := Result + S;
    end;
  end;
  // корреция наименования улицы
  if Result = '3-АЯ АРЗАМАССКАЯ' then
    Result := '3-Я АРЗАМАССКАЯ'
  else if (Result = 'БР. КАШИРИНЫХ') or (Result = 'БРАТЬЕВ КАШИРИНЫХ АЛЛЕЯ')
  then
    Result := 'БРАТЬЕВ КАШИРИНЫХ'
  else if Result = 'С. ЮЛАЕВА' then
    Result := 'САЛАВАТА ЮЛАЕВА'
  else if (Result = '250 ЛЕТ ЧЕЛЯБИНСКА') or
    (Copy(Result, 1, 17) = '250-ЛЕТИЯ ЧЕЛЯБИН') then
    Result := '250-ЛЕТИЯ ЧЕЛЯБИНСКА'
  else if (Result = 'УНИВ. НАБЕРЕЖНАЯ') or
    (Copy(Result, 1, 15) = 'УНИВЕРСИТЕТСКАЯ') or
    (Result = 'УН. НАБЕРЕЖНАЯ') then
    Result := 'УНИВЕРСИТЕТСКАЯ НАБЕРЕЖНАЯ'
  else if Result = '40 ЛЕТ ПОБЕДЫ' then
    Result := '40-ЛЕТИЯ ПОБЕДЫ'
  else if Result = 'ГРОМОВОЙ' then
    Result := 'УЛЬЯНЫ ГРОМОВОЙ'
end;

{ TdezLoad }

function TdezLoad.CorrectHouseNomer(AHouse: string): string;
var
  S1: string;
  i, Count, Poz: integer;
begin
  Result := '';
  Count := cmWordCount(AHouse, #32);
  //удаляем лишние теги
  for i := 1 to Count do
  begin
    S1 := cmGetWord(AHouse, i, #32);
    if (S1 <> 'дом') and (S1 <> '№') then
      Result := Result + S1;
  end;
  //удаляем доп информацию
  Poz:=Pos('(', Result);
  if Poz<>0 then
    Result:=Copy(Result,1,Poz-1);
end;

constructor TdezLoad.Create;
begin
  inherited;
end;

destructor TdezLoad.Destroy;
begin
  if Assigned(fLog) then fLog.Free;
  cmDBUnit.cmDB.FreeQuery(ScanSrv);
  cmDBUnit.cmDB.FreeQuery(AddSrv);
  cmDBUnit.cmDB.FreeQuery(ScanStreet);
  cmDBUnit.cmDB.FreeQuery(GetHouse);
  inherited;
end;

procedure TDezLoad.SaveLogDate(Y, M, aLoadType: integer);
const
  SQL = 'insert into ExportLoadState(Code, Piple, LoadType, ErrorCount, Y, M, Data) '+
    'values(:Code, :Piple, :LoadType, :ErrorCount, :Y, :M, :Data)';
var
  Code: integer;
  Q: TFIBQuery;
begin
  //получаем уникальный код записи
  Code:=StrToInt(cmDB.GetSQLValue('select gen_id(ExportLoadState_gen, 1) from RDB$DATABASE', cmDB.WT));
  //формируем запрос для сохранения данных
  Q:=cmDB.GetQuery(SQL, cmDB.WT);
  try
    Q.ParamByName('Code').AsInteger:=Code;
    Q.ParamByName('Piple').AsInteger:=ActivePiple;
    Q.ParamByName('LoadType').AsInteger:=aLoadType;
    Q.ParamByName('ErrorCount').AsInteger:=ErrorCount;
    Q.ParamByName('Y').AsShort:=Y;
    Q.ParamByName('M').AsShort:=M;
    Q.ParamByName('Data').AsString:=Log.Text;
    Q.ExecQuery;
  finally
    cmDB.FreeQuery(Q);
  end;
  cmDB.WT.Commit;
end;


procedure TdezLoad.Prepare;
begin
  ScanSrv := cmDBUnit.cmDB.GetQuery('select * from HouseSrv where Name=:Name',
    cmDBUnit.cmDB.WT);
  AddSrv := cmDBUnit.cmDB.GetQuery('insert into HouseSrv(Name) values(:Name)',
    cmDBUnit.cmDB.WT);
  ScanStreet := cmDBUnit.cmDB.GetQuery
    ('select * from Street where Name LIKE :Name', cmDBUnit.cmDB.WT);
  GetHouse := cmDBUnit.cmDB.GetQuery
    ('select * from House where Street=:Street and Nomer=:Nomer',
    cmDBUnit.cmDB.WT);
end;

procedure TdezLoad.Msg(S: string);
begin
  if fLog=nil then
    fLog:=TStringList.Create;

  fLog.Add(S);

  if Assigned(OnMessage) then
    OnMessage(S);
end;

procedure TdezLoad.Progress(ACount, APosition: integer);
begin
  if Assigned(OnProgress) then
    OnProgress(ACount, APosition);
end;

function TdezLoad.GetHouseCode(AStreet: integer; ANomer: string): integer;
begin
  Result := -1;
  ANomer := AnsiUpperCase(ANomer);
  GetHouse.ParamByName('Street').AsInteger := AStreet;
  GetHouse.ParamByName('Nomer').AsString := ANomer;
  GetHouse.ExecQuery;
  if not GetHouse.Eof then
    Result := GetHouse.FN('Code').AsInteger
end;

function TdezLoad.GetHouseCodeExt(AStreet: integer; ANomer: string): integer;
begin
  Result := -1;
  ANomer := AnsiUpperCase(ANomer);
  GetHouse.ParamByName('Street').AsInteger := AStreet;
  GetHouse.ParamByName('Nomer').AsString := ANomer;
  GetHouse.ExecQuery;
  if not GetHouse.Eof then
    Result := GetHouse.FN('Code').AsInteger;
end;

function TdezLoad.GetSrvCode(AName: string): integer;
begin
  ScanSrv.ParamByName('Name').AsString := AName;
  ScanSrv.ExecQuery;
  if ScanSrv.Eof then
  begin // не нашли
    AddSrv.ParamByName('Name').AsString := AName;
    AddSrv.ExecQuery;
    ScanSrv.ParamByName('Name').AsString := AName;
    ScanSrv.ExecQuery;
    Msg('Добавлена новая услуга: ' + AName);
  end;
  Result := ScanSrv.FN('Code').AsInteger;
end;

function TdezLoad.GetStreetCode(AName: string): integer;
begin
  Result := -1;
  ScanStreet.ParamByName('Name').AsString := AName;
  ScanStreet.ExecQuery;
  if ScanStreet.Eof then
    Msg('Не найдена улица - ' + AName)
  else
    Result := ScanStreet.FN('Code').AsInteger;
end;

{ TdezLoadTarif }

constructor TdezLoadTarif.Create(AFileName: string; ADate: TDateTime);
begin
  fFileName := AFileName;
  fD1 := ADate;
  T := TcmDBFDataSet.Create;
  Prepare;
end;

destructor TdezLoadTarif.Destroy;
begin
  T.Free;
  cmDBUnit.cmDB.FreeQuery(GetHTarif);
  cmDBUnit.cmDB.FreeQuery(DelHTarif);
  cmDBUnit.cmDB.FreeQuery(AddHTarif);
  cmDBUnit.cmDB.FreeQuery(AddTarif);
  inherited;
end;

procedure TdezLoadTarif.CalcNGP_Srv;
var
  Q: TFIBQuery;
  Y,M,D: word;
begin
  DecodeDate(fD1, Y, M, D);
  Q:=cmDB.GetQuery('execute procedure MAKE_HOUSE_NGP_LIST(:Y, :M)', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=Y;
  Q.ParamByName('M').AsInteger:=M;
  Q.ExecQuery;
  cmDB.WT.Commit;
  cmDB.FreeQuery(Q);
end;

procedure TdezLoadTarif.Execute;
var
  i, HCode: integer;
  Y,M,D: word;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  // открываем набор данных
  T.Open(FileName);
  Msg('Загружаем тарифы из файла - ' + FileName);
  Msg('Файл содержит ' + IntToStr(T.RecordCount) + ' записей.');
  // создаем заголовок
  HCode := GetHeadCode(D1);
  // сканируем записи
  i := 0;
  while not T.Eof do
  begin
    ScanRecord(HCode);
    T.GotoNext;
    Inc(i);
    OnProgress(T.RecordCount, i);
  end;
  //пересчет НЖП по услугам согласно загруженных тарифов
  CalcNGP_Srv;

  Msg('Загрузка данных завершена');
  cmDBUnit.cmDB.WT.Commit;
  //сохраняем запись в лог файле
  DecodeDate(fD1, Y,M,D);
  Self.SaveLogDate(Y, M, 3);
end;

procedure TdezLoadTarif.Prepare;
begin
  inherited;
  GetHTarif := cmDBUnit.cmDB.GetQuery
    ('select * from HouseTarif where Data=:Data', cmDBUnit.cmDB.WT);
  DelHTarif := cmDBUnit.cmDB.GetQuery('delete from HouseTarif where Data=:Data',
    cmDBUnit.cmDB.WT);
  AddHTarif := cmDBUnit.cmDB.GetQuery
    ('insert into HouseTarif(Data) VALUES(:Data)', cmDBUnit.cmDB.WT);
  AddTarif := cmDBUnit.cmDB.GetQuery
    ('insert into HouseTarifList(HouseTarif, House, HouseSrv, Tot_space, Tarif_taxa, '
    + 'Floor_Count, Acc_cnt, Lodger_cnt, Flat_cnt) ' +
    ' VALUES(:HouseTarif, :House, :HouseSrv, :Tot_space, :Tarif_taxa, ' +
    ':Floor_Count, :Acc_cnt, :Lodger_cnt, :Flat_cnt)', cmDBUnit.cmDB.WT);
end;

procedure TdezLoadTarif.ScanRecord(ACode: integer);
var
  Srv, Street, House: integer;
begin
  Srv := GetSrvCode(T.Load('SERVICE'));
  Street := GetStreetCode(CorrectStreetName(T.Load('STREET')));
  // получаем код дома
  House := GetHouseCode(Street, Trim(T.Load('HOUSE')));
  // дом не обслуживается ООО ДЕЗ
  if House < 0 then
  begin
    Msg('Дом: ' + T.Load('STREET') + ' ' + T.Load('HOUSE') +
      ' не найден в справочнике.');
  end;
  // вставка записи о тарифе
  if T.Numeric('TARIF_TAXA') <> 0 then
  begin
    AddTarif.ParamByName('HouseTarif').AsInteger := ACode;
    AddTarif.ParamByName('House').AsInteger := House;
    AddTarif.ParamByName('HouseSrv').AsInteger := Srv;
    AddTarif.ParamByName('Tot_Space').AsFloat := T.Numeric('TOT_SPACE');
    AddTarif.ParamByName('Tarif_taxa').AsFloat := T.Numeric('TARIF_TAXA');
    AddTarif.ParamByName('Floor_count').AsFloat := T.Numeric('FLOOR_COUNT');
    AddTarif.ParamByName('Acc_cnt').AsFloat := T.Numeric('ACC_CNT');
    AddTarif.ParamByName('Lodger_cnt').AsFloat := T.Numeric('LODGER_CNT');
    AddTarif.ParamByName('Flat_cnt').AsFloat := T.Numeric('FLAT_CNT');
    AddTarif.ExecQuery;
  end
end;

function TdezLoadTarif.GetHeadCode(AData: TDateTime): integer;
begin
  DelHTarif.ParamByName('Data').AsDateTime := AData;
  DelHTarif.ExecQuery;
  AddHTarif.ParamByName('Data').AsDateTime := AData;
  AddHTarif.ExecQuery;
  GetHTarif.ParamByName('Data').AsDateTime := AData;
  GetHTarif.ExecQuery;
  Result := GetHTarif.FN('Code').AsInteger;
end;

{ TdezLoadVol }

constructor TdezLoadVol.Create(AFileName: string; aM, aY: integer);
begin
  fFileName := AFileName;
  fM := aM;
  fY := aY;
  T := TcmDBFDataSet.Create;
  Prepare;
end;

destructor TdezLoadVol.Destroy;
begin
  T.Free;
  cmDBUnit.cmDB.FreeQuery(AddHead);
  cmDBUnit.cmDB.FreeQuery(GetHead);
  cmDBUnit.cmDB.FreeQuery(DelHead);
  cmDBUnit.cmDB.FreeQuery(AddRec);
  cmDBUnit.cmDB.FreeQuery(AddHead1);
  cmDBUnit.cmDB.FreeQuery(GetHead1);
  cmDBUnit.cmDB.FreeQuery(DelHead1);
  cmDBUnit.cmDB.FreeQuery(AddRec1);
  inherited;
end;

procedure TdezLoadVol.Execute;
var
  i, HCode: integer;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  // открываем набор данных
  T.Open(FileName);
  Msg('Загружаем данные из файла - ' + FileName);
  Msg('Файл содержит ' + IntToStr(T.RecordCount) + ' записей.');
  // создаем заголовок
  HCode := GetHeadCode(M, Y);
  // сканируем записи
  i := 0;
  while not T.Eof do
  begin
    ScanRecord(HCode);
    T.GotoNext;
    Inc(i);
    OnProgress(T.RecordCount, i);
  end;
  Msg('Загрузка данных завершена');
  cmDBUnit.cmDB.WT.Commit;
end;

procedure TdezLoadVol.ExecuteNach;
var
  i, HCode: integer;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  // открываем набор данных
  T.Open(FileName);
  Msg('Загружаем данные из файла - ' + FileName);
  Msg('Файл содержит ' + IntToStr(T.RecordCount) + ' записей.');
  // создаем заголовок
  HCode := GetHeadCode1(M, Y);
  // сканируем записи
  i := 0;
  while not T.Eof do
  begin
    ScanRecord1(HCode);
    T.GotoNext;
    Inc(i);
    OnProgress(T.RecordCount, i);
  end;
  Msg('Загрузка данных завершена');
  cmDBUnit.cmDB.WT.Commit;
  //сохраняем запись в лог файле
  Self.SaveLogDate(Y, M, 4);
end;

function TdezLoadVol.GetHeadCode(aM, aY: integer): integer;
begin
  DelHead.ParamByName('M').AsInteger := M;
  DelHead.ParamByName('Y').AsInteger := Y;
  DelHead.ExecQuery;
  AddHead.ParamByName('M').AsInteger := M;
  AddHead.ParamByName('Y').AsInteger := Y;
  AddHead.ExecQuery;
  GetHead.ParamByName('M').AsInteger := M;
  GetHead.ParamByName('Y').AsInteger := Y;
  GetHead.ExecQuery;
  Result := GetHead.FN('Code').AsInteger;
end;

function TdezLoadVol.GetHeadCode1(aM, aY: integer): integer;
begin
  DelHead1.ParamByName('M').AsInteger := M;
  DelHead1.ParamByName('Y').AsInteger := Y;
  DelHead1.ExecQuery;
  AddHead1.ParamByName('M').AsInteger := M;
  AddHead1.ParamByName('Y').AsInteger := Y;
  AddHead1.ExecQuery;
  GetHead1.ParamByName('M').AsInteger := M;
  GetHead1.ParamByName('Y').AsInteger := Y;
  GetHead1.ExecQuery;
  Result := GetHead1.FN('Code').AsInteger;
end;

procedure TdezLoadVol.Prepare;
begin
  inherited;
  GetHead := cmDBUnit.cmDB.GetQuery
    ('select * from HouseRecv where M=:M and Y=:Y', cmDBUnit.cmDB.WT);
  AddHead := cmDBUnit.cmDB.GetQuery('insert into HouseRecv(M,Y) values(:M,:Y)',
    cmDBUnit.cmDB.WT);
  DelHead := cmDBUnit.cmDB.GetQuery('delete from HouseRecv where M=:M and Y=:Y',
    cmDBUnit.cmDB.WT);
  AddRec := cmDBUnit.cmDB.GetQuery
    ('execute procedure AddHouseRecv(:HouseRecv, :House, :Floor_Count, :Acc_Cnt, :Lodger_Cnt, :Tot_Space, :Flat_cnt)',
    cmDBUnit.cmDB.WT);
  GetHead1 := cmDBUnit.cmDB.GetQuery
    ('select * from HousePrv where M=:M and Y=:Y', cmDBUnit.cmDB.WT);
  AddHead1 := cmDBUnit.cmDB.GetQuery('insert into HousePrv(M,Y) values(:M,:Y)',
    cmDBUnit.cmDB.WT);
  DelHead1 := cmDBUnit.cmDB.GetQuery('delete from HousePrv where M=:M and Y=:Y',
    cmDBUnit.cmDB.WT);
  AddRec1 := cmDBUnit.cmDB.GetQuery
    ('insert into HousePrvList(HousePrv, House, HouseSrv, Charge_pri, Pay, Priv_Maket, Saldo_out, Saldo_in, Repay, Privilege, Maket, Charge_100) '
    + ' values(:HousePrv, :House, :HouseSrv, :Charge_pri, :Pay, :Priv_Maket, :Saldo_out, :Saldo_in, :Repay, :Privilege, :Maket, :Charge_100)',
    cmDBUnit.cmDB.WT);
end;

procedure TdezLoadVol.ScanRecord(ACode: integer);
var
  Street, House: integer;
begin
  Street := GetStreetCode(CorrectStreetName(T.Load('STREET')));
  // получаем код дома
  House := GetHouseCode(Street, T.Load('HOUSE'));
  if House > 0 then
  begin
    AddRec.ParamByName('HouseRecv').AsInteger := ACode;
    AddRec.ParamByName('House').AsInteger := House;
    AddRec.ParamByName('Floor_Count').AsInteger :=
      Trunc(T.Numeric('FLOOR_COUN'));
    AddRec.ParamByName('Acc_cnt').AsInteger := Trunc(T.Numeric('ACC_CNT'));
    AddRec.ParamByName('Lodger_cnt').AsInteger :=
      Trunc(T.Numeric('LODGER_CNT'));
    AddRec.ParamByName('Tot_space').AsFloat := T.Numeric('TOT_SPACE');
    AddRec.ParamByName('Flat_cnt').AsFloat := T.Numeric('FLAT_CNT');
    AddRec.ExecQuery;
  end
  else
    Msg('Дом: ' + T.Load('STREET') + ' ' + T.Load('HOUSE') +
      ' не найден в справочнике.');
end;

procedure TdezLoadVol.ScanRecord1(ACode: integer);
var
  Srv, Street, House: integer;
begin
  Srv := GetSrvCode(T.Load('SERVICE'));
  Street := GetStreetCode(CorrectStreetName(T.Load('STREET')));
  // получаем код дома
  House := GetHouseCode(Street, T.Load('HOUSE'));
  if House > 0 then
  begin
    AddRec1.ParamByName('HousePrv').AsInteger := ACode;
    AddRec1.ParamByName('House').AsInteger := House;
    AddRec1.ParamByName('HouseSrv').AsInteger := Srv;
    AddRec1.ParamByName('Charge_Pri').AsFloat := T.Numeric('CHARGE_PRI');
    AddRec1.ParamByName('Pay').AsFloat := T.Numeric('PAY');
    AddRec1.ParamByName('Priv_Maket').AsFloat := T.Numeric('PRIV_MAKET');
    AddRec1.ParamByName('Saldo_out').AsFloat := T.Numeric('SALDO_OUT');
    AddRec1.ParamByName('Saldo_in').AsFloat := T.Numeric('SALDO_IN');
    AddRec1.ParamByName('Repay').AsFloat := T.Numeric('REPAY');
    AddRec1.ParamByName('Privilege').AsFloat := T.Numeric('PRIVILEGE');
    AddRec1.ParamByName('Maket').AsFloat := T.Numeric('MAKET');
    AddRec1.ParamByName('Charge_100').AsFloat := T.Numeric('CHARGE_100');
    AddRec1.ExecQuery;
  end
  else
    Msg('Дом: ' + T.Load('STREET') + ' ' + T.Load('HOUSE') +
      ' не найден в справочнике.');
end;

{ TdezLoadXML }

constructor TdezLoadXML.Create(AFileName: string);
begin
  fFileName := AFileName;
  fList := TStringList.Create;
  Prepare;
end;

destructor TdezLoadXML.Destroy;
var
  i: integer;
begin
  for i := 0 to fList.Count - 1 do
    fList.Objects[i].Free;
  fList.Free;
  cmDB.FreeQuery(AddHead);
  cmDB.FreeQuery(GetHead);
  cmDB.FreeQuery(DelHead);
  cmDB.FreeQuery(AddRec);
  cmDB.FreeQuery(FindArendator);
  cmDB.FreeQuery(AddArendator);
  cmDB.FreeQuery(EditArendator);
  cmDB.FreeQuery(FindDog);
  cmDB.FreeQuery(AddDog);
  cmDB.FreeQuery(EditDog);
  cmDB.FreeQuery(FindIm);
  cmDB.FreeQuery(AddIm);
  cmDB.FreeQuery(EditIm);
  cmDB.FreeQuery(UpdIm);
  cmDB.FreeQuery(FindImSQ);
  cmDB.FreeQuery(AddImSQ);
  cmDB.FreeQuery(AddImData);
  cmDB.FreeQuery(UpdNGPRoom);
  cmDB.FreeQuery(FindNGPRoom);
  inherited;
end;

procedure TdezLoadXML.Execute(NGPOnly: boolean = false);
var
  aY, aM, aD: word;
  S: string;
  i, HeadCode: integer;
  D1, D2: TDateTime;
  Q1: TFIBQuery;
  Saldo, PSum, RSum: currency;

  function ScanArendator(S: string): integer;
  var
    Code1C, Name, FullName, Note: string;
  begin
    Code1C := cmGetWord(S, 1, ';');
    Name := cmGetWord(S, 12, ';');
    FullName := cmGetWord(S, 2, ';');
    if Name = '' then
      Name := FullName;
    Note := cmGetWord(S, 4, ';');
    FindArendator.ParamByName('Code').AsString := Code1C;
    FindArendator.ExecQuery;
    if FindArendator.Eof then
    begin
      AddArendator.ParamByName('Name').AsString := Name;
      AddArendator.ParamByName('FullName').AsString := FullName;
      AddArendator.ParamByName('Code1C').AsString := Code1C;
      AddArendator.ParamByName('Note').AsString := Note;
      AddArendator.ExecQuery;
      // ищем по новой
      FindArendator.ParamByName('Code').AsString := Code1C;
      FindArendator.ExecQuery;
    end
    else if (FindArendator.FN('FullName').AsString <> FullName) or
      (FindArendator.FN('Name').AsString <> Name) then
    begin
      EditArendator.ParamByName('Name').AsString := Name;
      EditArendator.ParamByName('FullName').AsString := FullName;
      EditArendator.ParamByName('Code').AsInteger := FindArendator.FN('Code')
        .AsInteger;
      EditArendator.ExecQuery;
    end;
    Result := FindArendator.FN('Code').AsInteger;
  end;

  function ScanDogovor(S: string; DType: integer): integer;
  var
    Code1C, Note, Nomer, S1: string;
    i, Count, ACode, SType, State: integer;
    R2: currency;
    D1, D2: TDateTime;
    D, M, Y: word;
  begin
    // код договора в 1С
    Code1C := cmGetWord(S, 3, ';');
    // ищем договор по коду
    FindDog.ParamByName('Code').AsString := Code1C;
    FindDog.ExecQuery;
    // прочие реквизиты
    Note := Copy(cmGetWord(S, 4, ';'), 1, 254);
    R2 := StrToFloat(cmCorrectFloat(cmGetWord(S, 6, ';')));
    SType := StrToInt(cmGetWord(S, 13, ';'));
    State := StrToInt(cmGetWord(S, 14, ';'));
    // получаем арендатора
    ACode := ScanArendator(S);
    // если запись об арендаторе найдена
    if not FindDog.Eof then
    begin
      Result := FindDog.FN('Code').AsInteger;
      EditDog.ParamByName('Note').AsString := Note;
      EditDog.ParamByName('State').AsInteger := State;
      EditDog.ParamByName('SType').AsInteger := SType;
      EditDog.ParamByName('DType').AsInteger := DType;
      EditDog.ParamByName('Code').AsInteger := Result;
      EditDog.ExecQuery;
      Exit;
    end;
    // дата начала договора по умолчанию
    DecodeDate(Date, Y, M, D);
    if R2 = 0 then
      D1 := StrToDate('1.1.' + IntToStr(Y - 1))
    else
      D1 := StrToDate('1.1.' + IntToStr(Y));
    Nomer := 'Б\Н';
    // сканируем описание в поисках даты и номера договора
    Count := cmWordCount(S, ';');
    for i := 1 to Count do
    begin
      S1 := AnsiUpperCase(cmGetWord(Note, i, ' '));
      if (S1 = '№') or (S1 = 'ДОГ.') then
        Nomer := cmGetWord(Note, i + 1, ' ');
      if (Length(S1) > 1) and (S1[1] = '№') then
        Nomer := Copy(S1, 2, Length(S1));
      if S1 = 'ОТ' then
        D1 := StrToDateDef(cmGetWord(Note, i + 1, ' '), D1);
    end;
    D2 := D1 + 365;
    // создание договора
    AddDog.ParamByName('Arendator').AsInteger := ACode;
    AddDog.ParamByName('Nomer').AsString := Copy(Nomer, 1, 16);
    AddDog.ParamByName('D1').AsDate := D1;
    AddDog.ParamByName('D2').AsDate := D2;
    AddDog.ParamByName('Note').AsString := Note;
    AddDog.ParamByName('DType').AsInteger := DType;
    AddDog.ParamByName('RType').AsInteger := 0;
    AddDog.ParamByName('Tarif').AsCurrency := 0;
    AddDog.ParamByName('Code1C').AsString := Code1C;
    AddDog.ParamByName('State').AsInteger := State;
    AddDog.ParamByName('SType').AsInteger := SType;
    AddDog.ExecQuery;
    // возвращаем код договора
    FindDog.ParamByName('Code').AsString := Code1C;
    FindDog.ExecQuery;
    Result := FindDog.FN('Code').AsInteger;
  end;

  function ScanDogovor1(S: string; DType: integer): integer;
  var
    Code1C, Note, Nomer, S1: string;
    i, Count, ACode: integer;
    R2: currency;
    D1, D2: TDateTime;
    D, M, Y: word;
  begin
    // код договора в 1С
    Code1C := cmGetWord(S, 3, ';');
    // ищем договор по коду
    FindDog.ParamByName('Code').AsString := Code1C;
    FindDog.ExecQuery;
    // получаем арендатора
    ACode := ScanArendator(S);
    if not FindDog.Eof then
    begin
      Result := FindDog.FN('Code').AsInteger;
      if DType = 3 then
      begin
        EditDog.ParamByName('Code').AsInteger := Result;
        EditDog.ExecQuery;
      end;
      Exit;
    end;
    // прочие реквизиты
    Note := Copy(cmGetWord(S, 4, ';') + ' ' + cmGetWord(S, 9, ';'), 1, 254);
    R2 := StrToFloat(cmCorrectFloat(cmGetWord(S, 6, ';')));
    // дата начала договора по умолчанию
    DecodeDate(Date, Y, M, D);
    if R2 = 0 then
      D1 := StrToDate('1.1.' + IntToStr(Y - 1))
    else
      D1 := StrToDate('1.1.' + IntToStr(Y));
    Nomer := 'Б\Н';
    // сканируем описание в поисках даты и номера договора
    Count := cmWordCount(S, ';');
    for i := 1 to Count do
    begin
      S1 := AnsiUpperCase(cmGetWord(Note, i, ' '));
      if (S1 = '№') or (S1 = 'ДОГ.') then
        Nomer := cmGetWord(Note, i + 1, ' ');
      if (Length(S1) > 1) and (S1[1] = '№') then
        Nomer := Copy(S1, 2, Length(S1));
      if S1 = 'ОТ' then
        D1 := StrToDateDef(cmGetWord(Note, i + 1, ' '), D1);
    end;
    D2 := D1 + 365;
    // создание договора Tarif, Code1C, State
    AddDog.ParamByName('Arendator').AsInteger := ACode;
    AddDog.ParamByName('Nomer').AsString := Copy(Nomer, 1, 16);
    AddDog.ParamByName('D1').AsDate := D1;
    AddDog.ParamByName('D2').AsDate := D2;
    AddDog.ParamByName('Note').AsString := Note;
    AddDog.ParamByName('DType').AsInteger := DType;
    AddDog.ParamByName('RType').AsInteger := 0;
    AddDog.ParamByName('Tarif').AsCurrency := 0;
    AddDog.ParamByName('Code1C').AsString := Code1C;
    AddDog.ParamByName('State').AsInteger := 0;
    AddDog.ParamByName('SType').AsInteger := 3;
    AddDog.ExecQuery;
    // возвращаем код договора
    FindDog.ParamByName('Code').AsString := Code1C;
    FindDog.ExecQuery;
    Result := FindDog.FN('Code').AsInteger;
  end;

  function ScanIM(S: string): integer;
  var
    StreetCode, HouseCode, DType: integer;
    AName, Note, Street, House, SQStr: string;
    SQ: currency;
  begin
    Result := -1;
    AName := cmGetWord(S, 2, ';');
    Note := Copy(cmGetWord(S, 15, ';'), 1, 254);
    Street := cmGetWord(S, 9, ';');
    House := cmGetWord(S, 10, ';');
    SQStr := cmGetWord(S, 11, ';');
    DType := StrToIntDef(cmGetWord(S, 13, ';'), 0);
    SQ := StrToFloat(cmCorrectFloat(SQStr));
    StreetCode := GetStreetCode(CorrectStreetName(Street));
    if StreetCode < 0 then
    begin
      Msg('Не найдена улица: ' + Street + '  ' + AName + '  ' + Note);
      Exit;
    end;
    HouseCode := GetHouseCodeExt(StreetCode, House);
    if HouseCode < 0 then
    begin
      Msg('Не найден дом: ' + Street + ' ' + House + '  ' + AName +
        '  ' + Note);
      Exit;
    end;
    // ищем объект в справочнике
    FindIm.ParamByName('House').AsInteger := HouseCode;
    FindIm.ParamByName('AType').AsInteger := 0;
    FindIm.ParamByName('SQ').AsCurrency := SQ;
    FindIm.ExecQuery;
    // добавляем объект в справочник   House, AType, Note, Cost, SQ, DType
    if FindIm.Eof then
    begin
      AddIm.ParamByName('House').AsInteger := HouseCode;
      AddIm.ParamByName('AType').AsInteger := 0;
      AddIm.ParamByName('Note').AsString := Note;
      AddIm.ParamByName('Cost').AsCurrency := 0;
      AddIm.ParamByName('SQ').AsCurrency := SQ;
      AddIm.ParamByName('DType').AsInteger := DType;
      AddIm.ExecQuery;
      // повторный поиск объекта
      FindIm.ParamByName('House').AsInteger := HouseCode;
      FindIm.ParamByName('AType').AsInteger := 0;
      FindIm.ParamByName('SQ').AsCurrency := SQ;
      FindIm.ExecQuery;
      Result := FindIm.FN('Code').AsInteger;
    end
    else
    begin
      Result := FindIm.FN('Code').AsInteger;
      EditIm.ParamByName('DType').AsInteger := DType;
      EditIm.ParamByName('Note').AsString := Note;
      EditIm.ParamByName('House').AsInteger := HouseCode;
      EditIm.ParamByName('AType').AsInteger := 0;
      EditIm.ParamByName('SQ').AsCurrency := SQ;
      EditIm.ExecQuery;
    end;
  end;

  procedure AddArendator(S: string; DType: smallint; AddOborot: boolean = true);
  var
    DogCode, ImCode, AType, TP: integer;
    ImNote: string;
  begin
    // собственно внесение записи о движении денежных средств
    Saldo := StrToFloat(cmCorrectFloat(cmGetWord(S, 5, ';')));
    PSum := StrToFloat(cmCorrectFloat(cmGetWord(S, 6, ';')));
    RSum := StrToFloat(cmCorrectFloat(cmGetWord(S, 7, ';')));
    TP := StrToIntDef(cmGetWord(S, 13, ';'), 0);
    ImNote := Copy(cmGetWord(S, 15, ';'), 1, 254);
    if (Saldo = 0) and (PSum = 0) and (RSum = 0) then
      Exit;
    // сканируем договор
    DogCode := ScanDogovor(S, DType);
    // проверка записи об объекте по договору
    if DType = 4 then
      AType := 0
    else
      AType := 1;
    FindImSQ.ParamByName('Code').AsInteger := DogCode;
    FindImSQ.ExecQuery;
    if FindImSQ.Eof then
    begin
      ImCode := ScanIM(S);
      // проверяем есть ли запись об объекте
      if ImCode > 0 then
      begin
        // запись об объекте по договору
        AddImSQ.ParamByName('ImMKD').AsInteger := ImCode;
        AddImSQ.ParamByName('DogImMKD').AsInteger := DogCode;
        AddImSQ.ParamByName('Tarif').AsCurrency := 0;
        AddImSQ.ParamByName('D1').AsDate := Date;
        AddImSQ.ParamByName('D2').AsDate := Date;
        AddImSQ.ParamByName('Data').AsDate := StrToDate('1.1.2011');
        AddImSQ.ExecQuery;
      end;
    end
    else
    begin // если только одна запись об объекте пытаемся обновить реквизиты
      ImCode := FindImSQ.FN('ImMKD').AsInteger;
      FindImSQ.Next;
      if FindImSQ.Eof then
      begin
        UpdIm.ParamByName('DType').AsInteger := TP;
        UpdIm.ParamByName('Note').AsString := ImNote;
        UpdIm.ParamByName('Code').AsInteger := ImCode;
        UpdIm.ExecQuery;
      end;
    end;
    // обороты
    if AddOborot then
    begin
      Q1.ParamByName('Data').AsDate := D1;
      Q1.ParamByName('DogImMKD').AsInteger := DogCode;
      Q1.ParamByName('PType').AsInteger := AType;
      Q1.ParamByName('DType').AsInteger := DType;
      Q1.ParamByName('Saldo').AsCurrency := Saldo;
      Q1.ParamByName('PSum').AsCurrency := PSum;
      Q1.ParamByName('RSum').AsCurrency := RSum;
      Q1.ExecQuery;
    end;
  end;

  procedure AddArendator1(S: string; DType: smallint);
  var
    DogCode: integer;
  begin
    // собственно внесение записи о движении денежных средств
    Saldo := StrToFloat(cmCorrectFloat(cmGetWord(S, 5, ';')));
    PSum := StrToFloat(cmCorrectFloat(cmGetWord(S, 6, ';')));
    RSum := StrToFloat(cmCorrectFloat(cmGetWord(S, 7, ';')));
    if (Saldo = 0) and (PSum = 0) and (RSum = 0) then
      Exit;
    // сканируем договор
    DogCode := ScanDogovor1(S, DType);
    // обороты
    Q1.ParamByName('Data').AsDate := D1;
    Q1.ParamByName('DogImMKD').AsInteger := DogCode;
    Q1.ParamByName('PType').AsInteger := 1;
    Q1.ParamByName('DType').AsInteger := DType;
    Q1.ParamByName('Saldo').AsCurrency := Saldo;
    Q1.ParamByName('PSum').AsCurrency := PSum;
    Q1.ParamByName('RSum').AsCurrency := RSum;
    Q1.ExecQuery;
  end;

  procedure ScanA(AMsg: string; Poz: integer; DType: smallint);
  var
    S1: string;
    i: integer;
  begin
    Msg(AMsg);
    for i := Poz + 1 to fList.Count - 1 do
    begin
      S1 := fList[i];
      if S1[1] = '#' then
        Break;
      try
        AddArendator(S1, DType);
      except
        Msg('Except: ' + S1);
      end;
      Progress(fList.Count, i);
    end;
  end;

  procedure ScanB(AMsg: string; Poz: integer; DType: smallint);
  var
    S1: string;
    i: integer;
  begin
    Msg(AMsg);
    for i := Poz + 1 to fList.Count - 1 do
    begin
      S1 := fList[i];
      if S1[1] = '#' then
        Break;
      try
        AddArendator1(S1, DType);
      except
        Msg('Except: ' + S1);
      end;
      Progress(fList.Count, i);
    end;
  end;

  procedure ScanServisNGP(Poz: integer);
  var
    i: integer;
    StreetName, HouseStr: string;
    Street, House: integer;
    NGPRoom: string;
    ARec, ARec1: TcmRec;
  begin
    Msg('Сканирование данных по начислению текущего обслуживания НЖП...');
    for i := Poz + 1 to fList.Count - 1 do
    begin
      Progress(fList.Count, i);
      S := fList[i];
      if S[1] = '#' then
        Break; // новый блок
      // сканируем реквизиты договора
      AddArendator(S, 4, false);
      // улица и дом
      StreetName := CorrectStreetName(cmGetWord(S, 9, ';'));
      if StreetName = '' then
        Continue;
      HouseStr := cmGetWord(S, 10, ';');
      Street := GetStreetCode(StreetName);
      if Street > 0 then
        House := Self.GetHouseCodeExt(Street, HouseStr)
      else
        House := -1;

      // ссылка на справочник помещений
      NGPRoom := cmGetWord(S, 17, ';');
      // получаем код дома по помещению
      FindNGPRoom.ParamByName('Code').AsString := '@' + NGPRoom;
      FindNGPRoom.ExecQuery;
      if not FindNGPRoom.Eof then
      begin
        // обновляем реквизиты помещения
        UpdNGPRoom.ParamByName('Code').AsString := '@' + NGPRoom;
        UpdNGPRoom.ParamByName('TS').AsString := cmGetWord(S, 13, ';');
        UpdNGPRoom.ParamByName('SB').AsString := cmGetWord(S, 1, ';');
        UpdNGPRoom.ParamByName('SBName').AsString := cmGetWord(S, 2, ';');
        UpdNGPRoom.ParamByName('Target').AsString := cmGetWord(S, 15, ';');
        UpdNGPRoom.ExecQuery;
        // получаем дом
        House := FindNGPRoom.FN('House').AsInteger;
      end
      else
      begin
        NGPRoom := '';
        Msg('-->Не указано помещение по договору');
        Msg(S);
      end;

      // дом не найден
      if (House = -1) then
      begin
        House := 615;
        Msg('-->Дом не найден.');
        Msg(S);
      end;

      // получаем данные
      if (House > 0) then
      begin
        AddRec.ParamByName('HouseNG').AsInteger := HeadCode;
        AddRec.ParamByName('House').AsInteger := House;
        AddRec.ParamByName('KCode').AsString := cmGetWord(S, 1, ';');
        AddRec.ParamByName('DCode').AsString := cmGetWord(S, 3, ';');
        AddRec.ParamByName('Name').AsString := cmGetWord(S, 2, ';');
        AddRec.ParamByName('Total').AsString := cmGetWord(S, 11, ';');
        AddRec.ParamByName('SN').AsString := cmGetWord(S, 5, ';');
        AddRec.ParamByName('Nach').AsString := cmGetWord(S, 6, ';');
        AddRec.ParamByName('Opl').AsString := cmGetWord(S, 7, ';');
        AddRec.ParamByName('SK').AsString := cmGetWord(S, 8, ';');
        AddRec.ParamByName('Note').AsString := cmGetWord(S, 4, ';');
        AddRec.ParamByName('NGPRoom').AsString := NGPRoom;
        AddRec.ExecQuery;
      end;
      // добавляем запись в дерево
      ARec := TDS.FindByKey(IntToStr(House));
      if ARec = nil then
        TcmRec.Create(S, TDS.RootHandle, 1, TDS.RecordsList, House)
      else
      begin
        // получаем ссылку на помещение
        if House <> 615 then // если дом найден
          ARec1 := ARec.FindRec(IntToStr(House) + ':' + cmGetWord(S, 17, ';'))
        else
          ARec1 := nil;
        // добавляем запись по помещению \ договору
        if ARec1 = nil then
          TcmRec.Create(S, ARec, 2, TDS.RecordsList, House)
        else
          TcmRec.Create(S, ARec1, 3, TDS.RecordsList, House);
      end;
    end;
  end;

  procedure AddBuhSpravka;
  var
    AList: TStringList;
    i: integer;
    Schet1, ACode1, AName1, DCode1, DName1: string;
    Schet2, ACode2, AName2, DCode2, DName2: string;
    Summa: currency;
    AQ1, AQ2: TFIBQuery;
  begin
    if not FileExists(BuhFileName) then
      Exit;
    // формируем запросы
    AQ1 := cmDB.GetQuery('select Code from HouseNGList where HouseNG=:Code ' +
      'and KCode=:KCode and DCode=:DCode', cmDB.WT);
    AQ2 := cmDB.GetQuery
      ('update HouseNGList set Spr1=Spr1+:Sum1, Spr2=Spr2+:Sum2 where Code=:Code',
      cmDB.WT);
    Msg('Загружаем файл бухгалтерской справки...');
    AList := TStringList.Create;
    AList.LoadFromFile(BuhFileName);
    for i := 1 to AList.Count - 1 do
    begin
      Progress(AList.Count, i);
      // читаем реквизиты из строки
      S := AList[i];
      Schet1 := cmGetWord(S, 1, ';');
      ACode1 := '@' + cmGetWord(S, 2, ';');
      AName1 := cmGetWord(S, 3, ';');
      DCode1 := '@' + cmGetWord(S, 4, ';');
      DName1 := cmGetWord(S, 5, ';');
      Schet2 := cmGetWord(S, 6, ';');
      ACode2 := '@' + cmGetWord(S, 7, ';');
      AName2 := cmGetWord(S, 8, ';');
      DCode2 := '@' + cmGetWord(S, 9, ';');
      DName2 := cmGetWord(S, 10, ';');
      Summa := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 11, ';')), 0);
      if Summa = 0 then
        Continue;
      // разносим бухгалтерскую справку
      if (Schet1 = '@76.8') then
      begin
        AQ1.ParamByName('Code').AsInteger := HeadCode;
        AQ1.ParamByName('KCode').AsString := ACode1;
        AQ1.ParamByName('DCode').AsString := DCode1;
        AQ1.ExecQuery;
        if AQ1.Eof then
          Msg('Не найден договор: ' + ACode1 + '  ' + AName1 + '  ' + DCode1 +
            '  ' + DName1)
        else
        begin
          AQ2.ParamByName('Code').AsInteger := AQ1.FN('Code').AsInteger;
          AQ2.ParamByName('Sum1').AsCurrency := Summa;
          AQ2.ParamByName('Sum2').AsCurrency := 0;
          AQ2.ExecQuery;
        end;
      end;
      // разносим бухгалтерскую справку
      if (Schet2 = '@76.8') then
      begin
        AQ1.ParamByName('Code').AsInteger := HeadCode;
        AQ1.ParamByName('KCode').AsString := ACode2;
        AQ1.ParamByName('DCode').AsString := DCode2;
        AQ1.ExecQuery;
        if AQ1.Eof then
          Msg('Не найден договор: ' + ACode2 + '  ' + AName2 + '  ' + DCode2 +
            '  ' + DName2)
        else
        begin
          AQ2.ParamByName('Code').AsInteger := AQ1.FN('Code').AsInteger;
          AQ2.ParamByName('Sum1').AsCurrency := 0;
          AQ2.ParamByName('Sum2').AsCurrency := Summa;
          AQ2.ExecQuery;
        end;
      end;
      // корректируем наше деревоъ
      if Schet1 <> '@76.8' then
        DCode1 := '';
      if Schet2 <> '@76.8' then
        DCode2 := '';
      if (DCode1 <> '') or (DCode2 <> '') then
        TDS.RootHandle.MoveSumma(DCode1, DCode2, Summa);
    end;

    cmDB.FreeQuery(AQ1);
    cmDB.FreeQuery(AQ2);
    AList.Free;
  end;

begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');

  // настройка дерева
  VT.CustomDataSource := nil;
  VT.DeleteAllColumns;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Объект';
    Width := 500;
  end;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Площадь';
    Width := 70;
  end;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Нач.сальдо';
    Width := 70;
  end;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Начисления';
    Width := 70;
  end;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Оплаты';
    Width := 70;
  end;
  with VT.CreateColumn do
  begin
    Caption.Text := 'Кон.сальдо';
    Width := 70;
  end;

  fList.LoadFromFile(FileName);
  // читаем заголовок - период
  S := cmGetWord(fList[0], 1, ';');
  if S <> '#DATE' then
  begin
    Msg('Некорректный формат файла.');
    Exit;
  end;

  // сканируем заголовок файла
  S := cmGetWord(fList[0], 2, ';');
  DecodeDate(StrToDate(S), aY, aM, aD);
  Y := aY;
  M := aM;
  TDS.CreateRoot(fList[0]); // Добавляем заголовок в дерево

  // код заголовка данных НЖП
  if NGPOnly then
    HeadCode := GetHeadCode(M, Y);

  // чистим файл оборотов за период
  D1 := StrToDate(cmGetWord(fList[0], 2, ';'));
  D2 := StrToDate(cmGetWord(fList[0], 3, ';'));
  // удаляем обороты за период
  if not NGPOnly then
    cmDB.ExecQuery('DELETE FROM MoveImMKD WHERE Data BETWEEN '#39 +
      DatetoStr(D1) + #39 + ' and '#39 + DatetoStr(D2) + #39);

  Msg('Период: ' + cmGetWord(fList[0], 2, ';') + '  ' +
    cmGetWord(fList[0], 3, ';'));

  // запросы для вставки данных
  Q1 := cmDB.GetQuery
    ('insert into MoveImMKD(Data, DogImMkd, PType, DType, Saldo, PSum, RSum) ' +
    'values(:Data, :DogImMKD, :PType, :DType, :Saldo, :PSum, :RSum)', cmDB.WT);

  // загонка номер 2 - сканируем файл
  for i := 1 to fList.Count - 1 do
  begin
    if NGPOnly then
    begin
      if fList[i] = '#76.8;' then
        ScanServisNGP(i);
    end
    else
    begin
      if fList[i] = '#76.8;' then
        ScanA('Обслуживание...', i, 4)
      else if fList[i] = '#76.19;' then
        ScanA('Арендаторы..', i, 3)
      else if fList[i] = '#62.БС;' then
        ScanB('Базовые станции..', i, 1)
      else if fList[i] = '#62.ИН;' then
        ScanB('Интернет провайдеры..', i, 2)
      else if fList[i] = '#62.РК;' then
        ScanB('Реклама..', i, 0)
      else if AnsiUpperCase(fList[i]) = '#62.КЛ;' then
        ScanB('Колясочные..', i, 5)
    end;
    Progress(fList.Count, i);
  end;

  // удаляем запросы
  cmDB.FreeQuery(Q1);

  if NGPOnly then
    AddBuhSpravka;

  // расчет итогов
  TDS.RootHandle.CalcItog;
  // подключаем набор данных
  VT.CustomDataSource := TDS;

  Msg('Загрузка данных завершена');
  if cmDBUnit.cmDB.WT.Active then
    cmDBUnit.cmDB.WT.Commit;
end;

function TdezLoadXML.GetHeadCode(aM, aY: integer): integer;
begin
  DelHead.ParamByName('M').AsInteger := M;
  DelHead.ParamByName('Y').AsInteger := Y;
  DelHead.ExecQuery;
  AddHead.ParamByName('M').AsInteger := M;
  AddHead.ParamByName('Y').AsInteger := Y;
  AddHead.ExecQuery;
  GetHead.ParamByName('M').AsInteger := M;
  GetHead.ParamByName('Y').AsInteger := Y;
  GetHead.ExecQuery;
  Result := GetHead.FN('Code').AsInteger;
end;

procedure TdezLoadXML.Prepare;
begin
  inherited;
  GetHead := cmDB.GetQuery('select * from HouseNG where M=:M and Y=:Y',
    cmDB.WT);
  AddHead := cmDB.GetQuery('insert into HouseNG(M,Y) values(:M,:Y)', cmDB.WT);
  DelHead := cmDB.GetQuery('delete from HouseNG where M=:M and Y=:Y', cmDB.WT);
  AddRec := cmDB.GetQuery
    ('insert into HouseNGList(HouseNG, House, KCode, DCode, INN, Name, Total, SN, Nach, Opl, SK, Note, NGPRoom) '
    + 'values(:HouseNG, :House, :KCode, :DCode, :INN, :Name, :Total, :SN, :Nach, :Opl, :SK, :Note, :NGPRoom)',
    cmDB.WT);
  FindArendator := cmDB.GetQuery
    ('select * from Arendator where Code1C=:Code', cmDB.WT);
  AddArendator := cmDB.GetQuery
    ('insert into Arendator(Name, FullName, Code1C, Note) ' +
    'values(:Name, :FullName, :Code1C, :Note)', cmDB.WT);
  EditArendator := cmDB.GetQuery
    ('update Arendator set Name=:Name, FullName=:FullName where Code=:Code',
    cmDB.WT);
  FindDog := cmDB.GetQuery('select * from DogImMKD where Code1C=:Code',
    cmDB.WT);
  AddDog := cmDB.GetQuery
    ('insert into DogImMKD(Arendator, Nomer, D1, D2, Note, DType, RType, Tarif, Code1C, State, SType)'
    + ' values(:Arendator, :Nomer, :D1, :D2, :Note, :DType, :RType, :Tarif, :Code1C, :State, :SType)',
    cmDB.WT);
  EditDog := cmDB.GetQuery
    ('update DogImMKD set Note=:Note, State=:State, DType=:DType, SType=:SType where Code=:Code',
    cmDB.WT);
  FindIm := cmDB.GetQuery
    ('select * from ImMKD where House=:House and AType=:AType and SQ=:SQ',
    cmDB.WT);
  AddIm := cmDB.GetQuery
    ('insert into ImMKD(House, AType, Note, Cost, SQ, DType) ' +
    'values(:House, :AType, :Note, :Cost, :SQ, :DType)', cmDB.WT);
  EditIm := cmDB.GetQuery
    ('update ImMKD set DType=:DType, Note=:Note where House=:House and AType=:Atype and SQ=:SQ',
    cmDB.WT);
  UpdIm := cmDB.GetQuery
    ('update ImMKD set DType=:DType, Note=:Note where Code=:Code', cmDB.WT);
  FindImSQ := cmDB.GetQuery
    ('select * from SQImMKD where DogImMKD=:Code', cmDB.WT);
  AddImSQ := cmDB.GetQuery
    ('insert into SQImMKD(ImMKD, DogImMKD, Tarif, D1, D2, Data) ' +
    'values(:ImMKD, :DogImMKD, :Tarif, :D1, :D2, :Data)', cmDB.WT);
  AddImData := cmDB.GetQuery
    ('insert into DogImData(Data, DogImMKD) values(:Data, :DogImMKD)', cmDB.WT);
  UpdNGPRoom := cmDB.GetQuery
    ('update NGPRoom set TS=:TS, SB=:SB, SBName=:SBName, Target=:Target ' +
    'where Code=:Code', cmDB.WT);
  FindNGPRoom := cmDB.GetQuery
    ('select * from NGPRoom where Code=:Code', cmDB.WT);
end;

{ TdezXMLData }

procedure TdezXMLData.AddRec(Q: TFIBQuery; AHouseNG: integer);
begin
  Q.ParamByName('HouseNG').AsInteger := AHouseNG;
  Q.ParamByName('House').AsInteger := House;
  Q.ParamByName('KCode').AsString := Code;
  Q.ParamByName('Name').AsString := Name;
  Q.ParamByName('INN').AsString := INN;
  Q.ParamByName('Total').AsCurrency := Total;
  Q.ParamByName('SN').AsCurrency := SN;
  Q.ParamByName('Nach').AsCurrency := Nach;
  Q.ParamByName('Opl').AsCurrency := Opl;
  Q.ParamByName('SK').AsCurrency := SK;
  Q.ExecQuery;
end;

constructor TdezXMLData.Create;
begin
  fSN := 0;
  fNach := 0;
  fOpl := 0;
  fSK := 0;
  fHouse := -1;
  fTotal := 0;
end;

procedure TdezXMLData.SetNach(const Value: currency);
begin
  fNach := fNach + Value;
end;

procedure TdezXMLData.SetOpl(const Value: currency);
begin
  fOpl := fOpl + Value;
end;

procedure TdezXMLData.SetSK(const Value: currency);
begin
  fSK := fSK + Value;
end;

procedure TdezXMLData.SetSN(const Value: currency);
begin
  fSN := fSN + Value;
end;

{ TdezLoadFact }

constructor TdezLoadFact.Create(AFileName: string; aM, aY, aSrv: integer);
begin
  fFileName := AFileName;
  fM := aM;
  fY := aY;
  fSrv := aSrv;
  T := TcmTextDataSet.Create;
  Prepare;
end;

destructor TdezLoadFact.Destroy;
begin
  T.Free;
  cmDBUnit.cmDB.FreeQuery(GetHead);
  cmDBUnit.cmDB.FreeQuery(AddHead);
  cmDBUnit.cmDB.FreeQuery(DelHead);
  cmDBUnit.cmDB.FreeQuery(BDR1);
  cmDBUnit.cmDB.FreeQuery(BDR2);
  cmDBUnit.cmDB.FreeQuery(BDR3);
  inherited;
end;

procedure TdezLoadFact.Execute;
var
  i, HCode: integer;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  // форматируем файл
  if not RecreateFile then
    raise EMyException.Create('Некорректный формат файла - ' + FileName);
  // открываем набор данных
  T.Open(FactFileName);
  Msg('Загружаем данные из файла - ' + FileName);
  // регистрация заголовка
  HCode := GetHeadCode;
  // сканируем записи
  i := 0;
  while not T.Eof do
  begin
    ScanRecord(HCode);
    T.GotoNext;
    Inc(i);
    OnProgress(RecordCount, i);
  end;
  Msg('Загрузка данных завершена');
  cmDBUnit.cmDB.WT.Commit;
end;

function TdezLoadFact.GetHeadCode: integer;
begin
  DelHead.ParamByName('M').AsInteger := M;
  DelHead.ParamByName('Y').AsInteger := Y;
  DelHead.ParamByName('Srv').AsInteger := Srv;
  DelHead.ExecQuery;
  AddHead.ParamByName('M').AsInteger := M;
  AddHead.ParamByName('Y').AsInteger := Y;
  AddHead.ParamByName('Srv').AsInteger := Srv;
  AddHead.ExecQuery;
  GetHead.ParamByName('M').AsInteger := M;
  GetHead.ParamByName('Y').AsInteger := Y;
  GetHead.ParamByName('Srv').AsInteger := Srv;
  GetHead.ExecQuery;
  Result := GetHead.FN('Code').AsInteger;
end;

procedure TdezLoadFact.Prepare;
begin
  inherited;
  GetHead := cmDBUnit.cmDB.GetQuery
    ('select * from FBDR where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  AddHead := cmDBUnit.cmDB.GetQuery
    ('insert into FBDR(M,Y,HouseSrv) values(:M,:Y,:Srv)', cmDBUnit.cmDB.WT);
  DelHead := cmDBUnit.cmDB.GetQuery
    ('delete from FBDR where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  BDR1 := cmDBUnit.cmDB.GetQuery('INSERT INTO FBDR1(FBDR,House,' +
    'F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24,F25) VALUES('
    + ':FBDR,:House,:F3,:F4,:F5,:F6,:F7,:F8,:F9,:F10,:F11,:F12,:F13,:F14,:F15,:F16,:F17,:F18,:F19,:F20,:F21,:F22,:F23,:F24,:F25)',
    cmDBUnit.cmDB.WT);
  BDR2 := cmDBUnit.cmDB.GetQuery('INSERT INTO FBDR2(FBDR,House,' +
    'F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24,F25,F26,F27,F28,F29,F30,F31) VALUES('
    + ':FBDR,:House,:F3,:F4,:F5,:F6,:F7,:F8,:F9,:F10,:F11,:F12,:F13,:F14,:F15,:F16,:F17,:F18,:F19,:F20,:F21,:F22,:F23,:F24,:F25,:F26,:F27,:F28,:F29,:F30,:F31)',
    cmDBUnit.cmDB.WT);
  BDR3 := cmDBUnit.cmDB.GetQuery('INSERT INTO FBDR3(FBDR,House,' +
    'F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24,F25,F26,F27,F28,F29,F30) VALUES('
    + ':FBDR,:House,:F3,:F4,:F5,:F6,:F7,:F8,:F9,:F10,:F11,:F12,:F13,:F14,:F15,:F16,:F17,:F18,:F19,:F20,:F21,:F22,:F23,:F24,:F25,:F26,:F27,:F28,:F29,:F30)',
    cmDBUnit.cmDB.WT);
end;

function TdezLoadFact.RecreateFile: boolean;
var
  List: TStringList;
  i, Count: integer;
  S: string;
begin
  Result := false;
  List := TStringList.Create;
  try
    List.LoadFromFile(FileName);
    for i := List.Count - 1 downto 0 do
    begin
      if StrToIntDef(cmGetWord(List[i], 1, #9), 0) = 0 then
        List.Delete(i);
    end;
    fRecordCount := List.Count;
    if List.Count > 0 then
    begin
      Result := true;
      Count := cmWordCount(List[0], #9);
      S := '';
      for i := 0 to Count do
        S := S + 'F' + IntToStr(i) + #9;
      Delete(S, Length(S), 1);
      List.Insert(0, S);
      List.SaveToFile(FactFileName);
    end;
  finally
    List.Free;
  end;
end;

procedure TdezLoadFact.ScanRecord(ACode: integer);
var
  S, AStreet, AHouse: string;
  Street, House: integer;

  procedure Add1;
  begin
    BDR2.ParamByName('FBDR').AsInteger := ACode;
    BDR2.ParamByName('House').AsInteger := House;
    BDR2.ParamByName('F3').AsDouble := T.Numeric('F2');
    BDR2.ParamByName('F4').AsDouble := T.Numeric('F4');
    BDR2.ParamByName('F5').AsDouble := T.Numeric('F5');
    BDR2.ParamByName('F6').AsDouble := T.Numeric('F6');
    BDR2.ParamByName('F7').AsDouble := T.Numeric('F7');
    BDR2.ParamByName('F8').AsDouble := T.Numeric('F11');
    BDR2.ParamByName('F9').AsDouble := T.Numeric('F14');
    BDR2.ParamByName('F10').AsDouble := T.Numeric('F15');
    BDR2.ParamByName('F11').AsDouble := T.Numeric('F16');
    BDR2.ParamByName('F12').AsDouble := T.Numeric('F17');
    BDR2.ParamByName('F13').AsDouble := T.Numeric('F18');
    BDR2.ParamByName('F14').AsDouble := T.Numeric('F19');
    BDR2.ParamByName('F15').AsDouble := T.Numeric('F20');
    BDR2.ParamByName('F16').AsDouble := T.Numeric('F21');
    BDR2.ParamByName('F17').AsDouble := T.Numeric('F22');
    BDR2.ParamByName('F18').AsDouble := T.Numeric('F23');
    BDR2.ParamByName('F19').AsDouble := T.Numeric('F24');
    BDR2.ParamByName('F20').AsDouble := T.Numeric('F25');
    BDR2.ParamByName('F21').AsDouble := T.Numeric('F26');
    BDR2.ParamByName('F22').AsDouble := T.Numeric('F27');
    BDR2.ParamByName('F23').AsDouble := T.Numeric('F28');
    BDR2.ParamByName('F24').AsDouble := T.Numeric('F29');
    BDR2.ParamByName('F25').AsDouble := T.Numeric('F30');
    BDR2.ParamByName('F26').AsDouble := T.Numeric('F31');
    BDR2.ParamByName('F27').AsDouble := T.Numeric('F32');
    BDR2.ParamByName('F28').AsDouble := T.Numeric('F33');
    BDR2.ParamByName('F29').AsDouble := T.Numeric('F34');
    BDR2.ParamByName('F30').AsDouble := T.Numeric('F35');
    BDR2.ParamByName('F31').AsDouble := T.Numeric('F36');
    BDR2.ExecQuery;
  end;

  procedure Add2;
  begin
    BDR3.ParamByName('FBDR').AsInteger := ACode;
    BDR3.ParamByName('House').AsInteger := House;
    BDR3.ParamByName('F3').AsDouble := T.Numeric('F2');
    BDR3.ParamByName('F4').AsDouble := T.Numeric('F4');
    BDR3.ParamByName('F5').AsDouble := T.Numeric('F5');
    BDR3.ParamByName('F6').AsDouble := T.Numeric('F6');
    BDR3.ParamByName('F7').AsDouble := T.Numeric('F7');
    BDR3.ParamByName('F8').AsDouble := T.Numeric('F11');
    BDR3.ParamByName('F9').AsDouble := T.Numeric('F14');
    BDR3.ParamByName('F10').AsDouble := T.Numeric('F15');
    BDR3.ParamByName('F11').AsDouble := T.Numeric('F16');
    BDR3.ParamByName('F12').AsDouble := T.Numeric('F17');
    BDR3.ParamByName('F13').AsDouble := T.Numeric('F18');
    BDR3.ParamByName('F14').AsDouble := T.Numeric('F19');
    BDR3.ParamByName('F15').AsDouble := T.Numeric('F20');
    BDR3.ParamByName('F16').AsDouble := T.Numeric('F21');
    BDR3.ParamByName('F17').AsDouble := T.Numeric('F22');
    BDR3.ParamByName('F18').AsDouble := T.Numeric('F23');
    BDR3.ParamByName('F19').AsDouble := T.Numeric('F24');
    BDR3.ParamByName('F20').AsDouble := T.Numeric('F25');
    BDR3.ParamByName('F21').AsDouble := T.Numeric('F26');
    BDR3.ParamByName('F22').AsDouble := T.Numeric('F27');
    BDR3.ParamByName('F23').AsDouble := T.Numeric('F28');
    BDR3.ParamByName('F24').AsDouble := T.Numeric('F29');
    BDR3.ParamByName('F25').AsDouble := T.Numeric('F30');
    BDR3.ParamByName('F26').AsDouble := T.Numeric('F31');
    BDR3.ParamByName('F27').AsDouble := T.Numeric('F32');
    BDR3.ParamByName('F28').AsDouble := T.Numeric('F33');
    BDR3.ParamByName('F29').AsDouble := T.Numeric('F34');
    BDR3.ParamByName('F30').AsDouble := T.Numeric('F35');
    BDR3.ExecQuery;
  end;

  procedure Add3;
  begin // FBDR1
    BDR1.ParamByName('FBDR').AsInteger := ACode;
    BDR1.ParamByName('House').AsInteger := House;
    BDR1.ParamByName('F3').AsDouble := T.Numeric('F2');
    BDR1.ParamByName('F4').AsDouble := T.Numeric('F4');
    BDR1.ParamByName('F5').AsDouble := T.Numeric('F5');
    BDR1.ParamByName('F6').AsDouble := T.Numeric('F6');
    BDR1.ParamByName('F7').AsDouble := T.Numeric('F7');
    BDR1.ParamByName('F8').AsDouble := T.Numeric('F11');
    BDR1.ParamByName('F9').AsDouble := T.Numeric('F14');
    BDR1.ParamByName('F10').AsDouble := T.Numeric('F15');
    BDR1.ParamByName('F11').AsDouble := T.Numeric('F16');
    BDR1.ParamByName('F12').AsDouble := T.Numeric('F17');
    BDR1.ParamByName('F13').AsDouble := T.Numeric('F18');
    BDR1.ParamByName('F14').AsDouble := T.Numeric('F19');
    BDR1.ParamByName('F15').AsDouble := T.Numeric('F20');
    BDR1.ParamByName('F16').AsDouble := T.Numeric('F21');
    BDR1.ParamByName('F17').AsDouble := T.Numeric('F22');
    BDR1.ParamByName('F18').AsDouble := T.Numeric('F23');
    if Srv in [1, 7] then
    begin
      BDR1.ParamByName('F25').AsDouble := T.Numeric('F24');
    end
    else
    begin
      BDR1.ParamByName('F19').AsDouble := T.Numeric('F24');
      BDR1.ParamByName('F20').AsDouble := T.Numeric('F25');
      BDR1.ParamByName('F21').AsDouble := T.Numeric('F26');
      BDR1.ParamByName('F22').AsDouble := T.Numeric('F27');
      BDR1.ParamByName('F23').AsDouble := T.Numeric('F28');
      BDR1.ParamByName('F24').AsDouble := T.Numeric('F29');
      BDR1.ParamByName('F25').AsDouble := T.Numeric('F30');
    end;
    BDR1.ExecQuery;
  end;

begin
  if T.Load('F0') = '' then
    Exit;
  S := T.Load('F1');
  AStreet := cmGetWord(S, 1, ',');
  AHouse := cmGetWord(S, 2, ',');
  Street := GetStreetCode(CorrectStreetName(AStreet));
  // получаем код дома
  House := GetHouseCodeExt(Street, AHouse);
  // if House=0 then Exit; //Дом не обслуживается ДЕЗ
  if House > 0 then
    case Srv of
      6:
        Add1;
      8:
        Add2;
    else
      Add3;
    end
  else
    Msg('Дом: ' + S + ' не найден в справочнике.');
end;

{ TdezLoadFactDoc }

constructor TdezLoadFactDoc.Create(AFileName: string; aM, aY, aSrv: integer);
begin
  fFileName := AFileName;
  fM := aM;
  fY := aY;
  fSrv := aSrv;
  fSrvType := 0;
  T := TcmTextDataSet.Create;
  Prepare;
end;

destructor TdezLoadFactDoc.Destroy;
begin
  cmDB.FreeQuery(GetHead);
  cmDB.FreeQuery(DelHead);
  cmDB.FreeQuery(AddHead);
  cmDB.FreeQuery(AddSpec);
  cmDB.FreeQuery(GetHead1);
  cmDB.FreeQuery(DelHead1);
  cmDB.FreeQuery(AddHead1);
  cmDB.FreeQuery(AddSpec1);
  T.Free;
  inherited;
end;

procedure TdezLoadFactDoc.Execute;
var
  i, HCode: integer;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  // форматируем файл
  if not RecreateFile then
    raise EMyException.Create('Некорректный формат файла - ' + FileName);
  // открываем набор данных
  T.Open(FactFileName);
  Msg('Загружаем данные из файла - ' + FileName);
  // регистрация заголовка
  HCode := GetHeadCode;
  // сканируем записи
  i := 0;
  while not T.Eof do
  begin
    ScanRecord(HCode);
    T.GotoNext;
    Inc(i);
    OnProgress(RecordCount, i);
  end;
  Msg('Загрузка данных завершена');
  cmDBUnit.cmDB.WT.Commit;
end;

function TdezLoadFactDoc.GetHeadCode: integer;
var
  Q1, Q2, Q3: TFIBQuery;
begin
  if SrvType = 0 then
  begin
    Q1 := DelHead;
    Q2 := AddHead;
    Q3 := GetHead;
  end
  else
  begin
    Q1 := DelHead1;
    Q2 := AddHead1;
    Q3 := GetHead1;
  end;
  Q1.ParamByName('M').AsInteger := M;
  Q1.ParamByName('Y').AsInteger := Y;
  Q1.ParamByName('Srv').AsInteger := Srv;
  Q1.ExecQuery;
  Q2.ParamByName('M').AsInteger := M;
  Q2.ParamByName('Y').AsInteger := Y;
  Q2.ParamByName('Srv').AsInteger := Srv;
  Q2.ExecQuery;
  Q3.ParamByName('M').AsInteger := M;
  Q3.ParamByName('Y').AsInteger := Y;
  Q3.ParamByName('Srv').AsInteger := Srv;
  Q3.ExecQuery;
  Result := Q3.FN('Code').AsInteger;
end;

procedure TdezLoadFactDoc.Prepare;
begin
  inherited;
  GetHead := cmDBUnit.cmDB.GetQuery
    ('select * from FactDoc where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  DelHead := cmDBUnit.cmDB.GetQuery
    ('delete from FactDoc where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  AddHead := cmDBUnit.cmDB.GetQuery
    ('insert into FactDoc(M,Y,HouseSrv) values(:M,:Y,:Srv)', cmDBUnit.cmDB.WT);
  AddSpec := cmDBUnit.cmDB.GetQuery
    ('insert into FactDocList(FactDoc,House,PlanSum,FactSum,Correct) ' +
    'values(:FactDoc, :House, :PlanSum, :FactSum, :Correct)', cmDBUnit.cmDB.WT);
  GetHead1 := cmDBUnit.cmDB.GetQuery
    ('select * from Fact1Doc where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  DelHead1 := cmDBUnit.cmDB.GetQuery
    ('delete from Fact1Doc where M=:M and Y=:Y and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  AddHead1 := cmDBUnit.cmDB.GetQuery
    ('insert into Fact1Doc(M,Y,HouseSrv) values(:M,:Y,:Srv)', cmDBUnit.cmDB.WT);
  AddSpec1 := cmDBUnit.cmDB.GetQuery
    ('insert into Fact1DocList(Fact1Doc,House,PlanSum,FactSum,Correct) ' +
    'values(:FactDoc, :House, :PlanSum, :FactSum, :Correct)', cmDBUnit.cmDB.WT);
end;

function TdezLoadFactDoc.RecreateFile: boolean;
var
  List: TStringList;
  i, Count: integer;
  S: string;
begin
  Result := false;
  List := TStringList.Create;
  try
    List.LoadFromFile(FileName);
    while List.Count > 0 do
    begin
      if cmGetWord(List[0], 2, #9) = '1' then
        Break
      else
        List.Delete(0);
    end;
    fRecordCount := List.Count;
    if List.Count > 0 then
    begin
      Result := true;
      Count := cmWordCount(List[0], #9);
      S := '';
      for i := 0 to Count do
        S := S + 'F' + IntToStr(i) + #9;
      Delete(S, Length(S), 1);
      List.Insert(0, S);
      List.SaveToFile(FactFileName);
    end;
  finally
    List.Free;
  end;
end;

procedure TdezLoadFactDoc.ScanRecord(ACode: integer);
var
  S, AStreet, AHouse: string;
  Street, House: integer;
  Q: TFIBQuery;
begin
  if T.Load('F1') = '' then
    Exit;
  S := T.Load('F2');
  AStreet := cmGetWord(S, 1, ',');
  AHouse := cmGetWord(S, 2, ',');
  Street := GetStreetCode(CorrectStreetName(AStreet));
  // получаем код дома
  House := GetHouseCodeExt(Street, AHouse);
  if House = 0 then
    Exit; // Дом не обслуживается ДЕЗ
  if (House > 0) and (T.Numeric('F4') > 0) then
  begin
    if SrvType = 0 then
      Q := AddSpec
    else
      Q := AddSpec1;
    Q.ParamByName('FactDoc').AsInteger := ACode;
    Q.ParamByName('House').AsInteger := House;
    Q.ParamByName('FactSum').AsDouble := T.Numeric('F4');
    Q.ExecQuery;
  end;
end;

{ ToiObject }

constructor ToiObject.Create;
begin
  inherited;
  fSaldo := 0;
  fPSum := 0;
  fRSum := 0;
  fSQ := 0;
  fEntrance := 0;
  fCost := 0;
  fIsData := false;
end;

function ToiObject.GetCalcBase(aCalcType: ToiCalcType): currency;
begin
  case aCalcType of
    oiStandard:
      Result := SQ;
    oiSumma:
      Result := Cost;
    oiSQ:
      Result := Entrance;
  else
    Result := 1;
  end;
  if Result = 0 then
    Result := 1;
end;

{ TioCalcList }

procedure ToiCalcList.AddHouseMKD(ACode: integer);
var
  Obj: ToiObject;
  i: integer;
  HouseStr: string;
  IsAdd: boolean;
begin
  Q2.ParamByName('Code').AsInteger := DogImMKD;
  Q2.ExecQuery;
  IsAdd := false;
  // добавляем дома по договору
  while not Q2.Eof do
  begin
    IsAdd := true;
    HouseStr := Q2.FN('House').AsString;
    i := Self.IndexOf(HouseStr);
    if i >= 0 then
    begin
      Obj := ToiObject(Objects[i]);
      Obj.IsData := true;
      Obj.Entrance := Q2.FN('Entrance').AsInteger;
      Obj.Cost := Q2.FN('Tarif').AsCurrency;
    end
    else
    begin
      Obj := ToiObject.Create;
      Obj.IsData := true;
      Obj.Arendator := Q2.FN('Arendator').AsInteger;
      Obj.DogImMKD := DogImMKD;
      Obj.House := Q2.FN('House').AsInteger;
      Obj.Entrance := Q2.FN('Entrance').AsInteger;
      Obj.Cost := Q2.FN('Tarif').AsCurrency;
      AddObject(Q2.FN('House').AsString, Obj);
    end;
    Q2.Next;
  end;
  // если данные отсутствуют, добавляем левый дом
  if not IsAdd then
  begin
    Obj := ToiObject.Create;
    Obj.IsData := true;
    Obj.Arendator := ACode;
    Obj.DogImMKD := DogImMKD;
    Obj.House := VirtualHouse; // левый дом
    Obj.Entrance := 1;
    Obj.Cost := 1;
    AddObject(IntToStr(VirtualHouse), Obj);
  end;
end;

procedure ToiCalcList.AddSQMKD(ACode: integer);
var
  Obj: ToiObject;
  i: integer;
  HouseStr: string;
  IsAdd: boolean;
begin
  Q1.ParamByName('Code').AsInteger := DogImMKD;
  Q1.ExecQuery;
  IsAdd := false;
  while not Q1.Eof do
  begin
    IsAdd := true;
    HouseStr := Q1.FN('House').AsString;
    i := Self.IndexOf(HouseStr);
    if i >= 0 then
    begin
      Obj := ToiObject(Objects[i]);
      Obj.IsData := true;
      Obj.SQ := Q1.FN('SQ').AsCurrency;
      Obj.Cost := Q1.FN('Cost').AsCurrency;
    end
    else
    begin
      Obj := ToiObject.Create;
      Obj.IsData := true;
      Obj.Arendator := Q1.FN('Arendator').AsInteger;
      Obj.DogImMKD := DogImMKD;
      Obj.House := Q1.FN('House').AsInteger;
      Obj.SQ := Q1.FN('SQ').AsInteger;
      Obj.Cost := Q1.FN('Cost').AsCurrency;
      AddObject(Q1.FN('House').AsString, Obj);
    end;
    Q1.Next;
  end;
  // если данные отсутствуют, добавляем левый дом
  if not IsAdd then
  begin
    Obj := ToiObject.Create;
    Obj.IsData := true;
    Obj.Arendator := ACode;
    Obj.DogImMKD := DogImMKD;
    Obj.House := VirtualHouse; // левый дом
    Obj.Entrance := 1;
    Obj.Cost := 1;
    AddObject(IntToStr(VirtualHouse), Obj);
  end;
end;

constructor ToiCalcList.Create;
begin
  inherited;
  fCalcType := oiStandard;
  fDType := 0;
  // запрос для выборки сальдо на начало периода
  Q := cmDB.GetQuery
    ('select a.Arendator, a.House, a.Saldo, a.PSum, a.RSum, b.Total_SQ ' +
    'from HMoveImMKD a left join House b on (a.House=b.Code) ' +
    'where DogImMKD=:DogImMKD and Data between :D1 and :D2 and a.DType=:DType',
    cmDB.WT);
  // выбираем объекты по договору
  Q1 := cmDB.GetQuery('select b.House, b.SQ, b.Cost, c.Arendator ' +
    ' from SQImMKD a left join ImMKD b on (a.ImMKD=b.Code) ' +
    ' left join DogImMKD c on (a.DogImMKD=c.Code) ' +
    ' where DogImMKD=:Code', cmDB.WT);
  // выбираем дома по договору
  Q2 := cmDB.GetQuery
    ('select a.House, a.Tarif, b.Arendator, IIF(c.Entrance_CNT=0, 1, c.Entrance_CNT) Entrance '
    + 'from HouseImMKD a left join DogImMKD b on (a.DogImMKD=b.Code) ' +
    ' left join House c on (a.House=c.Code) ' +
    ' where DogImMKD=:Code', cmDB.WT);
  // запись данных в базу
  Q3 := cmDB.GetQuery
    ('insert into HMoveImMKD(Data, Arendator, DogImMKD, House, DType,' +
    'Saldo, PSum, RSum, Note, Saldo1, PSum1, RSum1) ' +
    ' VALUES(:Data, :Arendator, :DogImMKD, :House, :DType, :Saldo, :PSum, :RSum, :Note, '
    + ':Saldo1, :PSum1, :RSum1)', cmDB.WT);
end;

destructor ToiCalcList.Destroy;
var
  i: integer;
begin
  cmDB.FreeQuery(Q);
  cmDB.FreeQuery(Q1);
  cmDB.FreeQuery(Q2);
  cmDB.FreeQuery(Q3);
  for i := 0 to Count - 1 do
    Objects[i].Free;
  inherited;
end;

function ToiCalcList.DividKoef(aSumma: currency): double;
var
  i: integer;
  Obj: ToiObject;
begin
  Result := 0;
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if Obj.IsData then
    begin
      case CalcType of
        oiStandard:
          Result := Result + Obj.SQ;
        oiSumma:
          Result := Result + Obj.Cost;
        oiSQ:
          Result := Result + Obj.Entrance;
        oiCount:
          Result := Result + 1;
      end;
    end;
  end;
  // if Result=0 then Result:=Count;
  if Result = 0 then
    Result := 1;
  Result := aSumma / Result;
end;

function ToiCalcList.GetSaldo: currency;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to Count - 1 do
    Result := Result + ToiObject(Objects[i]).Saldo;
end;

procedure ToiCalcList.CorrectStartSaldo(aSaldo: currency);
var
  Koef: double;
  i: integer;
  Obj: ToiObject;
  Curr: currency;
begin
  if GetSaldo > 0 then
    Exit;
  // второй заход - разносим начисления
  Koef := DividKoef(aSaldo);
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if Obj.IsData then
      Obj.Saldo := Obj.GetCalcBase(CalcType) * Koef;
  end;
  // сверка сальдо
  Curr := aSaldo - GetSaldo;
  if (Count > 0) then
  begin
    Obj := ToiObject(Objects[0]);
    Obj.Saldo := Obj.Saldo + Curr;
  end;
end;

procedure ToiCalcList.MakeStartSaldoList(aDType: smallint; NewSaldo: currency);
var
  aD1, aD2: TDateTime;
  D, M, Y: word;
  Obj: ToiObject;
  Summa, Koef: currency;
  i: integer;
begin
  // опреляем период для выборки данных по договору
  aD2 := D1 - 1;
  DecodeDate(aD2, Y, M, D);
  aD1 := EncodeDate(Y, M, 1);
  Q.ParamByName('DogImMKD').AsInteger := DogImMKD;
  Q.ParamByName('D1').AsDate := aD1;
  Q.ParamByName('D2').AsDate := aD2;
  Q.ParamByName('DType').AsInteger := aDType;
  Q.ExecQuery;
  while not Q.Eof do
  begin
    Summa := Q.FN('Saldo').AsCurrency + Q.FN('PSum').AsCurrency - Q.FN('RSum')
      .AsCurrency;
    if Abs(Summa) >= 0.01 then
    begin
      // добавляем запись в список
      Obj := ToiObject.Create;
      Obj.DogImMKD := DogImMKD;
      Obj.Arendator := Q.FN('Arendator').AsInteger;
      Obj.House := Q.FN('House').AsInteger;
      Obj.Saldo := Summa;
      AddObject(Q.FN('House').AsString, Obj);
    end;
    Q.Next;
  end;
  // коррекция итогов по сальдо
  Summa := NewSaldo - GetSaldo;
  if (Count > 0) then
  begin
    Koef := Summa / Count;
    for i := 0 to Count - 1 do
    begin
      Obj := ToiObject(Objects[i]);
      Obj.Saldo := Obj.Saldo + Koef;
    end;
  end;
end;

procedure ToiCalcList.SaveToBase;
var
  i: integer;
  Obj: ToiObject;
  Saldo1, PSum1, RSum1: currency;
begin
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    // Data, Arendator, DogImMKD, House, PType, Saldo, PSum, RSum, Note
    Q3.ParamByName('Data').AsDate := D1;
    Q3.ParamByName('Arendator').AsInteger := Obj.Arendator;
    Q3.ParamByName('DogImMKD').AsInteger := DogImMKD;
    Q3.ParamByName('House').AsInteger := Obj.House;
    Q3.ParamByName('DType').AsInteger := DType;
    Q3.ParamByName('Saldo').AsCurrency := Obj.Saldo;
    Q3.ParamByName('PSum').AsCurrency := Obj.PSum;
    Q3.ParamByName('RSum').AsCurrency := Obj.RSum;
    Q3.ParamByName('Note').AsString := '';
    Saldo1 := (Obj.Saldo / 118 * 100) * 0.75;
    PSum1 := (Obj.PSum / 118 * 100) * 0.75;
    RSum1 := (Obj.RSum / 118 * 100) * 0.75;
    Q3.ParamByName('Saldo1').AsCurrency := Saldo1;
    Q3.ParamByName('PSum1').AsCurrency := PSum1;
    Q3.ParamByName('RSum1').AsCurrency := RSum1;
    Q3.ExecQuery;
  end;
end;

procedure ToiCalcList.SetNachSumma(var aSumma: currency);
var
  Koef: double;
  i: integer;
  Obj: ToiObject;
begin
  // первый проход - списываем сальдо с закрытых домов
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if not Obj.IsData and (Obj.Saldo < 0) then
      if Abs(Obj.Saldo) >= aSumma then
      begin
        Obj.PSum := aSumma;
        aSumma := 0;
      end
      else
      begin
        Obj.PSum := Abs(Obj.Saldo);
        aSumma := aSumma - Abs(Obj.Saldo);
      end;
    if aSumma = 0 then
      Exit;
  end;
  // второй заход - разносим начисления
  Koef := DividKoef(aSumma);
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if Obj.IsData then
    begin
      Obj.PSum := Obj.GetCalcBase(CalcType) * Koef;
      aSumma := aSumma - Obj.PSum;
    end;
  end;
end;

procedure ToiCalcList.SetOplataSumma(var aSumma: currency);
var
  Koef: double;
  i: integer;
  Obj: ToiObject;
begin
  // первый проход - списываем сальдо с закрытых домов
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if not Obj.IsData and (Obj.Saldo > 0) then
      if Obj.Saldo >= aSumma then
      begin
        Obj.RSum := aSumma;
        aSumma := 0;
      end
      else
      begin
        Obj.RSum := Obj.Saldo;
        aSumma := aSumma - Obj.Saldo;
      end;
    if aSumma = 0 then
      Exit;
  end;
  // второй заход - разнесение оплат
  Koef := DividKoef(aSumma);
  for i := 0 to Count - 1 do
  begin
    Obj := ToiObject(Objects[i]);
    if Obj.IsData then
    begin
      Obj.RSum := Obj.GetCalcBase(CalcType) * Koef;
      aSumma := aSumma - Obj.RSum;
    end;
  end;
end;

{ ToiProcess }

constructor ToiProcess.Create;
begin
  inherited;
  Q1 := cmDB.GetQuery
    ('select Count(*) Num from MoveImMKD where Data between :D1 and :D2',
    cmDB.WT);
  Q2 := cmDB.GetQuery
    ('select a.DogImMKD, a.DType, b.RType, b.Note, c.Code ACode, c.Name AName, '
    + ' Sum(a.Saldo) Saldo, Sum(a.PSum) PSum, Sum(a.RSum) RSum ' +
    ' from MoveImMKD a left join DogImMKD b on (a.DogImMKD=b.Code)' +
    ' left join Arendator c on (b.Arendator=c.Code) ' +
    ' where Data between :D1 and :D2 ' +
    ' group by a.DogImMKD, a.DType, b.RType, b.Note, c.Code, c.Name', cmDB.WT);
  Q3 := cmDB.GetQuery
    ('delete from HMoveImMKD where Data between :D1 and :D2', cmDB.WT);
end;

destructor ToiProcess.Destroy;
begin
  cmDB.FreeQuery(Q1);
  cmDB.FreeQuery(Q2);
  cmDB.FreeQuery(Q3);
  inherited;
end;

procedure ToiProcess.Execute;
var
  i: integer;

  procedure AddDog;
  var
    List: ToiCalcList;
    PSum, RSum: currency;
    DogStr: string;
  begin
    DogStr := Q2.FN('AName').AsString + '  ' + Q2.FN('Note').AsString;
    List := ToiCalcList.Create;
    List.D1 := D1;
    List.D2 := D2;
    List.DogImMKD := Q2.FN('DogImMKD').AsInteger;
    List.CalcType := ToiCalcType(Q2.FN('RType').AsInteger);
    List.DType := Q2.FN('DType').AsInteger;
    // загрузка информации по домам договора
    if Q2.FN('RType').AsInteger <> 0 then
      List.AddHouseMKD(Q2.FN('ACode').AsInteger)
    else
      List.AddSQMKD(Q2.FN('ACode').AsInteger);
    // формируем начальное сальдо
    List.MakeStartSaldoList(List.DType, Q2.FN('Saldo').AsCurrency);
    // коррекция начального сальдо (по необходимости)
    List.CorrectStartSaldo(Q2.FN('Saldo').AsCurrency);
    if List.Count = 0 then
      Msg('Не указаны дома к договору: ' + DogStr)
    else // если сальдо не идет - сообщаем
      if Abs(List.GetSaldo - Q2.FN('Saldo').AsCurrency) > 0.01 then
      begin
        Msg('Некорректное сальдо:  ' + DogStr + ' -> ' + Q2.FN('Saldo').AsString
          + ' : ' + FormatFloat('#.##', List.GetSaldo));
      end;
    // обороты
    PSum := Q2.FN('PSum').AsCurrency;
    RSum := Q2.FN('RSum').AsCurrency;
    // начисления
    List.SetNachSumma(PSum);
    if Abs(PSum) > 0.02 then
      Msg('Начисления разнесены не полностью. ' + DogStr + '  ост(' +
        FormatFloat('0.00', PSum) + ')');
    // оплаты
    List.SetOplataSumma(RSum);
    if Abs(RSum) > 0.02 then
      Msg('Оплаты разнесены не полностью. ' + DogStr + '  ост(' +
        FormatFloat('0.00', RSum) + ')');
    // сохраняем данные
    List.SaveToBase;
    // чистим
    List.Free;
  end;

begin
  Prepare; // подготовка запросов
  Msg('Формируем данные за период: ' + DatetoStr(D1) + ' - ' + DatetoStr(D2));
  // количество активных договоров
  Q1.ParamByName('D1').AsDate := D1;
  Q1.ParamByName('D2').AsDate := D2;
  Q1.ExecQuery;
  Num := Q1.FN('Num').AsInteger;
  // чистка
  Msg('Чистим таблицу данных...');
  Q3.ParamByName('D1').AsDate := D1;
  Q3.ParamByName('D2').AsDate := D2;
  Q3.ExecQuery;
  // формируем данные
  Q2.ParamByName('D1').AsDate := D1;
  Q2.ParamByName('D2').AsDate := D2;
  Q2.ExecQuery;
  i := 0;
  while not Q2.Eof do
  begin
    if Q2.FN('DType').AsInteger <> 4 then
      AddDog;
    Q2.Next;
    Inc(i);
    Progress(Num, i);
  end;
  // сохраняем полученные данные
  cmDB.WT.Commit;
  Msg('Обработка данных завершена.');
end;

{ TdezLoadRoom }

constructor TdezLoadRoom.Create(AFileName: string);
begin
  fFileName := AFileName;
  fList := TStringList.Create;
  Prepare;
end;

destructor TdezLoadRoom.Destroy;
begin
  fList.Free;
  inherited;
end;

procedure TdezLoadRoom.Execute;
var
  S, Code: string;
  i: integer;
  StreetCode, HouseCode: integer;
  SQ: double;
  Floor, TS, SB, Target: string;
  FindQ, UpdQ, InsQ: TFIBQuery;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');

  fList.LoadFromFile(FileName);
  // читаем заголовок - период
  S := cmGetWord(fList[0], 1, ';');
  if S <> '#DATE' then
  begin
    Msg('Некорректный формат файла.');
    Exit;
  end;

  // запросы
  FindQ := cmDB.GetQuery('select * from NGPRoom where Code=:Code', cmDB.WT);
  UpdQ := cmDB.GetQuery
    ('update NGPRoom set House=:House, SQ=:SQ, Floor=:Floor, ' +
    'TS=:TS, SB=:SB, Target=:Target where Code=:Code', cmDB.WT);
  InsQ := cmDB.GetQuery
    ('insert into NGPRoom(Code, House, SQ, Floor, TS, SB, Target) ' +
    'VALUES(:Code, :House, :SQ, :Floor, :TS, :SB, :Target)', cmDB.WT);

  Msg('Загружаем справочник помещений.');
  // сканируем файл
  for i := 1 to fList.Count - 1 do
  begin
    S := fList[i];
    Code := cmGetWord(S, 1, ';'); // код записи в 1С
    // улица
    StreetCode := Self.GetStreetCode(CorrectStreetName(cmGetWord(S, 4, ';')));
    // код улицы
    if StreetCode < 0 then
    begin
      Msg('-> ' + S);
      Continue;
    end;
    // дом
    HouseCode := Self.GetHouseCode(StreetCode, cmGetWord(S, 5, ';'));
    if HouseCode < 0 then
    begin
      Msg('Не найден дом.');
      Msg('-> ' + S);
      Continue;
    end;
    // остальные реквизиты
    SQ := StrToFloat(cmCorrectFloat(cmGetWord(S, 3, ';')));
    Floor := cmGetWord(S, 2, ';');
    TS := ''; // cmGetWord(S, 7, ';');
    SB := ''; // cmGetWord(S, 8, ';');
    Target := ''; // cmGetWord(S, 9, ';');
    // SQL
    FindQ.ParamByName('Code').AsString := Code;
    FindQ.ExecQuery;
    if FindQ.Eof then
    begin
      InsQ.ParamByName('Code').AsString := Code;
      InsQ.ParamByName('House').AsInteger := HouseCode;
      InsQ.ParamByName('SQ').AsFloat := SQ;
      InsQ.ParamByName('Floor').AsString := Floor;
      InsQ.ParamByName('TS').AsString := TS;
      InsQ.ParamByName('SB').AsString := SB;
      InsQ.ParamByName('Target').AsString := Target;
      InsQ.ExecQuery;
    end
    else
    begin
      UpdQ.ParamByName('Code').AsString := Code;
      UpdQ.ParamByName('House').AsInteger := HouseCode;
      UpdQ.ParamByName('SQ').AsFloat := SQ;
      UpdQ.ParamByName('Floor').AsString := Floor;
      UpdQ.ParamByName('TS').AsString := TS;
      UpdQ.ParamByName('SB').AsString := SB;
      UpdQ.ParamByName('Target').AsString := Target;
      UpdQ.ExecQuery;
    end;
    Progress(fList.Count, i);
  end;

  // удаляем запросы
  cmDB.FreeQuery(FindQ);
  cmDB.FreeQuery(UpdQ);
  cmDB.FreeQuery(InsQ);

  cmDB.WT.Commit; // завершаем транзакцию

  Msg('Загрузка справочника помещений завершена.');
end;

procedure TdezLoadRoom.ExecuteHouse;
var
  Q: TFIBQuery;
  i: integer;
  S: string;
  StreetName,HouseNomer: string;
  StreetCode,House: integer;
begin
  // проверка наличия файла
  if not FileExists(FileName) then
    raise EMyException.Create('Файл - ' + FileName + ' не найден.');
  fList.LoadFromFile(FileName);

  Q:=cmDB.GetQuery('update House set House1C=:House1C where Code=:Code', cmDB.WT);
  Msg('Загружаем коды улиц из системы 1С....');
  for i:=0 to fList.Count-1 do
  begin
    S:=cmGetWord(fList[i],1,';');
    StreetName:=CorrectStreetName(cmGetWord(S,1,','));
    HouseNomer:=Trim(UpperCase(cmGetWord(S,2,',')));
    StreetCode:=Self.GetStreetCode(StreetName);
    if StreetCode>0 then
    begin
      House:=Self.GetHouseCode(StreetCode,HouseNomer);
      if House>0 then
      begin
        Msg(StreetName+', '+HouseNomer);
        Q.ParamByName('Code').AsInteger:=House;
        Q.ParamByName('House1C').AsString:=cmGetWord(fList[i],3,';');
        Q.ExecQuery;
      end;
    end;
    Progress(fList.Count,i);
  end;
  Msg('Загрузка завершена.');
  cmDB.FreeQuery(Q);
  cmDB.WT.Commit;
end;

{ TcmRec }

function TcmRec.AddChild(ADataStr: string; aDataLevel: integer;
  ARecList: TObjectList; AHouse: integer): TcmRec;
begin
  Result := TcmRec.Create(ADataStr, Self, aDataLevel, ARecList, AHouse);
end;

procedure TcmRec.CalcItog;
var
  i: integer;
  Rec: TcmRec;
begin
  if Childs.Count = 0 then
    Exit;
  for i := 0 to Childs.Count - 1 do
  begin
    Rec := Childs[i] as TcmRec;
    Rec.CalcItog;
    if fDataLevel < 2 then
      fSQ := fSQ + Rec.SQ;
    fSN := fSN + Rec.SN;
    fNach := fNach + Rec.Nach;
    fOpl := fOpl + Rec.Opl;
    fSK := fSK + Rec.SK;
  end;
end;

constructor TcmRec.Create(ADataStr: string; AParent: TcmRec;
  aDataLevel: integer; ARecList: TObjectList; AHouse: integer);
begin
  fChilds := TObjectList.Create;
  fChilds.OwnsObjects := false;
  fParent := AParent;
  fDataLevel := aDataLevel;
  fRecList := ARecList;
  // добавляем в общий список
  fRecList.Add(Self);
  // добавляем в список владельца записи
  if AParent <> nil then
    AParent.Childs.Add(Self);
  // получаем описание узла дерева
  fName := GetRecName(ADataStr, aDataLevel, AHouse);
  // площадь помещения
  if fDataLevel = 2 then
    fSQ := StrToFloatDef(cmCorrectFloat(cmGetWord(ADataStr, 11, ';')), 0);
  // оборотка
  if fDataLevel = 3 then
  begin
    fSN := StrToFloatDef(cmCorrectFloat(cmGetWord(ADataStr, 5, ';')), 0);
    fNach := StrToFloatDef(cmCorrectFloat(cmGetWord(ADataStr, 6, ';')), 0);
    fOpl := StrToFloatDef(cmCorrectFloat(cmGetWord(ADataStr, 7, ';')), 0);
    fSK := StrToFloatDef(cmCorrectFloat(cmGetWord(ADataStr, 8, ';')), 0);
  end;
  if (AParent <> nil) and (fDataLevel < 3) then
    AddChild(ADataStr, fDataLevel + 1, ARecList, AHouse);
end;

destructor TcmRec.Destroy;
begin
  fChilds.Free;
  inherited;
end;

function TcmRec.FindRec(AKey: string): TcmRec;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to fChilds.Count - 1 do
    if TcmRec(fChilds[i]).Key = AKey then
    begin
      Result := TcmRec(fChilds[i]);
      Break;
    end;
end;

function TcmRec.GetRecName(const ADataStr: string;
  aDataLevel, AHouse: integer): string;
begin
  case aDataLevel of
    0:
      begin
        Result := 'Загрузка данных NGP. Период с ' + cmGetWord(ADataStr, 2, ';')
          + ' по ' + cmGetWord(ADataStr, 3, ';');
        fKey := '*';
      end;
    1:
      begin
        if AHouse = 615 then
          Result := '* Дом не найден'
        else
          Result := CorrectStreetName(cmGetWord(ADataStr, 9, ';')) + ' ' +
            cmGetWord(ADataStr, 10, ';');
        fKey := IntToStr(AHouse);
      end;
    2:
      begin
        Result := cmGetWord(ADataStr, 12, ';') + ' ' +
          cmGetWord(ADataStr, 15, ';');
        fKey := IntToStr(AHouse) + ':' + cmGetWord(ADataStr, 17, ';');
      end;
    3:
      begin
        Result := cmGetWord(ADataStr, 2, ';') + ' ' +
          cmGetWord(ADataStr, 4, ';');
        fKey := cmGetWord(ADataStr, 3, ';');
      end;
  end;
end;

procedure TcmRec.MoveSumma(const Code1, Code2: string; Summa: currency);
var
  i: integer;
begin
  if fDataLevel < 3 then
  begin
    for i := 0 to Childs.Count - 1 do
      TcmRec(Childs[i]).MoveSumma(Code1, Code2, Summa);
  end
  else
  begin
    if Key = Code1 then
      fNach := fNach + Summa;
    if Key = Code2 then
      fOpl := fOpl + Summa;
  end;
end;

{ TcmListTreeDS }

constructor TcmListTreeDS.Create;
begin
  inherited;
  FRecordsList := TObjectList.Create;
end;

procedure TcmListTreeDS.CreateRoot(S: string);
begin
  FRecordsList.Clear;
  FRootHandle := TcmRec.Create(S, nil, 0, FRecordsList, -1);
end;

destructor TcmListTreeDS.Destroy;
begin
  FRecordsList.Free;
  inherited;
end;

function TcmListTreeDS.FindByKey(AKey: string): TcmRec;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to FRecordsList.Count - 1 do
    if TcmRec(FRecordsList[i]).Key = AKey then
    begin
      Result := TcmRec(FRecordsList[i]);
      Break;
    end;
end;

function TcmListTreeDS.GetChildRecordHandle(AParentHandle: TcxDataRecordHandle;
  AChildIndex: integer): TcxDataRecordHandle;
begin
  if TcmRec(AParentHandle).Childs.Count < AChildIndex then
    Result := TcmRec(AParentHandle).Childs[AChildIndex]
  else
    Result := nil;
end;

function TcmListTreeDS.GetParentRecordHandle(ARecordHandle: TcxDataRecordHandle)
  : TcxDataRecordHandle;
begin
  Result := TcmRec(ARecordHandle).Parent;
end;

function TcmListTreeDS.GetRecordCount: integer;
begin
  Result := RecordsList.Count;
end;

function TcmListTreeDS.GetRecordHandle(ARecordIndex: integer)
  : TcxDataRecordHandle;
begin
  Result := RecordsList[ARecordIndex];
end;

function TcmListTreeDS.GetRootRecordHandle: TcxDataRecordHandle;
begin
  Result := RootHandle;
end;

function TcmListTreeDS.GetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): Variant;
var
  ANum: integer;
begin
  ANum := integer(AItemHandle);
  case ANum of
    0:
      Result := TcmRec(ARecordHandle).Name;
    1:
      Result := TcmRec(ARecordHandle).SQ;
    2:
      Result := TcmRec(ARecordHandle).SN;
    3:
      Result := TcmRec(ARecordHandle).Nach;
    4:
      Result := TcmRec(ARecordHandle).Opl;
    5:
      Result := TcmRec(ARecordHandle).SK;
  else
    Result := '';
  end;
end;

procedure TcmListTreeDS.SetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle; const AValue: Variant);
begin
  inherited;

end;

{ TshbLoad }

constructor TshbLoad.Create(AMakeSmetaCode: integer);
begin
  inherited Create;
  fList := TStringList.Create;
  fMakeSmetaCode := AMakeSmetaCode;
end;

destructor TshbLoad.Destroy;
begin
  fList.Free;
  cmDB.FreeQuery(DelShb);
  cmDB.FreeQuery(AddShb);
  inherited;
end;

procedure TshbLoad.Execute;
const
  Rzd = #9;
var
  i: integer;
  S, StreetName: string;
  Street, House: integer;
  Summa: currency;
begin
  // загружаем файл с данными
  if not FileExists(FileName) then
    raise dezException.Create('Файл ' + FileName + ' не найден.');
  fList.LoadFromFile(FileName);
  // подготовка запросов
  Prepare;
  // чистим данные
  DelShb.ParamByName('Code').AsInteger := fMakeSmetaCode;
  DelShb.ExecQuery;
  // загрузка данных
  Msg('Загружаем смету из внешнего файла...');
  for i := 0 to fList.Count - 1 do
  begin
    S := fList[i];
    // поиск адреса
    StreetName := CorrectStreetName(cmGetWord(S, 1, Rzd));
    Street := GetStreetCode(StreetName);
    if Street < 0 then
    begin
      Msg('Улица не найдена: ' + S);
      Continue;
    end;
    House := GetHouseCode(Street, cmGetWord(S, 2, Rzd));
    if House < 0 then
    begin
      Msg('Дом не найден: ' + S);
      Continue;
    end;
    // добавляем новую запись
    Summa := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 3, Rzd)), 0);
    if Summa <> 0 then
      with AddShb do
      begin
        ParamByName('Code').AsInteger := fMakeSmetaCode;
        ParamByName('House').AsInteger := House;
        ParamByName('Summa').AsCurrency := Summa;
        ExecQuery;
      end;
    // строка прогресса
    Progress(fList.Count, i);
  end;
  Msg('Смета загружена.');
  if cmDB.WT.Active then
    cmDB.WT.Commit;
end;

procedure TshbLoad.Prepare;
begin
  inherited;
  DelShb := cmDB.GetQuery
    ('delete from MakeSmetaShablonSpec where MakeSmetaShablon=:Code', cmDB.WT);
  AddShb := cmDB.GetQuery
    ('insert into MakeSmetaShablonSpec(MakeSmetaShablon, House, Summa) ' +
    'values(:Code, :House, :Summa)', cmDB.WT);
end;

initialization

TDS := TcmListTreeDS.Create;

finalization

FreeAndNil(TDS);

end.
