unit dezHouseReport;

interface

uses
  SysUtils, Classes,Dialogs, cmUtils, cmDBUnit, cmLoadDataSet, FIBQuery, dezLoadData,
  dxmdaset, AppUtils, DB;

type

  TdezHouseReport = class
  private
    T: TdxMemdata;
    fM1,fM2,fY1,fY2,fHouse: integer;
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
    GSNB, GSN, GNach, GOpl, GSK, GR, GOI: currency;
    procedure ScanSrv6;
    procedure ScanSrv8;
    procedure ScanSrv(aSrv: integer; aSrvName: string; aNum: integer);
    procedure Msg(S: string);
    procedure Progress(ACount, APosition: integer);
    procedure AddRec(FName, aNum, aName: string; aSum: currency);
    function GetFN(FName: string): currency;
    procedure AddItog;
  public
    property M1: integer read fM1 write fM1;
    property Y1: integer read fY1 write fY1;
    property M2: integer read fM2 write fM2;
    property Y2: integer read fY1 write fY2;
    property House: integer read fHouse write fHouse;
    property FN[FName: string]: currency read GetFN;
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    constructor Create(aT: TdxMemdata);
    procedure Execute;
  end;

implementation

{ TdezHouseReport }

procedure TdezHouseReport.AddItog;
begin
  AddRec('FG0', '', 'Баланс на начало отчетного периода, всего', GSNB);
  AddRec('FG1', '', 'Задолженность на начало отчетного периода, всего', GSN);
  AddRec('FG2', '', 'Начислено, всего', GNach);
  AddRec('FG3', '', 'Поступило, всего', GOpl);
  AddRec('FG4', '', 'Задолженность на конец отчетного периода', GSK);
  AddRec('FG5', '', 'Расходы, всего', GR);
  AddRec('FG6', '', 'Остаток от поступивших денежных средств, всего', GSNB+(GNach-GR)+GOI);
end;

procedure TdezHouseReport.AddRec(FName, aNum, aName: string; aSum: currency);
begin
  T.Append;
  T.FieldByName('F').AsString:=FName;
  T.FieldByName('Num').AsString:=aNum;
  T.FieldByName('Name').AsString:=aName;
  if ASum<>0 then
    T.FieldByName('R').AsCurrency:=aSum;
  T.Post;
end;

constructor TdezHouseReport.Create(aT: TdxMemdata);
begin
  T:=aT;
  T.Close;
  T.Fields.Clear;
  T.FieldDefs.Clear;
  CreateField(T,'F',ftString, 32);    //имя поля
  CreateField(T,'Num',ftString, 32);    //порядковый номер
  CreateField(T,'Name',ftString, 256);  //фильтр
  CreateField(T,'R', ftCurrency); //число лицевых счетов
  T.Open;
end;

procedure TdezHouseReport.Msg(S: string);
begin
  if Assigned(OnMessage) then OnMessage(S);
end;

procedure TdezHouseReport.Progress(ACount, APosition: integer);
begin
  if Assigned(OnProgress) then
    OnProgress(ACount, APosition);
end;

procedure TdezHouseReport.ScanSrv(aSrv: integer; aSrvName: string; aNum: integer);
var
  Q, Q1: TFIBQuery;
  SNB, SN, Nach, Opl, SK, R1, R2, R3: currency;
  IsStartSaldo: boolean;

  procedure ScanTable;
  begin
    Q1.ParamByName('Code').AsInteger:=Q.FN('Code').AsInteger;
    Q1.ParamByName('House').AsInteger:=House;
    Q1.ExecQuery;
    if Q1.Eof then Exit;
    if IsStartSaldo then
    begin
      SNB:=Q1.FN('F12').AsCurrency;
      SN:=Q1.FN('F6').AsCurrency+Q1.FN('F20').AsCurrency;
      IsStartSaldo:=false;
    end;                                                     //это справка из за нее сальдо с БДР не идет
    Nach:=Nach+Q1.FN('F7').AsCurrency+Q1.FN('F21').AsCurrency{+Q1.FN('F26').AsCurrency};
    Opl:=Opl+Q1.FN('F8').AsCurrency+Q1.FN('F22').AsCurrency{+Q1.FN('F27').AsCurrency};
    SK:=Q1.FN('F11').AsCurrency+Q1.FN('F24').AsCurrency;
    R1:=R1+Q1.FN('F16').AsCurrency;  //оплата ПО
    R2:=R2+Q1.FN('F14').AsCurrency+Q1.FN('F23').AsCurrency; //плата УК
    R3:=R3+Q1.FN('F15').AsCurrency;  //комиссионный сбор
    cmDB.FreeQuery(Q1);
  end;

begin
  Msg(aSrvName+'...');
  //инициализируем начальные параметры
  SNB:=0;
  SN:=0;
  Nach:=0;
  Opl:=0;
  SK:=0;
  R1:=0;
  R2:=0;
  R3:=0;
  //получаем данные из таблиц факта
  Q:=cmDB.GetQuery('select * from FBDR where Y between :Y1 and :Y2 '+
    'and M between :M1 and :M2 and HouseSrv=:Srv ORDER BY Y,M', cmDB.WT);
  Q.ParamByName('Y1').AsInteger:=Y1;
  Q.ParamByName('Y2').AsInteger:=Y2;
  Q.ParamByName('M1').AsInteger:=M1;
  Q.ParamByName('M2').AsInteger:=M2;
  Q.ParamByName('Srv').AsInteger:=aSrv;
  Q.ExecQuery;

  Q1:=cmDB.GetQuery('select * from FBDR1 where FBDR=:Code and House=:House', cmDB.WT);

  IsStartSaldo:=true;
  while not Q.Eof do
  begin
    ScanTable;
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
  cmDB.FreeQuery(Q1);
  //формируем строки таблицы
  AddRec('F'+IntToStr(ANum), IntToStr(ANum), aSrvName, 0);
  AddRec('F'+IntToStr(ANum)+'_0', IntToStr(ANum)+'.0', 'Баланс на начало отчетного периода', SNB);
  AddRec('F'+IntToStr(ANum)+'_1', IntToStr(ANum)+'.1', 'Задолженность на начало отчетного периода', SN);
  AddRec('F'+IntToStr(ANum)+'_2', IntToStr(ANum)+'.2', 'Начислено', Nach);
  AddRec('F'+IntToStr(ANum)+'_3', IntToStr(ANum)+'.3', 'Поступило денежных средств', Opl);
  AddRec('F'+IntToStr(ANum)+'_4', IntToStr(ANum)+'.4', 'Задолженность на конец отчетного периода', SK);
  AddRec('F'+IntToStr(ANum)+'_5', IntToStr(ANum)+'.5', 'Расходы, всего', R1+R2+R3);
  AddRec('F'+IntToStr(ANum)+'_5_', '', 'в том числе', 0);
  AddRec('F'+IntToStr(ANum)+'_5_1', IntToStr(ANum)+'.5.1', 'Оплата работ подрядным организациям', R1);
  AddRec('F'+IntToStr(ANum)+'_5_2', IntToStr(ANum)+'.5.2', 'Плата за управление', R2);
  AddRec('F'+IntToStr(ANum)+'_5_3', IntToStr(ANum)+'.5.3', 'Прочие расходы (банковские расходы)', R3);
  AddRec('F'+IntToStr(ANum)+'_6', IntToStr(ANum)+'.6',
    'Остаток + дефицит/ профицит (стр.'+IntToStr(ANum)+'.2.-стр.'+IntToStr(ANum)+'.5.)', SNB+(Nach-(R1+R2+R3)));
  //глобальные параметры
  GSNB:=GSNB+SNB;
  GSN:=GSN+SN;
  GNach:=GNach+Nach;
  GOpl:=GOpl+Opl;
  GSK:=GSK+SK;
  GR:=GR+(R1+R2+R3);
end;

procedure TdezHouseReport.ScanSrv6;
var
  Q,Q1,Qoi: TFIBQuery;
  SNB, SN, Nach, Opl, SK, SKB: currency;
  TRO, TRE, TOO, TOE, Comm, Drtz, ODS, KV, UK, Pr, Rash, OI: currency;
  IsStartSaldo: boolean;

  procedure ScanFactTable;
  var
    DataOI: TDateTime;
    NDS: currency;
  begin
    Q1.ParamByName('Code').AsInteger:=Q.FN('Code').AsInteger;
    Q1.ParamByName('House').AsInteger:=House;
    Q1.ExecQuery;
    if Q1.Eof then Exit;

    //получаем обороты по ОИ
    DataOI:=EncodeDate(Q.FN('Y').AsInteger, Q.FN('M').AsInteger, 1);
    Qoi.ParamByName('Data').AsDate:=DataOI;
    Qoi.ParamByName('House').AsInteger:=House;
    Qoi.ExecQuery;
    NDS:=0;
    {if not Qoi.Eof then
    begin
      //НДС - в прочие расходы
      NDS:=Qoi.FN('RSum').AsCurrency/118*18;
      //Плата за управление по ОИ
      RSum_:=Qoi.FN('RSum').AsCurrency-Qoi.FN('RSum1').AsCurrency-NDS;
    end}

    //расчет общих сумм
    if IsStartSaldo then
    begin
      SNB:=Q1.FN('F17').AsCurrency;
      SN:=Q1.FN('F6').AsCurrency+Q1.FN('F12').AsCurrency;
      if not Qoi.Eof then
        SN:=SN+Qoi.FN('Saldo').AsCurrency;
      IsStartSaldo:=false;
    end;
    //это справка из-за нее сальдо не идет с БДР
    Nach:=Nach+Q1.FN('F7').AsCurrency+Q1.FN('F13').AsCurrency{+Q1.FN('F32').AsCurrency};
    Opl:=Opl+Q1.FN('F8').AsCurrency+Q1.FN('F14').AsCurrency{+Q1.FN('F33').AsCurrency};
    OI:=OI+Q1.FN('F34').AsCurrency;
    //оплата по общему имуществу - увеличиваем обороты
    if not Qoi.Eof then
    begin
      //Nach:=Nach+Qoi.FN('PSum1').AsCurrency;
      //Opl:=Opl+Qoi.FN('RSum1').AsCurrency;
      //SK:=SK+Qoi.FN('Saldo').AsCurrency+Qoi.FN('PSum1').AsCurrency-
      //  Qoi.FN('RSum1').AsCurrency;
    end;
    TRO:=TRO+Q1.FN('F21').AsCurrency;
    TRE:=TRE+Q1.FN('F22').AsCurrency;
    TOO:=TOO+Q1.FN('F23').AsCurrency;
    TOE:=TOE+Q1.FN('F24').AsCurrency;
    Drtz:=Drtz+Q1.FN('F27').AsCurrency;
    ODS:=ODS+Q1.FN('F25').AsCurrency;
    KV:=KV+Q1.FN('F26').AsCurrency;
    UK:=UK+Q1.FN('F15').AsCurrency+Q1.FN('F19').AsCurrency;
    Comm:=Comm+Q1.FN('F20').AsCurrency+NDS+Q1.FN('F29').AsCurrency+
      Q1.FN('F35').AsCurrency+Q1.FN('F28').AsCurrency;
    Pr:=Pr+Q1.FN('F29').AsCurrency;
    Rash:=Rash+Q1.FN('F30').AsCurrency;
    SKB:=Q1.FN('F31').AsCurrency;
  end;

begin
  Msg('Обслуживание и ремонт...');
  //инициализируем начальные параметры
  SNB:=0;
  SN:=0;
  Nach:=0;
  Opl:=0;
  TRO:=0;
  TRE:=0;
  TOO:=0;
  TOE:=0;
  Drtz:=0;
  ODS:=0;
  KV:=0;
  UK:=0;
  Comm:=0;
  Pr:=0;
  OI:=0;
  Rash:=0;
  //запрос для сумм по ОИ
  Qoi:=cmDB.GetQuery('select Sum(Saldo1) Saldo, Sum(PSum) PSum, Sum(RSum) RSum, '+
    'Sum(PSum1) PSum1, Sum(RSum1) RSum1'+
    ' from HMoveImMKD where Data=:Data and '+
    ' House=:House and DType<>4', cmDB.WT);
  //получаем данные из таблиц факта
  Q:=cmDB.GetQuery('select * from FBDR where Y between :Y1 and :Y2 '+
    'and M between :M1 and :M2 and HouseSrv=6 ORDER BY Y,M', cmDB.WT);
  Q.ParamByName('Y1').AsInteger:=Y1;
  Q.ParamByName('Y2').AsInteger:=Y2;
  Q.ParamByName('M1').AsInteger:=M1;
  Q.ParamByName('M2').AsInteger:=M2;
  Q.ExecQuery;
  Q1:=cmDB.GetQuery('select * from FBDR2 where FBDR=:Code and House=:House', cmDB.WT);

  IsStartSaldo:=true;
  while not Q.Eof do
  begin
    ScanFactTable;
    Q.Next;
  end;
  Comm:=Rash-(TRO+TRE+TOO+TOE+DRTZ+ODS+KV+UK);
  SK:=SN+Nach-Opl;  //конечное сальдо
  //SKB:=SNB+Nach-Rash; //конечный баланс - загружаем
  cmDB.FreeQuery(Q);
  cmDB.FreeQuery(Q1);
  cmDB.FreeQuery(Qoi);
  //формируем строки таблицы
  AddRec('F1', '1', 'Содержание и ремонт', 0);
  AddRec('F1_1_0', '1.0', 'Баланс на начало отчетного периода', SNB);
  AddRec('F1_1_1', '1.1', 'Задолженность на начало отчетного периода', SN);
  AddRec('F1_1_2', '1.2', 'Начислено', Nach);
  AddRec('F1_1_3', '1.3', 'Поступило денежных средств', Opl);
  AddRec('F1_1_4', '1.4', 'Задолженность на конец отчетного периода', SK);
  AddRec('F1_1_5', '1.5', 'Расходы, всего', Rash);
  AddRec('F1_1_5_', '', 'в том числе', 0);
  AddRec('F1_1_5_1', '1.5.1', 'Текущий ремонт, всего', TRO+TRE);
  AddRec('F1_1_5_1_', '', 'в том числе', 0);
  AddRec('F1_1_5_1_1', '', '  сантехнические, общестроительные работы', TRO);
  AddRec('F1_1_5_1_2', '', '  электромонтажные работы', TRE);
  AddRec('F1_1_5_2', '1.5.2', 'Техническое обслуживание, всего', TOO+TOE);
  AddRec('F1_1_5_2_', '', 'в том числе', 0);
  AddRec('F1_1_5_2_1', '', '  сантехнические, общестроительные работы', TOO);
  AddRec('F1_1_5_2_2', '', '  электромонтажные работы', TOE);
  AddRec('F1_1_5_3', '1.5.3', 'Дератизация', Drtz);
  AddRec('F1_1_5_4', '1.5.4', 'Электроэнергия на места общественного пользования', 0);
  AddRec('F1_1_5_5', '1.5.5', 'Диспетчерское обслуживание', ODS);
  AddRec('F1_1_5_6', '1.5.6', 'Доставка и распечатка квитанций', KV);
  AddRec('F1_1_5_7', '1.5.7', 'Плата за управление', UK);
  AddRec('F1_1_5_8', '1.5.8', 'Прочие расходы', Comm);
  AddRec('F1_1_6', '1.6', 'Дополнительные средства (по оплате)', OI);
  AddRec('F1_1_7', '1.7', 'Остаток + дефицит/ профицит (стр.1.0+стр.1.2.-стр.1.5+стр.1.6)', SKB);//SNB+(Nach-(TRO+TRE+TOO+TOE+drtz+ODS+KV+UK+Comm+Pr)));
  //глобальные параметры
  GSNB:=GSNB+SNB;
  GSN:=GSN+SN;
  GNach:=GNach+Nach;
  GOpl:=GOpl+Opl;
  GSK:=GSK+SK;
  GOI:=GOI+OI;
  GR:=GR+Rash;//(TRO+TRE+TOO+TOE+drtz+ODS+KV+UK+Comm+Pr);
end;

procedure TdezHouseReport.ScanSrv8;
var
  Q, Q1: TFIBQuery;
  SNB, SN, Nach, Opl, SK: currency;
  TR, Osv, Exp, ABC, LDSS, Kab, UK, Comm, Rash: currency;
  IsStartSaldo: boolean;

  procedure ScanFactTable;
  begin
    Q1.ParamByName('Code').AsInteger:=Q.FN('Code').AsInteger;
    Q1.ParamByName('House').AsInteger:=House;
    Q1.ExecQuery;
    if Q1.Eof then Exit;
    if IsStartSaldo then
    begin
      SNB:=Q1.FN('F16').AsCurrency;
      SN:=Q1.FN('F6').AsCurrency+Q1.FN('F12').AsCurrency;
      IsStartSaldo:=false;
    end;                                                     //это справка - из за нее сальдо с БДР не идет
    Nach:=Nach+Q1.FN('F7').AsCurrency+Q1.FN('F13').AsCurrency{+Q1.FN('F31').AsCurrency};
    Opl:=Opl+Q1.FN('F8').AsCurrency+Q1.FN('F14').AsCurrency{+Q1.FN('F32').AsCurrency};
    SK:=Q1.FN('F11').AsCurrency+Q1.FN('F15').AsCurrency;
    TR:=TR+Q1.FN('F26').AsCurrency+Q1.FN('F27').AsCurrency;
    Osv:=Osv+Q1.FN('F22').AsCurrency;
    Exp:=Exp+Q1.FN('F23').AsCurrency;
    ABC:=ABC+Q1.FN('F24').AsCurrency;
    LDSS:=LDSS+Q1.FN('F25').AsCurrency;
    Kab:=Kab+Q1.FN('F21').AsCurrency;
    UK:=UK+Q1.FN('F18').AsCurrency+Q1.FN('F19').AsCurrency;
    Comm:=Comm+Q1.FN('F20').AsCurrency;
    Rash:=Rash+Q1.FN('F29').AsCurrency;
  end;

begin
  Msg('Обслуживание и ремонт лифта...');
  //инициализируем начальные параметры
  SNB:=0;
  SN:=0;
  Nach:=0;
  Opl:=0;
  SK:=0;
  UK:=0;
  Comm:=0;
  TR:=0;
  Osv:=0;
  Exp:=0;
  ABC:=0;
  LDSS:=0;
  Kab:=0;
  Rash:=0;
  //получаем данные из таблиц факта
  Q:=cmDB.GetQuery('select * from FBDR where Y between :Y1 and :Y2 '+
    'and M between :M1 and :M2 and HouseSrv=8 ORDER BY Y,M', cmDB.WT);
  Q.ParamByName('Y1').AsInteger:=Y1;
  Q.ParamByName('Y2').AsInteger:=Y2;
  Q.ParamByName('M1').AsInteger:=M1;
  Q.ParamByName('M2').AsInteger:=M2;
  Q.ExecQuery;
  Q1:=cmDB.GetQuery('select * from FBDR3 where FBDR=:Code and House=:House', cmDB.WT);

  IsStartSaldo:=true;
  while not Q.Eof do
  begin
    ScanFactTable;
    Q.Next;
  end;
  cmDB.FreeQuery(Q);
  cmDB.FreeQuery(Q1);
  Comm:=Rash-(UK+TR+Osv+Exp+ABC+LDSS+Kab);
  //формируем строки таблицы
  AddRec('F5', '5', 'Содержание и ремонт лифта', 0);
  AddRec('F5_1_0', '5.0', 'Баланс на начало отчетного периода', SNB);
  AddRec('F5_1_1', '5.1', 'Задолженность на начало отчетного периода', SN);
  AddRec('F5_1_2', '5.2', 'Начислено', Nach);
  AddRec('F5_1_3', '5.3', 'Поступило денежных средств', Opl);
  AddRec('F5_1_4', '5.4', 'Задолженность на конец отчетного периода', SK);
  AddRec('F5_1_5', '5.5', 'Расходы, всего', Rash);
  AddRec('F5_1_5_', '', 'в том числе', 0);
  AddRec('F5_1_5_1', '5.5.1', 'Техническое обслуживание, текущий ремонт', TR);
  AddRec('F5_1_5_2', '5.5.2', 'Техническое освидетельствование', Osv);
  AddRec('F5_1_5_3', '5.5.3', 'Экспертиза', Exp);
  AddRec('F5_1_5_4', '5.5.4', 'ABC', ABC);
  AddRec('F5_1_5_5', '5.5.5', 'ЛДСС', LDSS);
  AddRec('F5_1_5_6', '5.5.6', 'Уборка кабины лифта', Kab);
  AddRec('F5_1_5_7', '5.5.7', 'Электроэнергия', 0);
  AddRec('F5_1_5_8', '5.5.8', 'Плата за управление', UK);
  AddRec('F5_1_5_9', '5.5.9', 'Прочие расходы (банковские расходы)', Comm);
  AddRec('F5_1_6', '5.6', 'Остаток + дефицит/ профицит (стр.5.0+стр.5.2.-стр.5.5.)', SNB+(Nach-(UK+Comm+TR+Osv+Exp+ABC+LDSS+Kab)));
  //глобальные параметры
  GSNB:=GSNB+SNB;
  GSN:=GSN+SN;
  GNach:=GNach+Nach;
  GOpl:=GOpl+Opl;
  GSK:=GSK+SK;
  GR:=GR+(UK+Comm+TR+Osv+Exp+ABC+LDSS+Kab);
end;

procedure TdezHouseReport.Execute;
begin
  GSN:=0;
  GNach:=0;
  GOpl:=0;
  GSK:=0;
  GR:=0;
  GOI:=0;
  T.Close;
  T.Open;
  ScanSrv6;
  ScanSrv(3, 'Уборка подъезда', 2);
  ScanSrv(9, 'Уборка мусоропровода', 3);
  ScanSrv(2, 'Уборка придомовой территории', 4);
  ScanSrv8;
  ScanSrv(1, 'Вывоз ТБО', 6);
  ScanSrv(5, 'Газовое оборудование', 7);
  AddItog;
end;

function TdezHouseReport.GetFN(FName: string): currency;
begin
  if T.Locate(FName, FName, []) then
    Result:=T.FieldByName('R').AsCurrency
  else
    Result:=0;
end;

end.
