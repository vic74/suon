unit dezMakeBDR;

interface

uses
  SysUtils, Classes, Dialogs, Rtti, System.TypInfo,
  cmUtils, cmDBUnit, cmLoadDataSet, FIBQuery,
  dezLoadData,
  dxmdaset, AppUtils, DB, dxBar, DateUtils;

type
  EMyException = class(Exception);

  TbdrQuery = class
  public
    HouseQ: TFIBQuery;
    HouseR: TFIBQuery;
    UKQ: TFIBQuery;
    LiftCount: TFIBQuery;
    LiftData: TFIBQuery;
    LiftParam: TFIBQuery;
    IsLift: TFIBQuery;
    TR: TFIBQuery;
    ABC: TFIBQuery;
    ShbQ: TFIBQuery;
    constructor Create;
    destructor Destroy; override;
  end;

  TbdrObject = class
  private
    fHouse: integer;
    fTotal: currency;
    fTotalNG: currency;
    fTarifs: TStringList;
    fNGCode: integer;
    fAccCNT: integer;
    fSrv: string;
    fFactCode: integer;
    HouseQ: TFIBQuery;
    HouseR: TFIBQuery;
    UKQ: TFIBQuery;
    LiftCount: TFIBQuery;
    LiftData: TFIBQuery;
    LiftParam: TFIBQuery;
    IsLift: TFIBQuery;
    ABC: TFIBQuery;
    TR: TFIBQuery;
    ShbQ: TFIBQuery;
    fFactQ: TFIBQuery;
    fBalans: currency;
    fPOList: TStringList;
    fPOKoefList: TStringList;
    procedure Prepare;
    function TarifStr: string;
    function CalcNach(Y, M: integer; ATotal: currency): currency;
    function GetUK(Data: TDateTime): currency;
    function LoadNG(T: TdxMemData; Y, M, NF: integer): currency;
    function AllTotal: currency;
  public
    property House: integer read fHouse write fHouse;
    property Total: currency read fTotal write fTotal;
    property TotalNG: currency read fTotalNG write fTotalNG;
    property NGCode: integer read fNGCode write fNGCode;
    property AccCnt: integer read fAccCNT write fAccCNT;
    property Srv: string read fSrv write fSrv;
    property FactCode: integer read fFactCode write fFactCode;
    property Balans: currency read fBalans write fBalans;
    property FactQ: TFIBQuery read fFactQ write fFactQ;
    property POList: TStringList read fPOList;
    property POKoefList: TStringList read fPOKoefList;
    constructor Create(aHouse: integer; ATotal: currency; aQ: TbdrQuery);
    destructor Destroy; override;
    procedure AddTarif(Data: TDateTime; Tarif: currency);
    procedure MakeTable(T: TdxMemData; Y, M: integer; aParams: TStringList);
    function MakeTable1(T: TdxMemData; Y, M: integer; aParams: TStringList;
      aMT: TdxMemData; aMsgList: TStringList): boolean;
    function MakeTable2(T: TdxMemData; Y, M: integer;
      aParams: TStringList): boolean;
  end;

  TbdrList = class(TStringList)
  private
  public
    function AddHouseTotal(House: integer; Tot_Space: currency;
      Acc_CNT: integer; NGCode: integer; const Srv: string; aQ: TbdrQuery;
      FactCode: integer): TbdrObject;
    procedure AddTarif(aData: TDateTime; Q: TFIBQuery);
    destructor Destroy; override;
  end;

  // ��������������� ����� ��� ������������ ���1 ����
  TFBDR1 = class
    House: integer;
    HouseStr: string;
    DU: string;
    NOst, NLOst: currency;
    Nach, Opl: currency;
    B1: currency;
    UKProc, Comm: currency;
    SQ1, SQ2: currency;
    PO: currency;
    NGOst, NGNach, NGOpl, NGNach1, NGOpl1: currency;
    A: boolean;
    constructor Create;
    function IsEmpty: boolean;
  end;

  // ��������������� ����� ��� ������������ ���2 ����
  TFBDR2 = class
  private
    fTO1, fTO2: currency;
    fSan1, fSan2, fVent: currency;
  public
    House: integer;
    AccCode_cnt: integer;
    HouseStr: string;
    DU: string;
    NOst, NLOst: currency; //������� �� �� � �������� ������
    CN_Ost: currency; //������� �� �� � ����� ��������
    Nach, Opl: currency;
    B1: currency;
    UKProc, Comm: currency;
    SQ1, SQ2: currency;
    PO: currency;
    NGOst, NGNach, NGOpl, NGNach1, NGOpl1: currency;
    A: boolean;
    TR1, TR2: currency;
    ODS, Dost, DRTZ, DZI: currency;
    OI: currency;
    IPU: currency; //��������� ��������� �������������� �������� ����� (����� ������ c �������)
    IPU_1: currency; //��������� ��������� �������� ����� �� ������ DEZ1
    function IsEmpty: boolean;
  published
    //�� ���������
    property TO1: currency read fTO1 write fTO1;
    //�� ���������
    property TO2: currency read fTO2 write fTO2;
    //������ �����
    property San1: currency read fSan1 write fSan1;
    //������ ��������
    property San2: currency read fSan2 write fSan2;
    //����������
    property Vent: currency read fVent write fVent;
  end;

  // ��� ������������ ���3 ����
  TFBDR3 = class
    House: integer;
    HouseStr: string;
    DU: string;
    NOst, NLOst: currency;
    Nach, Opl: currency;
    B1: currency;
    UKProc, Comm: currency;
    SQ1, SQ2: currency;
    NGOst, NGNach, NGOpl, NGNach1, NGOpl1: currency;
    A: boolean;
    LTO, LTR, Kab, TexOsv, Exp, ABC, LDSS: currency;
    function IsEmpty: boolean;
    function GetRashStr: string;
  end;

  TbdrBuilder = class
  private
    fM: smallint;
    fY: smallint;
    fSrv: string;
    fList: TbdrList;
    fParams, FactList, NGPRoom: TStringList;
    fQuery: TbdrQuery;
    NGCode: integer;
    FactCode, ShbCode: integer;
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
    FactQ: TFIBQuery;
    HousePrv, HouseTarif, HouseNG, HouseRecv, FactDocCode: integer;
    TotalQ, NGQ, NGTarif: TFIBQuery;
    OIBalans: TFIBQuery;
    fMT: TdxMemData;
    fDogHouseList: TStringList; //������ ����� � ������� ��������� ������������
    fDogHouseFlat: TStringList; //����� ������� � �����
    fDogHouseKName: TStringList; //����� ������������
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure LoadHouseList;
    procedure LoadTarifList;
    procedure Load2013List;
    procedure LoadParams;
    procedure ScanStartBalans;
    procedure LoadTarif(aTarifStr, aDataStr: string);
    procedure MakeTable(T: TdxMemData);
    function GetFactCode(aSrv: integer = 0): integer;
    function GetShbCode: integer;
    function GetHousePrvCode: integer;
    function GetHouseRecvCode: integer;
    function GetHouseTarifCode: integer;
    function GetHouseNGCode: integer;
    function GetFactDocCode: integer;
    function GetTotal(aHouse: integer): double;
    procedure MakeFactReport1(T: TdxMemData);
    procedure MakeFactReport2(T: TdxMemData);
    procedure MakeFactReport3(T: TdxMemData);
    procedure MakeFactReport(T: TdxMemData);
    procedure CreateLiftTable;
    procedure GetNGKoef(aHouse: integer; var AGlobal, ASrv: currency);
    procedure ClearFactList;
    procedure AddTRData(T: TdxMemData);
    procedure AddTRData2014(T: TdxMemData);
    procedure GetPeriod(M, Y: integer; var D1, D2: TDateTime);
    procedure LoadSmetaDate(FinPlanSrv: integer);
    procedure LoadVentPlanDate;
    function GetKontragentSQ(Kontragent: integer; AType: smallint): double;
    procedure SetKontragentKoef(Kontragent: integer; AType: smallint; Koef: double);
  public
    property M: smallint read fM write fM;
    property Y: smallint read fY write fY;
    property Srv: string read fSrv write fSrv;
    property List: TbdrList read fList;
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    constructor Create(aM, aY: integer; ASrv: string);
    destructor Destroy; override;
    procedure Execute(T: TdxMemData);
    procedure ExecuteFact(T: TdxMemData);
    procedure FullComboBox(Box: TdxBarCombo);
  end;

  TbdrLoader = class
  private
    fM: smallint;
    fY: smallint;
    fSrv: integer;
    fBType: smallint;
    fBDRCode: integer;
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
    HouseQ: TFIBQuery;
    fQuery: boolean;
    fKontragentList: TStringList;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
    procedure LoadFBDR1(T: TdxMemData);
    procedure LoadFBDR2(T: TdxMemData);
    procedure LoadFBDR3(T: TdxMemData);
    procedure LoadPBDR1(T: TdxMemData);
    procedure LoadPBDR2(T: TdxMemData);
    procedure LoadPBDR3(T: TdxMemData);
    function GetBDRCode: integer;
    function UpdateBDRCode: integer;
  public
    property M: smallint read fM write fM;
    property Y: smallint read fY write fY;
    property Srv: integer read fSrv write fSrv;
    property BType: smallint read fBType write fBType;
    property BDRCode: integer read fBDRCode write fBDRCode;
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    property Query: boolean read fQuery write fQuery;
    constructor Create(aM, aY, aBType, ASrv: integer);
    destructor Destroy; override;
    procedure Save(T: TdxMemData);
    procedure Load(T: TdxMemData);
  end;

implementation

uses
  Forms;

{ TbdrQuery }

constructor TbdrQuery.Create;
begin
  HouseQ := cmDB.GetQuery
    ('select a.Street Street, b.Name StreetName, a.Nomer Nomer, ' +
    'a.DU DU, a.DRTZ_SQ, a.Cellar_SQ, c.Name DUName, a.Floor_cnt ' +
    ' from House a left join Street b on (b.Code=a.Street)' +
    ' left join DU c on (c.Code=a.DU)' + ' where a.Code=:Code', cmDB.WT);
  HouseR := cmDB.GetQuery('select * from House where Code=:House', cmDB.WT);
  UKQ := cmDB.GetQuery('select Proc from GetUK(:Data, :House)', cmDB.WT);
  LiftCount := cmDB.GetQuery
    ('select Count(*) Num from LiftList where House=:House', cmDB.WT);
  LiftData := cmDB.GetQuery('select Sum(TexOs) TexOs, Sum(Exp) Exp ' +
    'FROM HouseLiftGr WHERE House=:House and Y=:Y and M=:M', cmDB.WT);
  LiftParam := cmDB.GetQuery
    ('select * from HouseLiftTarif where Data<=:Data order by Data desc',
    cmDB.WT);
  TR := cmDB.GetQuery('select * from HouseYear where Y>=:Y order by Y',
    cmDB.WT);
  IsLift := cmDB.GetQuery('select * from LiftList where House=:House', cmDB.WT);
  ABC := cmDB.GetQuery
    ('select * from ShbSrvCheck where M=:M and Y=:Y and House=:House', cmDB.WT);
  ShbQ := cmDB.GetQuery
    ('select F11 F from ShbSrvCheck where Y=:Y and M=:M and House=:House',
    cmDB.WT);

end;

destructor TbdrQuery.Destroy;
begin
  cmDB.FreeQuery(HouseQ);
  cmDB.FreeQuery(HouseR);
  cmDB.FreeQuery(UKQ);
  cmDB.FreeQuery(LiftCount);
  cmDB.FreeQuery(LiftData);
  cmDB.FreeQuery(LiftParam);
  cmDB.FreeQuery(TR);
  cmDB.FreeQuery(IsLift);
  cmDB.FreeQuery(ABC);
  cmDB.FreeQuery(ShbQ);
  inherited;
end;

{ TbdrObject }

procedure TbdrObject.AddTarif(Data: TDateTime; Tarif: currency);
begin
  if Tarif <> 0 then
    fTarifs.Add(DateToStr(Data) + ' ' + cmReplaceWord(FloatToStr(Tarif),
      '.', ','));
end;

function TbdrObject.AllTotal: currency;
begin
  Result := Total + TotalNG;
end;

function TbdrObject.CalcNach(Y, M: integer; ATotal: currency): currency;
var
  aY, aM, aD, Day, D1, D2: word;
  S: string;
  Data: TDateTime;
  Tarif: currency;
begin
  Result := 0;
  if fTarifs.Count = 0 then
    Exit;
  // ���� �� ������ ������
  if fTarifs.Count = 1 then
  begin
    S := fTarifs[0];
    Tarif := StrToFloat(cmGetWord(S, 2, ' '));
    Result := Tarif * ATotal;
  end
  else
  begin
    Day := MonthDays[IsLeapYear(Y), M];
    Data := StrToDate(cmGetWord(fTarifs[1], 1, ' '));
    DecodeDate(Data, aY, aM, aD);
    D1 := aD - 1;
    D2 := Day - aD + 1;
    // ������ ������
    Tarif := StrToFloat(cmGetWord(fTarifs[0], 2, ' '));
    Result := (Tarif * ATotal) / Day * D1;
    // ������ ������
    Tarif := StrToFloat(cmGetWord(fTarifs[1], 2, ' '));
    Result := Result + (Tarif * ATotal) / Day * D2;
  end;
end;

constructor TbdrObject.Create(aHouse: integer; ATotal: currency; aQ: TbdrQuery);
begin
  fHouse := aHouse;
  fTotal := ATotal;
  fTotalNG := 0;
  fTarifs := TStringList.Create;
  fPOList:=TStringList.Create;
  fPOKoefList:=TStringList.Create;
  // �������
  HouseQ := aQ.HouseQ;
  UKQ := aQ.UKQ;
  LiftCount := aQ.LiftCount;
  LiftData := aQ.LiftData;
  LiftParam := aQ.LiftParam;
  HouseR := aQ.HouseR;
  IsLift := aQ.IsLift;
  TR := aQ.TR;
  ABC := aQ.ABC;
  ShbQ := aQ.ShbQ;
end;

destructor TbdrObject.Destroy;
begin
  fPOList.Free;
  fPOKoefList.Free;
  fTarifs.Free;
  inherited;
end;

function TbdrObject.GetUK(Data: TDateTime): currency;
begin
  UKQ.ParamByName('Data').AsDate := Data;
  UKQ.ParamByName('House').AsInteger := House;
  UKQ.ExecQuery;
  Result := UKQ.FN('Proc').AsCurrency;
end;

function TbdrObject.LoadNG(T: TdxMemData; Y, M, NF: integer): currency;
var
  Q: TFIBQuery;

  procedure Before2013;
  begin
    // �������� ������� ������� � ����� ����������
    Q := cmDB.GetQuery
      ('select Sum(Total) Total from HouseNGList where HouseNG=:Code and ' +
      'House=:House and Nach-Spr1>0', cmDB.WT);
    try
      Q.ParamByName('Code').AsInteger := NGCode;
      Q.ParamByName('House').AsInteger := House;
      Q.ExecQuery;
      Result := Q.FN('Total').AsCurrency;
      if (Result = 0) then
        Exit;
      // ������ ��������� ������ � �������
      T.FieldByName('F' + IntToStr(NF)).AsCurrency := Result;
      T.FieldByName('F' + IntToStr(NF + 1)).AsCurrency :=
        CalcNach(Y, M, Result);
    finally
      cmDB.FreeQuery(Q);
    end;
  end;

  procedure After2013;
  var
    AList: TStringList;
  begin
    //��������� � ����������� ������
    if M=1 then
      begin Dec(Y); M:=12; end
    else
      begin Dec(M) end;

    // �������� ������� ��� � ������� ����
    Q := cmDB.GetQuery('select c.code, c.sq from houseoborot1c a ' +
      'left join Dog1C b on (b.Code=a.dog1c) ' +
      'left join NGPRoom1 c on (c.Code = b.NGPRoom1) ' +
      'where a.Y=:Y and a.M=:M and c.House=:House', cmDB.WT);
    AList := TStringList.Create;
    try
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
      Q.ParamByName('House').AsInteger := House;
      Q.ExecQuery;
      // �������� ������� �� �������
      Result := 0;
      while not Q.Eof do
      begin
        if AList.IndexOf(Q.FN('Code').AsString) < 0 then
        begin
          Result := Result + Q.FN('SQ').AsCurrency;
          AList.Add(Q.FN('Code').AsString);
        end;
        Q.Next;
      end;
      // ��������� ������ � �������
      T.FieldByName('F' + IntToStr(NF)).AsCurrency := Result;
      T.FieldByName('F' + IntToStr(NF + 1)).AsCurrency :=
        CalcNach(Y, M, Result);
    finally
      cmDB.FreeQuery(Q);
      AList.Free;
    end;
  end;

begin
  if Y < 2013 then
    Before2013
  else
    After2013;
end;

procedure TbdrObject.MakeTable(T: TdxMemData; Y, M: integer;
  aParams: TStringList);
var
  DU: string;
  Proc, Comm, Comm1: currency;
  Data: TDateTime;
begin
  // if fTarifs.Count=0 then Exit;
  HouseQ.ParamByName('Code').AsInteger := House;
  HouseQ.ExecQuery;
  T.Append;
  T.FieldByName('House').AsInteger := House;
  T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
    HouseQ.FN('Nomer').AsString;
  DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
  T.FieldByName('F2').AsString := DU;
  // ������
  if Length(DU) = 1 then
    DU := '0' + DU;
  T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
  // �����
  T.FieldByName('F3').AsString := TarifStr;
  // �������
  T.FieldByName('F4').AsCurrency := Total;
  // ����������
  if TarifStr <> '' then
    T.FieldByName('F5').AsCurrency := CalcNach(Y, M, Total);
  // ����� �� ������ �������
  if Balans <> 0 then
    T.FieldByName('F6').AsCurrency := Balans;
  // ��������� ������������
  T.FieldByName('F7').AsCurrency := T.FieldByName('F5').AsCurrency +
    T.FieldByName('F6').AsCurrency;
  // ������������ ���� �� �����
  Comm := StrToFloatDef(cmCorrectFloat(aParams.Values['GFK']), 0);
  Comm1 := StrToFloatDef(cmCorrectFloat(aParams.Values['NFK']), 0);
  if Comm <> 0 then
    T.FieldByName('F9').AsCurrency := T.FieldByName('F5').AsCurrency /
      100 * Comm;
  // ������� ����������� ��������
  Data := EncodeDate(Y, M, 1);
  if Srv <> '1' then
  begin
    Proc := GetUK(Data);
    T.FieldByName('F8').AsCurrency := T.FieldByName('F5').AsCurrency /
      100 * Proc;
  end
  else
  begin
    Proc := 9;
    T.FieldByName('F8').AsCurrency := T.FieldByName('F5').AsCurrency / 100 *
      Proc - T.FieldByName('F9').AsCurrency;
  end;
  // ����� ��������� ����� �� ������
  T.FieldByName('F10').AsCurrency := T.FieldByName('F5').AsCurrency -
    T.FieldByName('F8').AsCurrency - T.FieldByName('F9').AsCurrency;
  // �������� ������ �� �������� �����
  LoadNG(T, Y, M, 11);
  if T.FieldByName('F12').AsCurrency <> 0 then
  begin
    // ������������ �� ��������
    if Comm1 <> 0 then
      T.FieldByName('F14').AsCurrency := T.FieldByName('F12').AsCurrency /
        100 * Comm;
    // ������� ����������� ��������
    if Srv <> '1' then
      T.FieldByName('F13').AsCurrency := T.FieldByName('F12').AsCurrency /
        100 * Proc
    else
      T.FieldByName('F13').AsCurrency := T.FieldByName('F12').AsCurrency / 100 *
        Proc - T.FieldByName('F14').AsCurrency;

    T.FieldByName('F15').AsCurrency := T.FieldByName('F12').AsCurrency -
      T.FieldByName('F13').AsCurrency - T.FieldByName('F14').AsCurrency;
  end;
  // ��������� ����� �� ����
  T.FieldByName('F16').AsCurrency := T.FieldByName('F4').AsCurrency +
    T.FieldByName('F11').AsCurrency;
  T.FieldByName('F17').AsCurrency := T.FieldByName('F5').AsCurrency +
    T.FieldByName('F12').AsCurrency;
  T.FieldByName('F18').AsCurrency := T.FieldByName('F6').AsCurrency;
  T.FieldByName('F19').AsCurrency := T.FieldByName('F7').AsCurrency +
    T.FieldByName('F12').AsCurrency;
  T.FieldByName('F20').AsCurrency := T.FieldByName('F8').AsCurrency +
    T.FieldByName('F13').AsCurrency;
  T.FieldByName('F21').AsCurrency := T.FieldByName('F9').AsCurrency +
    T.FieldByName('F14').AsCurrency;
  T.FieldByName('F22').AsCurrency := T.FieldByName('F17').AsCurrency -
    T.FieldByName('F20').AsCurrency - T.FieldByName('F21').AsCurrency;
  // ��������� ������ � �������
  if (TarifStr <> '') { or (T.FieldByName('F6').AsCurrency<>0) } then
    T.Post
  else
    T.Cancel;
end;

function TbdrObject.MakeTable1(T: TdxMemData; Y, M: integer;
  aParams: TStringList; aMT: TdxMemData; aMsgList: TStringList): boolean;
var
  DU: string;
  Proc, Comm, Nach: currency;
  Data: TDateTime;

  procedure CalcData;
  var
    aY, aM, aD, Day, P1, P2: word;
  begin
    aMT.First;
    T.FieldByName('F14').AsCurrency := T.FieldByName('F6').AsCurrency *
      aMT.FieldByName('TexOs').AsCurrency;
    T.FieldByName('F15').AsCurrency := T.FieldByName('F7').AsCurrency *
      aMT.FieldByName('Exp').AsCurrency;
    if (not ABC.Eof) and (ABC.FN('F12').AsInteger > 0) then
    begin
      if aMT.RecordCount = 1 then
      begin // ���� �����
        T.FieldByName('F13').AsCurrency := AllTotal * aMT.FieldByName('Kab')
          .AsCurrency;
      end
      else // ������ - ��� ������
      begin
        DecodeDate(aMT.FieldByName('Data').AsDateTime, aY, aM, aD);
        Day := MonthDays[IsLeapYear(Y), M];
        P2 := Day - aD + 1;
        P1 := aD - 1;
        T.FieldByName('F13').AsCurrency :=
          (AllTotal * aMT.FieldByName('Kab').AsCurrency) / Day * P2;
        aMT.Next;
        T.FieldByName('F13').AsCurrency := T.FieldByName('F13').AsCurrency +
          (AllTotal * aMT.FieldByName('Kab').AsCurrency) / Day * P1;
      end;
    end;
  end;

  procedure CalcData1;
  var
    aY, aM, aD, Day, P1, P2: word;
    ABC_, LDSS_: boolean;
  begin
    if ABC.Eof then
    begin
      ABC_ := false;
      LDSS_ := false;
    end
    else
    begin
      ABC_ := ABC.FN('F13').AsInteger > 0;
      LDSS_ := ABC.FN('F14').AsInteger > 0;
    end;
    // ������ ����
    aMT.First;
    if aMT.RecordCount = 1 then
    begin // ���� �����
      if ABC_ then
        T.FieldByName('F25').AsCurrency := AllTotal * aMT.FieldByName('ABS')
          .AsCurrency;
      if LDSS_ then
        T.FieldByName('F26').AsCurrency := AllTotal * aMT.FieldByName('LDDS')
          .AsCurrency;
      T.FieldByName('F27').AsCurrency := AllTotal * aMT.FieldByName('TO')
        .AsCurrency;
    end
    else // ������ - ��� ������
    begin
      DecodeDate(aMT.FieldByName('Data').AsDateTime, aY, aM, aD);
      Day := MonthDays[IsLeapYear(Y), M];
      P2 := Day - aD + 1;
      P1 := aD - 1;
      if ABC_ then
        T.FieldByName('F25').AsCurrency :=
          (AllTotal * aMT.FieldByName('ABS').AsCurrency) / Day * P2;
      if LDSS_ then
        T.FieldByName('F26').AsCurrency :=
          (AllTotal * aMT.FieldByName('LDDS').AsCurrency) / Day * P2;
      T.FieldByName('F27').AsCurrency :=
        (AllTotal * aMT.FieldByName('TO').AsCurrency) / Day * P2;
      aMT.Next;
      if ABC_ then
        T.FieldByName('F25').AsCurrency := T.FieldByName('F25').AsCurrency +
          (AllTotal * aMT.FieldByName('ABS').AsCurrency) / Day * P1;
      if LDSS_ then
        T.FieldByName('F26').AsCurrency := T.FieldByName('F26').AsCurrency +
          (AllTotal * aMT.FieldByName('LDDS').AsCurrency) / Day * P1;
      T.FieldByName('F27').AsCurrency := T.FieldByName('F27').AsCurrency +
        (AllTotal * aMT.FieldByName('TO').AsCurrency) / Day * P1;
    end;
  end;

  function IsCorrect: boolean;
  begin
    Result := (TarifStr <> '');
    if not Result then
    begin
      if T.FieldByName('F9').AsCurrency <> 0 then
        aMsgList.Add(T.FieldByName('F1').AsString + ' ������: ' +
          T.FieldByName('F9').AsString +
          '  ������ �� �����������. ����������.');
      Exit;
    end;
    // �������� ������� ������ �� ����
    IsLift.ParamByName('House').AsInteger := House;
    IsLift.ExecQuery;
    if IsLift.Eof then
    begin
      Result := false;
      aMsgList.Add(T.FieldByName('F1').AsString +
        ' ��� ���������� � ������. ����������.');
      Exit;
    end;
  end;

begin
  aMsgList.Clear;
  // ��� ���� ������
  ABC.ParamByName('House').AsInteger := House;
  ABC.ParamByName('Y').AsInteger := Y;
  ABC.ParamByName('M').AsInteger := M;
  ABC.ExecQuery;
  // ��������� ����
  HouseQ.ParamByName('Code').AsInteger := House;
  HouseQ.ExecQuery;
  T.Append;
  T.FieldByName('House').AsInteger := House;
  T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
    HouseQ.FN('Nomer').AsString;
  DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
  T.FieldByName('F2').AsString := DU;
  // ������
  if Length(DU) = 1 then
    DU := '0' + DU;
  T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
  // �����
  T.FieldByName('F3').AsString := TarifStr;
  // �������
  T.FieldByName('F4').AsCurrency := Total;
  // ���-�� ������
  LiftCount.ParamByName('House').AsInteger := House;
  LiftCount.ExecQuery;
  if LiftCount.FN('Num').AsInteger <> 0 then
    T.FieldByName('F5').AsInteger := LiftCount.FN('Num').AsInteger;
  // ���-�� ������ �� �������� � ����������
  LiftData.ParamByName('M').AsInteger := M;
  LiftData.ParamByName('Y').AsInteger := Y;
  LiftData.ParamByName('House').AsInteger := House;
  LiftData.ExecQuery;
  if not LiftData.Eof then
  begin
    T.FieldByName('F6').AsInteger := LiftData.FN('TexOs').AsInteger;
    T.FieldByName('F7').AsInteger := LiftData.FN('Exp').AsInteger;
  end;
  // ����������
  Nach := CalcNach(Y, M, Total);
  T.FieldByName('F8').AsCurrency := Nach;
  // ������ �� ������ �������
  if Balans <> 0 then
  begin
    T.FieldByName('F9').AsCurrency := Balans;
  end;
  // ������� ����������� ��������
  Data := EncodeDate(Y, M, 1);
  Proc := GetUK(Data);
  T.FieldByName('F11').AsCurrency := T.FieldByName('F8').AsCurrency /
    100 * Proc;
  // ������������ ���� �� �����
  Comm := StrToFloatDef(cmCorrectFloat(aParams.Values['GFK']), 0);
  if Comm <> 0 then
    T.FieldByName('F12').AsCurrency := T.FieldByName('F8').AsCurrency /
      100 * Comm;
  // �������� ������ �� �������� �����
  TotalNG := LoadNG(T, Y, M, 18);
  if T.FieldByName('F19').AsCurrency <> 0 then
  begin
    T.FieldByName('F20').AsCurrency := T.FieldByName('F19').AsCurrency /
      100 * Proc;
    if Comm <> 0 then
      T.FieldByName('F21').AsCurrency := T.FieldByName('F19').AsCurrency /
        100 * Comm;
    T.FieldByName('F23').AsCurrency := T.FieldByName('F20').AsCurrency +
      T.FieldByName('F21').AsCurrency;
  end;
  // ��������, ����������, ������ ������
  CalcData;
  // ��������� ������������
  T.FieldByName('F10').AsCurrency := T.FieldByName('F8').AsCurrency +
    T.FieldByName('F19').AsCurrency;
  // ABC, ����, ���������������
  CalcData1;
  // ����� �������
  T.FieldByName('F17').AsCurrency := T.FieldByName('F11').AsCurrency +
    T.FieldByName('F12').AsCurrency + T.FieldByName('F13').AsCurrency +
    T.FieldByName('F14').AsCurrency + T.FieldByName('F15').AsCurrency +
    T.FieldByName('F20').AsCurrency + T.FieldByName('F21').AsCurrency +
    T.FieldByName('F25').AsCurrency + T.FieldByName('F26').AsCurrency +
    T.FieldByName('F27').AsCurrency;
  // ������� ������
  T.FieldByName('F28').AsCurrency := T.FieldByName('F10').AsCurrency -
    T.FieldByName('F17').AsCurrency;
  // ��������� ������ � �������
  Result := IsCorrect;
  if Result then
    T.Post
  else
    T.Cancel;
end;

function TbdrObject.MakeTable2(T: TdxMemData; Y, M: integer;
  aParams: TStringList): boolean;
var
  DU: string;
  Proc, Comm, KV: currency;
  Data: TDateTime;
  Q: TFIBQuery;
begin
  // ������ �� �����������
  {ShbQ.ParamByName('Y').AsInteger := Y;
  ShbQ.ParamByName('M').AsInteger := M;
  ShbQ.ParamByName('House').AsInteger := House;
  ShbQ.ExecQuery;}
  // ��������� ����
  HouseQ.ParamByName('Code').AsInteger := House;
  HouseQ.ExecQuery;
  T.Append;
  T.FieldByName('House').AsInteger := House;
  T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
    HouseQ.FN('Nomer').AsString;
  DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
  T.FieldByName('F2').AsString := DU;
  // ������
  if Length(DU) = 1 then
    DU := '0' + DU;
  T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
  // �����
  T.FieldByName('F3').AsString := TarifStr;
  // �������
  T.FieldByName('F4').AsCurrency := Total;
  // ����������
  T.FieldByName('F5').AsCurrency := CalcNach(Y, M, Total);
  // ����� �� ������ �������
  if Balans <> 0 then
    T.FieldByName('F6').AsCurrency := Balans;
  // ��������� ������������
  T.FieldByName('F7').AsCurrency := T.FieldByName('F5').AsCurrency +
    T.FieldByName('F6').AsCurrency;
  // ������� ����������� ��������
  Data := EncodeDate(Y, M, 1);
  Proc := GetUK(Data);
  T.FieldByName('F8').AsCurrency := T.FieldByName('F5').AsCurrency / 100 * Proc;
  // ������������ ���� �� �����
  Comm := StrToFloatDef(cmCorrectFloat(aParams.Values['GFK']), 0);
  if Comm <> 0 then
    T.FieldByName('F9').AsCurrency := T.FieldByName('F5').AsCurrency /
      100 * Comm;
  // �����������
  T.FieldByName('F10').AsCurrency := HouseQ.FN('DRTZ_SQ').AsCurrency *
    StrToFloatDef(cmCorrectFloat(aParams.Values['DRTZ']), 0);
  T.FieldByName('DRTZ').AsCurrency := HouseQ.FN('DRTZ_SQ').AsCurrency;
  // �����������
  T.FieldByName('F37').AsCurrency := HouseQ.FN('CELLAR_SQ').AsCurrency *
    StrToFloatDef(cmCorrectFloat(aParams.Values['DZI']), 0);
  T.FieldByName('DZI').AsCurrency := HouseQ.FN('CELLAR_SQ').AsCurrency;
  if (HouseQ.FN('Floor_cnt').AsInteger<6) and not ((Y=2015) and ((M>3) and (M<10))) then
  begin
    T.FieldByName('F37').AsCurrency:=0;
    T.FieldByName('DZI').AsCurrency:=0;
  end;
  // �������� � ���������� ���������
  KV := StrToFloatDef(cmCorrectFloat(aParams.Values['KV']), 0);
  // �������� ���������, ������ ���� ���� ���������� �� ������
  if T.FieldByName('F5').AsCurrency > 0 then
    T.FieldByName('F11').AsCurrency := AccCnt * KV;
  // ������������ ������������� ������ (���)
  T.FieldByName('AccCount').AsInteger := AccCnt;
  // ����� �������
  T.FieldByName('F15').AsCurrency := T.FieldByName('F8').AsCurrency +
    T.FieldByName('F9').AsCurrency + T.FieldByName('F10').AsCurrency +
    T.FieldByName('F11').AsCurrency + T.FieldByName('F12').AsCurrency +
    T.FieldByName('F14').AsCurrency + T.FieldByName('F36').AsCurrency +
    T.FieldByName('F37').AsCurrency;
  // ������� ����
  TotalNG := LoadNG(T, Y, M, 16);
  if T.FieldByName('F17').AsCurrency <> 0 then
  begin
    T.FieldByName('F18').AsCurrency := T.FieldByName('F17').AsCurrency /
      100 * Proc;
    Comm := StrToFloatDef(cmCorrectFloat(aParams.Values['NFK']), 0);
    if Comm <> 0 then
      T.FieldByName('F19').AsCurrency := T.FieldByName('F17').AsCurrency /
        100 * Comm;
    T.FieldByName('F21').AsCurrency := T.FieldByName('F18').AsCurrency +
      T.FieldByName('F19').AsCurrency + T.FieldByName('F20').AsCurrency;
  end;
  // ����� + �������
  T.FieldByName('F22').AsCurrency := T.FieldByName('F4').AsCurrency +
    T.FieldByName('F16').AsCurrency;
  T.FieldByName('F23').AsCurrency := T.FieldByName('F5').AsCurrency +
    T.FieldByName('F17').AsCurrency;
  T.FieldByName('F24').AsCurrency := T.FieldByName('F8').AsCurrency +
    T.FieldByName('F18').AsCurrency;
  T.FieldByName('F25').AsCurrency := T.FieldByName('F9').AsCurrency +
    T.FieldByName('F19').AsCurrency;
  T.FieldByName('F26').AsCurrency := T.FieldByName('F14').AsCurrency +
    T.FieldByName('F20').AsCurrency;
  T.FieldByName('F27').AsCurrency := T.FieldByName('F15').AsCurrency +
    T.FieldByName('F21').AsCurrency;
  T.FieldByName('F28').AsCurrency := T.FieldByName('F6').AsCurrency +
    T.FieldByName('F23').AsCurrency - T.FieldByName('F27').AsCurrency;
  { if T.FieldByName('F28').AsCurrency<0 then
    T.FieldByName('F28').AsCurrency:=0; }
  // ��������� ������ � �������
  Result := (TarifStr <> '') or (Balans <> 0);
  if Result then
    T.Post
  else
    T.Cancel;
end;

procedure TbdrObject.Prepare;
begin
end;

function TbdrObject.TarifStr: string;
var
  i: integer;
begin
  Result := '';
  for i := 0 to fTarifs.Count - 1 do
  begin
    if Result <> '' then
      Result := Result + ' / ';
    Result := Result + cmGetWord(fTarifs[i], 2, ' ');
  end;
end;

{ TbdrList }

function TbdrList.AddHouseTotal(House: integer; Tot_Space: currency;
  Acc_CNT: integer; NGCode: integer; const Srv: string; aQ: TbdrQuery;
  FactCode: integer): TbdrObject;
begin
  Result := TbdrObject.Create(House, Tot_Space, aQ);
  Result.NGCode := NGCode;
  Result.Srv := Srv;
  Result.AccCnt := Acc_CNT;
  Result.FactCode := FactCode;
  AddObject(IntToStr(House), Result);
end;

procedure TbdrList.AddTarif(aData: TDateTime; Q: TFIBQuery);
var
  i: integer;
  Obj: TbdrObject;
begin
  i := IndexOf(Q.FN('House').AsString);
  if i >= 0 then
  begin
    Obj := TbdrObject(Objects[i]);
    Obj.AddTarif(aData, Q.FN('TARIF_TAXA').AsCurrency);
  end;
end;

destructor TbdrList.Destroy;
var
  i: integer;
begin
  for i := 0 to Count - 1 do
    Objects[i].Free;
  inherited;
end;

{ TbdrBuilder }

procedure TbdrBuilder.ClearFactList;
var
  i: integer;
begin
  for i := 0 to FactList.Count - 1 do
    FactList.Objects[i].Free;
  FactList.Clear;
end;

constructor TbdrBuilder.Create(aM, aY: integer; ASrv: string);
begin
  fM := aM;
  fY := aY;
  fSrv := ASrv;
  fList := TbdrList.Create;
  fParams := TStringList.Create;
  FactList := TStringList.Create;
  NGPRoom := TStringList.Create;
  fQuery := TbdrQuery.Create;
  fMT := TdxMemData.Create(nil);
  fDogHouseList := TStringList.Create;
  fDogHouseKName := TStringList.Create;
  fDogHouseFlat := TStringList.Create;
end;

procedure TbdrBuilder.CreateLiftTable;
var
  D: word;
  Data: TDateTime;

  procedure AddRec;
  begin
    fMT.Append;
    fMT.FieldByName('Data').AsString := fQuery.LiftParam.FN('Data').AsString;
    fMT.FieldByName('Kab').AsString := fQuery.LiftParam.FN('Kab').AsString;
    fMT.FieldByName('TexOs').AsString := fQuery.LiftParam.FN('TexOs').AsString;
    fMT.FieldByName('Exp').AsString := fQuery.LiftParam.FN('Exp').AsString;
    fMT.FieldByName('ABS').AsString := fQuery.LiftParam.FN('ABS').AsString;
    fMT.FieldByName('LDDS').AsString := fQuery.LiftParam.FN('LDDS').AsString;
    fMT.FieldByName('TO').AsString := fQuery.LiftParam.FN('TO').AsString;
    fMT.Post;
  end;

begin
  // �������� ������ �� ����
  D := MonthDays[IsLeapYear(Y), M];
  Data := EncodeDate(Y, M, D);
  fQuery.LiftParam.ParamByName('Data').AsDate := Data;
  fQuery.LiftParam.ExecQuery;
  if fQuery.LiftParam.Eof then
    raise EMyException.Create('�� ������� ������ �� ������ ����.');
  // ������� ������� � �������� ��� ������
  CreateField(fMT, 'Data', ftDate);
  CreateField(fMT, 'Kab', ftCurrency);
  CreateField(fMT, 'TexOs', ftCurrency);
  CreateField(fMT, 'Exp', ftCurrency);
  CreateField(fMT, 'ABS', ftCurrency);
  CreateField(fMT, 'LDDS', ftCurrency);
  CreateField(fMT, 'TO', ftCurrency);
  fMT.Open;
  // ��������� ������� �������
  Data := EncodeDate(Y, M, 1);
  while not fQuery.LiftParam.Eof do
  begin
    if fQuery.LiftParam.FN('Data').AsDate < Data then
    begin
      if fMT.RecordCount = 0 then
        AddRec;
      Break;
    end
    else
      AddRec;
    fQuery.LiftParam.Next;
  end;
end;

destructor TbdrBuilder.Destroy;
begin
  ClearFactList;
  FactList.Free;
  NGPRoom.Free;
  fMT.Free;
  fList.Free;
  fParams.Free;
  fQuery.Free;
  fDogHouseList.Free;
  fDogHouseKName.Free;
  fDogHouseFlat.Free;
  inherited;
end;

procedure TbdrBuilder.ScanStartBalans;
var
  Q: TFIBQuery;
  S: string;
  R: currency;
  Obj: TbdrObject;
  i: integer;
  NotTarif: boolean;
begin
  Msg('������ ���������� ������ �������...');
  // ��������� ������
  if Srv = '6' then
    S := 'SELECT a.House, a.F31 F, b.Nomer, c.Name, IIF(F4<0,0,F4) TOT_SPACE, b.AccCode_cnt ACC_CNT FROM FBDR2 a '
      + 'left join House b on (b.Code=a.House) ' +
      'left join Street c on (c.Code=b.Street) ' + 'where a.FBDR=:Code'
  else if Srv = '8' then
    S := 'SELECT a.House, a.F30 F, b.Nomer, c.Name, IIF(F4<0,0,F4) TOT_SPACE, b.AccCode_cnt ACC_CNT FROM FBDR3 a '
      + 'left join House b on (b.Code=a.House) ' +
      'left join Street c on (c.Code=b.Street) ' + 'where a.FBDR=:Code'
  else
    S := 'SELECT a.House, a.F25 F, b.Nomer, c.Name, IIF(F4<0,0,F4) TOT_SPACE, b.AccCode_cnt ACC_CNT FROM FBDR1 a '
      + 'left join House b on (b.Code=a.House) ' +
      'left join Street c on (c.Code=b.Street) ' + 'where a.FBDR=:Code';
  Q := cmDB.GetQuery(S, cmDB.WT);
  Q.ParamByName('Code').AsInteger := FactCode;
  Q.ExecQuery;
  R := 0;
  while not Q.Eof do
  begin
    if List.Find(Q.FN('House').AsString, i) then
    begin
      Obj := TbdrObject(List.Objects[i]);
      Obj.Balans := Obj.Balans + Q.FN('F').AsCurrency;
      if Obj.fTarifs.Count = 0 then
        NotTarif := true
      else
        NotTarif := false;
    end
    else
    begin
      NotTarif := true;
      Obj := List.AddHouseTotal(Q.FN('House').AsInteger,
        Q.FN('Tot_Space').AsInteger, Q.FN('Acc_cnt').AsInteger, 0, Srv, fQuery,
        FactCode);
      Obj.Balans := Obj.Balans + Q.FN('F').AsCurrency;
      List.Sort;
    end;
    // ���� ��� �� ������
    if NotTarif then
    begin
      R := R + Q.FN('F').AsCurrency;
      Msg('�� ������ �����: ' + Q.FN('Name').AsString + ' ' + Q.FN('Nomer')
        .AsString + ' ������: ' + Q.FN('F').AsString);
    end;
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
  // ����� ����
  if R <> 0 then
  begin
    Msg('-------------------------');
    Msg('�����: ' + FormatFloat('0.00', R));
  end;
end;

procedure TbdrBuilder.Load2013List;
var
  Q, Q_, Q_list, Q1: TFIBQuery;
  D1, D2: TDateTime;
  Code, i, Count, NGCode: integer;
  Stream: TMemoryStream;
  TarifData: TDateTime;
  FirstProhod: boolean;
  aM,aY: integer;

  procedure LoadTarifByDate;
  begin
    Code := Q.FN('Code').AsInteger;
    TarifData := Q.FN('Data').AsDate;
    // �������� ����� ������� � ����� ��������
    Q_.ParamByName('Code').AsInteger := Code;
    Q_.ParamByName('Srv').AsString := Srv;
    Q_.ExecQuery;
    Count := Q_.FN('Num').AsInteger;
    // �������� ������ ������� �� ������� ������
    Q_list.ParamByName('Code').AsInteger := Code;
    Q_list.ParamByName('Srv').AsString := Srv;
    Q_list.ExecQuery;
    // ���������� �������� ������
    i := 0;
    while not Q_list.Eof do
    begin
      // ��������� ������ �� ���� (������ ��� �������� ������� ������)
      if FirstProhod then
        List.AddHouseTotal(Q_list.FN('House').AsInteger,
          Q_list.FN('Tot_space').AsCurrency, Q_list.FN('Acc_cnt').AsInteger, -1,
          Srv, fQuery, FactCode);
      // ��������� �����
      List.AddTarif(TarifData, Q_list);
      // � ���������� ������
      Q_list.Next;
      // ���������� ��������
      Inc(i);
      Progress(Count, i);
    end;
  end;

begin
  Msg('��������� ������...');
  Q := cmDB.GetQuery
    ('select * from HouseTarif where Data between :D1 and :D2 order by Data',
    cmDB.WT);
  Q_ := cmDB.GetQuery
    ('select Count(*) Num from HouseTarifList where HouseTarif=:Code and HouseSrv=:Srv',
    cmDB.WT);
  Q_list := cmDB.GetQuery
    ('select * from HouseTarifList where HouseTarif=:Code and HouseSrv=:Srv',
    cmDB.WT);
  Q1 := cmDB.GetQuery
    ('select * from HousePlan where Data<=:Data and HouseSrv=:Srv order by Data DESC',
    cmDB.WT);

  //�������� ��� ������� ������
  ShbCode:=0;
  // ������ ����� �������� ��� ����� � ����� ����������� �������
  try
    //������ �� ���������� �����
    if (M=1) then
    begin
      aM:=12;
      aY:=Y-1;
    end else
    begin
      aM:=M-1;
      aY:=Y;
    end;
    // ������
    D1 := EncodeDate(aY, aM, 1);
    D2 := IncMonth(D1, 1);
    D2 := D2 - 1;
    // �������� ��� ������ � ����� �������
    Q.ParamByName('D1').AsDate := D1;
    Q.ParamByName('D2').AsDate := D2;
    Q.ExecQuery;
    if Q.Eof then
      raise EMyException.Create('������ �� ���������.');
    // �������� ��������� ����� �� ������
    Q1.ParamByName('Data').AsDate := D2;
    Q1.ParamByName('Srv').AsString := Srv;
    Q1.ExecQuery;
    if Q1.Eof then
      raise EMyException.Create('�� ������� ��������� ��� ������������ �����.');
    Stream := TMemoryStream.Create;
    try
      Stream.Clear;
      Q1.FN('Recv').SaveToStream(Stream);
      Stream.Position := 0;
      fParams.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;

    // � ����� �������� ��� ����� ������� �� �����
    FirstProhod := true;
    while not Q.Eof do
    begin
      LoadTarifByDate;
      Q.Next;
      FirstProhod := false;
    end;

  finally
    cmDB.FreeQuery(Q);
    cmDB.FreeQuery(Q_);
    cmDB.FreeQuery(Q_list);
    cmDB.FreeQuery(Q1);
  end;
end;

procedure TbdrBuilder.SetKontragentKoef(Kontragent: integer; AType: smallint;
  Koef: double);
var
  i: integer;
  Obj: TbdrObject;
begin
  for i:=0 to List.Count-1 do
  begin
    Obj:=TbdrObject(List.Objects[i]);
    if Obj.POList.Values[IntToStr(AType)]=IntToStr(Kontragent) then
      Obj.POKoefList.Values[IntToStr(AType)]:=FloatToStr(Koef);
  end;
end;

function TbdrBuilder.GetKontragentSQ(Kontragent: integer;
  AType: smallint): double;
var
  i: integer;
  Obj: TbdrObject;
begin
  Result:=0;
  for i:=0 to List.Count-1 do
  begin
    Obj:=TbdrObject(List.Objects[i]);
    if Obj.POList.Values[IntToStr(AType)]=IntToStr(Kontragent) then
      Result:=Result+Obj.Total+Obj.TotalNG;
  end;
end;

procedure TbdrBuilder.LoadSmetaDate(FinPlanSrv: integer);
var
  Q: TFIBQuery;
  Obj: TbdrObject;
  i, idx: integer;
  SQ, Koef: double;
begin
  //�������� ������ ����� �� ��������
  Q:=cmDb.GetQuery('select * from GetCalcHouseList('+IntToStr(FinPlanSrv)+')', cmDB.WT);
  Q.ExecQuery;
  fDogHouseList.Clear;
  while not Q.Eof do
  begin
    fDogHouseList.AddObject(Q.FN('House').AsString, TObject(Q.FN('Kontragent').AsInteger));
    fDogHouseKName.Values[Q.FN('Kontragent').AsString]:=Q.FN('KontragentName').AsString;
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
  fDogHouseList.Sort;
  //����������� ������������ ��� ��� �����
  for i := 0 to List.Count-1 do
  begin
    Obj:=TbdrObject(List.Objects[i]);
    if (fDogHouseList.Find(IntToStr(Obj.House), idx)) then
      Obj.POList.Values[IntToStr(FinPlanSrv)]:=IntToStr(integer(fDogHouseList.Objects[idx]))
    else
      Msg('����� ('+IntToStr(FinPlanSrv)+'). ��� �� ������: ' + IntToStr(Obj.House));
  end;
  //�������� ����� �� ������ ��, ����������� �� � ����
  Q:=cmDB.GetQuery('select Kontragent, Summa from GetDatePlan(:Data, :PlanSrv)',cmDB.WT);
  Q.ParamByName('Data').AsDate:=EncodeDate(Y,M,1);
  Q.ParamByName('PlanSrv').AsInteger:=FinPlanSrv;
  Q.ExecQuery;
  while not Q.Eof do
  begin
      SQ:=GetKontragentSQ(Q.FN('Kontragent').AsInteger, FinPlanSrv);
      if (SQ<>0) then
      begin
        Koef:=Q.FN('Summa').AsDouble/SQ;
        SetKontragentKoef(Q.FN('Kontragent').AsInteger, FinPlanSrv, Koef);
      end else
        Msg('�� ������� ���� ��� �����������: (�����  - '+IntToStr(FinPlanSrv)+') ��� �����������: '+Q.FN('Kontragent').AsString);
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
end;

procedure TbdrBuilder.Execute(T: TdxMemData);
var
  S: string;
begin
  MakeBDRTableStruct(Srv, T);
  // �������� ��� ������� �����
  FactCode := GetFactCode;

  if Y < 2013 then
  begin
    LoadHouseList; // ��������� ������ �����
    LoadTarifList; // �������� �������
  end
  else
    Load2013List; // ������ �������� ������ � 2013 ����

  // ������������ ������� � ������� ��� ���������
  T.Close;
  T.Open;
  // ��������� ������ ��� ������ �����
  if Srv = '6' then
    S := 'select F31 F from FBDR2 where FBDR=:FactCode and House=:House'
  else if Srv = '8' then
    S := 'select F30 F from FBDR3 where FBDR=:FactCode and House=:House'
  else
    S := 'select F25 F from FBDR1 where FBDR=:FactCode and House=:House';
  FactQ := cmDBUnit.cmDB.GetQuery(S, cmDBUnit.cmDB.WT);
  try
    MakeTable(T);
  finally
    cmDBUnit.cmDB.FreeQuery(FactQ);
  end;
  Msg('������������ ������ ���������.');
end;

procedure TbdrBuilder.ExecuteFact(T: TdxMemData);
begin
  // ������������ ��������� �������
  MakeBDRFactTableStruct(Srv, T);

  Msg('��������� �����...');
  T.Close;
  T.Open;
  // ��������� ������ �����, ������ ������ �� ������ �� ��������� ������
  ClearFactList;
  NGPRoom.Clear; // ������� ������ ������� ���������
  // �������� ��� � ������� HousePrv - ��������� ��������� �� �����
  HousePrv := GetHousePrvCode;
  if HousePrv < 0 then
  begin
    cmShowMessage('�� ��������� ������ ���. ������������ ������ ��������.');
    Exit;
  end;
  // ��������� ����� �������� � ������ 2013, ������� ������������ ��� � �������
  // HouseTarif (��� ������ �� ����� �������)
  HouseRecv := GetHouseRecvCode;
  if HouseRecv < 0 then
  begin
    cmShowMessage('�� ��������� �������������� ������ ���. ������������ ������ ��������.');
    Exit;
  end;
  // ���������� ��� � ������� FBDR �� ���������� �����
  FactCode := GetFactCode;
  if FactCode < 0 then
  begin
    cmShowMessage('�� ������� ��� ����� �� ���������� �����. ������������ ������ ��������.');
    Exit;
  end;
  // ������� ����
  HouseNG := 0;
  //������ ������ �������� ������ �� ��� ������� �� ������ 2013 ����
  if (Pos(',' + Srv + ',', ',1,7,') = 0) and (Y < 2013) then
  begin
    HouseNG := GetHouseNGCode;
    if HouseNG < 0 then
    begin
      cmShowMessage('�� ��������� ������ ��� �� 1C. ������������ ������ ��������.');
      Exit;
    end;
  end;
  // ����� ��������� ����� ��� ����� ��������� � �����
  if Pos(';' + Srv + ';', ';6;8;14;') = 0 then
  begin
    FactDocCode := GetFactDocCode;
    if FactDocCode < 0 then
    begin
      cmShowMessage('�� ������ �������� �����. ������������ ������ ��������.');
      Exit;
    end;
  end;
  // �������� �������� ������� ��� (HouseTarif)
  HouseTarif := GetHouseTarifCode;
  if HouseTarif < 0 then
  begin
    cmShowMessage('�� ��������� ������ ���. ������������ ������ ��������.');
    Exit;
  end;

  // �������� �� ������� ���������� - �������� �� �����
  NGQ := cmDB.GetQuery
    ('select Sum(SN) SN, Sum(Total) Total, Sum(Nach) Nach, Sum(Opl) Opl, Sum(SK) SK '
    + ' FROM HouseNGList where HouseNG=:DocCode and House=:House', cmDB.WT);
  // ������ �� ����
  NGTarif := cmDB.GetQuery
    ('select * from HouseTarifList where HouseTarif=:DocCode ' +
    'and House=:House and not HouseSrv in (1,7)', cmDB.WT);
  //��� �� �� ���
  if Y<2013 then
  begin
    OIBalans := cmDB.GetQuery('select Sum(RSum1) Summa from HMoveImMKD', cmDB.WT);
    TotalQ := cmDB.GetQuery('select * from HouseRecvList where HouseRecv=:Code ' +
      'and House=:House', cmDBUnit.cmDB.WT);
  end
  else
  begin
    TotalQ := cmDB.GetQuery('select * from HouseTarifList where HouseTarif=:Code ' +
      'and House=:House and HouseSrv=:Srv', cmDBUnit.cmDB.WT);
    OIBalans := cmDB.GetQuery('select House,Sum(Opl) Summa from HouseOborot1C GROUP BY House', cmDB.WT);
  end;
  try
    MakeFactReport(T);
  finally
    cmDB.FreeQuery(TotalQ);
    cmDB.FreeQuery(NGQ);
    cmDB.FreeQuery(NGTarif);
    cmDB.FreeQuery(OIBalans);
  end;

  Msg('������������ ������ ���������.');
end;

procedure TbdrBuilder.FullComboBox(Box: TdxBarCombo);
var
  Q: TFIBQuery;
begin
  // �������� ������ ���������
  Q := cmDB.GetQuery('SELECT sd.CODE, sd.KONTRAGENT,k.NAME KName, ' +
    'sd.NOMER, sd.D1, sd.D2, sd."ACTIVE", sd.DATA, ' +
    'sd.atype FROM SRVDOG sd ' +
    'left outer join KONTRAGENT k on k.code=sd.KONTRAGENT ' +
    'where sd."ACTIVE"=1 ORDER BY k.Name');
  Q.ExecQuery;

  Box.Items.Clear;
  Box.Items.AddObject('...', TObject(0));
  while not Q.Eof do
  begin
    Box.Items.AddObject(Q.FN('KName').AsString + '  ' + Q.FN('Nomer').AsString +
      ' �� ' + Q.FN('D1').AsString, TObject(Q.FN('Code').AsInteger));
    Q.Next;
  end;
  Box.ItemIndex := 0;

  cmDB.FreeQuery(Q);
end;

function TbdrBuilder.GetFactCode(aSrv: integer = 0): integer;
var
  Q: TFIBQuery;
  aY, aM: integer;
begin
  Result := -1;
  // ���������� ������ ��� �����
  if M = 1 then
  begin
    aM := 12;
    aY := Y - 1;
  end
  else
  begin
    aM := M - 1;
    aY := Y;
  end;
  // �������� ��� ����� �� ����. �����
  Q := cmDBUnit.cmDB.GetQuery
    ('select * from FBDR where Y=:Y and M=:M and HouseSrv=:Srv',
    cmDBUnit.cmDB.WT);
  try
    Q.ParamByName('Y').AsInteger := aY;
    Q.ParamByName('M').AsInteger := aM;
    if aSrv=0 then
      Q.ParamByName('Srv').AsString := Srv
    else
      Q.ParamByName('Srv').AsInteger := aSrv;
    Q.ExecQuery;
    if not Q.Eof then
      Result := Q.FN('Code').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  if Result < 0 then
    Msg('�� ������ ��� (����) �� ���������� �����.');
end;

function TbdrBuilder.GetFactDocCode: integer;
var
  Q: TFIBQuery;
begin
  Result := -1;
  Q := cmDB.GetQuery
    ('select * from FactDoc where Y=:Y and M=:M and HouseSrv=:Srv', cmDB.WT);
  Q.ParamByName('Y').AsInteger := Y;
  Q.ParamByName('M').AsInteger := M;
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  if not Q.Eof then
    Result := Q.FN('Code').AsInteger;
  cmDB.FreeQuery(Q);
end;

function TbdrBuilder.GetHouseNGCode: integer;
var
  Q: TFIBQuery;
begin
  Result := -1;
  Q := cmDBUnit.cmDB.GetQuery('select Code from HouseNG where Y=:Y and M=:M',
    cmDBUnit.cmDB.WT);
  try
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    if not Q.Eof then
      Result := Q.FN('Code').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

function TbdrBuilder.GetHousePrvCode: integer;
var
  Q: TFIBQuery;
begin
  //������ �� �����
  Q := cmDBUnit.cmDB.GetQuery('select Code from HousePrv where Y=:Y and M=:M',
    cmDBUnit.cmDB.WT);
  try
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    if not Q.Eof then
      Result := Q.FN('Code').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

function TbdrBuilder.GetHouseRecvCode: integer;
var
  Q: TFIBQuery;
  sql: string;
  Data: TDateTime;
begin
  Result := -1;
  if Y<2013 then
    sql:='select Code from HouseRecv where Y=:Y and M=:M'
  else
    sql:='select Code from HouseTarif where Data=:Data order by Data';

  Q := cmDBUnit.cmDB.GetQuery(sql, cmDBUnit.cmDB.WT);
  try
    if Y<2013 then
    begin
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end
    else
    begin
      Data:=EncodeDate(Y,M,1);
      Q.ParamByName('Data').AsDateTime := Data;
    end;

    Q.ExecQuery;

    if not Q.Eof then
      Result := Q.FN('Code').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

function TbdrBuilder.GetHouseTarifCode: integer;
var
  Q: TFIBQuery;
begin
  Result := -1;
  Q := cmDB.GetQuery
    ('select Code from HouseTarif where Data<=:Data ORDER BY data desc',
    cmDB.WT);
  try
    Q.ParamByName('Data').AsDate :=
      EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
    Q.ExecQuery;
    if not Q.Eof then
      Result := Q.FN('Code').AsInteger;
  finally
    cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrBuilder.GetPeriod(M, Y: integer; var D1, D2: TDateTime);
begin
  D1 := EncodeDate(Y, M, 1);
  Inc(M);
  if M > 12 then
  begin
    M := 1;
    Inc(Y);
  end;
  D2 := EncodeDate(Y, M, 1);
  D2 := D2 - 1;
end;

procedure TbdrBuilder.GetNGKoef(aHouse: integer; var AGlobal, ASrv: currency);
begin
  AGlobal := 0;
  ASrv := 0;
  NGTarif.ParamByName('DocCode').AsInteger := Self.HouseTarif;
  NGTarif.ParamByName('House').AsInteger := aHouse;
  NGTarif.ExecQuery;
  while not NGTarif.Eof do
  begin
    AGlobal := AGlobal + NGTarif.FN('Tarif_taxa').AsCurrency;
    if NGTarif.FN('HouseSrv').AsString = Srv then
      ASrv := NGTarif.FN('Tarif_taxa').AsCurrency;
    NGTarif.Next;
  end;
end;

function TbdrBuilder.GetShbCode: integer;
var
  Q: TFIBQuery;
begin
  Result := -1;
  Q := cmDB.GetQuery
    ('select Code from ShbSrvCheck where M=:M and Y=:Y', cmDB.RT);
  try
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Y').AsInteger := Y;
    Q.ExecQuery;
    if Q.Eof then
      raise Exception.Create('��� ������� ��� ��� ���������� ������.')
    else
      Result := Q.FN('Code').AsInteger;
  finally
    cmDB.FreeQuery(Q);
  end;
end;

function TbdrBuilder.GetTotal(aHouse: integer): double;
begin
  Result := 0;
  TotalQ.ParamByName('Code').AsInteger := HouseRecv;
  TotalQ.ParamByName('House').AsInteger := aHouse;
  TotalQ.ParamByName('Srv').AsString := Srv;
  TotalQ.ExecQuery;
  if not TotalQ.Eof then
    Result := TotalQ.FN('TOT_SPACE').AsDouble;
end;

procedure TbdrBuilder.LoadHouseList;
var
  Q, Q1, Q2, Q3, Q4, Q5, Q6: TFIBQuery;
  i, Code, Count, TarifCode: integer;
  SQ: currency;
  Data: TDateTime;
  Stream: TMemoryStream;
begin
  Msg('��������� �������������� ������ ������ �����.');
  Q := cmDB.GetQuery
    ('select * from HouseRecv where (Y<:Y) or ((Y=:Y) and (M<=:M)) ORDER BY Y desc,M desc',
    cmDB.WT);
  Q1 := cmDB.GetQuery
    ('select * from HouseRecvList where HouseRecv=:Code', cmDB.WT);
  Q2 := cmDB.GetQuery
    ('select Count(*) Num from HouseRecvList where HouseRecv=:Code', cmDB.WT);
  Q3 := cmDB.GetQuery
    ('select * from HousePlan where Data<=:Data and HouseSrv=:Srv order by Data DESC',
    cmDB.WT);
  Q4 := cmDB.GetQuery
    ('select * from HouseNG where (Y<:Y) or ((Y=:Y) and (M<=:M)) ORDER BY Y desc,M desc',
    cmDB.WT);
  Q5 := cmDB.GetQuery
    ('select * from HouseTarif where Data<=:Data ORDER BY Data DESC', cmDB.WT);
  Q6 := cmDB.GetQuery
    ('select * from HouseTarifList where HouseTarif=:HouseTarif ' +
    'and House=:House and HouseSrv=:Srv', cmDB.WT);
  try
    // ������ ���� �������� ������
    Data := EncodeDate(Y, M, 1);
    // �������� ������ �� ������ ��� ���������� �����
    ShbCode := GetShbCode;
    // �������� ��������� �����. ������
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    if Q.Eof then
      raise EMyException.Create
        ('�������������� ������ ������ ����� �� ���������.');
    Code := Q.FN('Code').AsInteger;
    // �������� ��� ������ ������� �� ������ (��� ������� �������� �����)
    Q5.ParamByName('Data').AsDateTime := Data;
    Q5.ExecQuery;
    if Q5.Eof then
      raise EMyException.Create('�� ��������� ������ ��� �� ��������� ������.');
    // �������� ��������� ����� �� ������
    Q3.ParamByName('Data').AsDate := Data;
    Q3.ParamByName('Srv').AsString := Srv;
    Q3.ExecQuery;
    if Q3.Eof then
      raise EMyException.Create('�� ������� ��������� ��� ������������ �����.');
    Stream := TMemoryStream.Create;
    try
      Stream.Clear;
      Q3.FN('Recv').SaveToStream(Stream);
      Stream.Position := 0;
      fParams.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;
    // �������� ��� ������ �� ������� ����������
    Q4.ParamByName('Y').AsInteger := Y;
    Q4.ParamByName('M').AsInteger := M;
    Q4.ExecQuery;
    if Q4.Eof then
      raise EMyException.Create('������ �������� ����� �� ���������.');
    NGCode := Q4.FN('Code').AsInteger;
    // �������� ����� �������
    Q2.ParamByName('Code').AsInteger := Code;
    Q2.ExecQuery;
    Count := Q2.FN('Num').AsInteger;
    // �������� ������ �� �������
    Q1.ParamByName('Code').AsInteger := Code;
    Q1.ExecQuery;
    i := 0;
    while not Q1.Eof do
    begin
      // �������� ������� ����
      Q6.ParamByName('HouseTarif').AsInteger := Q5.FN('Code').AsInteger;
      Q6.ParamByName('House').AsInteger := Q1.FN('House').AsInteger;
      Q6.ParamByName('Srv').AsString := Srv;
      Q6.ExecQuery;
      if not Q6.Eof then
        SQ := Q6.FN('Tot_space').AsCurrency
      else
        SQ := 0;
      // ��������� ������ � ��������� ����
      List.AddHouseTotal(Q1.FN('House').AsInteger, SQ,
        Q1.FN('Acc_cnt').AsInteger, NGCode, Srv, fQuery, FactCode);
      Q1.Next;
      // ���������� ��������
      Inc(i);
      Progress(Count, i);
    end;
  finally
    cmDB.FreeQuery(Q);
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(Q2);
    cmDB.FreeQuery(Q3);
    cmDB.FreeQuery(Q4);
    cmDB.FreeQuery(Q5);
    cmDB.FreeQuery(Q6);
  end;
  List.Sort;
end;

procedure TbdrBuilder.LoadParams;
var
  Q1: TFibQuery;
  D2: TDateTime;
  Stream: TMemoryStream;
begin
  D2:=EncodeDate(Y,M,1);
  D2:=IncMonth(D2,1)-1;
  // �������� ��������� ����� �� ������
  Q1 := cmDB.GetQuery
    ('select * from HousePlan where Data<=:Data and HouseSrv=:Srv order by Data DESC',
    cmDB.WT);
  Q1.ParamByName('Data').AsDate := D2;
  Q1.ParamByName('Srv').AsString := Srv;
  Q1.ExecQuery;
  if Q1.Eof then
      raise EMyException.Create('�� ������� ��������� ��� ������������ �����.');
  Stream := TMemoryStream.Create;
  try
    Stream.Clear;
    Q1.FN('Recv').SaveToStream(Stream);
    Stream.Position := 0;
    fParams.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TbdrBuilder.LoadTarif(aTarifStr, aDataStr: string);
var
  Q, Q1, Q2: TFIBQuery;
  Count, i, j: integer;
  S, FName: string;
begin
  Msg('��������� ������...');
  Q := cmDB.GetQuery('select * from HouseTarifList ' +
    'where HouseTarif=:HouseTarif and HouseSrv=:Srv and House=:House', cmDB.WT);
  Q1 := cmDB.GetQuery('select Count(*) Num from ShbSrvCheck ' +
    'where M=:M and Y=:Y', cmDB.WT);
  // ��������� ������ ��� ������� ������ �� �������
  if StrToIntDef(Srv, 100) > 10 then
    FName := '1'
  else
    FName := 'F' + Srv;
  S := 'select ' + FName + ' F, House from ShbSrvCheck where Y=:Y and M=:M';
  Q2 := cmDB.GetQuery(S, cmDB.WT);

  try
    // �������� ���-�� ������� � ������� �����
    Q1.ParamByName('Y').AsInteger := Y;
    Q1.ParamByName('M').AsInteger := M;
    Q1.ExecQuery;
    Count := Q1.FN('Num').AsInteger;
    // �������� ������ ����� �� �������
    Q2.ParamByName('Y').AsInteger := Y;
    Q2.ParamByName('M').AsInteger := M;
    Q2.ExecQuery;
    i := 0;
    while not Q2.Eof do
    begin
      if Q2.FN('F').AsInteger > 0 then
      begin
        for j := 1 to cmWordCount(aTarifStr, ',') do
        begin
          Q.ParamByName('HouseTarif').AsString := cmGetWord(aTarifStr, j, ',');
          Q.ParamByName('Srv').AsString := Srv;
          Q.ParamByName('House').AsInteger := Q2.FN('House').AsInteger;
          Q.ExecQuery;
          if not Q.Eof then
            List.AddTarif(StrToDateTime(cmGetWord(aDataStr, j, #9)), Q);
        end;
      end;
      Q2.Next;
      // ���������� ��������
      Inc(i);
      Progress(Count, i);
    end;

  finally
    cmDB.FreeQuery(Q);
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(Q2);
  end;
end;

procedure TbdrBuilder.LoadTarifList;
var
  Q: TFIBQuery;
  Qs1, Qs2: string;
  aD, aM, aY: word;
  D1, D2: TDateTime;
  TarifStr, DataStr, QueryText: string;
  HouseTarifCode: integer;
begin
  // �������� ������ �� �������� ������
  aD := 1;
  aM := M;
  aY := Y;
  D1 := EncodeDate(aY, aM, aD);
  IncAMonth(aY, aM, aD, 1);
  D2 := EncodeDate(aY, aM, aD) - 1;
  // ������ ����� 1 - �������� �������� ������ ������� �� �������� ������
  Q := cmDB.GetQuery
    ('select * from HouseTarif where Data BETWEEN :D1 and :D2 order by Data',
    cmDBUnit.cmDB.WT);
  Q.ParamByName('D1').AsDateTime := D1;
  Q.ParamByName('D2').AsDateTime := D2;
  Q.ExecQuery;
  // ���� ��� ������� �� ���� �����
  if Q.Eof then
  begin
    cmDB.FreeQuery(Q);
    Q := cmDB.GetQuery
      ('select Code from HouseTarif ORDER BY Data Desc', cmDB.WT);
    Q.ExecQuery;
    HouseTarifCode := Q.FN('Code').AsInteger;
    cmDB.FreeQuery(Q);
    Q := cmDB.GetQuery('select * from HouseTarif where Code=:Code',
      cmDBUnit.cmDB.WT);
    Q.ParamByName('Code').AsInteger := HouseTarifCode;
    Q.ExecQuery;
  end;
  // ������� ������������� ������ �������
  try
    TarifStr := '';
    DataStr := '';
    while not Q.Eof do
    begin
      if TarifStr <> '' then
      begin
        TarifStr := TarifStr + ',';
        DataStr := DataStr + #9;
      end;
      TarifStr := TarifStr + Q.FN('Code').AsString;
      DataStr := DataStr + Q.FN('Data').AsString;
      Q.Next;
    end;
    LoadTarif(TarifStr, DataStr);
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrBuilder.LoadVentPlanDate;
var
  Q: TFIBQuery;
  Obj: TbdrObject;
  i, idx, idx1: integer;
  SQ, Koef, FlatTarif: double;
  D1, D2: TDateTime;
begin
  //������ ��� ������
  D1:=EncodeDate(Y,M,1);
  D2:=IncMonth(D1,1)-1;
  //�������� ����� �� ��������
  FlatTarif:=StrToFloatDef(fParams.Values['VENT'],0);

  //������ �� ��������� ������ �� ���������� �� ������
  Q:=cmDb.GetQuery('select * from GetVentGraphData(0,'+
    #39+DateToStr(D1)+#39','#39+DateToStr(D2)+#39')', cmDB.WT);
  Q.ExecQuery;
  fDogHouseList.Clear; //���� �� ��������
  fDogHouseFlat.Clear; //�������� �� �����
  while not Q.Eof do
  begin
    //���������� ����������� �� ����
    fDogHouseList.AddObject(Q.FN('House').AsString, TObject(Q.FN('Kontragent').AsInteger));
    //��� ��� ������� �� ������� - �� ������������
    fDogHouseFlat.AddObject(Q.FN('House').AsString, TObject(Q.FN('Flat').AsInteger));
    Q.Next;
  end;
  //������� ������
  cmDB.FreeQuery(Q);
  fDogHouseList.Sort;
  fDogHouseFlat.Sort;

  //����������� ���� �� ����������
  Q:=cmDB.GetQuery('select a.House, a.Summa, b.Nomer, c.Name from vent_year_plan a '+
    'left join House b on (b.Code=a.House) '+
    'left join Street c on (c.Code=b.Street) '+
    'where a.Y=:Y', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=Y;
  Q.ExecQuery;
  while not Q.Eof do
  begin
    Idx:=List.IndexOf(Q.FN('House').AsString);
    if Idx>=0 then
    begin
      Obj:=TBdrObject(List.Objects[Idx]);
      Obj.POKoefList.Values['VENT']:=Q.FN('Summa').AsString;
    end else
      Msg('����������. ��� � ����� ���������� ����, � � ��� �����������: '+
        Q.FN('Name').AsString+', '+Q.FN('Nomer').AsString);
    Q.Next;
  end;
  cmDb.FreeQuery(Q);
  //����������� ������������ ��� ��� �����
  for i := 0 to List.Count-1 do
  begin
    Obj:=TbdrObject(List.Objects[i]);
    if fDogHouseList.Find(IntToStr(Obj.House), idx) {and
      fDogHouseFlat.Find(IntToStr(Obj.House), idx1))} then
      if (idx>=0) then
      begin
        Obj.POList.Values['VENT']:=IntToStr(integer(fDogHouseList.Objects[idx]));
        //��� ��� ������� �� ������� - �� ������������
        //Obj.POKoefList.Values['VENT']:=FormatFloat('0.00',integer(fDogHouseFlat.Objects[idx1])*FlatTarif);
      end
      else
        Msg('����� (����������). ��� �� ������: ' + IntToStr(Obj.House));
  end;
end;

procedure TbdrBuilder.Msg(S: string);
begin
  if Assigned(OnMessage) then
    OnMessage(S);
end;

procedure TbdrBuilder.Progress(Count, Poz: integer);
begin
  if Assigned(OnProgress) then
    OnProgress(Count, Poz);
end;

procedure TbdrBuilder.MakeFactReport(T: TdxMemData);
var
  i: integer;
begin
  // ������ ������ ������������ ������
  if Srv = '6' then
    MakeFactReport2(T)
  else if Srv = '8' then
    MakeFactReport3(T)
  else
    MakeFactReport1(T);
  // ��������� ������ - ���������
  Msg('��������� ������...');
  T.First;
  i := 1;
  while not T.Eof do
  begin
    T.Edit;
    T.FieldByName('F0').AsInteger := i;
    T.Post;
    T.Next;
    Inc(i);
    Progress(T.RecordCount, i);
  end;
  T.First;
end;

procedure TbdrBuilder.MakeFactReport1(T: TdxMemData);
var
  Q, Q1, QUK, QSrv: TFIBQuery;
  UKProc, Comm, TotalSQ: currency;

  function AddHouse(aHouse: integer): TFBDR1;
  begin
    Q1.ParamByName('Code').AsInteger := aHouse;
    Q1.ExecQuery;
    Result := TFBDR1.Create;
    Result.House := aHouse;
    Result.HouseStr := Q1.FN('StreetName').AsString + ' ' +
      Q1.FN('Nomer').AsString;
    Result.DU := cmGetWord(Q1.FN('DU').AsString, 2, ' ');
    Result.A := Q1.FN('A').AsInteger <> 0;
    // ������� ����������� ��������
    QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
    QUK.ParamByName('House').AsInteger := aHouse;
    QUK.ExecQuery;
    Result.UKProc := QUK.FN('Proc').AsCurrency;
    Result.SQ1 := GetTotal(aHouse);
    FactList.AddObject(IntToStr(aHouse), Result);
    if (Result.UKProc = 0) then
      Msg('�� ������ ������� ����������: ' + Result.HouseStr);
  end;

  function FindHouse(aHouse: integer): TFBDR1;
  var
    Poz: integer;
  begin
    if FactList.Find(IntToStr(aHouse), Poz) then
    begin
      Result := TFBDR1(FactList.Objects[Poz]);
    end
    else
    begin
      Result := AddHouse(aHouse);
      FactList.Sort;
      // Msg('�������� ���: '+Result.HouseStr);
    end;
  end;

  procedure Prohod1;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR1;
  begin
    Msg('��������� ������� ����� �� ���������� �����...');
    // �������� ���-�� ������� � �����
    Q := cmDB.GetQuery
      ('select Count(*) Num from FBDR1 where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('select * from FBDR1 where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      //Obj.NOst := Obj.NOst + Q.FN('F9').AsCurrency;
      //Obj.NLOst := Obj.NLOst + Q.FN('F10').AsCurrency;
      //Obj.NGOst := Obj.NGOst + Q.FN('F24').AsCurrency;
      Obj.B1 := Obj.B1 + Q.FN('F25').AsCurrency;
      // ������� ����� ���������
      TotalQ.ParamByName('Code').AsInteger := HouseRecv;
      TotalQ.ParamByName('House').AsInteger := Q.FN('House').AsInteger;
      TotalQ.ParamByName('Srv').AsString:=Srv;
      TotalQ.ExecQuery;
      Obj.SQ1 := TotalQ.FN('Tot_Space').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
    FactList.Sort;
  end;

  procedure Prohod2;
  var
    Q: TFIBQuery;
    i, Count, Idx: integer;
    Obj: TFBDR1;
    AGlobal, ASrv: currency;
    S: string;
  begin
    if (Srv = '1') or (Srv = '7') then
      Exit;
    Msg('��������� ������ �� ������� ����������...');
    // ���-�� �������
    if (Y < 2013) then
    begin
      Q := cmDB.GetQuery
        ('select Count(*) Num from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select Count(*) Num from HouseOborot1C ' +
        'where DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // �������� ������
    if Y < 2013 then
    begin
      Q := cmDB.GetQuery
        ('select * from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select a.House, a.Nach, a.Opl, 0 Spr1, 0 Spr2, '+
        'c.SQ Total, c.Code NGPRoom, '#39#39'  Note ' +
        'from HouseOborot1C a ' +
        'left join Dog1C b on (a.Dog1C=b.Code) ' +
        'left join NGPRoom1 c on (b.ngproom1=c.Code) ' +
        'where a.DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;

    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      GetNGKoef(Obj.House, AGlobal, ASrv);
      if (ASrv <> 0) and (AGlobal <> 0) then
      begin
        // ������ ������� ���
        if (Q.FN('Nach').AsCurrency - Q.FN('Spr1').AsCurrency) > 0 then
        begin
          // ��������� ��������� ��� ��� ���������
          S := Q.FN('NGPRoom').AsString;
          if S <> '' then
            Idx := NGPRoom.IndexOf(S)
          else
            Idx := -1;
          // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
          if (Idx < 0) and (S <> '') then
            NGPRoom.Add(S);
          // ��������� ������� � ����� ������� ���
          if Idx < 0 then
            Obj.SQ2 := Obj.SQ2 + Q.FN('Total').AsCurrency;
        end;
        Obj.NGNach := Obj.NGNach + (Q.FN('Nach').AsCurrency - Q.FN('Spr1')
          .AsCurrency) / AGlobal * ASrv;
        Obj.NGOpl := Obj.NGOpl + (Q.FN('Opl').AsCurrency - Q.FN('Spr2')
          .AsCurrency) / AGlobal * ASrv;
        Obj.NGNach1 := Obj.NGNach1 + Q.FN('Spr1').AsCurrency / AGlobal * ASrv;
        Obj.NGOpl1 := Obj.NGOpl1 + Q.FN('Spr2').AsCurrency / AGlobal * ASrv;
        // �� ������� �������
        if Q.FN('Total').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' ' + Q.FN('Note')
            .AsString);
      end;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure Prohod2_1;
  var
    Q: TFIBQuery;
    Count,i,Idx: integer;
    Obj: TFBDR1;
    S: string;
  begin
    Msg('��������� ������ �� ������� ����������...');
    //���������� ������� � �������
    Q := cmDB.GetQuery('select Count(*) Num from House_NGP ' +
      'where Y=:Y and M=:M and HouseSrv=:Srv', cmDB.WT);
    Q.ParamByName('Srv').AsString := Srv;
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    Count:=Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    //�������� ������ �� �������
    Q := cmDB.GetQuery('select * from House_NGP where HouseSrv=:Srv and Y=:Y and M=:M', cmDB.WT);
    Q.ParamByName('Srv').AsString := Srv;
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;

    i:=0;
    while not Q.Eof do
    begin
      //�������� ������ ����
      Obj := FindHouse(Q.FN('House').AsInteger);
      // ��������� ��������� ��� ��� ���������
      S := Q.FN('Dog1C').AsString;
      if S <> '' then
        Idx := NGPRoom.IndexOf(S)
      else
        Idx := -1;
      // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
      //���� ������� ������� ��������� �� ������� ����
      if (Idx < 0) and (S <> '') then
      begin
        NGPRoom.Add(S);
        Obj.SQ2:=Obj.SQ2 + Q.FN('SQ').AsCurrency;
      end;
      //��������� ������
      Obj.NGOst:=Obj.NGOst + Q.FN('Saldo').AsCurrency;
      Obj.NGNach:=Obj.NGNach + Q.FN('Nach').AsCurrency;
      Obj.NGOpl:=Obj.NGOpl + Q.FN('Opl').AsCurrency;
      // �� ������� �������
      if Q.FN('SQ').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' �� �������� 1�: ' + Q.FN('Dog1C').AsString);
      //� ��������� ������
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;

    cmDB.FreeQuery(Q);
  end;

  procedure Prohod3;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR1;
  begin
    Msg('��������� ���������� � ������ ������ �����....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from HousePrvList where HousePrv=:Code and HouseSrv=:Srv',
      cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ParamByName('Srv').AsString := Srv;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from HousePrvList where HousePrv=:Code and HouseSrv=:Srv',
      cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ParamByName('Srv').AsString := Srv;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.NOst := Obj.NOst + Q.FN('Saldo_IN').AsCurrency;
      Obj.Nach := Q.FN('CHARGE_PRI').AsCurrency + Q.FN('Maket').AsCurrency +
        Q.FN('Repay').AsCurrency;
      Obj.Opl := Q.FN('PAY').AsCurrency * -1;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure MakeIPUFactDoc;
  var
    Qipu: TFibQuery;
    D1,D2: TDateTime;
    Obj: TFBDR1;
  begin
    //�������� ������ �� IPU
    GetPeriod(M, Y, D1, D2);
    //������ �� ��������� ����� �� ����
    Qipu := cmDB.GetQuery('select House,Summa Summa from IPUFactBDR where  '+
     'Data BETWEEN :D1 and :D2', cmDB.WT);
    Qipu.ParamByName('D1').AsDate:=D1;
    Qipu.ParamByName('D2').AsDate:=D2;
    Qipu.ExecQuery;
    //�������� ������
    while not Qipu.Eof do
    begin
      Obj := FindHouse(Qipu.FN('House').AsInteger);
      Obj.PO := Obj.PO + Qipu.FN('Summa').AsCurrency;
      Qipu.Next;
    end;

    cmDB.FreeQuery(Qipu);
  end;

  procedure Prohod5;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR1;
  begin
    Msg('��������� ������ �����...');
    //�������� �� 14 ���� ���
    if Srv='14' then
    begin
      MakeIPUFactDoc;
      Exit;
    end;
    // �������� ���-�� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from FactDocList where FactDoc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactDocCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������ �����
    Q := cmDB.GetQuery('select * from FactDocList where FactDoc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactDocCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.PO := Obj.PO + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure LastProhod;
  var
    i: integer;
    Obj: TFBDR1;
    DU: string;
  begin
    TotalSQ := 0;
    Msg('��������� ������� � �������...');
    for i := 0 to FactList.Count - 1 do
    begin
      Obj := TFBDR1(FactList.Objects[i]);
      if Obj.IsEmpty then
        Continue;
      // ������� ��� �������� ������������� �����
      if Obj.Nach > 0 then
        TotalSQ := TotalSQ + Obj.Nach;
      T.Append;
      // ����� ��������� �����
      T.FieldByName('F1').AsString := Obj.HouseStr;
      T.FieldByName('F2').AsString := Obj.DU;
      DU := Obj.DU;
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + Obj.HouseStr;
      T.FieldByName('A').AsBoolean := Obj.A;
      T.FieldByName('House').AsInteger := Obj.House;
      T.FieldByName('F3').AsCurrency := Obj.SQ1;
      // ��������� ������ � �������
      T.FieldByName('F4').AsCurrency := Obj.NOst;
      T.FieldByName('F5').AsCurrency := Obj.NLOst;
      T.FieldByName('F6').AsCurrency := Obj.NOst + Obj.NLOst;
      T.FieldByName('F7').AsCurrency := Obj.Nach;
      T.FieldByName('F8').AsCurrency := Obj.Opl;
      T.FieldByName('F9').AsCurrency := Obj.NOst + Obj.Nach - Obj.Opl;
      T.FieldByName('F10').AsCurrency := Obj.NLOst;
      T.FieldByName('F11').AsCurrency := T.FieldByName('F9').AsCurrency +
        T.FieldByName('F10').AsCurrency;
      // �������
      if (Srv='1')then
      begin
        T.FieldByName('F19').AsCurrency := 0;
        T.FieldByName('F20').AsCurrency := 0;
        T.FieldByName('F21').AsCurrency := 0;
        T.FieldByName('F22').AsCurrency := 0;
        T.FieldByName('F26').AsCurrency := 0;
        T.FieldByName('F27').AsCurrency := 0;
        T.FieldByName('F24').AsCurrency := 0;
      end else
      begin
        T.FieldByName('F19').AsCurrency := Obj.SQ2;
        T.FieldByName('F20').AsCurrency := Obj.NGOst;
        T.FieldByName('F21').AsCurrency := Obj.NGNach;
        T.FieldByName('F22').AsCurrency := Obj.NGOpl;
        T.FieldByName('F26').AsCurrency := Obj.NGNach1;
        T.FieldByName('F27').AsCurrency := Obj.NGOpl1;
        T.FieldByName('F24').AsCurrency := Obj.NGOst + Obj.NGNach + Obj.NGNach1 -
          Obj.NGOpl - Obj.NGOpl1;
      end;
      // ������� ����������� ��������
      QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
      QUK.ParamByName('House').AsInteger := Obj.House;
      QUK.ExecQuery;
      UKProc := QUK.FN('Proc').AsCurrency;
      if UKProc <> 0 then
      begin
        if Srv <> '1' then
        begin
          T.FieldByName('F23').AsCurrency := Obj.NGNach / 100 * UKProc;
          T.FieldByName('F14').AsCurrency := Obj.Nach / 100 * UKProc;
        end
        else
        begin
          T.FieldByName('F23').AsCurrency := 0;
          T.FieldByName('F14').AsCurrency := 0;
        end;
      end;
      // ������� � ������
      T.FieldByName('F12').AsCurrency := Obj.B1;
      T.FieldByName('F13').AsCurrency := Obj.B1 + Obj.Nach + Obj.NGNach;
      // T.FieldByName('F15').AsCurrency:=Obj.Comm;
      T.FieldByName('F16').AsCurrency := Obj.PO;
      T.Post;
      Progress(FactList.Count, i);
    end;
  end;

  procedure CommProhod;
  var
    Koef: double;
    i: integer;
  begin
    if TotalSQ <> 0 then
      Koef := Comm / TotalSQ
    else
      Exit;
    Msg('������ ������������� �����...');
    i := 0;
    T.First;
    while not T.Eof do
    begin
      T.Edit;
      if T.FieldByName('F7').AsCurrency > 0 then
        T.FieldByName('F15').AsCurrency := T.FieldByName('F7')
          .AsCurrency * Koef;
      // ������ ������������� ����� �� ������ ���
      if Srv = '1' then
      begin
        T.FieldByName('F14').AsCurrency :=
          (T.FieldByName('F7').AsCurrency / 100 * 9) - T.FieldByName('F15')
          .AsCurrency;
      end;
      //������ ����� ������
      T.FieldByName('F18').AsCurrency := T.FieldByName('F23').AsCurrency +
        T.FieldByName('F16').AsCurrency + T.FieldByName('F17').AsCurrency +
        T.FieldByName('F14').AsCurrency + T.FieldByName('F15').AsCurrency;
      // ���� �������
      T.FieldByName('F25').AsCurrency := T.FieldByName('F13').AsCurrency -
        T.FieldByName('F18').AsCurrency;
      T.Next;
      Inc(i);
      Progress(T.RecordCount, i + 1);
    end;
  end;

begin
  // �������� ������������ ���� ����
  Q := cmDB.GetQuery
    ('select * from CommFact where Data between :D1 and :D2 and HouseSrv=:Srv',
    cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  if Q.Eof then
    Comm := 0
  else
    Comm := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);

  // ������������� ������ ������ �����
  Q1 := cmDB.GetQuery
    ('select a.A, a.Nomer, b.Name StreetName, d.Name DU from House a' +
    ' left join Street b on (b.Code=a.Street)' +
    ' left join DU d on (D.Code=a.DU)' + ' where a.Code=:Code', cmDB.WT);
  QUK := cmDB.GetQuery('select * from GetUK(:Data, :House)', cmDB.WT);
  QSrv := cmDB.GetQuery
    ('select * from Fact1DocList where Fact1Doc=:DocCode and House=:House',
    cmDB.WT);
  try
    Prohod1; // ����� ����� �� ������� �����
    if Y<2014 then
      Prohod2 // ������� ���������
    else
      Prohod2_1;
    Prohod3; // ���������� � ������ �� ������ �� ���
    Prohod5; // �������� ��������� �����
    LastProhod; // ��������� ������ ������������ �������
    CommProhod; // ������ ������������� �����
  finally
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(QSrv);
    cmDB.FreeQuery(QUK);
  end;
end;

procedure TbdrBuilder.MakeFactReport2(T: TdxMemData);
var
  Q, Q1, QUK, QSrv: TFIBQuery;
  // Stream: TMemoryStream;
  { GFK, NFK,}Other, UKProc, Comm, KvSum, TotalSQ, ODSSum: currency;
  TOOCode, TOECode, ODSCode, DRTZCode, DZICode, SumCNT: integer;

  function GetDocCode(ASrv: integer): integer;
  begin
    Q := cmDB.GetQuery
      ('select * from FactDoc where Y=:Y and M=:M and HouseSrv=:Srv', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Srv').AsInteger := ASrv;
    Q.ExecQuery;
    if Q.Eof then
      Result := -1
    else
      Result := Q.FN('Code').AsInteger;
    cmDB.FreeQuery(Q);
  end;

  function GetDoc1Code(ASrv: integer): integer;
  begin
    Q := cmDB.GetQuery
      ('select * from Fact1Doc where Y=:Y and M=:M and HouseSrv=:Srv', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Srv').AsInteger := ASrv;
    Q.ExecQuery;
    if Q.Eof then
      Result := -1
    else
      Result := Q.FN('Code').AsInteger;
    cmDB.FreeQuery(Q);
  end;

  function GetODSCode(ASrv: integer): integer;
  begin
    Q := cmDB.GetQuery('select * from ODSDoc where Y=:Y and M=:M', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    if Q.Eof then
      Result := -1
    else
      Result := Q.FN('Code').AsInteger;
    cmDB.FreeQuery(Q);
  end;

  function AddHouse(aHouse: integer): TFBDR2;
  begin
    Q1.ParamByName('Code').AsInteger := aHouse;
    Q1.ExecQuery;
    Result := TFBDR2.Create;
    Result.House := aHouse;
    Result.HouseStr := Q1.FN('StreetName').AsString + ' ' +
      Q1.FN('Nomer').AsString;
    Result.DU := cmGetWord(Q1.FN('DU').AsString, 2, ' ');
    Result.A := Q1.FN('A').AsInteger <> 0;
    Result.AccCode_cnt := Q1.FN('AccCode_cnt').AsInteger;
    // ������� ����������� ��������
    QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
    QUK.ParamByName('House').AsInteger := aHouse;
    QUK.ExecQuery;
    Result.UKProc := QUK.FN('Proc').AsCurrency;
    Result.SQ1 := GetTotal(aHouse);
    FactList.AddObject(IntToStr(aHouse), Result);
    if (Result.UKProc = 0) then
      Msg('�� ������ ������� ����������: ' + Result.HouseStr);
  end;

  function FindHouse(aHouse: integer): TFBDR2;
  var
    Poz: integer;
  begin
    if FactList.Find(IntToStr(aHouse), Poz) then
    begin
      Result := TFBDR2(FactList.Objects[Poz]);
    end
    else
    begin
      Result := AddHouse(aHouse);
      FactList.Sort;
    end;
  end;

  procedure AddFactDoc(Info: string; DocType: smallint; ASrv: integer; PropName: string);
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
    DocCode: integer;
    Fld,Tbl: string;
    p: PPropInfo;
    Summa: currency;
  begin
    Msg(Info+'....');
    //����� ��� �������
    if DocType=0 then
      Fld:='FactDoc'
    else
      Fld:='Fact1Doc';
    Tbl:=Fld+'List';
    // �������� ��� ���������
    if DocType=0 then
      DocCode:=GetDocCode(ASrv)
    else
      DocCode:=GetDoc1Code(ASrv);
    //������� ���� �� ������������ ���������
    Q := cmDB.GetQuery
      ('select Count(*) Num from '+Tbl+' where '+Fld+'=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DocCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from '+Tbl+' where '+Fld+'=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DocCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      p:=GetPropInfo(Obj.ClassType, PropName);
      Summa:=GetFloatProp(Obj, PropName);
      Summa:=Summa+Q.FN('FactSum').AsCurrency;;
      SetFloatProp(Obj, PropName, Summa);
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure AddVentGraph;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
    D1,D2: TDateTime;
    Tarif: currency;
  begin
    Msg('������ �������������� �������...');
    //��������� ������������ ���
    LoadParams;
    Tarif:=StrToFloatDef(fParams.Values['VENT'],0);
    //������ ���
    D1:=EncodeDate(Y,M,1);
    D2:=IncMonth(D1,1)-1;
    //������� ���� �� ������������ ���������
    Q := cmDB.GetQuery('select Count(*) Num from GetVentGraphData(1, :D1, :D2)', cmDB.WT);
    Q.ParamByName('D1').AsDateTime := D1;
    Q.ParamByName('D2').AsDateTime := D2;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    //��������� ������
    Q := cmDB.GetQuery('select * from GetVentGraphData(1, :D1, :D2)', cmDB.WT);
    Q.ParamByName('D1').AsDateTime := D1;
    Q.ParamByName('D2').AsDateTime := D2;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.Vent:=Obj.Vent+Q.FieldByName('Flat').AsInteger*Tarif;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure Prohod1(aFactCode: integer; BDRName: string);
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR2;
  begin
    Msg('��������� ������� ����� �� ���������� �����...');
    // �������� ���-�� ������� � �����
    Q := cmDB.GetQuery
      ('select Count(*) Num from FBDR2 where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := aFactCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('select * from '+BDRName+' where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := aFactCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      if (BDRName='FBDR2') then
      begin
        Obj.NOst := Obj.NOst + Q.FN('F9').AsCurrency;
        Obj.NLOst := Obj.NLOst + Q.FN('F10').AsCurrency;
        //Obj.NGOst := Obj.NGOst + Q.FN('F16').AsCurrency;
        Obj.B1 := Obj.B1 + Q.FN('F31').AsCurrency;
      end else
      begin
        Obj.NOst := Obj.NOst + Q.FN('F9').AsCurrency;
        Obj.NLOst := Obj.NLOst + Q.FN('F10').AsCurrency;
        //Obj.NGOst := Obj.NGOst + Q.FN('F24').AsCurrency;
        Obj.B1 := Obj.B1 + Q.FN('F25').AsCurrency;
      end;
      // ������� ����� ���������
      // ��� ����������� � ��������� FindHouse
      { TotalQ.ParamByName('Code').AsInteger:=HouseRecv;
        TotalQ.ParamByName('House').AsInteger:=Q.FN('House').AsInteger;
        TotalQ.ExecQuery;
        Obj.SQ1:=TotalQ.FN('Tot_Space').AsCurrency; }
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
    FactList.Sort;
  end;

  procedure Prohod2;
  var
    Q: TFIBQuery;
    i, Count, Idx: integer;
    Obj: TFBDR2;
    AGlobal, ASrv: currency;
    S: string;
  begin
    Msg('��������� ������ �� ������� ����������...');
    // ���-�� �������
    if (Y < 2013) then
    begin
      Q := cmDB.GetQuery
        ('select Count(*) Num from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select Count(*) Num from HouseOborot1C ' +
        'where DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // �������� ������
    if Y < 2013 then
    begin
      Q := cmDB.GetQuery
        ('select * from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select a.House, a.Nach, a.Opl, 0 Spr1, 0 Spr2, '+
        'c.SQ Total, c.Code NGPRoom, '#39#39'  Note ' +
        'from HouseOborot1C a ' +
        'left join Dog1C b on (a.Dog1C=b.Code) ' +
        'left join NGPRoom1 c on (b.ngproom1=c.Code) ' +
        'where a.DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;

    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      GetNGKoef(Obj.House, AGlobal, ASrv);
      if (ASrv <> 0) and (AGlobal <> 0) then
      begin
        // ������ ������� ���
        if (Q.FN('Nach').AsCurrency - Q.FN('Spr1').AsCurrency) > 0 then
        begin
          // ��������� ��������� ��� ��� ���������
          S := Q.FN('NGPRoom').AsString;
          if S <> '' then
            Idx := NGPRoom.IndexOf(S)
          else
            Idx := -1;
          // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
          if (Idx < 0) and (S <> '') then
            NGPRoom.Add(S);
          // ��������� ������� � ����� ������� ���
          if Idx < 0 then
            Obj.SQ2 := Obj.SQ2 + Q.FN('Total').AsCurrency;
        end;
        Obj.NGNach := Obj.NGNach + (Q.FN('Nach').AsCurrency - Q.FN('Spr1').AsCurrency) / AGlobal * ASrv;
        Obj.NGOpl := Obj.NGOpl + (Q.FN('Opl').AsCurrency - Q.FN('Spr2').AsCurrency) / AGlobal * ASrv;
        Obj.NGNach1 := Obj.NGNach1 + Q.FN('Spr1').AsCurrency / AGlobal * ASrv;
        Obj.NGOpl1 := Obj.NGOpl1 + Q.FN('Spr2').AsCurrency / AGlobal * ASrv;
        // �� ������� �������
        if Q.FN('Total').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' ' + Q.FN('Note').AsString);
      end;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure Prohod2_1;
  var
    Q: TFIBQuery;
    Count,i,Idx: integer;
    Obj: TFBDR2;
    S: string;
  begin
    Msg('��������� ������ �� ������� ����������...');
    //���������� ������� � �������
    Q := cmDB.GetQuery('select Count(*) Num from House_NGP ' +
      'where Y=:Y and M=:M and HouseSrv=6', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    Count:=Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    //�������� ������ �� �������
    Q := cmDB.GetQuery('select * from House_NGP where HouseSrv=6 and Y=:Y and M=:M', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;

    i:=0;
    while not Q.Eof do
    begin
      //�������� ������ ����
      Obj := FindHouse(Q.FN('House').AsInteger);
      // ��������� ��������� ��� ��� ���������
      S := Q.FN('Dog1C').AsString;
      if S <> '' then
        Idx := NGPRoom.IndexOf(S)
      else
        Idx := -1;
      // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
      //���� ������� ������� ��������� �� ������� ����
      if (Idx < 0) and (S <> '') then
      begin
        NGPRoom.Add(S);
        Obj.SQ2:=Obj.SQ2 + Q.FN('SQ').AsCurrency;
      end;
      //��������� ������
      Obj.NGOst:=Obj.NGOst + Q.FN('Saldo').AsCurrency;
      Obj.NGNach:=Obj.NGNach + Q.FN('Nach').AsCurrency;
      Obj.NGOpl:=Obj.NGOpl + Q.FN('Opl').AsCurrency;
      // �� ������� �������
      if Q.FN('SQ').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' �� �������� 1�: ' + Q.FN('Dog1C').AsString);
      //� ��������� ������
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;

    cmDB.FreeQuery(Q);
  end;

  procedure Prohod3;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR2;
    s: string;
  begin
    Msg('��������� ���������� � ������ ������ �����....');
    // �������� ����� �������
    Q := cmDB.GetQuery('select Count(*) Num from HousePrvList where HousePrv=:Code and HouseSrv=:Srv',
      cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ParamByName('Srv').AsString := Srv;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    if (Y=2015) and (M=1) then
      s:='6,2,3'
    else
      s:='6';
    Q := cmDB.GetQuery('select House, Sum(Saldo_IN) Saldo_IN, Sum(CHARGE_PRI) Charge_Pri, '+
      'Sum(Maket) Maket, Sum(Repay) Repay, Sum(Pay) Pay'+
      ' from HousePrvList where HousePrv=:Code and HouseSrv IN ('+s+') '+
      ' group by House', cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.CN_Ost:=Obj.CN_Ost+Q.FN('Saldo_IN').AsCurrency;
      Obj.Nach := Obj.Nach + Q.FN('CHARGE_PRI').AsCurrency + Q.FN('MAKET').AsCurrency +
        Q.FN('REPAY').AsCurrency;
      //��������� �� ������ 2015 - ��� ��������� � ��������� �������
      if (Y=2015) and (M=1) then
        Obj.Nach:=Obj.Nach-Q.FN('MAKET').AsCurrency;
      //������
      Obj.Opl := Obj.Opl + Q.FN('PAY').AsCurrency * -1;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure TOOProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('������� ������������ (���������)....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TOOCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TOOCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.TO1 := Obj.TO1 + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure TOEProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('������� ������������ (���������)....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TOECode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TOECode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.TO2 := Obj.TO2 + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure TR0Prohod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('������� ������ (���������)....');
    // �������� ����� �������
    Q := cmDB.GetQuery('SELECT Count(*) Num ' + 'FROM TRWORKBDR tw ' +
      'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2 and g.Code=:MGroup', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ParamByName('MGroup').AsInteger := 3;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('SELECT House, Sum(SUMMA) Summa ' + 'FROM TRWORKBDR tw '
      + 'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2 and g.Code=:MGroup ' +
      'group by House', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ParamByName('MGroup').AsInteger := 3;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.TR2 := Obj.TR2 + Q.FN('Summa').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure TR1Prohod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('������� ������ (���������)....');
    // �������� ����� �������
    Q := cmDB.GetQuery('SELECT Count(*) Num ' + 'FROM TRWORKBDR tw ' +
      'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2 and g.Code=:MGroup', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ParamByName('MGroup').AsInteger := 1;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('SELECT House, Sum(SUMMA) Summa ' + 'FROM TRWORKBDR tw '
      + 'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2 and g.Code=:MGroup ' +
      'group by House', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ParamByName('MGroup').AsInteger := 1;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.TR1 := Obj.TR1 + Q.FN('Summa').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure ODSProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('������������ ������������� ������ (���)....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from ODSDocList where ODSDoc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ODSCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('select * from ODSDocList where ODSDoc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ODSCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.ODS := Obj.ODS + Q.FN('Num').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure DRTZProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR2;
  begin
    Msg('�����������...');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DRTZCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DRTZCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.DRTZ := Obj.DRTZ + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);

    Msg('�����������...');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DZICode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := DZICode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.DZI := Obj.DZI + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure OIProhod;
  var
    i: integer;
    Obj: TFBDR2;
    D: TDateTime;
    Q: TFIBQuery;
    IsOI: boolean;

    function OIType: string;
    begin
      Result := '';
      if Q.FN('IsOI_1').AsInteger <> 0 then
        Result := '1';
      if Q.FN('IsOI_2').AsInteger <> 0 then
      begin
        if Result <> '' then
          Result := Result + ',';
        Result := Result + '2';
      end;
      if Q.FN('IsOI_3').AsInteger <> 0 then
      begin
        if Result <> '' then
          Result := Result + ',';
        Result := Result + '3';
      end;
      if Q.FN('IsOI_4').AsInteger <> 0 then
      begin
        if Result <> '' then
          Result := Result + ',';
        Result := Result + '4';
      end;
      if Q.FN('IsOI_5').AsInteger <> 0 then
      begin
        if Result <> '' then
          Result := Result + ',';
        Result := Result + '5';
      end;
      if Result <> '' then
        Result := ' and DogType in (' + Result + ')'
      else
        Result := ' and DogType<>0';
    end;

  begin
    // �������� ���� ������� ��
    Q:=cmDB.GetQuery('select * from MakeFBDRCode(:Y, :M, :Srv)', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Srv').AsInteger := 6;
    Q.ExecQuery;
    IsOI := Q.FN('IsOI').AsInteger = 1;
    cmDB.FreeQuery(Q);
    cmDB.WT.Commit;

    if not IsOI then Exit;

    Msg('��������� ������ ��...');
    D := EncodeDate(Y, M, 1);

    OIBalans.MainWhereClause := 'Y=:Y and M=:M' + OIType;
    OIBalans.ParamByName('Y').AsInteger := Y;
    OIBalans.ParamByName('M').AsInteger := M;
    OIBalans.ExecQuery;

    while not OIBalans.Eof do
    begin
      Obj:=FindHouse(OIBalans.FieldByName('House').AsInteger);
      Obj.OI:=OIBalans.FN('Summa').AsCurrency;
      OIBalans.Next;
      Progress(FactList.Count - 1, i);
    end;

//    for i := 0 to FactList.Count - 1 do
//    begin
//      Obj := TFBDR2(FactList.Objects[i]);
//      OIBalans.Close;
//      if Y<2013 then
//      begin
//        OIBalans.MainWhereClause := 'Data=:Data and House=:House' + OIType;
//        OIBalans.ParamByName('Data').AsDate := D;
//      end
//      else
//      begin
//        OIBalans.MainWhereClause := 'Y=:Y and M=:M and House=:House' + OIType;
//        OIBalans.ParamByName('Y').AsInteger := Y;
//        OIBalans.ParamByName('M').AsInteger := M;
//      end;
//      OIBalans.ParamByName('House').AsInteger := Obj.House;
//      OIBalans.ExecQuery;
//      Obj.OI := OIBalans.FN('Summa').AsCurrency;
//      Progress(FactList.Count - 1, i);
//    end;

  end;

  procedure LastProhod;
  var
    i, j: integer;
    Obj: TFBDR2;
    DU: string;
  begin
    TotalSQ := 0;
    SumCNT := 0;
    Msg('��������� ������� � �������...');
    for i := 0 to FactList.Count - 1 do
    begin
      Obj := TFBDR2(FactList.Objects[i]);
      if Obj.IsEmpty then
        Continue;
      T.Append;
      // ����� ��������� �����
      T.FieldByName('F1').AsString := Obj.HouseStr;
      T.FieldByName('F2').AsString := Obj.DU;
      DU := Obj.DU;
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + Obj.HouseStr;
      T.FieldByName('A').AsBoolean := Obj.A;
      T.FieldByName('House').AsInteger := Obj.House;
      T.FieldByName('AccCNT').AsInteger := Obj.AccCode_cnt;
      if Obj.Nach > 0.01 then
      begin
        T.FieldByName('F3').AsCurrency := Obj.SQ1;
        TotalSQ := TotalSQ + Obj.SQ1;
        SumCNT := SumCNT + Obj.AccCode_cnt;
      end else
      begin
        Obj.SQ1:=0;
        Obj.AccCode_cnt:=0;
      end;
      //��������� �������� ���
      T.FieldByName('F35').AsCurrency:=Obj.IPU_1;
      // ��������� ������ � �������
//      if Obj.CN_Ost=0 then
//      begin //�������� ���������� ������
//        T.FieldByName('F4').AsCurrency := Obj.NOst;
//        T.FieldByName('F5').AsCurrency := Obj.NLOst;
//        T.FieldByName('F6').AsCurrency := Obj.NOst + Obj.NLOst;
//      end else
//      begin
        T.FieldByName('F4').AsCurrency := Obj.CN_Ost;
        T.FieldByName('F6').AsCurrency := Obj.CN_Ost;
//      end;
      T.FieldByName('F7').AsCurrency := Obj.Nach;
      T.FieldByName('F8').AsCurrency := Obj.Opl;
      T.FieldByName('F9').AsCurrency := T.FieldByName('F6').AsCurrency+
        T.FieldByName('F7').AsCurrency-T.FieldByName('F8').AsCurrency;
      T.FieldByName('F10').AsCurrency := 0;
      T.FieldByName('F11').AsCurrency := T.FieldByName('F9').AsCurrency +
        T.FieldByName('F10').AsCurrency;
      // �������
      T.FieldByName('F12').AsCurrency := Obj.NGOst;
      T.FieldByName('F13').AsCurrency := Obj.NGNach;
      T.FieldByName('F14').AsCurrency := Obj.NGOpl;
      T.FieldByName('F32').AsCurrency := Obj.NGNach1;
      T.FieldByName('F33').AsCurrency := Obj.NGOpl1;
      T.FieldByName('F16').AsCurrency := Obj.NGOst + Obj.NGNach + Obj.NGNach1 -
        Obj.NGOpl - Obj.NGOpl1;
      // ������� ����������� ��������
      QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
      QUK.ParamByName('House').AsInteger := Obj.House;
      QUK.ExecQuery;
      UKProc := QUK.FN('Proc').AsCurrency;
      if UKProc <> 0 then
      begin
        T.FieldByName('F19').AsCurrency := Obj.Nach / 100 * UKProc;
        T.FieldByName('F15').AsCurrency := Obj.NGNach / 100 * UKProc;
      end;
      // ������� � ������
      T.FieldByName('F17').AsCurrency := Obj.B1;
      T.FieldByName('F18').AsCurrency := Obj.B1 + Obj.Nach + Obj.NGNach;
      // ������� ������
      if Obj.TR1 <> 0 then
        T.FieldByName('F21').AsCurrency := Obj.TR1;
      if Obj.TR2 <> 0 then
        T.FieldByName('F22').AsCurrency := Obj.TR2;
      // ������� ������������
      if Obj.TO1 <> 0 then
        T.FieldByName('F23').AsCurrency := Obj.TO1;
      if Obj.TO2 <> 0 then
        T.FieldByName('F24').AsCurrency := Obj.TO2;
      //���������
      if Obj.San1<>0 then
        T.FieldByName('F37').AsCurrency := Obj.San1;
      if Obj.San2<>0 then
        T.FieldByName('F38').AsCurrency := Obj.San2;
      //����������
      if Obj.Vent<>0 then
        T.FieldByName('F39').AsCurrency := Obj.Vent;
      // ��� � �����������
      if Obj.ODS <> 0 then
        T.FieldByName('F25').AsCurrency := Obj.ODS;
      //�����������
      if Obj.DRTZ <> 0 then
        T.FieldByName('F27').AsCurrency := Obj.DRTZ;
      //�����������
      if Obj.DZI <> 0 then
        T.FieldByName('F36').AsCurrency := Obj.DZI;
      // ����� �������
      T.FieldByName('F30').AsCurrency := T.FieldByName('F15').AsCurrency +
        T.FieldByName('F19').AsCurrency + T.FieldByName('F35').AsCurrency +
        T.FieldByName('F36').AsCurrency;
      for j := 21 to 29 do
        if j <> 25 then // ���
          T.FieldByName('F30').AsCurrency := T.FieldByName('F30').AsCurrency +
            T.FieldByName('F' + IntToStr(j)).AsCurrency;
      //������� � 2015 ����
      for j := 37 to 39 do
          T.FieldByName('F30').AsCurrency := T.FieldByName('F30').AsCurrency +
            T.FieldByName('F' + IntToStr(j)).AsCurrency;
      // ������ ��
      T.FieldByName('F34').AsCurrency := Obj.OI;
      T.Post;
      Progress(FactList.Count, i);
    end;
  end;

  procedure CommProhod;
  var
    Koef, Koef1, Koef2, Koef3: double;
    i: integer;
  begin
    if TotalSQ <> 0 then
      Koef := Comm / TotalSQ
    else
      Koef := 0;

    if SumCNT <> 0 then
      Koef1 := KvSum / SumCNT
    else
      Koef1 := 0;

    // ����� ������ ��� �� �����
    if TotalSQ <> 0 then
      Koef2 := ODSSum / TotalSQ
    else
      Koef2 := 0;

    //������ �������
    if TotalSQ <> 0 then
      Koef3 := Other / TotalSQ
    else
      Koef3 := 0;

    Msg('������ ������������� �����...');
    i := 0;
    T.First;
    while not T.Eof do
    begin
      T.Edit;
      if T.FieldByName('F7').AsCurrency > 0.01 then
      begin
        T.FieldByName('F20').AsCurrency := T.FieldByName('F3').AsCurrency * Koef;
        T.FieldByName('F26').AsCurrency := T.FieldByName('AccCNT').AsCurrency * Koef1;
        T.FieldByName('F29').AsCurrency := T.FieldByName('F3').AsCurrency * Koef3;
      end;
      // ���
      T.FieldByName('F25').AsCurrency := T.FieldByName('F3').AsCurrency * Koef2;

      // ��������� ������������ ����
      T.FieldByName('F30').AsCurrency := T.FieldByName('F15').AsCurrency +
        T.FieldByName('F19').AsCurrency + T.FieldByName('F20').AsCurrency +
        T.FieldByName('F21').AsCurrency + T.FieldByName('F22').AsCurrency +
        T.FieldByName('F23').AsCurrency + T.FieldByName('F24').AsCurrency +
        T.FieldByName('F25').AsCurrency + T.FieldByName('F26').AsCurrency +
        T.FieldByName('F27').AsCurrency + T.FieldByName('F28').AsCurrency +
        T.FieldByName('F29').AsCurrency + T.FieldByName('F35').AsCurrency +
        T.FieldByName('F36').AsCurrency;
      // ������ 2
      T.FieldByName('F31').AsCurrency := T.FieldByName('F18').AsCurrency -
        T.FieldByName('F30').AsCurrency + T.FieldByName('F34').AsCurrency;
      T.Post;
      T.Next;
      Inc(i);
      Progress(T.RecordCount, i + 1);
    end;
  end;

  procedure SetIPU_DEZ1_data(D1,D2: TDateTime);
  var
    Qipu: TFIBQuery;
    Obj: TFBDR2;
  begin
    //��������� ��������� �������� ���
    Qipu := cmDB.GetQuery('select House, Sum(SUMA) Summa from IPU where '+
      ' Data BETWEEN :D1 and :D2 group by House', cmDB.WT);
    Qipu.ParamByName('D1').AsDate:=D1;
    Qipu.ParamByName('D2').AsDate:=D2;
    Qipu.ExecQuery;
    while not Qipu.Eof do
    begin
      Obj:=FindHouse(Qipu.FieldByName('House').AsInteger);
      Obj.IPU_1:=Qipu.FieldByName('Summa').AsCurrency;
      Qipu.Next;
    end;
  end;

var
  D1, D2: TDateTime;
begin
  // �������� ������������ ���� ����
  Q := cmDB.GetQuery('select * from CommFact where Data between :D1 and :D2 and HouseSrv=:Srv',
    cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  if Q.Eof then
    Comm := 0
  else
    Comm := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);
  // �������� ����� �� ���������� ��������� ����
  Q := cmDB.GetQuery('select * from DostFact where Data between :D1 and :D2', cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ExecQuery;
  if Q.Eof then
    KvSum := 0
  else
    KvSum := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);
  //������ �������
  Q := cmDB.GetQuery('select Sum(Summa) Summa from OtherFact where Data between :D1 and :D2 and HouseSrv=:Srv',
    cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  Other := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);
  // �������� ��� �������� �� ���������
  TOOCode := GetDoc1Code(5);
  // �������� ��� �������� TO ���������
  TOECode := GetDoc1Code(6);
  // �������� ��� ���
  ODSCode := GetODSCode(3);
  // �������� ����� ���
  ODSSum := 0;
  Q := cmDB.GetQuery('select * from ODSFact where Data between :D1 and :D2', cmDB.WT);
  GetPeriod(M, Y, D1, D2);
  Q.ParamByName('D1').AsDate := D1;
  Q.ParamByName('D2').AsDate := D2;
  Q.ExecQuery;
  ODSSum := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);
  // �����������
  DRTZCode := GetDoc1Code(4);
  // �����������
  DZICode := GetDoc1Code(13);

  // ������������� ������ ������ �����
  Q1 := cmDB.GetQuery
    ('select a.A, a.Nomer, b.Name StreetName, d.Name DU, a.AccCode_CNT' +
    ' from House a' + ' left join Street b on (b.Code=a.Street)' +
    ' left join DU d on (D.Code=a.DU) where a.Code=:Code', cmDB.WT);
  QUK := cmDB.GetQuery('select * from GetUK(:Data, :House)', cmDB.WT);
  QSrv := cmDB.GetQuery('select * from Fact1DocList where Fact1Doc=:DocCode and House=:House',
    cmDB.WT);

  try
    TotalSQ := 0;
    // �������� ������� � ��� �� ������� �����, ��������� ������ � ������...
    Prohod1(GetFactCode, 'FBDR2');
    // ����� �������� �� ����� � �������� ��� ������ 2015
    if (Y=2015) and (M=1) then
    begin
      Msg('������� �� ������ ������ �����...');
      Prohod1(GetFactCode(2),'FBDR1');
      Msg('������� �� ������ ������ ��������...');
      Prohod1(GetFactCode(3),'FBDR1');
    end;

    //������� ���������
    if Y<2014 then
      Prohod2
    else
      Prohod2_1;
    //���������� � ������ ������ �����
    Prohod3;
    //����������� ������������
    AddFactDoc('������������ � ������ (���������)', 1, 5, 'TO1');
    AddFactDoc('������������ � ������ (���������)', 1, 6, 'TO2');
    //����������� ������ ���
    SetIPU_DEZ1_data(D1, D2);
    //��������� � ����������
    if Y>2014 then
    begin
      AddFactDoc('������ �����', 0, 2, 'San1');
      AddFactDoc('������ ��������', 0, 3, 'San2');
      AddVentGraph;
    end;
    //������� ������
    TR0Prohod;
    TR1Prohod;
    //ODSProhod;
    DRTZProhod;
    OIProhod;
    LastProhod;
    CommProhod;
  finally
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(QSrv);
    cmDB.FreeQuery(QUK);
  end;
end;

procedure TbdrBuilder.MakeFactReport3(T: TdxMemData);
var
  Q, Q1, QUK, QSrv, LCount: TFIBQuery;
  UKProc, Comm, Other, TotalSQ: currency;
  LTOCode, LTRCode, KabCode, TexOsvCode, ExpCode, ABCCode, LDSSCode: integer;

  function GetDoc1Code(ASrv: integer): integer;
  begin
    Q := cmDB.GetQuery
      ('select * from Fact1Doc where Y=:Y and M=:M and HouseSrv=:Srv', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Srv').AsInteger := ASrv;
    Q.ExecQuery;
    if Q.Eof then
      Result := -1
    else
      Result := Q.FN('Code').AsInteger;
    cmDB.FreeQuery(Q);
  end;

  function AddHouse(aHouse: integer): TFBDR3;
  begin
    Q1.ParamByName('Code').AsInteger := aHouse;
    Q1.ExecQuery;
    Result := TFBDR3.Create;
    Result.House := aHouse;
    Result.HouseStr := Q1.FN('StreetName').AsString + ' ' +
      Q1.FN('Nomer').AsString;
    Result.DU := cmGetWord(Q1.FN('DU').AsString, 2, ' ');
    Result.A := Q1.FN('A').AsInteger <> 0;
    // ������� ����������� ��������
    QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
    QUK.ParamByName('House').AsInteger := aHouse;
    QUK.ExecQuery;
    Result.UKProc := QUK.FN('Proc').AsCurrency;
    Result.SQ1 := GetTotal(aHouse);
    FactList.AddObject(IntToStr(aHouse), Result);
    if (Result.UKProc = 0) then
      Msg('�� ������ ������� ����������: ' + Result.HouseStr);
  end;

  function FindHouse(aHouse: integer): TFBDR3;
  var
    Poz: integer;
  begin
    if FactList.Find(IntToStr(aHouse), Poz) then
    begin
      Result := TFBDR3(FactList.Objects[Poz]);
    end
    else
    begin
      Result := AddHouse(aHouse);
      FactList.Sort;
      // Msg('�������� ���: '+Result.HouseStr);
    end;
  end;

  procedure Prohod1;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR3;
  begin
    Msg('��������� ������� ����� �� ���������� �����...');
    // �������� ���-�� ������� � �����
    Q := cmDB.GetQuery
      ('select Count(*) Num from FBDR3 where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('select * from FBDR3 where FBDR=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := FactCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      //Obj.NOst := Obj.NOst + Q.FN('F9').AsCurrency;
      //Obj.NLOst := Obj.NLOst + Q.FN('F10').AsCurrency;
      //Obj.NGOst := Obj.NGOst + Q.FN('F15').AsCurrency;
      Obj.B1 := Obj.B1 + Q.FN('F30').AsCurrency;
      // ������� ����� ���������
      TotalQ.ParamByName('Code').AsInteger := HouseRecv;
      TotalQ.ParamByName('House').AsInteger := Q.FN('House').AsInteger;
      TotalQ.ParamByName('Srv').AsString:=Srv;
      TotalQ.ExecQuery;
      Obj.SQ1 := TotalQ.FN('Tot_Space').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
    FactList.Sort;
  end;

  procedure Prohod2;
  var
    Q: TFIBQuery;
    i, Count, Idx: integer;
    Obj: TFBDR3;
    AGlobal, ASrv: currency;
    S: string;
  begin
    Msg('��������� ������ �� ������� ����������...');
    // ���-�� �������
    if (Y < 2013) then
    begin
      Q := cmDB.GetQuery
        ('select Count(*) Num from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select Count(*) Num from HouseOborot1C ' +
        'where DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // �������� ������
    if Y < 2013 then
    begin
      Q := cmDB.GetQuery
        ('select * from HouseNGList where HouseNG=:Code', cmDB.WT);
      Q.ParamByName('Code').AsInteger := HouseNG;
    end
    else
    begin
      Q := cmDB.GetQuery('select a.House, a.Nach, a.Opl, 0 Spr1, 0 Spr2, '+
        'c.SQ Total, c.Code NGPRoom, '#39#39'  Note ' +
        'from HouseOborot1C a ' +
        'left join Dog1C b on (a.Dog1C=b.Code) ' +
        'left join NGPRoom1 c on (b.ngproom1=c.Code) ' +
        'where a.DogType=0 and Y=:Y and M=:M', cmDB.WT);
      Q.ParamByName('Y').AsInteger := Y;
      Q.ParamByName('M').AsInteger := M;
    end;
    Q.ExecQuery;

    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      GetNGKoef(Obj.House, AGlobal, ASrv);
      if (ASrv <> 0) and (AGlobal <> 0) then
      begin
        // ������ ������� ���
        if (Q.FN('Nach').AsCurrency - Q.FN('Spr1').AsCurrency) > 0 then
        begin
          // ��������� ��������� ��� ��� ���������
          S := Q.FN('NGPRoom').AsString;
          if S <> '' then
            Idx := NGPRoom.IndexOf(S)
          else
            Idx := -1;
          // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
          if (Idx < 0) and (S <> '') then
            NGPRoom.Add(S);
          // ��������� ������� � ����� ������� ���
          if Idx < 0 then
            Obj.SQ2 := Obj.SQ2 + Q.FN('Total').AsCurrency;
        end;
        Obj.NGNach := Obj.NGNach + (Q.FN('Nach').AsCurrency - Q.FN('Spr1')
          .AsCurrency) / AGlobal * ASrv;
        Obj.NGOpl := Obj.NGOpl + (Q.FN('Opl').AsCurrency - Q.FN('Spr2')
          .AsCurrency) / AGlobal * ASrv;
        Obj.NGNach1 := Obj.NGNach1 + Q.FN('Spr1').AsCurrency / AGlobal * ASrv;
        Obj.NGOpl1 := Obj.NGOpl1 + Q.FN('Spr2').AsCurrency / AGlobal * ASrv;
        // �� ������� �������
        if Q.FN('Total').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' ' + Q.FN('Note')
            .AsString);
      end;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

    procedure Prohod2_1;
  var
    Q: TFIBQuery;
    Count,i,Idx: integer;
    Obj: TFBDR3;
    S: string;
  begin
    Msg('��������� ������ �� ������� ����������...');
    //���������� ������� � �������
    Q := cmDB.GetQuery('select Count(*) Num from House_NGP ' +
      'where Y=:Y and M=:M and HouseSrv=8', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;
    Count:=Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    //�������� ������ �� �������
    Q := cmDB.GetQuery('select * from House_NGP where HouseSrv=8 and Y=:Y and M=:M', cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ExecQuery;

    i:=0;
    while not Q.Eof do
    begin
      //�������� ������ ����
      Obj := FindHouse(Q.FN('House').AsInteger);
      // ��������� ��������� ��� ��� ���������
      S := Q.FN('Dog1C').AsString;
      if S <> '' then
        Idx := NGPRoom.IndexOf(S)
      else
        Idx := -1;
      // ���������� ��������� � ������ - ��� ������� �� ���� ��� ����
      //���� ������� ������� ��������� �� ������� ����
      if (Idx < 0) and (S <> '') then
      begin
        NGPRoom.Add(S);
        Obj.SQ2:=Obj.SQ2 + Q.FN('SQ').AsCurrency;
      end;
      //��������� ������
      Obj.NGOst:=Obj.NGOst + Q.FN('Saldo').AsCurrency;
      Obj.NGNach:=Obj.NGNach + Q.FN('Nach').AsCurrency;
      Obj.NGOpl:=Obj.NGOpl + Q.FN('Opl').AsCurrency;
      // �� ������� �������
      if Q.FN('SQ').AsCurrency = 0 then
          Msg('�� ������� �������: ' + Obj.HouseStr + ' �� �������� 1�: ' + Q.FN('Dog1C').AsString);
      //� ��������� ������
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;

    cmDB.FreeQuery(Q);
  end;

  procedure Prohod3;
  var
    Q: TFIBQuery;
    i, Count: integer;
    Obj: TFBDR3;
  begin
    Msg('��������� ���������� � ������ ������ �����....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from HousePrvList where HousePrv=:Code and HouseSrv=:Srv',
      cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ParamByName('Srv').AsString := Srv;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from HousePrvList where HousePrv=:Code and HouseSrv=:Srv',
      cmDB.WT);
    Q.ParamByName('Code').AsInteger := HousePrv;
    Q.ParamByName('Srv').AsString := Srv;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.NOst := Obj.NOst + Q.FN('SALDO_IN').AsCurrency;
      Obj.Nach := Obj.Nach + Q.FN('CHARGE_PRI').AsCurrency + Q.FN('MAKET').AsCurrency +
        Q.FN('REPAY').AsCurrency;
      Obj.Opl := Obj.Opl + Q.FN('PAY').AsCurrency * -1;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure LTOProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('������� ������������....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := LTOCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := LTOCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.LTO := Obj.LTO + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure LTRProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('������� ������....');
    // �������� ����� �������
    Q := cmDB.GetQuery('SELECT Count(*) Num ' + 'FROM TRLWORKBDR tw ' +
      'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery('SELECT House, Sum(SUMMA) Summa ' + 'FROM TRLWORKBDR tw '
      + 'left outer join mlist m on m.code=tw.mlist ' +
      'left outer join mgroup g on (g.Code=m.mgroup) ' +
      'where tw.data between :D1 and :D2 ' + 'group by House', cmDB.WT);
    Q.ParamByName('D1').AsDate := StartOfAMonth(Y, M);
    Q.ParamByName('D2').AsDate := EndOfAMonth(Y, M);
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.LTR := Obj.LTR + Q.FN('Summa').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure KabProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('������ ������....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := KabCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := KabCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.Kab := Obj.Kab + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure TexOsvProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('����������������������....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TexOsvCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := TexOsvCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.TexOsv := Obj.TexOsv + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure ExpProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('����������....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ExpCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ExpCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.Exp := Obj.Exp + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure ABSProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('ABC....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ABCCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := ABCCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.ABC := Obj.ABC + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure LDSSProhod;
  var
    Q: TFIBQuery;
    Count, i: integer;
    Obj: TFBDR3;
  begin
    Msg('����� ������������� �����....');
    // �������� ����� �������
    Q := cmDB.GetQuery
      ('select Count(*) Num from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := LDSSCode;
    Q.ExecQuery;
    Count := Q.FN('Num').AsInteger;
    cmDB.FreeQuery(Q);
    // ��������� ������
    Q := cmDB.GetQuery
      ('select * from Fact1DocList where Fact1Doc=:Code', cmDB.WT);
    Q.ParamByName('Code').AsInteger := LDSSCode;
    Q.ExecQuery;
    i := 0;
    while not Q.Eof do
    begin
      Obj := FindHouse(Q.FN('House').AsInteger);
      Obj.LDSS := Obj.LDSS + Q.FN('FactSum').AsCurrency;
      Q.Next;
      Inc(i);
      Progress(Count, i);
    end;
    cmDB.FreeQuery(Q);
  end;

  procedure LastProhod;
  var
    i, j: integer;
    Obj: TFBDR3;
    DU, S: string;
    BSum: currency;
  begin
    TotalSQ := 0;
    BSum := 0;
    Msg('��������� ������� � �������...');
    for i := 0 to FactList.Count - 1 do
    begin
      Obj := TFBDR3(FactList.Objects[i]);
      // �������� ������������ �������
      if (Obj.Nach = 0) then
      begin
        if Obj.B1 > 0 then
        begin
          Msg(Obj.HouseStr + ' ��� ����������. ������: ' +
            FormatFloat(',0.00', Obj.B1));
          BSum := BSum + Obj.B1;
        end;
        S := Obj.GetRashStr;
        if S <> '' then Msg(S);
      end;
      // �������� �� ������� ������ �� ����
      LCount.ParamByName('House').AsInteger := Obj.House;
      LCount.ExecQuery;
      if LCount.Eof then
      begin
        if Obj.B1<>0 then
        begin
          Msg(Obj.HouseStr + ' ��� ������. ������: ' +
            FormatFloat(',0.00', Obj.B1));
          S := Obj.GetRashStr;
          if S <> '' then  Msg(S);
        end;
        BSum := BSum + Obj.B1;
        if Obj.B1=0 then Continue;
      end;
      // ��������� ������
      T.Append;
      // ����� ��������� �����
      T.FieldByName('F1').AsString := Obj.HouseStr;
      T.FieldByName('F2').AsString := Obj.DU;
      DU := Obj.DU;
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + Obj.HouseStr;
      T.FieldByName('A').AsBoolean := Obj.A;
      T.FieldByName('House').AsInteger := Obj.House;
      T.FieldByName('F3').AsCurrency := Obj.SQ1;
      if Obj.Nach <> 0 then
        TotalSQ := TotalSQ + Obj.SQ1;
      // ��������� ������ � �������
      T.FieldByName('F4').AsCurrency := Obj.NOst;
      T.FieldByName('F5').AsCurrency := Obj.NLOst;
      T.FieldByName('F6').AsCurrency := Obj.NOst + Obj.NLOst;
      T.FieldByName('F7').AsCurrency := Obj.Nach;
      T.FieldByName('F8').AsCurrency := Obj.Opl;
      T.FieldByName('F9').AsCurrency := Obj.NOst + Obj.Nach - Obj.Opl;
      T.FieldByName('F10').AsCurrency := Obj.NLOst;
      T.FieldByName('F11').AsCurrency := T.FieldByName('F9').AsCurrency +
        T.FieldByName('F10').AsCurrency;
      // �������
      // T.FieldByName('F19').AsCurrency:=Obj.SQ2;
      T.FieldByName('F12').AsCurrency := Obj.NGOst;
      T.FieldByName('F13').AsCurrency := Obj.NGNach;
      T.FieldByName('F14').AsCurrency := Obj.NGOpl;
      T.FieldByName('F31').AsCurrency := Obj.NGNach1;
      T.FieldByName('F32').AsCurrency := Obj.NGOpl1;
      T.FieldByName('F15').AsCurrency := Obj.NGOst + Obj.NGNach + Obj.NGNach1 -
        Obj.NGOpl - Obj.NGOpl1;
      // ������� ����������� ��������
      QUK.ParamByName('Data').AsDate := EncodeDate(Y, M, 1);
      QUK.ParamByName('House').AsInteger := Obj.House;
      QUK.ExecQuery;
      UKProc := QUK.FN('Proc').AsCurrency;
      if UKProc <> 0 then
      begin
        T.FieldByName('F18').AsCurrency := Abs(Obj.Nach / 100 * UKProc);
        T.FieldByName('F19').AsCurrency := Abs(Obj.NGNach / 100 * UKProc);
      end;
      // ������� � ������
      T.FieldByName('F16').AsCurrency := Obj.B1;
      T.FieldByName('F17').AsCurrency := Obj.B1 + Obj.Nach + Obj.NGNach;
      // ������
      if Obj.Kab <> 0 then
        T.FieldByName('F21').AsCurrency := Obj.Kab;
      if Obj.TexOsv <> 0 then
        T.FieldByName('F22').AsCurrency := Obj.TexOsv;
      if Obj.Exp <> 0 then
        T.FieldByName('F23').AsCurrency := Obj.Exp;
      if Obj.ABC <> 0 then
        T.FieldByName('F24').AsCurrency := Obj.ABC;
      if Obj.LDSS <> 0 then
        T.FieldByName('F25').AsCurrency := Obj.LDSS;
      if Obj.LTO <> 0 then
        T.FieldByName('F26').AsCurrency := Obj.LTO;
      if Obj.LTR <> 0 then
        T.FieldByName('F27').AsCurrency := Obj.LTR;
      // ����� �������
      for j := 18 to 27 do
        T.FieldByName('F29').AsCurrency := T.FieldByName('F29').AsCurrency +
          T.FieldByName('F' + IntToStr(j)).AsCurrency;
      T.Post;
      Progress(FactList.Count, i);
    end;
    // ����� ����� ������� �� ����������� �����
    if BSum > 0 then
    begin
      Msg('-------------------------------');
      Msg('�����: ' + FormatFloat(',0.00', BSum));
      Msg('-------------------------------');
    end;
  end;

  procedure CommProhod;
  var
    Koef, Koef1: double;
    i,j: integer;
  begin
    if TotalSQ <> 0 then
      Koef := Comm / TotalSQ
    else
      Koef := 0;

    if TotalSQ <> 0 then
      Koef1 := Other / TotalSQ
    else
      Koef1 := 0;

    Msg('������ ������������� �����...');
    i := 0;
    T.First;
    while not T.Eof do
    begin
      T.Edit;
      if T.FieldByName('F7').AsCurrency <> 0 then
      begin
        T.FieldByName('F20').AsCurrency := T.FieldByName('F3').AsCurrency * Koef;
        T.FieldByName('F28').AsCurrency := T.FieldByName('F3').AsCurrency * Koef1;
      end;
      // ����� �������
      T.FieldByName('F29').AsCurrency := 0;
      for j := 18 to 28 do
        T.FieldByName('F29').AsCurrency := T.FieldByName('F29').AsCurrency +
          T.FieldByName('F' + IntToStr(j)).AsCurrency;
      // ������ 2
      T.FieldByName('F30').AsCurrency := T.FieldByName('F17').AsCurrency -
        T.FieldByName('F29').AsCurrency;
      T.Post;
      T.Next;
      Inc(i);
      Progress(T.RecordCount, i + 1);
    end;
  end;

begin
  // �������� ������������ ���� ����
  Q := cmDB.GetQuery
    ('select Sum(Summa) Summa from CommFact where Data between :D1 and :D2 and HouseSrv=:Srv',
    cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  Comm := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);
  //�������� ������ �������
  Q := cmDB.GetQuery
    ('select Sum(Summa) Summa from OtherFact where Data between :D1 and :D2 and HouseSrv=:Srv',
    cmDB.WT);
  Q.ParamByName('D1').AsDate := EncodeDate(Y, M, 1);
  Q.ParamByName('D2').AsDate := EncodeDate(Y, M, MonthDays[IsLeapYear(Y), M]);
  Q.ParamByName('Srv').AsString := Srv;
  Q.ExecQuery;
  Other := Q.FN('Summa').AsCurrency;
  cmDB.FreeQuery(Q);

  //�������� ���� ���������� �����
  LTRCode := GetDoc1Code(2);
  LTOCode := GetDoc1Code(12);
  KabCode := GetDoc1Code(7);
  TexOsvCode := GetDoc1Code(8);
  ExpCode := GetDoc1Code(9);
  ABCCode := GetDoc1Code(10);
  LDSSCode := GetDoc1Code(11);

  // ������������� ������ ������ �����
  Q1 := cmDB.GetQuery
    ('select a.A, a.Nomer, b.Name StreetName, d.Name DU, a.AccCode_CNT from House a'
    + ' left join Street b on (b.Code=a.Street)' +
    ' left join DU d on (D.Code=a.DU)' + ' where a.Code=:Code', cmDB.WT);
  QUK := cmDB.GetQuery('select * from GetUK(:Data, :House)', cmDB.WT);
  QSrv := cmDB.GetQuery
    ('select * from Fact1DocList where Fact1Doc=:DocCode and House=:House',
    cmDB.WT);
  LCount := cmDB.GetQuery('select * from LiftList where House=:House', cmDB.WT);
  try
    TotalSQ := 0;
    //������� � �������� ������
    Prohod1;
    //������� ���������
    if Y<2014 then
      Prohod2
    else
      Prohod2_1;
    //����� ���������
    Prohod3;
    KabProhod;
    TexOsvProhod;
    ExpProhod;
    ABSProhod;
    LDSSProhod;
    LTOProhod;
    LTRProhod;
    LastProhod;
    CommProhod;
  finally
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(QSrv);
    cmDB.FreeQuery(QUK);
    cmDB.FreeQuery(LCount);
  end;
end;

procedure TbdrBuilder.AddTRData(T: TdxMemData);
var
  Y: integer;
begin
  // �������� ��� ��������� ����
  fQuery.HouseR.ParamByName('House').AsInteger := T.FieldByName('House')
    .AsInteger;
  fQuery.HouseR.ExecQuery;
  if fQuery.HouseR.FN('BuildYear').AsInteger = 0 then
    Exit;
  // ����� �� ���� ���������
  Y := CurrentYear - fQuery.HouseR.FN('BuildYear').AsInteger - 1;
  fQuery.TR.ParamByName('Y').AsInteger := Y;
  fQuery.TR.ExecQuery;
  if fQuery.TR.Eof then
    Exit;
  // ������ � �����
  T.FieldByName('F29').AsCurrency := fQuery.TR.FN('SR').AsCurrency;
  T.FieldByName('F30').AsCurrency := T.FieldByName('F28').AsCurrency / 100 *
    fQuery.TR.FN('SR').AsCurrency;
  T.FieldByName('F31').AsCurrency := fQuery.TR.FN('ER').AsCurrency;
  T.FieldByName('F32').AsCurrency := T.FieldByName('F28').AsCurrency / 100 *
    fQuery.TR.FN('ER').AsCurrency;
  T.FieldByName('F33').AsCurrency := 100 - fQuery.TR.FN('SR').AsCurrency -
    fQuery.TR.FN('ER').AsCurrency;
end;

procedure TbdrBuilder.AddTRData2014(T: TdxMemData);
var
  Obj: TbdrObject;
  i: integer;
begin
  if T.FieldByName('F28').AsCurrency=0 then Exit;
  i:=List.IndexOf(T.FieldByName('House').AsString);

  Obj:=TbdrObject(List.Objects[i]);
  //���������
  T.FieldByName('F30').AsCurrency := (Obj.Total+Obj.TotalNG) * StrToFloatDef(Obj.POKoefList.Values['1'],0);
  T.FieldByName('F29').AsCurrency := T.FieldByName('F30').AsCurrency / T.FieldByName('F28').AsCurrency * 100;
  T.FieldByName('K2').AsInteger:=StrToIntDef(Obj.POList.Values['1'],0);
  //���������
  T.FieldByName('F32').AsCurrency := (Obj.Total+Obj.TotalNG) * StrToFloatDef(Obj.POKoefList.Values['0'],0);
  T.FieldByName('F31').AsCurrency := T.FieldByName('F32').AsCurrency / T.FieldByName('F28').AsCurrency * 100;
  T.FieldByName('K1').AsInteger:=StrToIntDef(Obj.POList.Values['0'],0);
  //������� ������
  T.FieldByName('F33').AsCurrency := 100 - T.FieldByName('F29').AsCurrency - T.FieldByName('F31').AsCurrency;
  T.FieldByName('F34').AsCurrency := T.FieldByName('F28').AsCurrency - T.FieldByName('F30').AsCurrency - T.FieldByName('F32').AsCurrency;

  if Y>2014 then
  begin
    //������ �����
    T.FieldByName('F38').AsCurrency := (Obj.Total+Obj.TotalNG) * StrToFloatDef(Obj.POKoefList.Values['2'],0);
    T.FieldByName('K3').AsInteger:=StrToIntDef(Obj.POList.Values['2'],0);
    //������ ��������
    T.FieldByName('F39').AsCurrency := (Obj.Total+Obj.TotalNG) * StrToFloatDef(Obj.POKoefList.Values['3'],0);
    T.FieldByName('K4').AsInteger:=StrToIntDef(Obj.POList.Values['3'],0);
    //����������
    T.FieldByName('F40').AsCurrency := StrToFloatDef(Obj.POKoefList.Values['VENT'],0);
  end;

   if T.FieldByName('House').AsInteger=533 then
     Application.ProcessMessages;
   for i:=1 to 4 do
     T.FieldByName('KName'+IntToStr(i)).AsString:=
        fDogHouseKName.Values[T.FieldByName('K'+IntToStr(i)).AsString];
end;

procedure TbdrBuilder.MakeTable(T: TdxMemData);
var
  i, j, idx: integer;
  Obj: TbdrObject;
  Koef, Koef1: double;
  FullODS, TotalSQ: currency;
  MsgList: TStringList;
  Q: TFIBQuery;
begin
  MsgList := TStringList.Create;
  // �������� ������ �� ������
  if Srv = '8' then
    CreateLiftTable;
  Koef := 0;
  TotalSQ := 0;
  Msg('��������� �����...');
  for i := 0 to List.Count - 1 do
  begin
    Obj := TbdrObject(List.Objects[i]);
    Obj.FactQ := FactQ; // ������ ��� ������ ������� �� ������ ������
    if Srv = '8' then
      Obj.MakeTable1(T, Y, M, fParams, fMT, MsgList)
    else if Srv = '6' then
    begin
      if Obj.MakeTable2(T, Y, M, fParams) then // ��������� ������ � �����
      begin
        // ���� ������������� ����������
        if T.FieldByName('F5').AsCurrency > 0 then
          TotalSQ := TotalSQ + T.FieldByName('F4').AsCurrency;
      end;
    end
    else
      Obj.MakeTable(T, Y, M, fParams);
    // ������ ���������
    if MsgList.Count > 0 then
      for j := 0 to MsgList.Count - 1 do
        Msg(MsgList[j]);
    Progress(List.Count, i);
  end;

  MsgList.Free;

  if Srv = '6' then
  begin
    // ��������� �������� ����� � ��������� ��
    if (Y>2013) then
      for i:=0 to 1 do
        LoadSmetaDate(i);
    // ��������� ������ ����� � �������� + ����������
    if (Y>2014) then
    begin
      //������ ����� � ��������
      for i := 2 to 3 do
        LoadSmetaDate(i);
      //����������
      LoadVentPlanDate;
    end;

    if (TotalSQ<>0) then
    begin
      Koef := (StrToFloatDef(cmCorrectFloat(fParams.Values['ODS']), 0)) / TotalSQ;
      Koef1 := (StrToFloatDef(cmCorrectFloat(fParams.Values['IPU']), 0)) / TotalSQ;
    end else
    begin
      Koef:=1;
      Koef1:=1;
    end;
  end;

  FullODS := 0;
  Msg('��������� ������...');
  T.First;
  for i := 1 to T.RecordCount do
  begin
    T.Edit;
    T.FieldByName('F0').AsInteger := i;
    if Srv = '6' then
    begin
      if T.FieldByName('F5').AsFloat > 0 then
      begin
        T.FieldByName('F12').AsCurrency := Koef * T.FieldByName('F4').AsCurrency;
        T.FieldByName('F36').AsCurrency := Koef1 * T.FieldByName('F4').AsCurrency;
      end;
      FullODS := FullODS + T.FieldByName('F12').AsCurrency;
      // ��������� ����� �� ��������������� � �������� �������
      if (Y<2014) then
        AddTRData(T)
      else
        AddTRData2014(T);
      // ����� �������
      T.FieldByName('F15').AsCurrency := T.FieldByName('F8').AsCurrency +
        T.FieldByName('F9').AsCurrency + T.FieldByName('F10').AsCurrency +
        T.FieldByName('F11').AsCurrency + T.FieldByName('F12').AsCurrency +
        T.FieldByName('F14').AsCurrency + T.FieldByName('F35').AsCurrency +
        T.FieldByName('F36').AsCurrency + T.FieldByName('F37').AsCurrency;
      // ������� �����
      T.FieldByName('F26').AsCurrency := T.FieldByName('F10').AsCurrency +
        T.FieldByName('F11').AsCurrency + T.FieldByName('F12').AsCurrency +
        T.FieldByName('F14').AsCurrency + T.FieldByName('F35').AsCurrency +
        T.FieldByName('F36').AsCurrency + T.FieldByName('F37').AsCurrency;
      // ������� �����
      T.FieldByName('F27').AsCurrency := T.FieldByName('F15').AsCurrency +
        T.FieldByName('F21').AsCurrency + T.FieldByName('F38').AsCurrency +
        T.FieldByName('F39').AsCurrency + T.FieldByName('F40').AsCurrency;
      // ����� � �������������
      T.FieldByName('F28').AsCurrency := T.FieldByName('F23').AsCurrency -
        T.FieldByName('F27').AsCurrency;
      if T.FieldByName('F28').AsCurrency < 0 then
        T.FieldByName('F28').AsCurrency := 0;
      // ������� ������
      T.FieldByName('F34').AsCurrency := T.FieldByName('F28').AsCurrency -
        T.FieldByName('F30').AsCurrency - T.FieldByName('F32').AsCurrency;
    end;
    T.Post;
    T.Next;
    Progress(T.RecordCount, i);
  end;

  T.First;
end;

{ TbdrLoader }

constructor TbdrLoader.Create(aM, aY, aBType, ASrv: integer);
var
  Q: TFIBQuery;
begin
  fM := aM;
  fY := aY;
  fBType := aBType;
  fSrv := ASrv;
  fQuery := true;
  // �������
  HouseQ := cmDBUnit.cmDB.GetQuery
    ('select a.Street Street, b.Name StreetName, a.Nomer Nomer, a.DU DU, c.Name DUName'
    + ' from House a left join Street b on (b.Code=a.Street)' +
    ' left join DU c on (c.Code=a.DU)' + ' where a.Code=:Code');
  //��������� ������ �����������
  Q:=cmDB.GetQuery('select Code,Name from Kontragent', cmDB.WT);
  Q.ExecQuery;
  fKontragentList:=TStringList.Create;
  while not Q.Eof do
  begin
    fKontragentList.Values[Q.FN('Code').AsString]:=Q.FN('Name').AsString;
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
end;

destructor TbdrLoader.Destroy;
begin
  fKontragentList.Free;
  cmDBUnit.cmDB.FreeQuery(HouseQ);
  inherited;
end;

function TbdrLoader.GetBDRCode: integer;
var
  S: string;
  Q: TFIBQuery;
begin
  // �������� ��� ������ ��� �������� ������
  if BType = 0 then
    S := 'select * from PBDR where M=:M and Y=:Y and HouseSrv=:Srv'
  else
    S := 'select * from FBDR where M=:M and Y=:Y and HouseSrv=:Srv';
  Q := cmDBUnit.cmDB.GetQuery(S);
  try
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('Srv').AsInteger := Srv;
    Q.ExecQuery;
    if Q.Eof then
      Result := -1
    else
      Result := Q.FN('Code').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.Load(T: TdxMemData);
var
  i: integer;
begin
  Msg('��������� ������...');
  T.Close;
  T.Open;
  // �������� ��� ������ ��� ��������
  BDRCode := GetBDRCode;
  if BDRCode < 0 then
  begin
    cmShowMessage('��������! �������� �� ��������� ������ �� ������.');
    Exit;
  end;

  if (BType = 1) and not(Srv in [6, 8]) then
    LoadFBDR1(T)
  else if (BType = 1) and (Srv = 6) then
    LoadFBDR2(T)
  else if (BType = 1) and (Srv = 8) then
    LoadFBDR3(T)
  else if (BType = 0) and not(Srv in [6, 8]) then
    LoadPBDR1(T)
  else if (BType = 0) and (Srv = 6) then
    LoadPBDR2(T)
  else if (BType = 0) and (Srv = 8) then
    LoadPBDR3(T);

  Msg('��������� ������ ������...');
  i := 1;
  T.First;
  while not T.Eof do
  begin
    T.Edit;
    T.FieldByName('F0').AsInteger := i;
    T.Post;
    T.Next;
    Inc(i);
    Progress(T.RecordCount, i);
  end;
  Msg('�������� ������ ���������.');
end;

procedure TbdrLoader.LoadFBDR1(T: TdxMemData);
var
  Q: TFIBQuery;
  DU, FieldName: string;
  i, Num, RecordCount: integer;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM FBDR1 where FBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM FBDR1 where FBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInt64 := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // ��������� ��������� ������ �������
      for i := 3 to 27 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsCurrency := Q.FN(FieldName).AsCurrency;
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.LoadFBDR2(T: TdxMemData);
var
  Q: TFIBQuery;
  DU, FieldName: string;
  i, Num, RecordCount: integer;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM FBDR2 where FBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM FBDR2 where FBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // ��������� ��������� ������ �������
      for i := 3 to 40 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsCurrency := Q.FN(FieldName).AsCurrency;
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.LoadFBDR3(T: TdxMemData);
var
  Q: TFIBQuery;
  DU, FieldName: string;
  i, Num, RecordCount: integer;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM FBDR3 where FBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM FBDR3 where FBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // ��������� ��������� ������ �������
      for i := 3 to 32 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsCurrency := Q.FN(FieldName).AsCurrency;
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.LoadPBDR1(T: TdxMemData);
var
  Q: TFIBQuery;
  DU, FieldName: string;
  i, Num, RecordCount: integer;
  S: string;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM PBDR1 where PBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM PBDR1 where PBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInt64 := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // �������� �����
      S := Q.FN('F3').AsString;
      S := cmReplaceWord(S, '.', ',');
      T.FieldByName('F3').AsString := S;
      // ��������� ��������� ������ �������
      for i := 4 to 22 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsString := Q.FN(FieldName).AsString;
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.LoadPBDR2(T: TdxMemData);
var
  Q: TFIBQuery;
  S, DU, FieldName: string;
  i, Num, RecordCount: integer;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM PBDR2 where PBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM PBDR2 where PBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // ����� ������ � �����������
      T.FieldByName('AccCount').AsInteger := Q.FN('AccCount').AsInteger;
      T.FieldByName('DRTZ').AsFloat := Q.FN('DRTZ').AsFloat;
      T.FieldByName('DZI').AsFloat := Q.FN('DZI').AsFloat;
      // �������� �����
      S := Q.FN('F3').AsString;
      S := cmReplaceWord(S, '.', ',');
      T.FieldByName('F3').AsString := S;
      // ��������� ��������� ������ �������
      for i := 4 to 41 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsString := Q.FN(FieldName).AsString;
      end;
      //��������� �����������
      for i:=1 to 8 do
      begin
        FieldName:='K'+IntToStr(i);
        T.FieldByName(FieldName).AsInteger:=Q.FN(FieldName).AsInteger;
        T.FieldByName('KName'+IntToStr(i)).AsString:=fKontragentList.Values[Q.FN(FieldName).AsString];
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.LoadPBDR3(T: TdxMemData);
var
  Q: TFIBQuery;
  S, DU, FieldName: string;
  i, Num, RecordCount: integer;
begin
  // ������� ����� ������
  T.Close;
  T.Open;
  // �������� ���-�� �������
  Q := cmDBUnit.cmDB.GetQuery('SELECT Count(*) F FROM PBDR3 where PBDR=:Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    RecordCount := Q.FN('F').AsInteger;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
  // �������� ������ ��
  Num := 0;
  Q := cmDBUnit.cmDB.GetQuery
    ('SELECT * FROM PBDR3 where PBDR=:Code ORDER BY Code');
  try
    Q.ParamByName('Code').AsInteger := BDRCode;
    Q.ExecQuery;
    while not Q.Eof do
    begin
      T.Append;
      // �������� ���
      T.FieldByName('House').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ParamByName('Code').AsInteger := Q.FN('House').AsInteger;
      HouseQ.ExecQuery;
      T.FieldByName('F1').AsString := HouseQ.FN('StreetName').AsString + ' ' +
        HouseQ.FN('Nomer').AsString;
      DU := cmGetWord(HouseQ.FN('DUName').AsString, 2, ' ');
      T.FieldByName('F2').AsString := DU;
      // ������
      if Length(DU) = 1 then
        DU := '0' + DU;
      T.FieldByName('F').AsString := DU + T.FieldByName('F1').AsString;
      // �������� �����
      S := Q.FN('F3').AsString;
      S := cmReplaceWord(S, '.', ',');
      T.FieldByName('F3').AsString := S;
      // ��������� ��������� ������ �������
      for i := 4 to 28 do
      begin
        FieldName := 'F' + IntToStr(i);
        T.FieldByName(FieldName).AsString := Q.FN(FieldName).AsString;
      end;
      // ��������� ������
      T.Post;
      Q.Next;
      // ��������
      Inc(Num);
      Progress(RecordCount, Num);
    end;
  finally
    cmDBUnit.cmDB.FreeQuery(Q);
  end;
end;

procedure TbdrLoader.Msg(S: string);
begin
  if Assigned(OnMessage) then
    OnMessage(S);
end;

procedure TbdrLoader.Progress(Count, Poz: integer);
begin
  if Assigned(OnProgress) then
    OnProgress(Count, Poz);
end;

procedure TbdrLoader.Save(T: TdxMemData);
var
  S, S1, S2: String;
  i, Num, FCount: integer;
  Q: TFIBQuery;

  function NN(const S: string): string;
  var
    Poz: integer;
  begin
    Result := S;
    Poz := Pos(',', S);
    if Poz > 0 then
      Result[Poz] := '.';
    if Result = '' then
      Result := '0';
    Result := #39 + Result + #39;
  end;

begin
  // �������� ����� ��� ��� ������ ������
  BDRCode := UpdateBDRCode;
  if BDRCode < 0 then
    Exit;
  Msg('��������� ������...');

  if BType = 0 then
  begin
    if Srv = 6 then
    begin
      S1 := 'insert into PBDR2(PBDR,House,AccCount,DRTZ,DZI,K1,K2,K3,K4,K5,K6,K7,K8,';
      FCount := 41;
    end
    else if Srv = 8 then
    begin
      S1 := 'insert into PBDR3(PBDR,House,';
      FCount := 28;
    end
    else
    begin
      S1 := 'insert into PBDR1(PBDR,House,';
      FCount := 22;
    end;
  end
  else
  begin
    if Srv = 6 then
    begin
      S1 := 'insert into FBDR2(FBDR,House,';
      FCount := 40;
    end
    else if Srv = 8 then
    begin
      S1 := 'insert into FBDR3(FBDR,House,';
      FCount := 32;
    end
    else
    begin
      S1 := 'insert into FBDR1(FBDR,House,';
      FCount := 27;
    end;
  end;

  // ��������� ������ �����
  for i := 3 to FCount do
    S1 := S1 + 'F' + IntToStr(i) + ',';
  Delete(S1, Length(S1), 1);
  S1 := S1 + ') VALUES(';

  // � ������ ��������� �� ������....
  T.First;
  Num := 0;
  while not T.Eof do
  begin
    S := S1 + IntToStr(BDRCode) + ',' + T.FieldByName('House').AsString + ',';
    if (Srv = 6) and (BType = 0) then
      S := S + IntToStr(T.FieldByName('AccCount').AsInteger) + ',' +
        NN(T.FieldByName('DRTZ').AsString) + ','+NN(T.FieldByName('DZI').AsString)+','+
        NN(T.FieldByName('K1').AsString)+','+NN(T.FieldByName('K2').AsString)+','+
        NN(T.FieldByName('K3').AsString)+','+NN(T.FieldByName('K4').AsString)+','+
        NN(T.FieldByName('K5').AsString)+','+NN(T.FieldByName('K6').AsString)+','+
        NN(T.FieldByName('K7').AsString)+','+NN(T.FieldByName('K8').AsString)+',';
    for i := 3 to FCount do
    begin
      S2 := NN(T.FieldByName('F' + IntToStr(i)).AsString);
      S := S + S2 + ',';
    end;
    Delete(S, Length(S), 1);
    S := S + ')';
    cmDBUnit.cmDB.ExecQuery(S);

    T.Next;
    Inc(Num);
    Progress(T.RecordCount, Num);
  end;

  Msg('�������� ���������.');
  cmDBUnit.cmDB.WT.Commit;
end;

function TbdrLoader.UpdateBDRCode: integer;
var
  S: string;
  Q: TFIBQuery;
  IsSave: boolean;
begin
  Result := GetBDRCode;

  if Result > 0 then
  begin
    if Query then
      IsSave := cmMessageBox
        ('��������! �������� �� ��������� ������ ��� ������. ����������?')
    else
      IsSave := true;
    if IsSave then
    begin
      // ������� ����� ��������� ��������
      if BType = 0 then
        case Srv of
          6:
            S := 'DELETE FROM PBDR2 WHERE PBDR=:Code';
          8:
            S := 'DELETE FROM PBDR3 WHERE PBDR=:Code';
        else
          S := 'DELETE FROM PBDR1 WHERE PBDR=:Code';
        end
      else
      begin
        case Srv of
          6:
            S := 'DELETE FROM FBDR2 WHERE FBDR=:Code';
          8:
            S := 'DELETE FROM FBDR3 WHERE FBDR=:Code';
        else
          S := 'DELETE FROM FBDR1 WHERE FBDR=:Code';
        end;
      end;
      Q := cmDBUnit.cmDB.GetQuery(S, cmDBUnit.cmDB.WT);
      Q.ParamByName('Code').AsInteger := Result;
      Q.ExecQuery;
      cmDBUnit.cmDB.FreeQuery(Q);
    end
    else
    begin
      Result := -1;
      Exit;
    end;
  end;

  // ������� ����� ������
  if Result < 0 then
  begin
    if BType = 0 then
      S := 'insert into PBDR(Y,M,HouseSrv) VALUES(:Y,:M,:Srv)'
    else
      S := 'insert into FBDR(Y,M,HouseSrv) VALUES(:Y,:M,:Srv)';
    Q := cmDBUnit.cmDB.GetQuery(S, cmDBUnit.cmDB.WT);
    Q.ParamByName('Y').AsInteger := Y;
    Q.ParamByName('M').AsInteger := M;
    Q.ParamByName('Srv').AsInteger := Srv;
    Q.ExecQuery;
    cmDBUnit.cmDB.FreeQuery(Q);
    cmDBUnit.cmDB.WT.Commit;
    Result := GetBDRCode;
  end;
end;

{ TFBDR1 }

constructor TFBDR1.Create;
begin
  inherited;
  SQ1 := 0;
  SQ2 := 0;
end;

function TFBDR1.IsEmpty: boolean;
begin
  Result := (NOst = 0) and (NLOst = 0) and (Nach = 0) and (Opl = 0) and
    (B1 = 0) and (PO = 0);
end;

{ TFBDR2 }

function TFBDR2.IsEmpty: boolean;
begin
  Result := (NOst = 0) and (NLOst = 0) and (Nach = 0) and (Opl = 0) and
    (B1 = 0) and (IPU_1=0) and (CN_Ost=0);
end;

{ TFBDR3 }

function TFBDR3.GetRashStr: string;
begin
  Result := HouseStr;
  if LTO <> 0 then
    Result := Result + ' ��: ' + FormatFloat('0.00', LTO);
  if LTR <> 0 then
    Result := Result + ' TP: ' + FormatFloat('0.00', LTR);
  if Kab <> 0 then
    Result := Result + ' ��.���: ' + FormatFloat('0.00', Kab);
  if TexOsv <> 0 then
    Result := Result + ' ���.���: ' + FormatFloat('0.00', TexOsv);
  if Exp <> 0 then
    Result := Result + ' ����������: ' + FormatFloat('0.00', Exp);
  if ABC <> 0 then
    Result := Result + ' ABC: ' + FormatFloat('0.00', ABC);
  if LDSS <> 0 then
    Result := Result + ' ����: ' + FormatFloat('0.00', LDSS);
  if Result = HouseStr then
    Result := '';
end;

function TFBDR3.IsEmpty: boolean;
begin
  Result := (NOst = 0) and (NLOst = 0) and (Nach = 0) and (Opl = 0) and
    (B1 = 0);
end;

end.
