unit dezInfo;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  frxClass,frxFIBComponents,SingletonTemplate, frxExportPDF,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants, frxDBSet,
  dxmdaset,DB;
 type
{ TdzInfo }

  TdzInfo = class(TObject)
  private

  protected
    FDS : TpFIBDataSet;
    procedure CreateFDS;
  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

{ TdzPO }

  TdzPO = class(TSingleton)
  private
    fCOD :variant;
    fName :string; //наиименование по
    fFullName :string; // полное наименование
    fAddr :string; //адрес по
    fINN :string;
    fKPP :string;
    fOGRN :string;
    // Лицевые счета (BankSchet)
    fSchet :string;
    fKSchet :string;
    fBank :string;
    fDir :string; //директор по
    //договор
    fDogCod :Variant;
    fDogNom :string;
    fDogBegin :Variant;
    fDogEnd :Variant;
    fPOType: Variant;  //тип ПО (электрика - общестрой)
    //
    fExData: Boolean;
  protected
    constructor Create; override;
  public
    property COD: Variant read fCOD write fCOD;

    destructor Destroy; override;
    procedure GetInfo(code :Variant);
  published
    property Name :string read fName;
    property FullName :string read fFullName;
    property Addr :string read fAddr;
    property INN :string read fINN;
    property KPP :string read fKPP;
    property OGRN :string read fOGRN;
    property Schet :string Read fSchet;
    property KSchet :string read fKSchet;
    property Bank :string read fBank;
    property Dir :string read fDir;
    property DogCod :Variant read fDogCod;
    property DogNom :string read fDogNom;
    property DogBegin :Variant read fDogBegin;
    property DogEnd :Variant read fDogEnd;
    property POType: Variant read fPOType;
    property ExData: Boolean read fExData;
  end;

{ TdzManager }

  TdzManager = class(TSingleton)
  private

  protected
    constructor Create; override;
  public
    destructor Destroy; override;
    procedure GetHouseManager(var mCODE, mNAME :variant; kontr,house :variant);
  published

  end;

{ TdzHouseInfo }

  TdzHouseInfo = class(TObject)
  private
    fCOD :Variant;
  protected

  public
    property COD: Variant read fCOD write fCOD;
    constructor Create(house :Variant);
    destructor Destroy; override;
    {$REGION 'адрес'}
    ///<summary>функция возвращает адресс вида- "Улица дом"</summary>
    {$ENDREGION}
    function GetAddr :Variant;

    ///	<summary>
    ///	  Процедура возвращает площадь (жилая/нежилая) по дому из документов
    ///	  PBDR
    ///	</summary>
    ///	<param name="GP">
    ///	  возвращаемое значение - жилая площадь
    ///	</param>
    ///	<param name="NGP">
    ///	  возвращаемое значение - не жилая площадь
    ///	</param>
    ///	<param name="House">
    ///	  код дома
    ///	</param>
    ///	<param name="Y">
    ///	  год
    ///	</param>
    ///	<param name="M">
    ///	  месяц
    ///	</param>
    ///	<param name="SRV">
    ///	  код услуги
    ///	</param>
    ///	<param name="SrvType">
    ///	  тип услуги 0-HouseSrv 1-Srv
    ///	</param>
    procedure GetAreaFromBDR(var GP, NGP: Variant; House, Y, M, SRV, SrvType: Variant);

  published

  end;

{ TLCGraphPrint }

  TLCGraphPrint = class(TSingleton)
  private
    constructor Create; override;
  protected
    procedure GetMonthDate(var D1,D2 :TDateTime; GMonth, GYear :variant);
    function MakeQuery(GCode: Variant) :TFIBQuery;
    procedure FillMemData(D1, D2: TDateTime;Q: TFIBQuery; md: TdxMemData);
    procedure FillMem(Q: TFIBQuery; md: TdxMemData);

  public

    destructor Destroy; override;
  published
    procedure PrintGraph(GCode, GMonth, GYear :variant; md: TdxMemData);
  end;


{ TRepTR }
  //отчет по текущему ремонту  | общестрой - електрика
  TRepTR = class(TSingleton)
  private
    fFR: TfrxReport;
  protected
    constructor Create; override;
    function MakeQuery: string;
  public
    destructor Destroy; override;
  published
    ///	<summary>
    ///	  печать отчета по дефектным ведомостям
    ///	</summary>
    procedure PrintDefVed(aCode: variant; aType: Integer = 0);
    procedure PrintRepType(var ds: TpFIBDataSet; aType: integer; d1,d2 :TDateTime);
  end;

{ TLRepTR }
  //отчет по текущему ремонту  | лифт
  TLRepTR = class(TSingleton)
  private

  protected
    constructor Create; override;
    function MakeQuery: string;
  public
    destructor Destroy; override;
  published
    procedure PrintRepType(var ds: TpFIBDataSet; aType: integer; d1,d2 :TDateTime);
  end;

{ TMKDRep }

  TMKDRep = class(TSingleton)
  private
    fdogCode: variant;
    fType: Variant;
    fmt: TdxMemData;
  protected
    constructor Create; override;
    procedure SumByDog(var mt: TdxMemData);
    procedure SumByCountEntrance(var mt: TdxMemData);
    procedure FixSumByHouse(var mt: TdxMemData);
    procedure SumByCountHouse(var mt: TdxMemData);
    procedure CreateMem(var mt: TdxMemData);
  public
    destructor Destroy; override;
  published
    procedure PrintRep(var mt: TdxMemData; DogImkd, aType: Variant);
  end;


{ TFinPlan }

  TFinPlan = class(TSingleton)
  private
    housesrv: Variant;
    fY: Variant;
  protected
    constructor Create; override;
    function GetFBDRCode :Variant;
    procedure ClearSum;
    procedure UpdateSum(Q: TFIBQuery);
    procedure GetFinPlan(const bdr: variant);
  public

    destructor Destroy; override;
  published
    // Разнести сумму остатка на начало года
    procedure RecalcOst(Y, aType: Variant);
  end;

{ TdzAct }
  // акт осмотра
  TdzAct = class(TSingleton)
  private
    fShowHouse: Variant; // код акта
    fKontragent: Variant; // принципал код
    fKName: Variant; //принципал наименование
    fType: Variant; //Тип весна - осень
    fHouse: Variant;
    fNomer: Variant;
    fSname: Variant;
    fKDez: Variant; //GUID код улицы для сайта
    fIsStreetName: boolean; //если true - выводить наименование улиц в имени файла
    fDogType: Variant; //Тип договора SrvDog.AType
    fShowDate: TDateTime; //Дата осмотра
    fLock: boolean; //акт закрыт
    QAct, QActList: TFIBQuery;
    md_kr: TdxMemData;
  protected
    constructor Create; override;
    procedure GetActParam(code: Variant);
    procedure MakeSQL;
    procedure FreeSQL;
    procedure ReportPrepare(const report: TfrxReport);
    function GetNoStruct(house :variant) :WideString;
    procedure GetTypeTR;
  public
    function GetFileName: string;
    destructor Destroy; override;
  published
    property ShowHouse: Variant read fShowHouse write fShowHouse;
    procedure PrintAct(ShowHousePlan: Variant; Rep: TfrxReport; RepPath: string ='');
    procedure SaveRepPDF(ShowHousePlan: Variant; Rep: TfrxReport; PDF: TfrxPDFExport;
                        mem: TdxMemData; RepPath: string =''; pdfPath: string = '');
  end;

{ TdzJurnal }

  TdzJurnal = class(TSingleton)
  private

  protected
    constructor Create; override;
    procedure DeleteFromJurnal(kontr: variant);
  public
    procedure MoveToArhiv(kontr: variant);
    destructor Destroy; override;
  published

  end;

{ TdzOrder }
  // наряды
  TdzOrder = class(TSingleton)
  private

  protected
    constructor Create; override;
  public
    destructor Destroy; override;
    procedure PrintOrder(OrderCode: variant; Rep: TfrxReport; repFName: string ='');
  published

  end;


  function LCGraph :TLCGraphPrint;
  function dzManager :TdzManager;
  function RepTR: TRepTR;
  function LRepTR: TLRepTR;
  function MKDRep: TMKDRep;
  function FinYPlan: TFinPlan;
  function dzAct: TdzAct;
  function dzJurnal: TdzJurnal;
  function dzPO: TdzPO;
  function dzOrder: TdzOrder;

implementation

uses cmDBUnit, cmUtils, LoadingSplash;

function dzOrder: TdzOrder;
begin
  Result:= TdzOrder.GetInstance;
end;

function dzPO: TdzPO;
begin
  Result:= TdzPO.GetInstance;
end;

function dzJurnal: TdzJurnal;
begin
  Result:= TdzJurnal.GetInstance;
end;

function dzAct: TdzAct;
begin
  Result:= TdzAct.GetInstance;
end;

function FinYPlan: TFinPlan;
begin
  Result:= TFinPlan.GetInstance;
end;

function MKDRep: TMKDRep;
begin
  Result:= TMKDRep.GetInstance;
end;

function LCGraph :TLCGraphPrint;
begin
  Result:=TLCGraphPrint.GetInstance;
end;

function dzManager :TdzManager;
begin
  Result := TdzManager.GetInstance;
end;

function RepTR: TRepTR;
begin
  Result:= TRepTR.GetInstance;
end;

function LRepTR: TLRepTR;
begin
  Result:= TLRepTR.GetInstance;
end;
{ TdzPO }

constructor TdzPO.Create;
begin
  //
  fExData:= False;
end;


destructor TdzPO.Destroy;
begin

  inherited;
end;

procedure TdzPO.GetInfo(code :Variant);
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'select K.CODE, K.NAME, K.FULLNAME, K.INN, K.KPP, K.OGRN, K.POSTADDR,' +
    #13#10 +
    '       K.URADDR, K.PHONE, K.EMAIL, K.KTYPE, K.DEFSCHET, K.CODE1C,' + #13 +
    #10 +
    '       K.DIRECTOR, (P.F || '' '' || P.I || '' '' || P.O) FIO,' + #13#10 +
    '       B.NAME BANKNAME, BS.SCHET SCHET, BS.KSCHET KSCHET,' + #13#10 +
    '       sd.code DOGCOD,sd.nomer DogNom,sd.d1 DogBegin, sd.d2 DogEnd, sd.ATYPE' +
    #13#10 +
    'from KONTRAGENT K' + #13#10 +
    'left outer join BANKSCHET BS on BS.KONTRAGENT = K.CODE' + #13#10 +
    'left outer join BANK B on B.CODE = BS.BANK' + #13#10 +
    'left outer join WORKER W on W.CODE = K.DIRECTOR' + #13#10 +
    'left outer join PIPLE P on P.CODE = W.PIPLE' + #13#10 +
    'left outer join srvdog sd on sd.kontragent=k.code and sd."ACTIVE"=1' +
    #13#10 +
    'where K.CODE=:COD');
  Q.ParamByName('cod').AsVariant:=code;
  try
    Q.ExecQuery;
    fName:=Q.FN('NAME').AsString;
    fFullName:=Q.FN('FULLNAME').AsString;
    fAddr:=Q.FN('URADDR').AsString;
    fINN:=Q.FN('INN').AsString;
    fKPP:=Q.FN('KPP').AsString;
    fOGRN:=Q.FN('OGRN').AsString;
    fSchet:=Q.FN('SCHET').AsString;
    fKSchet:=Q.FN('KSCHET').AsString;
    fBank:=Q.FN('BANKNAME').AsString;
    fDir:=Q.FN('FIO').AsString;
    fDogCod:=Q.FN('DOGCOD').AsVariant;
    fDogNom:=Q.FN('DogNom').AsString;
    fDogBegin:=Q.FN('DogBegin').AsVariant;
    fDogEnd:=Q.FN('DogEnd').AsVariant;
    fPOType:= Q.FN('ATYPE').AsVariant;
    // признак наличия данных, чтобы не делать повторный запрос
    fExData:= True;
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TdzInfo }

constructor TdzInfo.Create;
begin

end;

procedure TdzInfo.CreateFDS;
begin
  FDS:=TpFIBDataSet.Create(nil);
  FDS.Database:=cmDB.DB;
  FDS.Transaction:=cmDB.RT;
  FDS.UpdateTransaction:=cmDB.WT;
end;

destructor TdzInfo.Destroy;
begin
    FDS.Free;
  inherited;
end;

{ TdzManager }


constructor TdzManager.Create;
begin
  inherited;

end;

destructor TdzManager.Destroy;
begin

  inherited;
end;

procedure TdzManager.GetHouseManager(var mCODE, mNAME: variant; kontr,
  house: variant);
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmdb.RT,
        'select m.worker,(p.f||'' ''||p.i||'' ''||p.o) fio' + #13#10 +
        'from mhouse m' + #13#10 +
        'left outer join worker w on w.code=m.worker' + #13#10 +
        'left outer join piple p on p.code=w.piple' + #13#10 +
        'where m.house=:house and m.kontragent=:kontr');
  Q.ParamByName('kontr').asVariant:=kontr;
  Q.ParamByName('house').asVariant:=house;
  Q.ExecQuery;
  mCODE:=Q.FN('worker').AsVariant;
  mNAME:=Q.FN('fio').AsVariant;
  FreeQueryForUse(Q);
end;

{ TdzHouseInfo }

constructor TdzHouseInfo.Create(house :Variant);
begin
  Cod:=house;
end;

destructor TdzHouseInfo.Destroy;
begin

  inherited;
end;

function TdzHouseInfo.GetAddr: Variant;
var
  Q :TFIBQuery;
begin
  Result:='';
  Q:=GetQueryForUse(cmDB.RT,'SELECT (s.name || '' '' || h.NOMER)  addr' + #13 +
                            #10 +
                            'FROM HOUSE h' + #13#10 +
                            'left outer join street s on s.code=h.street' +
                            #13#10 +
                            'where h.CODE=:cod');
  try
    Q.ParamByName('cod').AsVariant:=COD;
    Q.ExecQuery;
    Result:=Q.FN('addr').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TdzHouseInfo.GetAreaFromBDR(var GP, NGP: Variant; House, Y, M, SRV, SrvType: Variant);

 procedure GetFromBDR1;
 begin

 end;

 procedure GetFromBDR2;
 begin

 end;

 procedure GetFromBDR3;
 begin

 end;

 procedure GetHouseSrv;
 begin
   case SRV of
     1..3,5,9 : GetFromBDR1;
   end;
 end;

 procedure GetSrv;
 begin
   case SRV of
     5,6 : GetFromBDR2;
     7,10..12 : GetFromBDR3;
   end;
 end;

begin
  //получаем код бдр
  case SrvType of
    0: GetHouseSrv;
    1: GetSrv;
    else raise dezException.Create('Ошибка определения типа услуги!');
  end;
end;

{ TLCGraphPrint }

constructor TLCGraphPrint.Create;
begin
  inherited;

end;

destructor TLCGraphPrint.Destroy;
begin

  inherited;
end;

procedure TLCGraphPrint.FillMem(Q: TFIBQuery; md: TdxMemData);
var
  house :variant;
  procedure NewRec;
  var
    FName :string;
  begin
    with md do begin
      Append;
        FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
        FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
        FieldByName('ADDR').AsVariant:=Q.FN('ADDR').AsVariant;
        FieldByName('ENTRANCE_CNT').AsVariant:=Q.FN('ENTRANCE_CNT').AsVariant;
        FieldByName('FLOOR_CNT').AsVariant:=Q.FN('FLOOR_CNT').AsVariant;
        FieldByName('DUNAME').AsVariant:=Q.FN('DUNAME').AsVariant;
        FieldByName('DATA').AsDateTime:=Q.FN('DATA').AsDateTime;
        FName:= 'F'+ VarToStr(DayOf(FieldByName('DATA').AsDateTime));
          if VarToStrDef(FieldByName(FName).AsVariant,'')<>'' then
          FieldByName(FName).AsVariant:=
            VarToStrDef(FieldByName(FName).AsVariant,'')+' '+Q.FN('P').AsVariant else
          FieldByName(FName).AsVariant:=Q.FN('P').AsVariant;
      Post;
      house:=Q.FN('HOUSE').AsVariant;
    end;
  end;
  procedure EditRec;
  var
    FName :string;
  begin
    with md do begin
      Edit;
        FieldByName('DATA').AsDateTime:=Q.FN('DATA').AsDateTime;
        FName:= 'F'+ VarToStr(DayOf(FieldByName('DATA').AsDateTime));
          if VarToStrDef(FieldByName(FName).AsVariant,'')<>'' then
          FieldByName(FName).AsVariant:=
            Q.FN('P').AsVariant+VarToStrDef(FieldByName(FName).AsVariant,'') else
          FieldByName(FName).AsVariant:=Q.FN('P').AsVariant;
      Post;
      house:=Q.FN('HOUSE').AsVariant;
    end;
  end;
begin
  md.close; md.Open;
 while not Q.Eof do begin
  if house<>Q.FN('HOUSE').AsVariant then NewRec else
     EditRec;
    Q.Next;
 end;
end;

procedure TLCGraphPrint.FillMemData(D1, D2: TDateTime;Q: TFIBQuery; md: TdxMemData);
var
  D, dat :TDateTime;
  PTYPE :integer;

  function IncData(Data :TDateTime) :TDateTime;
  begin
    case PType of
      0 : Result:=IncWeek(data);
      1 : Result:=IncMonth(data);
      2 : Result:=IncMonth(data,3);
      3 : Result:=IncMonth(data,6);
    end;
  end;

  procedure AddData;
  var
    FName :String;
  begin
    dat:=D;
    if not (dat>=D1) then
    repeat
      dat:=IncData(dat);
    until (dat>=D1);
    if (dat>=D1)and (dat<=D2) then
    repeat
      with md do begin
        if (FieldByName('SNAME').AsVariant=Q.FN('SNAME').AsVariant) and
           (FieldByName('NOMER').AsVariant=Q.FN('NOMER').AsVariant) then
        begin
          Edit;
          FName:='F'+VarToStr(DayOfTheMonth(dat));
          if VarToStrDef(FieldByName(FName).AsVariant,'')<>'' then
          FieldByName(FName).AsVariant:=
            VarToStrDef(FieldByName(FName).AsVariant,'')+' '+Q.FN('P').AsVariant else
          FieldByName(FName).AsVariant:=Q.FN('P').AsVariant;
        end else begin
          Append;
          FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
          FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
          FieldByName('ENTRANCE_CNT').AsVariant:=Q.FN('ENTRANCE_CNT').AsVariant;
          FieldByName('FLOOR_CNT').AsVariant:=Q.FN('FLOOR_CNT').AsVariant;
          FieldByName('DUNAME').AsVariant:=Q.FN('DUNAME').AsVariant;
          FName:='F'+VarToStr(DayOfTheMonth(dat));
          FieldByName(FName).AsVariant:=Q.FN('P').AsVariant;
        end;
        Post;
        dat:=IncData(dat);
      end;
    until (dat>D2);
  end;
begin
 while not Q.Eof do begin
    D:=Q.FN('DATA').AsDateTime;
    PTYPE:=Q.FN('PTYPE').AsVariant;
    AddData;
    Q.Next;
  end;
end;

procedure TLCGraphPrint.GetMonthDate(var D1, D2: TDateTime; GMonth, GYear :variant);
begin
  D1:=StartOfAMonth(GYear,GMonth);
  D2:=EndOfAMonth(GYear,GMonth)-1;
end;

function TLCGraphPrint.MakeQuery(GCode: Variant): TFIBQuery;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
  'SELECT lk.CODE, ' + #13#10 +
  '       lk.LKHEAD, ' + #13#10 +
  '       lk.HOUSE,' + #13#10 +
  '       s.name SNAME, h.nomer,' + #13#10 +
  '       s.name ||'' ''||h.nomer ADDR,' + #13#10 +
  '       h.floor_cnt, h.entrance_cnt,' + #13#10 +
  '       du.name DUNAME,' + #13#10 +
  '       lk.LKTYPE, lt.name LTNAME,' + #13#10 +
  '       lk.DATA, lt.ptype,' + #13#10 +
  '       case' + #13#10 +
  '        when lt.ptype = 5 then LT.SNAME' + #13#10 +
  '  else LT.SNAME||'' ''||iif(lk.ENTRANCE is null, '' '',lk.ENTRANCE)'+#13#10 +
  '       end P'  + #13#10 +
  'FROM LK_SPEC lk' + #13#10 +
  'left outer join house h on h.code=lk.house' + #13#10 +
  'left outer join lktype lt on lt.code=lk.lktype' + #13#10 +
  'left outer join street s on s.code=h.street' + #13#10 +
  'left outer join du on du.code=h.du' + #13#10 +
  'where lk.lkhead=:head' + #13#10 +
  'order by lk.HOUSE');
  Q.ParamByName('head').AsVariant:=GCode;
  try
    Q.ExecQuery;
    Result:=Q;
  finally

  end;
end;

procedure TLCGraphPrint.PrintGraph(GCode, GMonth, GYear: variant; md: TdxMemData);
var
  D1, D2 :TDateTime;
  Q :TFIBQuery;
begin
  GetMonthDate(D1,D2,GMonth, GYear);
  try
    Q:=MakeQuery(GCode);
    FillMem(Q, md);
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TRepTR }

constructor TRepTR.Create;
begin
  inherited;

end;


destructor TRepTR.Destroy;
begin

  inherited;
end;


function TRepTR.MakeQuery: string;
var
  s: string;
begin
  s:=
  'SELECT tf.HOUSE, s.name SNAME,h.nomer,' + #13#10 +
  '       tf.MLIST, m.name MNAME,' + #13#10 +
  '       tf.KONTRAGENT, k.name KNAME,' + #13#10 +
  '       Sum(tf.SUMMA) summa' + #13#10 +
  'FROM TRFACT tf' + #13#10 +
  'left outer join house h on h.code=tf.house' + #13#10 +
  'left outer join street s on s.code=h.street' + #13#10 +
  'left outer join kontragent k on k.code=tf.kontragent' + #13#10 +
  'left outer join mlist m on m.code=tf.mlist' + #13#10 +
  'left outer join mgroup mg on mg.code=m.mgroup';
  Result:=s;
end;

procedure TRepTR.PrintDefVed(aCode: variant; aType: Integer);
var
  fName: string;
  fdb: TfrxFIBDatabase;
  Q :TfrxFIBQuery;
  Query: TFIBQuery;
  //
  procedure GetLift;
  begin
      // query
    Q := fFR.FindObject('Q1') as TfrxFIBQuery;
    Q.Close;
    Q.SQL.Text:=
     'SELECT df.CODE, ' +#13#10+
     '       df.TRLFACT TRFACT,' +#13#10+
     '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,' +#13#10+
     '       tf.mlist,' +#13#10+
     '       df.WNOTE, ' +#13#10+
     '       df.ED, ' +#13#10+
     '       df.QUANTITY, ' +#13#10+
     '       df.NOTE' +#13#10+
     'FROM TRLDEFECTVED df' +#13#10+
     'left outer join trlfact tf on tf.code=df.trlfact' +#13#10+
     ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
     ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
     ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
     'where tf.code=:cod' +#13#10+
     'order by df.NUM';
    Q.ParamByName('cod').Value:=aCode;

    Query:= GetQueryForUse(cmDb.RT,
      'select' +#13#10+
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,' +#13#10+
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,' +#13#10+
      '  K.NAME KNAME, TF.MANAGER,(P.F || '' '' || P.I || '' '' || P.O) FIO,' +#13#10+
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,' +#13#10+
      '  TF.PLANCODE,TF.STATE, TF.DPLACE, TF.DNum, TF.DDate' +#13#10+
      'from TRLFACT TF' +#13#10+
      ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
      ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
      ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT' +#13#10+
      ' left outer join WORKER W on W.CODE = TF.MANAGER' +#13#10+
      ' left outer join PIPLE P on P.CODE = W.PIPLE' +#13#10+
      'where TF.CODE = :cod');
    Query.Options:= [qoStartTransaction];
  end;

  procedure GetObjs;
  begin
      // query
    Q := fFR.FindObject('Q1') as TfrxFIBQuery;
    Q.Close;
    Q.SQL.Text:=
     'SELECT df.CODE, ' +#13#10+
     '       df.TRFACT,' +#13#10+
     '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,' +#13#10+
     '       tf.mlist,' +#13#10+
     '       df.WNOTE, ' +#13#10+
     '       df.ED, ' +#13#10+
     '       df.QUANTITY, ' +#13#10+
     '       df.NOTE' +#13#10+
     'FROM TRDEFECTVED df' +#13#10+
     'left outer join trfact tf on tf.code=df.trfact' +#13#10+
     ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
     ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
     ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
     'where tf.code=:cod' +#13#10+
     'order by df.NUM';
    Q.ParamByName('cod').Value:=aCode;

    Query:= GetQueryForUse(cmDb.RT,
      'select' +#13#10+
      '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,' +#13#10+
      '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,' +#13#10+
      '  K.NAME KNAME, TF.MANAGER,(P.F || '' '' || P.I || '' '' || P.O) FIO,' +#13#10+
      '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,' +#13#10+
      '  TF.PLANCODE,TF.STATE, TF.DPLACE, TF.DNum, TF.DDate' +#13#10+
      'from TRFACT TF' +#13#10+
      ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
      ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
      ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
      ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT' +#13#10+
      ' left outer join WORKER W on W.CODE = TF.MANAGER' +#13#10+
      ' left outer join PIPLE P on P.CODE = W.PIPLE' +#13#10+
      'where TF.CODE = :cod');
    Query.Options:= [qoStartTransaction];
  end;

  procedure GetVariables;
  begin
    case aType of
      0: GetObjs;
      1: GetLift;
    end;
    try
      Query.ParamByName('cod').AsVariant:= aCode;
      Query.ExecQuery;
      // Set params
      fFR.Variables['varIsp'] :=#39 + Query.FN('FIO').AsVariant+ #39;
      fFR.Variables['varAddr'] :=#39 + VarToStr(Query.FN('SNAME').AsVariant)+
                             ' д.'+VarToStr(Query.FN('NOMER').AsVariant)+' '+
                             VarToStrDef(Query.FN('DPLACE').AsVariant,' ')+ #39;
      fFR.Variables['varPrich'] :=#39 + Query.FN('MNAME').AsVariant+ #39;
      fFR.Variables['varDate'] :=#39 + VarToStrDef(Query.FN('DDate').AsVariant,' ')+ #39;
      fFR.Variables['varNom'] := #39 + VarToStrDef(Query.FN('DNum').AsVariant,' ')+ #39;
    finally
      FreeQueryForUse(Query);
    end;
  end;

begin
  fFR:= TfrxReport.Create(nil);
  try
    fName:= ExtractFilePath(Application.ExeName)+'rep\defved.fr3';
    if not FileExists(fName) then
       raise dezException.Create('Не Найден файл отчета!'+#10#13+fName);
    fFR.LoadFromFile(fName);

    //
    GetVariables;
    //
    fdb := fFR.FindObject('fdb') as TfrxFIBDatabase;
    with fdb do
    begin
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
    end;
    fFR.ShowReport();
  finally
    FreeAndNil(fFR);
  end;
end;

procedure TRepTR.PrintRepType(var ds: TpFIBDataSet; aType: integer; d1,
  d2: TDateTime);
begin
  with ds do begin
    Close;
    SelectSQL.text:=MakeQuery;
    MainWhereClause:='tf.state=5 and tf.zd between :d1 and :d2 and mg.code=:grp';
    ParamByName('d1').AsDateTime:=d1;
    ParamByName('d2').AsDateTime:=d2;
    ParamByName('grp').AsInteger:=aType;
    GroupByClause:='tf.KONTRAGENT, k.name, s.name ,h.nomer, m.name, tf.MLIST,tf.HOUSE';
    Open;
  end;
end;

{ TLRepTR }

constructor TLRepTR.Create;
begin
  inherited;

end;

destructor TLRepTR.Destroy;
begin

  inherited;
end;

function TLRepTR.MakeQuery: string;
var
  s: string;
begin
  s:=
  'SELECT tf.HOUSE, s.name SNAME,h.nomer,' + #13#10 +
  '       tf.MLIST, m.name MNAME,' + #13#10 +
  '       tf.KONTRAGENT, k.name KNAME,' + #13#10 +
  '       tf.SUMMA' + #13#10 +
  'FROM TRLFACT tf' + #13#10 +
  'left outer join house h on h.code=tf.house' + #13#10 +
  'left outer join street s on s.code=h.street' + #13#10 +
  'left outer join kontragent k on k.code=tf.kontragent' + #13#10 +
  'left outer join mlist m on m.code=tf.mlist' + #13#10 +
  'left outer join mgroup mg on mg.code=m.mgroup';
  Result:=s;
end;

procedure TLRepTR.PrintRepType(var ds: TpFIBDataSet; aType: integer; d1,
  d2: TDateTime);
begin
  with ds do begin
    Close;
    SelectSQL.text:=MakeQuery;
    MainWhereClause:='tf.state=5 and tf.zd between :d1 and :d2 --and mg.code=:grp';
    ParamByName('d1').AsDateTime:=d1;
    ParamByName('d2').AsDateTime:=d2;
    //ParamByName('grp').AsInteger:=aType;
    OrderClause:='tf.KONTRAGENT, k.name, s.name ,h.nomer, m.name, tf.MLIST,tf.HOUSE';
    //GroupByClause:='tf.KONTRAGENT, k.name, s.name ,h.nomer, m.name, tf.MLIST,tf.HOUSE';
    Open;
  end;
end;

{ TMKDRep }

constructor TMKDRep.Create;
begin
  inherited;

end;

procedure TMKDRep.CreateMem(var mt: TdxMemData);
begin
  if mt.FieldCount >2 then
  ClearField(mt);
  CreateField(mt,'HOUSE',ftinteger);
  CreateField(mt,'SNAME',ftstring,128);
  CreateField(mt,'NOMER',ftstring,32);
  CreateField(mt,'SQ',ftCurrency);
  CreateField(mt,'SUMMA',ftCurrency);
  mt.Open;
end;

destructor TMKDRep.Destroy;
begin

  inherited;
end;

procedure TMKDRep.FixSumByHouse(var mt: TdxMemData);
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'SELECT hi.HOUSE,' + #13#10 +
    '       s.name SNAME, h.nomer,' + #13#10 +
    '       h.entrance_cnt sq,' + #13#10 +
    '       hi.TARIF summa' + #13#10 +
    'FROM HOUSEIMMKD hi' + #13#10 +
    'left outer join house h on h.code= hi.house' + #13#10 +
    'left outer join street s on s.code= h.street' + #13#10 +
    'left outer join dogimmkd dg on dg.code=hi.dogimmkd' + #13#10 +
    'where hi.dogimmkd = :DOGImkd');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('DogImkd').AsVariant:= fdogCode;
  try
    Q.ExecQuery;
    while not Q.Eof do begin
      mt.Append;
      mt.FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
      mt.FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
      mt.FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
      mt.FieldByName('SQ').AsCurrency:=Q.FN('SQ').AsCurrency;
      mt.FieldByName('SUMMA').AsCurrency:=Q.FN('SUMMA').AsCurrency;
      mt.Post;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMKDRep.PrintRep(var mt: TdxMemData; DogImkd, aType: Variant);
begin
  fdogCode:= DogImkd;
  fType:= aType;
  CreateMem(mt);
  case aType of
    0 : SumByDog(mt); // расчет от суммы по договору
    1 : SumByCountEntrance(mt); // расчет от площади дома
    2 : FixSumByHouse(mt); // фиксированная сумма по дому
    3 : SumByCountHouse(mt); // расчет от количества домов
  end;
end;

procedure TMKDRep.SumByCountEntrance(var mt: TdxMemData);
var
  Q: TFIBQuery;
  coef, cnt: Currency;
  procedure GetCountEnt;
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmdb.RT,
      'select sum(h.entrance_cnt) summa' + #13#10 +
      'FROM HOUSEIMMKD hi' + #13#10 +
      'left outer join house h on h.code= hi.house' + #13#10 +
      'where hi.dogimmkd = :DOGImkd');
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('DOGImkd').AsVariant:= fdogCode;
    try
      Q.ExecQuery;
      cnt:=Q.FN('SUMMA').AsCurrency;
    finally
      FreeQueryForUse(Q);
    end;
  end;
begin
  coef:=0; cnt:=0;
  Q:=GetQueryForUse(cmdb.RT,
    'SELECT hi.HOUSE,' + #13#10 +
    '       s.name SNAME, h.nomer,' + #13#10 +
    '       h.entrance_cnt sq,' + #13#10 +
    '       dg.TARIF' + #13#10 +
    'FROM HOUSEIMMKD hi' + #13#10 +
    'left outer join house h on h.code= hi.house' + #13#10 +
    'left outer join street s on s.code= h.street' + #13#10 +
    'left outer join dogimmkd dg on dg.code=hi.dogimmkd' + #13#10 +
    'where hi.dogimmkd = :DOGImkd');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('DOGImkd').AsVariant:= fdogCode;
  try
    GetCountEnt;
    Q.ExecQuery;
    while not Q.Eof do begin
      mt.Append;
      mt.FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
      mt.FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
      mt.FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
      mt.FieldByName('SQ').AsCurrency:=Q.FN('SQ').AsCurrency;
      coef:=Q.FN('TARIF').AsCurrency / cnt;
      mt.FieldByName('SUMMA').AsCurrency:= coef * Q.FN('SQ').AsCurrency;
      mt.Post;
      Q.Next;
    end;

  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMKDRep.SumByCountHouse(var mt: TdxMemData);
var
  Q: TFIBQuery;
  cnt :Currency;
  procedure GetCount;
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmdb.RT,
      'select count(hi.HOUSE) cnt' + #13#10 +
      'FROM HOUSEIMMKD hi' + #13#10 +
      'where hi.dogimmkd = :DOGImkd');
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('DogImkd').AsVariant:= fdogCode;
    try
      Q.ExecQuery;
      cnt:= Q.FN('cnt').AsCurrency;
    finally
      FreeQueryForUse(Q);
    end;
  end;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'SELECT hi.HOUSE,' + #13#10 +
    '       s.name SNAME, h.nomer,' + #13#10 +
    '       h.entrance_cnt sq,' + #13#10 +
    '       dg.TARIF summa' + #13#10 +
    'FROM HOUSEIMMKD hi' + #13#10 +
    'left outer join house h on h.code= hi.house' + #13#10 +
    'left outer join street s on s.code= h.street' + #13#10 +
    'left outer join dogimmkd dg on dg.code=hi.dogimmkd' + #13#10 +
    'where hi.dogimmkd = :DOGImkd');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('DogImkd').AsVariant:= fdogCode;
  try
    GetCount;
    Q.ExecQuery;
    while not Q.Eof do begin
      mt.Append;
      mt.FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
      mt.FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
      mt.FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
      mt.FieldByName('SQ').AsCurrency:=Q.FN('SQ').AsCurrency;
      mt.FieldByName('SUMMA').AsCurrency:=Q.FN('SUMMA').AsCurrency / cnt;
      mt.Post;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMKDRep.SumByDog(var mt: TdxMemData);
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'SELECT im.house,' + #13#10 +
    '       s.name SNAME, h.nomer,' + #13#10 +
    '       im.sq, sq.TARIF Summa' + #13#10 +
    'FROM SQIMMKD sq' + #13#10 +
    'left outer join immkd im on im.code = sq.immkd' + #13#10 +
    'left outer join house h on h.code = im.house' + #13#10 +
    'left outer join street s on s.code = h.street' + #13#10 +
    'where sq.dogimmkd = :DogImkd');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('DogImkd').AsVariant:= fdogCode;
  try
    Q.ExecQuery;
    while not Q.Eof do begin
      mt.Append;
      mt.FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
      mt.FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
      mt.FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
      mt.FieldByName('SQ').AsCurrency:=Q.FN('SQ').AsCurrency;
      mt.FieldByName('SUMMA').AsCurrency:=Q.FN('SUMMA').AsCurrency;
      mt.Post;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TFinPlan }

procedure TFinPlan.ClearSum;
var
  Q: TFIBQuery;
  fTable: string;
begin
  case Integer(housesrv) of
    6: begin
         fTable:= 'TRFINPLAN';
       end;
    8: begin
         fTable:= 'TRLFINPLAN';
       end;
  end;
 //очистка SumOst
  Q:=GetQueryForUse(cmDB.WT,
    'update '+fTable + #13#10 +
    'set SUMOST = :SUMOST' + #13#10 +
    'where (Y = :Y)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  try
    Q.ParamByName('Y').AsVariant:=fY;
    Q.ParamByName('SUMOST').AsVariant:=0;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

constructor TFinPlan.Create;
begin
  inherited;

end;

destructor TFinPlan.Destroy;
begin

  inherited;
end;

function TFinPlan.GetFBDRCode: Variant;
var
  Q: TFIBQuery;
begin
  Result:= null;
  Q:=GetQueryForUse(cmDB.RT,
    'select CODE from fbdr where y=:Y and m=12 and housesrv=:houseSrv');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:=fY-1;  // или fY-1
    Q.ParamByName('houseSrv').AsVariant:=housesrv;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinPlan.RecalcOst(Y, aType: Variant);
var
  bdr: Variant;
begin
  case Integer(aType) of
    0: housesrv:=6;
    1: housesrv:=8;
  end;
  fY:=Y;
  bdr:=GetFBDRCode;
  if bdr = null then
    raise EMyException.Create('Отсутствуют записи по "Факт БДР"');
  GetFinPlan(bdr);
end;

procedure TFinPlan.UpdateSum(Q: TFIBQuery);
var
  Upd: TFIBQuery;
  fTable: string;
begin
  case Integer(housesrv) of
    6: begin
         fTable:= 'TRFINPLAN';
       end;
    8: begin
         fTable:= 'TRLFINPLAN';
       end;
  end;
  Upd:=GetQueryForUse(cmDB.WT,
    'update '+fTable + #13#10 +
    'set SUMOST = :SUMOST' + #13#10 +
    'where (Y = :Y) and (HOUSE = :HOUSE)');
  Upd.Options:=[qoStartTransaction, qoAutoCommit];
  try
  while  not Q.Eof do begin
    Upd.ParamByName('SUMOST').AsVariant:=Q.FN('SumOst').AsVariant;
    Upd.ParamByName('HOUSE').AsVariant:=q.FN('house').AsVariant;
    Upd.ParamByName('Y').AsVariant:=fY;
    Upd.ExecQuery;
    Q.Next;
  end;
  finally
    FreeQueryForUse(Upd);
  end;
end;

procedure TFinPlan.GetFinPlan(const bdr: variant);
var
  SQL: string;
  Q: TFIBQuery;
  procedure MakeSQL;
  begin
    case housesrv of
      6: SQL:=
        'select tf.house,F31 SumOst' + #13#10 +
        'from trfinplan tf' + #13#10 +
        'left outer join fbdr2 f on f.house=tf.house' + #13#10 +
        'where fbdr=:fbdr and tf.y=:Y';
      8: SQL:=
        'select tf.house,F30 SumOst' + #13#10 +
        'from trlfinplan tf' + #13#10 +
        'left outer join fbdr3 f on f.house=tf.house' + #13#10 +
        'where fbdr=:fbdr and tf.y=:Y';
    end;
  end;
begin
  MakeSQL;
  Q:=GetQueryForUse(cmDB.RT,SQL);
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:=fY;
    Q.ParamByName('fbdr').AsVariant:=bdr;
    Q.ExecQuery;
    //очищаем суммы
    ClearSum;
    // обновляем суммы
    UpdateSum(Q);
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TdzAct }

constructor TdzAct.Create;
begin
  inherited;
  fIsStreetName:=false;
  MakeSQL;
end;

destructor TdzAct.Destroy;
begin
  FreeSQL;
  inherited;
end;

procedure TdzAct.FreeSQL;
begin
  if Assigned(QAct) then
     FreeQueryForUse(QAct);
  if Assigned(QActList) then
     FreeQueryForUse(QActList);
end;

procedure TdzAct.GetActParam(code: Variant);
begin
  QAct.ParamByName('code').AsVariant:=code;
  QAct.ExecQuery;
  //SetParams
  fKontragent:= QAct.FN('KCODE').AsVariant;
  fKName:= QAct.FN('KNAME').AsVariant;
  fType:= QAct.FN('STYPENAME').AsVariant;
  fHouse:= QAct.FN('HOUSE').AsVariant;
  fNomer:= QAct.FN('NOMER').AsVariant;
  fSname:= QAct.FN('SNAME').AsVariant;
  fKDEZ:=QAct.FN('KDEZ').AsVariant;
  fDogType:=QAct.FN('AType').AsVariant;
  fShowDate:=QAct.FN('ShowDate').AsDateTime;
  fLock:=QAct.FN('LOCK').AsInteger<>0;
end;


function TdzAct.GetNoStruct(house: variant): WideString;
var
  Q :TFIBQuery;
  sql: string;
begin
  Result:='';
  sql:='SELECT LIST(structdefect, '#39','#39') sd FROM HOUSESTRUCT' + #13#10 +
      'where house=:hs';
    Q:=GetQueryForUse(cmDB.RT,sql);
    Q.ParamByName('hs').AsVariant:=house;
    Q.ExecQuery;
  if Q.FN('sd').AsVariant<>null then
  Result:=','+Q.FN('sd').AsWideString+',';
end;

procedure TdzAct.GetTypeTR;
var
  Q_TR, Q_KR,Q_TO: TFIBQuery;
begin
  md_kr.Close; md_kr.Open;
  Q_TR:= GetQueryForUse(cmDB.RT,
      'select m.name TR, s.v' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 1' + #13 +
      #10 + 'and s.v>0 order by s.v');
  Q_TR.ParamByName('srvHouse').AsVariant:=fshowhouse;
  Q_TR.ParamByName('house').AsVariant:= fhouse;
  Q_TR.ExecQuery;
  //
  Q_KR:= GetQueryForUse(cmDB.RT,
      'select m.name KR' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 2');
  Q_KR.ParamByName('srvHouse').AsVariant:=fshowhouse;
  Q_KR.ParamByName('house').AsVariant:= fhouse;
  Q_KR.ExecQuery;
  //
  Q_TO:= GetQueryForUse(cmDB.RT,
      'select m.name STO' + #13#10 +
      'from showresult s' + #13#10 +
      'left outer join mlist m on s.mlist=m.code' + #13#10 +
      'left outer join STRUCTDEFECT sd on s.structdefect=sd.code' + #13#10 +
      'left outer join showstruct ss on sd.showstruct=ss.code' + #13#10 +
      'where s.SHOWHOUSE=:srvHouse and s.house=:house and s.rtype = 0');
  Q_TO.ParamByName('srvHouse').AsVariant:=fshowhouse;
  Q_TO.ParamByName('house').AsVariant:= fhouse;
  Q_TO.ExecQuery;
  //
  with Q_TR do
  while not Eof do begin
    md_kr.Append;
    md_kr.FieldByName('TR').AsString:= FN('TR').AsString;
    md_kr.FieldByName('V').AsVariant:= FN('V').AsVariant;
    md_kr.Post;
    Next;
  end;
  md_kr.First;
  with Q_KR do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('KR').AsString:= FN('KR').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  md_kr.First;
  with Q_TO do
  while not Eof do begin
    if md_kr.Eof then md_kr.Append else
    md_kr.Edit;
    md_kr.FieldByName('TO').AsString:= FN('STO').AsString;
    md_kr.Post;
    Next;
    if not md_kr.Eof then md_kr.Next;
  end;
  FreeQueryForUse(Q_TR);
  FreeQueryForUse(Q_KR);
  FreeQueryForUse(Q_TO);
end;

procedure TdzAct.MakeSQL;
begin
  QAct:= GetQueryForUse(cmDb.RT,
   'select SP.CODE, SP.SHOWHOUSE, K.NAME KNAME,' + #13#10 +
  '       k.code KCODE,' + #13#10 +
  '       case' + #13#10 +
  '         when SH.STYPE = 0 then ''весна''' + #13#10 +
  '         when SH.STYPE = 1 then ''осень''' + #13#10 +
  '       end STYPENAME,' + #13#10 +
  '       SH.STYPE, SP.HOUSE, SP.D1, SP.D2,' + #13#10 +
  '       SP.SHOWDATE, SP.NOTE, SP."LOCK", SP.LOCKDATA,' + #13#10 +
  '       h.nomer, s.Name SNAME, sh.graphlist, s.KDEZ, SD.AType ' + #13#10 +
  'from SHOWHOUSEPLAN SP' + #13#10 +
  'left outer join SHOWHOUSE SH on SH.CODE = SP.SHOWHOUSE' + #13#10 +
  'left outer join SRVDOG SD on SH.SRVDOG = SD.CODE' + #13#10 +
  'left outer join KONTRAGENT K on K.CODE = SD.KONTRAGENT' + #13#10 +
  'left outer join house h on h.code= sp.house' + #13#10 +
  'left outer join street s on s.code = h.street' + #13#10 +
  'where sp.code =:code');
  //
  QActList:= GetQueryForUse(cmDb.RT,
    'select SP.CODE, SP.SHOWHOUSE, SP.HOUSE, SP.D1, SP.D2,' + #13#10 +
    '       SP.SHOWDATE, SP.USERNAME, SP.LASTTIME, SP.NOTE,' + #13#10 +
    '       SP."LOCK", SP.LOCKDATA' + #13#10 +
    'from SHOWHOUSEPLAN SP' + #13#10 +
    'where sp.showhouse = :showhouse');
  //
end;

procedure TdzAct.PrintAct(ShowHousePlan: Variant; Rep: TfrxReport;
  RepPath: string);
begin

end;

procedure TdzAct.ReportPrepare(const report: TfrxReport);
var
  fdb: TfrxFIBDatabase;
  Qfr, Gl, Q_zam :TfrxFIBQuery;
  Q: TFIBQuery;
  Kr :string;
  def :WideString;
  //
  function GetKRList :string;
  var
    Q1 :TFIBQuery;
    s: string;
  begin
    s:='';
    Q1:=GetQueryForUse(cmDB.RT,
     'SELECT hw.CODE, ' + #13#10 +
    '       hw.HOUSE, ' + #13#10 +
    '       hw.MLIST, m.name MName,' + #13#10 +
    '       hw.Y, ' + #13#10 +
    '       hw.ENT, ' + #13#10 +
    '       hw.STREET' + #13#10 +
    'FROM HOUSEKWORK hw' + #13#10 +
    'left outer join mlist m on m.code=hw.mlist' + #13#10 +
    'where hw.house=:house');
    Q1.ParamByName('house').AsVariant:= fHouse;
    Q1.ExecQuery;
    while not Q1.Eof do
    begin
      s:=s+'     '+Q1.FN('Y').AsString+' '+Q1.FN('MName').AsString+' '
          +Q1.FN('ENT').AsString+#13#10;
      Q1.Next;
    end;
    Result:=s;
    FreeQueryForUse(Q1);
  end;

  //менеджер СЭ
  function GetMSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) mse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=1 and mh.house=:house');
    Q.ParamByName('house').AsVariant:=fHouse;
    Q.ExecQuery;
    if Q.FN('mse').AsVariant=null then
    Result:=' ' else
    Result:=Q.FN('mse').AsVariant;
  end;

  //сотрудник ПО закрепленный за домом
  function GetPSE :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select (p.f||'' ''||p.i||'' ''||p.o) pse' +
                              #13#10 +
                              'from mhouse mh' + #13#10 +
                              'left outer join worker w on w.code=mh.worker' +
                              #13#10 +
                              'left outer join piple p on p.code=w.piple' +
                              #13#10 +
                              'where mh.kontragent=:kontr and mh.house=:house');
    Q.ParamByName('kontr').AsVariant:= fKontragent;
    Q.ParamByName('house').AsVariant:= fHouse;
    Q.ExecQuery;
    if Q.FN('pse').AsVariant=null then
    Result:=' ' else
    Result:=Q.FN('pse').AsVariant;
  end;

begin
  if fHouse = null then Exit;
  def:=GetNoStruct(fHouse);
  report.Variables['varRep'] := 1;

  report.Variables['varHouse'] := #39 + fNomer + #39;
  report.Variables['varHouseCod'] := fHouse;
  report.Variables['varStreet'] := #39 + fSname + #39;
  report.Variables['varAkt'] := fShowHouse;
  Kr:= GetKRList;
  if Kr<>'' then
  report.Variables['varKR'] := Kr else
  report.Variables['varKR'] := #39'...'#39;
  Q := GetQueryForUse(cmDB.RT, 'select ATYPE' + #13#10 +
                              'from SRVDOG' + #13#10 +
                              'where KONTRAGENT=:KONTRAGENT and "ACTIVE"=1');
  Q.ParamByName('KONTRAGENT').AsInteger := fKontragent;
  Q.ExecQuery;
    //get director for kontragent
  dzPO.GetInfo(fKontragent);
  report.Variables['varDir'] := #39 +dzPO.Dir + #39;

  //if Q.FN('ATYPE').AsInteger = 1 then report.Variables['varSType'] := 1 else
  //   report.Variables['varSType'] :=0;
  case Q.FN('ATYPE').AsVariant of
    1: report.Variables['varSType'] :=1;  //инженерного оборудования (электрическая часть
    4: report.Variables['varSType'] :=3;  //инженерного оборудования (внутридомовое газовое оборудование
    2: report.Variables['varSType'] :=2;  //инженерного оборудования (Лифтовое оборудование)
    else report.Variables['varSType'] :=0;  //строительных конструкций и инженерного оборудования
  end;
  //report.Variables['varSType'] := QAct.FN('STYPE').AsVariant;
  report.Variables['varASType'] :=#39+ fType +#39;

  report.Variables['varMSE'] :=#39+GetMSE+#39;
  report.Variables['varPSE'] :=#39+GetPSE+#39;

  report.Variables['varKontrName'] :=#39 + fKName + #39;
  //
  Gl := report.FindObject('Gl') as TfrxFIBQuery;
  Gl.Close;
  Gl.SQL.Text:='SELECT g.D3 FROM GRAPHSPEC g' + #13#10 +
              'where g.GRAPHLIST=:gl and g.HOUSE=:house';
  Gl.ParamByName('gl').Value:= QAct.FN('graphlist').AsVariant;
  Gl.ParamByName('house').Value:= fHouse;
  GetTypeTR;
    //
  Qfr := report.FindObject('QDef') as TfrxFIBQuery;
  if def<>'' then
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code' + #13#10 +
                  ' and ( '#39+def+#39'not containing '','' || CODE || '','')';
  end else
  begin
    Qfr.Close;
    Qfr.SQL.Text:='select CODE, SHOWSTRUCT, NAME, NUM, ED' + #13#10 +
                  'from STRUCTDEFECT' + #13#10 +
                  'where SHOWSTRUCT=:mas_code';
  end;
    //
  Q_zam := report.FindObject('Q_zam') as TfrxFIBQuery;
  Q_zam.ParamByName('sh').Value:= fShowHouse;
  Q_zam.ParamByName('h').Value:= fHouse;
  //
  fdb := report.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  //report.PrepareReport(true);
  //FreeQueryForUse(Q);
end;

function TdzAct.GetFileName: string;
  const
    Digits = '0123456789_';
  var
    i: integer;
    Nom: string;
  begin
    //имя файла
    if fIsStreetName then
      Result:=fSName
    else
      Result:=fKDEZ;
    //номер дома
    Nom:=fNomer;
    Nom:= cmReplaceWord(Nom,#32,'_');
    Nom:= cmReplaceWord(Nom,'-','_');
    Nom:= cmReplaceWord(Nom,'/','_');
    for i:=1 to Length(Nom) do
      if (Pos(Nom[i], Digits)=0) then
      begin
        Insert('_',Nom,i);
        Break;
      end;
    Result:=Result+'+'+Nom+'+'+IntToStr(fDogType)+'+'+FormatDateTime('YYYYMMDD', fShowDate);
  end;

procedure TdzAct.SaveRepPDF(ShowHousePlan: Variant; Rep: TfrxReport; PDF: TfrxPDFExport;
  mem: TdxMemData; RepPath: string; pdfPath: string);
var
  FName: string;
begin
  md_kr:= mem;
  if ShowHousePlan = Null then begin
    QActList.ParamByName('showhouse').AsVariant:= fShowHouse;
    QActList.ExecQuery;
    SplashVisibility(True,'Подождите. идет сохранение...');
    try
      while not QActList.Eof do begin
        GetActParam(QActList.FN('CODE').AsVariant);
        if fLock then
        begin
          //prepare report
          Rep.LoadFromFile(RepPath);
          ReportPrepare(Rep);
          //save report
          FName:= '\'+VarToStr(fShowHouse)+'\'+GetFileName+'.pdf';
          pdf.FileName:= pdfPath+FName;
          if not DirectoryExists(pdfPath+'\'+VarToStr(fShowHouse)) then
            if not CreateDir(pdfPath+'\'+VarToStr(fShowHouse)) then
              raise EMyException.Create('Ошибка при создании директории!'+#10#13+
                pdfPath+'\'+VarToStr(fShowHouse));
          Rep.ShowProgress:= False;
          Rep.PrepareReport();
          //
          PDF.ShowDialog:= False;
          PDF.OnBeginExport:=nil;
          Rep.Export(pdf);
        end;
        SetCapt(IntToStr(QActList.RecordCount));
        QActList.Next;
      end;
    finally
      SplashVisibility(false);
    end;
  end else begin
      GetActParam(ShowHousePlan);
      //prepare report
      Rep.LoadFromFile(RepPath);
      ReportPrepare(Rep);
      //save report
      FName:= '\'+VarToStr(fShowHouse)+'\'+VarToStr(fSname)+'_'+
                                cmReplaceWord(VarToStr(fNomer),'/','-')+'.pdf';
      pdf.FileName:= pdfPath+FName;
      if not DirectoryExists(pdfPath+'\'+VarToStr(fShowHouse)) then
        if not CreateDir(pdfPath+'\'+VarToStr(fShowHouse)) then
        raise EMyException.Create('Ошибка при создании директории!'+#10#13+
                  pdfPath+'\'+VarToStr(fShowHouse));
      Rep.ShowProgress:= False;
      Rep.PrepareReport();
      //
      PDF.ShowDialog:= False;
      PDF.OnBeginExport:=nil;
      Rep.Export(pdf);
  end;
end;

{ TdzJurnal }

constructor TdzJurnal.Create;
begin
  inherited;

end;

procedure TdzJurnal.DeleteFromJurnal(kontr: variant);
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDb.WT,
      'delete from JWORK' + #13#10 +
      'where CODE in' + #13#10 +
      '      (SELECT CODE FROM JWORK' + #13#10 +
      '        WHERE KONTRAGENT=:KONTRAGENT AND SHOWRESULT IS NULL' + #13#10 +
      '              AND WORKSPECLIST IS NULL AND PLANDATE IS NULL)');
  Q.Options:=[qoAutoCommit, qoStartTransaction];
  try
    Q.ParamByName('KONTRAGENT').AsVariant:= kontr;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

destructor TdzJurnal.Destroy;
begin

  inherited;
end;

procedure TdzJurnal.MoveToArhiv(kontr: variant);
var
  Q: TFIBQuery;
begin
  if kontr=null then
    raise dezException.Create('Ошибка перемещения в архив из журнала!'#10#13+
                              'Код подрядной организации не может быть пустым.');
  Q:=GetQueryForUse(cmDb.WT,
      'INSERT INTO JWORK_ARC (CODE, JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, ' +
      'DESCRIPTION,' + #13#10 +
      '                       PLACE, PLANDATE, FACTDATE, NOTE, SHOWRESULT,' +
      #13#10 +'                       WORKSPECLIST, STREET)' + #13#10 +
      'SELECT CODE, JWORKTYPE, REGDATE, KONTRAGENT, HOUSE, DESCRIPTION, ' +
      'PLACE, PLANDATE,' + #13#10 +
      '       FACTDATE, NOTE, SHOWRESULT, WORKSPECLIST, STREET' + #13#10 +
      'FROM JWORK' + #13#10 +
      'WHERE KONTRAGENT=:KONTRAGENT AND SHOWRESULT IS NOT NULL AND WORKSPECLIST IS NULL AND' +
      #13#10 +'      PLANDATE IS NULL');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('KONTRAGENT').AsVariant:= kontr;
    Q.ExecQuery;
    // delete
    DeleteFromJurnal(kontr);
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TdzOrder }

constructor TdzOrder.Create;
begin
  inherited;

end;

destructor TdzOrder.Destroy;
begin

  inherited;
end;

procedure TdzOrder.PrintOrder(OrderCode: variant; Rep: TfrxReport; repFName: string ='');
var
  fdb: TfrxFIBDatabase;
  varManager, varDir: string;
  dirName, dirCODE :Variant;

  procedure GetReportParams;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.RT,
      'SELECT wl.KONTRAGENT, (p.f||'' ''||p.i||'' ''||p.o) fio' +#13#10+
      'FROM WORKLIST wl' +#13#10+
      'left outer join mhouse mh on mh.house=wl.house and mh.kontragent=wl.kontragent' +#13#10+
      'left outer join worker w on w.code=mh.worker' +#13#10+
      'left outer join piple p on p.code=w.piple' +#13#10+
      'WHERE wl.CODE = :OrderCode');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('OrderCode').AsVariant:= OrderCode;
      Q.ExecQuery;
      // set params
      varManager:= #39+Q.FN('fio').AsString+#39;
      GetDir(dirCODE, dirName, Q.FN('KONTRAGENT').AsVariant);
      varDir:=#39+VarToStr(dirName)+#39;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  // check variables
  if OrderCode = null then
    raise dezException.Create('Не указан код наряда!');
  if repFName = '' then
     repFName:= ExtractFilePath(Application.ExeName)+ 'rep\attire.fr3';
  // get params report
  GetReportParams;
  // make report
  with Rep do begin
    LoadFromFile(repFName);
    Variables['varCode'] := OrderCode;
    Variables['varManager'] := varManager;
    Variables['varDir'] := varDir;
    fdb := FindObject('fdb1') as TfrxFIBDatabase;
  end;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  Rep.ShowReport();
end;

initialization

finalization


end.




























