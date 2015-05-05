unit dezNewLoadData;

interface

uses
  SysUtils, Classes, DB, dezLoadData, cmUtils, cmDBUnit, FIBQuery, dezCommon;

type

  TcmScanType = (sctNone, sctNGP, sctOI);

  TLoadKontragent = class
  private
    Qadd, Qscan, Qupd: TFIBQuery;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddKontragent(ACode, AName, AShortName: string);
  end;

  TLoadDog = class
  private
    fCode: string;
    fName: string;
    fActive: smallint;
    fKontragent1: string;
    fCalcSumType: smallint;
    fDogType: smallint;
    fNGPRoom1: string;
    Qadd, Qscan, Qupd: TFIBQuery;
    procedure AddParam(Q: TFIBQuery);
  public
    property Code: string read fCode write fCode;
    property Name: string read fName write fName;
    property Active: smallint read fActive write fActive;
    property Kontragent1: string read fKontragent1 write fKontragent1;
    property CalcSumType: smallint read fCalcSumType write fCalcSumType;
    property DogType: smallint read fDogType write fDogType;
    property NGPRoom1: string read fNGPRoom1 write fNGPRoom1;
    constructor Create;
    destructor Destroy; override;
    procedure AddDog;
  end;

  TLoadRoom = class
  private
    fCode: string;
    fNote: string;
    fHouse: integer;
    fSQ: currency;
    Qadd, Qscan, Qupd: TFIBQuery;
    procedure AddParam(Q: TFIBQuery);
  public
    property Code: string read fCode write fCode;
    property Note: string read fNote write fNote;
    property House: integer read fHouse write fHouse;
    property SQ: currency read fSQ write fSQ;
    constructor Create;
    destructor Destroy; override;
    procedure AddRoom;
  end;

  TScan1CFile = class;

  TAddHouse = class
  private
    Qscan: TFIBQuery;
    Qadd: TFIBQuery;
    fY: smallint;
    fM: smallint;
    fHouse: integer;
    fSumma: currency;
    fDog1C: string;
    fHouse1C: string;
  public
    property Y: smallint read fY write fY;
    property M: smallint read fM write fM;
    property House: integer read fHouse write fHouse;
    property Dog1C: string read fDog1C write fDog1C;
    property Summa: currency read fSumma write fSumma;
    property House1C: string read fHouse1C write fHouse1C;
    constructor Create;
    destructor Destroy; override;
    procedure AddHouse(AObj: TScan1CFile; KontragentName, DogName, S: string);
  end;

  TAddOborot1C = class
  private
    Qadd: TFIBQuery;
    fY: smallint;
    fM: smallint;
    fDog1C: string;
    fDogType: smallint;
    fSaldo: currency;
    fNach: currency;
    fOpl: currency;
  public
    property Y: smallint read fY write fY;
    property M: smallint read fM write fM;
    property Dog1C: string read fDog1C write fDog1C;
    property Saldo: currency read fSaldo write fSaldo;
    property Nach: currency read fNach write fNach;
    property Opl: currency read fOpl write fOpl;
    property DogType: smallint read fDogType write fDogType;
    constructor Create;
    destructor Destroy; override;
    procedure AddOborot1C;
  end;

  TAddHouseOborot1C = class
  private
    fM: smallint;
    fY: smallint;
    fDog1C: string;
    fHouse: integer;
    fSaldo: currency;
    fNach: currency;
    fOpl: currency;
    fDogType: smallint;
    Qadd: TFIBQuery;
    procedure AddParam(Q: TFIBQuery);
  public
    property M: smallint read fM write fM;
    property Y: smallint read fY write fY;
    property Dog1C: string read fDog1C write fDog1C;
    property House: integer read fHouse write fHouse;
    property Saldo: currency read fSaldo write fSaldo;
    property Nach: currency read fNach write fNach;
    property Opl: currency read fOpl write fOpl;
    property DogType: smallint read fDogType write fDogType;
    constructor Create;
    destructor Destroy; override;
    procedure AddOborotRec;
  end;

  TScan1CFile = class(TdezLoadMonth)
  private
    fScanType: TcmScanType;
    fD1, fD2: TDateTime;
    fCurrDog1C: string;
    fDType: smallint;
    fSaldo, fNach, fOpl: currency;
    FileList: TStringList;
    StreetList: TStringList;
    HouseList: TStringList;
    fLoadKontragent: TLoadKontragent;
    fLoadDog: TLoadDog;
    fLoadRoom: TLoadRoom;
    fAddHouse: TAddHouse;
    fAddOborot1C: TAddOborot1C;
    fAddHouseOborot1C: TAddHouseOborot1C;
    fHouse: integer;
    fIsError: boolean;
    fErrorList: TStringList;
    procedure CalcNGP_Srv;
    procedure LoadNGP;
    procedure LoadOI;
    procedure LoadNGPRec(S: string);
    procedure LoadDog1C(S: string);
    procedure LoadRoom(S: string);
    function ScanHouseCode(S, StreetName, HouseNomer: string): boolean;
    procedure AddOborotRec(S: string);
    procedure ClearSaldoData(IsNGP: boolean);
    function ScanOIDog(ALine: integer): integer;
    function MakeOIDog(ALine: integer): integer;
    function MakeOIDogHouse(KontragentName, DogName: string;
      ALine: integer): integer;
    function AddOIDogHouse(KontragentName, DogName, S: string): boolean;
    procedure ClearHouseList;
    procedure CalcHouseSum(KontragentName, DogName: string);
  public
    property ScanType: TcmScanType read fScanType write fScanType;
    property D1: TDateTime read fD1 write fD1;
    property D2: TDateTime read fD2 write fD2;
    property CurrDog1C: string read fCurrDog1C write fCurrDog1C;
    property DType: smallint read fDType write fDType;
    property Saldo: currency read fSaldo write fSaldo;
    property Nach: currency read fNach write fNach;
    property Opl: currency read fOpl write fOpl;
    constructor Create(AFileName: string);
    destructor Destroy; override;
    // сканируем заголовок файла выгрузки
    function ScanHeader: boolean;
    // загрузка файла
    procedure Execute;
  end;

implementation

const
  Rzd = ';';
  tegNGP = '#NGP';
  tegOI = '#OI';
  tegDOG = '#DOG';
  tegHOUSE = '#HOUSE';

  { ScanNGPFile }

procedure TScan1CFile.AddOborotRec(S: string);
begin
  fAddHouseOborot1C.Dog1C := cmGetWord(S, 3, Rzd);
  fAddHouseOborot1C.Y := Y;
  fAddHouseOborot1C.M := M;
  fAddHouseOborot1C.Saldo :=
    StrToFloatDef(cmCorrectFloat(cmGetWord(S, 9, Rzd)), 0);
  fAddHouseOborot1C.Nach :=
    StrToFloatDef(cmCorrectFloat(cmGetWord(S, 10, Rzd)), 0);
  fAddHouseOborot1C.Opl :=
    StrToFloatDef(cmCorrectFloat(cmGetWord(S, 11, Rzd)), 0);
  fAddHouseOborot1C.DogType := 0;
  fAddHouseOborot1C.House := fHouse;
  fAddHouseOborot1C.AddOborotRec;
end;

function TScan1CFile.AddOIDogHouse(KontragentName, DogName, S: string): boolean;
begin
  fAddHouse.Y := Y;
  fAddHouse.M := M;
  fAddHouse.Dog1C := CurrDog1C;
  fAddHouse.Summa := StrToFloatDef(cmGetWord(S, 3, Rzd), 0);
  fAddHouse.AddHouse(Self, KontragentName, DogName, S);

  Result := fHouse > 0;
  if Result then
    HouseList.Add(IntToStr(fHouse));
end;

procedure TScan1CFile.CalcHouseSum(KontragentName, DogName: string);
var
  i: integer;
begin
  //проверка на наличие домов к договору
  if (StrToInt(HouseList[0]) = 615) then
  begin
    ErrorCount:=ErrorCount+1;
    Msg('Не указаны дома к договору: ' + KontragentName + '   ' + DogName);
  end;
  // разносим данные
  fAddHouseOborot1C.Y := Y;
  fAddHouseOborot1C.M := M;
  fAddHouseOborot1C.Dog1C := CurrDog1C;
  fAddHouseOborot1C.DogType := DType;
  for i := 0 to HouseList.Count - 1 do
  begin
    fAddHouseOborot1C.House := StrToInt(HouseList[i]);
    fAddHouseOborot1C.Saldo := Saldo / HouseList.Count;
    fAddHouseOborot1C.Nach := Nach / HouseList.Count;
    fAddHouseOborot1C.Opl := Opl / HouseList.Count;
    fAddHouseOborot1C.AddOborotRec;
  end;
end;

procedure TScan1CFile.ClearHouseList;
var
  Q: TFIBQuery;
begin
  Q := cmDB.GetQuery('delete from HouseDog1C where Y=:Y and M=:M', cmDB.WT);
  Q.ParamByName('Y').AsInteger := Y;
  Q.ParamByName('M').AsInteger := M;
  Q.ExecQuery;
  cmDB.FreeQuery(Q);
end;

procedure TScan1CFile.ClearSaldoData(IsNGP: boolean);
var
  Q: TFIBQuery;
begin
  if IsNGP then
  begin
    Q := cmDB.GetQuery
      ('delete from HouseOborot1C where DogType=0 and M=:M and Y=:Y', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
  end
  else
  begin
    Q := cmDB.GetQuery
      ('delete from HouseOborot1C where DogType<>0 and M=:M and Y=:Y', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    Q := cmDB.GetQuery('delete from Oborot1C where M=:M and Y=:Y', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    // чистка списка домов к договорам
    ClearHouseList;
  end;
end;

constructor TScan1CFile.Create(AFileName: string);
begin
  inherited Create;
  Prepare; // создание запросов базового класа
  fIsError := false;
  ErrorCount:=0;
  fErrorList:=TStringList.Create;
  FileList := TStringList.Create;
  StreetList := TStringList.Create;
  HouseList := TStringList.Create;
  FileName := AFileName;
  fLoadKontragent := TLoadKontragent.Create;
  fLoadDog := TLoadDog.Create;
  fLoadRoom := TLoadRoom.Create;
  fAddHouse := TAddHouse.Create;
  fAddOborot1C := TAddOborot1C.Create;
  fAddHouseOborot1C := TAddHouseOborot1C.Create;
end;

destructor TScan1CFile.Destroy;
begin
  fAddHouse.Free;
  fAddOborot1C.Free;
  fAddHouseOborot1C.Free;
  fLoadRoom.Free;
  fLoadKontragent.Free;
  fLoadDog.Free;
  HouseList.Free;
  StreetList.Free;
  FileList.Free;
  fErrorList.Free;
  inherited;
end;

procedure TScan1CFile.Execute;
begin
  // загрузка файла с данными
  if FileExists(FileName) then
  begin
    Msg('Загружаем данные из файла: ' + FileName + '...');
    FileList.LoadFromFile(FileName);
  end
  else
  begin
    Msg('Файл: ' + FileName + ' не найден.');
    Exit;
  end;
  // сканируем заголовок файла
  if not ScanHeader then
    Exit;
  // чистка таблиц оборотов
  ClearSaldoData(ScanType = sctNGP);
  // загрузка данных
  if ScanType = sctNGP then
    LoadNGP
  else
    LoadOI;
  // завершение загрузки данных
  cmDB.WT.Commit;
  if fIsError then
    Msg('ВНИМАНИЕ!!! В ПРОЦЕССЕ ЗАГРУЗКИ ДАННЫХ ПРОИЗОШЛИ ОШИБКИ. ДАННЫЕ ЗАГРУЖЕНЫ НЕ ПОЛНОСТЬЮ')
  else
    Msg('Загрузка данных завершена.');
  //сохраняем лог текущей загрузки в статистике базы
  SaveLogDate(Y, M, Ord(ScanType));
end;

procedure TScan1CFile.LoadDog1C(S: string);
begin
  fLoadDog.Code := cmGetWord(S, 3, Rzd);
  fLoadDog.Name := cmGetWord(S, 4, Rzd);
  fLoadDog.Active := StrToIntDef(cmGetWord(S, 8, Rzd), 1);
  fLoadDog.Kontragent1 := cmGetWord(S, 1, Rzd);
  fLoadDog.CalcSumType := 0;
  fLoadDog.NGPRoom1 := cmGetWord(S, 5, Rzd);
  fLoadDog.AddDog;
end;

procedure TScan1CFile.CalcNGP_Srv;
var
  Q: TFIBQuery;
  Y,M,D: word;
begin
  DecodeDate(D1, Y, M, D);
  Q:=cmDB.GetQuery('execute procedure MAKE_HOUSE_NGP_LIST(:Y, :M)', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=Y;
  Q.ParamByName('M').AsInteger:=M;
  Q.ExecQuery;
  cmDB.WT.Commit;
  cmDB.FreeQuery(Q);
end;

procedure TScan1CFile.LoadNGP;
var
  i: integer;
  S: string;
begin
  for i := 1 to FileList.Count - 1 do
  begin
    S := Trim(FileList[i]);
    if S <> '' then
    begin
      LoadNGPRec(S);
      Progress(FileList.Count, i);
    end;
  end;
  //пересчет НЖП по услугам согласно загруженных тарифов
  CalcNGP_Srv;
end;

procedure TScan1CFile.LoadNGPRec(S: string);
begin
  // загружаем контрагента
  fLoadKontragent.AddKontragent(cmGetWord(S, 1, Rzd), cmGetWord(S, 2, Rzd), cmGetWord(S, 14, Rzd));
  // загружаем договор
  LoadDog1C(S);
  // получаем код дома
  if not ScanHouseCode(S, cmGetWord(S, 12, Rzd), cmGetWord(S, 13, Rzd)) then
  begin
    fHouse := 615; // дом proxy
    // fIsError := true;
    // Exit;
  end;
  // добавляем помещение
  LoadRoom(S);
  // добавляем запись оборотов
  AddOborotRec(S);
end;

procedure TScan1CFile.LoadOI;
var
  i: integer;
begin
  // сканируем файл с данными
  i := 1;
  while i < FileList.Count do
  begin
    //загрузка договора, возвращает ссылку на след. строку файла выгрузки
    i := ScanOIDog(i);
    Progress(FileList.Count, i);
  end;
end;

procedure TScan1CFile.LoadRoom(S: string);
begin
  fLoadRoom.Code := cmGetWord(S, 5, Rzd);
  fLoadRoom.Note := cmGetWord(S, 6, Rzd);
  fLoadRoom.SQ := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 7, Rzd)), 0);
  fLoadRoom.House := fHouse;
  fLoadRoom.AddRoom;
end;

function TScan1CFile.MakeOIDog(ALine: integer): integer;
var
  S: string;
  KCode, KName, KShortName: string;
  DName: string;
  Active, SumType: smallint;

  function GetDType: integer;
  begin
    Result:=StrToIntDef(cmCorrectFloat(cmGetWord(S, 6, Rzd)), 0);
    case Result of
      77: Result:=1;
      76: Result:=2;
      57: Result:=3;
      {30}75: Result:=4;
      29: Result:=5;
    else
    begin
      Result:=-1;
      ErrorCount:=ErrorCount+1;
      Msg('->>'+S);
      Msg('Указан некорректный тип расчетов.');
    end;
    end;
  end;

begin
  S := FileList[ALine];
  Result := ALine + 1;
  // сканируем контрагента
  KCode := cmGetWord(S, 1, Rzd);
  KName := cmGetWord(S, 2, Rzd);
  KShortName := cmGetWord(S, 11, Rzd);
  fLoadKontragent.AddKontragent(KCode, KName, KShortName);
  // сканируем договор
  CurrDog1C := cmGetWord(S, 3, Rzd);
  DName := cmGetWord(S, 4, Rzd);
  Active := StrToIntDef(cmCorrectFloat(cmGetWord(S, 5, Rzd)), 1);
  DType := GetDType;
  SumType := StrToIntDef(cmCorrectFloat(cmGetWord(S, 10, Rzd)), 0);
  Saldo := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 7, Rzd)), 0);
  Nach := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 8, Rzd)), 0);
  Opl := StrToFloatDef(cmCorrectFloat(cmGetWord(S, 9, Rzd)), 0);
  // создаем запись по договору
  fLoadDog.Code := CurrDog1C;
  fLoadDog.Name := DName;
  fLoadDog.Active := Active;
  fLoadDog.Kontragent1 := KCode;
  fLoadDog.CalcSumType := SumType;
  fLoadDog.DogType := DType;
  fLoadDog.NGPRoom1 := '';
  fLoadDog.AddDog;
  // добавляем обороты
  fAddOborot1C.Y := Y;
  fAddOborot1C.M := M;
  fAddOborot1C.Dog1C := CurrDog1C;
  fAddOborot1C.DogType := DType;
  fAddOborot1C.Saldo := Saldo;
  fAddOborot1C.Nach := Nach;
  fAddOborot1C.Opl := Opl;
  fAddOborot1C.AddOborot1C;
end;

function TScan1CFile.MakeOIDogHouse(KontragentName, DogName: string;
  ALine: integer): integer;
var
  S: string;
begin
  Result := ALine;
  while (Result < FileList.Count) and
    (Trim(UpperCase(FileList[Result])) <> tegDOG) do
  begin
    S := FileList[Result];
    Result := Result + 1;
    AddOIDogHouse(KontragentName, DogName, S);
  end;
  //если список домов пуст
  if HouseList.Count=0 then
    HouseList.Add('615');
end;

function TScan1CFile.ScanHeader: boolean;
var
  S, S1: string;
  fM, fY, D: word;
begin
  S := FileList[0];
  // определяем тип файла
  S1 := UpperCase(cmGetWord(S, 1, Rzd));
  if S1 = tegNGP then
    ScanType := sctNGP
  else if S1 = tegOI then
    ScanType := sctOI
  else
    ScanType := sctNone;
  // если левый файл
  Result := ScanType <> sctNone;
  if not Result then
  begin
    ErrorCount:=ErrorCount+1;
    Msg('Некорректный формат файла выгрузки.');
    Exit;
  end;
  // получаем диапозон дат
  D1 := StrToDateDef(cmGetWord(S, 2, Rzd), StrToDate('1.1.2013'));
  D2 := StrToDateDef(cmGetWord(S, 3, Rzd), StrToDate('1.1.2013'));
  // формируем сообщение о типе файла выгрузки
  if ScanType = sctNGP then
    S1 := 'Выгрузка данных НЖП.'
  else
    S1 := 'Выгрузка данных ОИ.';
  S1 := S1 + ' Период с ' + DateToStr(D1) + ' по ' + DateToStr(D2);
  Msg(S1);
  // декодируем период
  DecodeDate(D1, fY, fM, D);
  M:=fM;
  Y:=fY;
end;

function TScan1CFile.ScanHouseCode(S, StreetName, HouseNomer: string): boolean;
var
  S1, S2: string;
  StreetCode: integer;
begin
  // корректируем текстовые значения
  S1 := StreetName;
  StreetName := CorrectStreetName(S1);
  HouseNomer := CorrectHouseNomer(HouseNomer);
  S2 := S1 + ', ' + HouseNomer;
  // получаем код улицы
  Result := StreetName <> '';
  if not Result then
  begin
    ErrorCount:=ErrorCount+1;
    Msg('Не указана улица:  ' + cmGetWord(S, 4, Rzd) + '  ' +
      cmGetWord(S, 2, Rzd));
    Msg(S);
    Msg('');
    Exit;
  end;
  StreetCode := GetStreetCode(StreetName);
  Result := StreetCode > 0;
  if not Result then
  begin
    if StreetList.IndexOf(S1) < 0 then
    begin
      Msg('Не найдена улица: ' + S1 + '  ' + cmGetWord(S, 4, Rzd) + '  ' +
        cmGetWord(S, 2, Rzd));
      //Msg(S);
      Msg('');
      StreetList.Add(S1);
    end;
    Exit;
  end;
  // получаем код дома
  fHouse := GetHouseCode(StreetCode, HouseNomer);
  Result := fHouse > 0;
  if not Result then
  begin
    if StreetList.IndexOf(S2) < 0 then
    begin
      ErrorCount:=ErrorCount+1;
      Msg('Не найден дом: ' + S2 + '   ' + cmGetWord(S, 4, Rzd) + '  ' +
        cmGetWord(S, 2, Rzd));
      StreetList.Add(S2);
    end;
  end;
end;

function TScan1CFile.ScanOIDog(ALine: integer): integer;
var
  KName, DName: string;
begin
  Result := ALine;
  HouseList.Clear;
  // удаляем пустые строки
  while FileList.Count < Result do
  begin
    if Trim(FileList[Result]) = '' then
      Inc(Result)
    else
      Break;
  end;
  if FileList.Count = Result then
    Exit;
  // проверка тега Dog
  if UpperCase(FileList[Result]) <> tegDOG then
  begin
    Msg('Строка ' + IntToStr(Result) + '. Ожидается тег #DOG.');
    Result := FileList.Count;
    ErrorCount:=ErrorCount+1;
    Exit;
  end
  else
    Inc(Result);
  // получаем реквизиты договора
  KName := cmGetWord(FileList[Result], 2, Rzd);
  DName := cmGetWord(FileList[Result], 4, Rzd);
  // сканируем тег DOG
  Result := MakeOIDog(Result);
  if Result = FileList.Count then
    Exit;
  // проверка тега #House
  if UpperCase(FileList[Result]) <> tegHOUSE then
  begin
    ErrorCount:=ErrorCount+1;
    Msg('Строка ' + IntToStr(Result) + '. Ожидается тег #HOUSE.');
    Result := FileList.Count;
    Exit;
  end
  else
    Inc(Result);
  // сканируем тег DOG
  Result := MakeOIDogHouse(KName, DName, Result);
  // разносим обороты по домам
  CalcHouseSum(KName, DName);
end;

{ TLoadKontragent }

procedure TLoadKontragent.AddKontragent(ACode, AName, AShortName: string);
begin
  // проверка наличия контрагента
  Qscan.ParamByName('Code').AsString := ACode;
  Qscan.ExecQuery;
  // вставка контрагента
  if Qscan.Eof then
  begin
    Qadd.ParamByName('Code').AsString := ACode;
    Qadd.ParamByName('Name').AsString := AName;
    Qadd.ParamByName('ShortName').AsString := AShortName;
    Qadd.ExecQuery;
    Exit;
  end;
  // коррекция наименования контрагента
  if (Qscan.FN('Name').AsString <> AName) or
    (Qscan.FN('ShortName').AsString <> AShortName) then
  begin
    Qupd.ParamByName('Code').AsString := ACode;
    Qupd.ParamByName('Name').AsString := AName;
    Qupd.ParamByName('ShortName').AsString := AShortName;
    Qupd.ExecQuery;
  end;
end;

constructor TLoadKontragent.Create;
begin
  Qadd := cmDB.GetQuery('insert into Kontragent1(Code,Name,ShortName) ' +
    'values(:Code, :Name, :ShortName)', cmDB.WT);
  Qscan := cmDB.GetQuery('select * from Kontragent1 where Code=:Code', cmDB.WT);
  Qupd := cmDB.GetQuery
    ('update Kontragent1 set Name=:Name, ShortName=:ShortName where Code=:Code',
    cmDB.WT);
end;

destructor TLoadKontragent.Destroy;
begin
  cmDB.FreeQuery(Qadd);
  cmDB.FreeQuery(Qscan);
  cmDB.FreeQuery(Qupd);
  inherited;
end;

{ TLoadDog }

procedure TLoadDog.AddDog;
begin
  // ищем договор
  Qscan.ParamByName('Code').AsString := Code;
  Qscan.ExecQuery;
  // если нет - добавляем
  if Qscan.FN('Num').AsInteger = 0 then
  begin
    AddParam(Qadd);
    Qadd.ExecQuery;
  end
  else // если уже есть - обновляем
  begin
    AddParam(Qupd);
    Qupd.ExecQuery;
  end;
end;

procedure TLoadDog.AddParam(Q: TFIBQuery);
begin
  with Q do
  begin
    ParamByName('Code').AsString := Code;
    ParamByName('Name').AsString := Self.Name;
    ParamByName('Kontragent1').AsString := Kontragent1;
    ParamByName('NGPRoom1').AsString := NGPRoom1;
    ParamByName('Active').AsInteger := Active;
    ParamByName('CalcSumType').AsInteger := CalcSumType;
    ParamByName('DogType').AsInteger := DogType;
  end;
end;

constructor TLoadDog.Create;
begin
  Qadd := cmDB.GetQuery
    ('insert into Dog1C(Code,Name,Active,Kontragent1,CalcSumType,DogType,NGPRoom1) '
    + 'values(:Code,:Name,:Active,:Kontragent1,:CalcSumType,:DogType,:NGPRoom1)',
    cmDB.WT);
  Qscan := cmDB.GetQuery
    ('select Count(*) Num from Dog1C where Code=:Code', cmDB.WT);
  Qupd := cmDB.GetQuery('update Dog1C set Name=:Name, ' +
    'Active=:Active, Kontragent1=:Kontragent1, CalcSumType=:CalcSumType,' +
    'DogType=:DogType, NGPRoom1=:NGPRoom1 where Code=:Code', cmDB.WT);
  fDogType := 0;
end;

destructor TLoadDog.Destroy;
begin
  cmDB.FreeQuery(Qadd);
  cmDB.FreeQuery(Qscan);
  cmDB.FreeQuery(Qupd);
  inherited;
end;

{ TLoadRoom }

procedure TLoadRoom.AddParam(Q: TFIBQuery);
begin
  with Q do
  begin
    ParamByName('Code').AsString := Code;
    ParamByName('House').AsInteger := House;
    ParamByName('SQ').AsCurrency := SQ;
    ParamByName('Note').AsString := Note;
  end;
end;

procedure TLoadRoom.AddRoom;
begin
  // проверка наличия контрагента
  Qscan.ParamByName('Code').AsString := Code;
  Qscan.ExecQuery;
  // вставка контрагента
  if Qscan.FN('Num').AsInteger = 0 then
  begin
    AddParam(Qadd);
    Qadd.ExecQuery;
    Exit;
  end;
  // коррекция наименования контрагента
  AddParam(Qupd);
  Qupd.ExecQuery;
end;

constructor TLoadRoom.Create;
begin
  Qadd := cmDB.GetQuery('insert into NGPRoom1(Code,House,SQ,Note) ' +
    'values(:Code, :House, :SQ, :Note)', cmDB.WT);
  Qscan := cmDB.GetQuery
    ('select Count(*) Num from NGPRoom1 where Code=:Code', cmDB.WT);
  Qupd := cmDB.GetQuery
    ('update NGPRoom1 set House=:House, SQ=:SQ, Note=:Note where Code=:Code',
    cmDB.WT);
end;

destructor TLoadRoom.Destroy;
begin
  cmDB.FreeQuery(Qadd);
  cmDB.FreeQuery(Qscan);
  cmDB.FreeQuery(Qupd);
  inherited;
end;

{ TAddOborot1C }

procedure TAddHouseOborot1C.AddOborotRec;
begin
  if (Saldo = 0) and (Nach = 0) and (Opl = 0) then
    Exit;
  AddParam(Qadd);
  Qadd.ExecQuery;
end;

procedure TAddHouseOborot1C.AddParam(Q: TFIBQuery);
begin
  with Q do
  begin
    ParamByName('Y').AsInteger := Y;
    ParamByName('M').AsInteger := M;
    ParamByName('Dog1C').AsString := Dog1C;
    ParamByName('House').AsInteger := House;
    ParamByName('Saldo1C').AsCurrency := Saldo;
    ParamByName('Nach1C').AsCurrency := Nach;
    ParamByName('Opl1C').AsCurrency := Opl;
    ParamByName('DogType').AsInteger := DogType;
    // коррекция сумм по ОИ
    if DogType <> 0 then
    begin
      Saldo := (Saldo / 118 * 100) / 100 * 75;
      Nach := (Nach / 118 * 100) / 100 * 75;
      Opl := (Opl / 118 * 100) / 100 * 75;
    end;
    ParamByName('Saldo').AsCurrency := Saldo;
    ParamByName('Nach').AsCurrency := Nach;
    ParamByName('Opl').AsCurrency := Opl;
  end;
end;

constructor TAddHouseOborot1C.Create;
begin
  Qadd := cmDB.GetQuery
    ('insert into HouseOborot1C(M,Y,Dog1C,House,Saldo,Nach,Opl,DogType,Saldo1C,Nach1C,Opl1C) '
    + 'values(:M,:Y,:Dog1C,:House,:Saldo,:Nach,:Opl,:DogType,:Saldo1C,:Nach1C,:Opl1C)',
    cmDB.WT);
end;

destructor TAddHouseOborot1C.Destroy;
begin
  cmDB.FreeQuery(Qadd);
  inherited;
end;

{ TAddOborot1C }

procedure TAddOborot1C.AddOborot1C;
begin
  if (Saldo = 0) and (Nach = 0) and (Opl = 0) then
    Exit;
  with Qadd do
  begin
    ParamByName('Y').AsInteger := Y;
    ParamByName('M').AsInteger := M;
    ParamByName('DogType').AsInteger := DogType;
    ParamByName('Dog1C').AsString := Dog1C;
    ParamByName('Saldo').AsCurrency := Saldo;
    ParamByName('Nach').AsCurrency := Nach;
    ParamByName('Opl').AsCurrency := Opl;
    ExecQuery;
  end;
end;

constructor TAddOborot1C.Create;
begin
  Qadd := cmDB.GetQuery
    ('insert into Oborot1C(M,Y,Dog1C,Saldo,Nach,Opl,DogType) ' +
    'values(:M,:Y,:Dog1C,:Saldo,:Nach,:Opl,:DogType)', cmDB.WT);
end;

destructor TAddOborot1C.Destroy;
begin
  cmDB.FreeQuery(Qadd);
  inherited;
end;

{ TAddHouse }

procedure TAddHouse.AddHouse(AObj: TScan1CFile;
  KontragentName, DogName, S: string);
var
  House1C: string;
begin
  // получаем код дома
  House1C := Trim(cmGetWord(S, 4, Rzd));
  if House1C <> '' then
  begin
    Qscan.ParamByName('House1C').AsString := House1C;
    Qscan.ExecQuery;
  end;

  if Qscan.Eof then
  begin
    if AObj.ScanHouseCode('0;' + KontragentName + ';0;' + DogName,
      cmGetWord(S, 1, Rzd), cmGetWord(S, 2, Rzd)) then
      House := AObj.fHouse
    else
      House := -1;
  end
  else
    House := Qscan.FN('Code').AsInteger;

  // запоминаем код дома
  AObj.fHouse := House;

  if House < 0 then
    Exit;

  // добавляем новую запись
  with Qadd do
  begin
    ParamByName('Y').AsInteger := Y;
    ParamByName('M').AsInteger := M;
    ParamByName('House').AsInteger := House;
    ParamByName('Dog1C').AsString := Dog1C;
    ParamByName('Summa').AsCurrency := Summa;
    ExecQuery;
  end;
end;

constructor TAddHouse.Create;
begin
  Qscan := cmDB.GetQuery('select * from House where House1C=:House1C', cmDB.WT);
  Qadd := cmDB.GetQuery('insert into HouseDog1C(Y,M,Dog1C,House,Summa) ' +
    'values(:Y, :M, :Dog1C, :House, :Summa)', cmDB.WT);
end;

destructor TAddHouse.Destroy;
begin
  cmDB.FreeQuery(Qscan);
  cmDB.FreeQuery(Qadd);
  inherited;
end;

end.
