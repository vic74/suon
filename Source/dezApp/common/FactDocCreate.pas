unit FactDocCreate;

interface

uses
  Classes, SysUtils, Windows, DB, IniFiles,DateUtils,
  Forms, Controls,FIBQuery, pFIBCacheQueries, pFIBProps,Variants,
  FIBDataSet, pFIBDataSet,
  cxPropertiesStore, cxLabel, dxSkinsDefaultPainters, dxSkinsCore, cxEdit,
  Graphics, Messages, Dialogs, SingletonTemplate, cmDBUnit;

Type
{ TFactDoc }

  TFactDoc = class(TSingleton)
  private
    fFDCOD :Variant;
    fBDRCOD :Variant;
    fMMO :TStrings;
  protected
    constructor Create; override;
    function GetCodFactDoc(m, y, srv: Variant) :Variant;

  public
    destructor Destroy; override;
  published
    procedure CreateDoc(m,y,srv :Variant);
    procedure Correct(m,y,srv :Variant);
    property FDCOD: Variant read fFDCOD write fFDCOD;
    property BDRCOD: Variant read fBDRCOD write fBDRCOD;
    property MMO :TStrings read fMMO write fMMO;
  end;

Type
{ TFact1Doc }

  TFact1Doc = class(TSingleton)
  private
    fF1DCOD :Variant;
    fBDRCOD :Variant;
    ds_FACTDOCLIST :TpFIBDataSet;
    fMMO :TStrings;
  protected
    constructor Create; override;
    function GetCodFact1Doc(m, y, srv: Variant) :Variant;
    procedure GetParamBDR(var bdr, srv, tbl, fld: Variant; housesrv,m,y :Variant);
    procedure GetODS(m, y, srv: Variant);
    procedure OpenFACTDOCLIST;
  public

    destructor Destroy; override;
  published
    procedure CreateDoc1(m,y,srv :Variant);
    procedure CorrectDoc1(m,y,srv :Variant);
    property F1DCOD: Variant read fF1DCOD write fF1DCOD;
    property BDRCOD: Variant read fBDRCOD write fBDRCOD;
    property MMO :TStrings read fMMO write fMMO;
  end;



  function FactDoc: TFactDoc;
  function Fact1Doc: TFact1Doc;

implementation

uses AppUtils;

function FactDoc: TFactDoc;
begin
  Result:=TFactDoc.GetInstance;
end;
function Fact1Doc: TFact1Doc;
begin
  Result:=TFact1Doc.GetInstance;
end;
{ TFactDoc }

procedure TFactDoc.Correct(m, y, srv: Variant);
var
  Q,Q1,Q2,Q3 :TFibQuery;
  cod :Variant;
  hs :WideString;
  //
  procedure MakeSQL;
  begin
    // дома из БДР
    Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                              + #13#10 +
                              'FROM PBDR1 sd' + #13#10 +
                              'WHERE sd.PBDR = :FBD');
    //код БДР
    Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    //очищаем поле CORRECT  FACTSUM = PLANSUM
    Q2:=GetQueryForUse(cmDB.WT,'update FACTDOCLIST' + #13#10 +
                              'set FACTSUM = PLANSUM,' + #13#10 +
                              '    CORRECT = 0' + #13#10 +
                              'where (FACTDOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
  end;
  //
  procedure FreeSQL;
  begin
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;

  function GetCodBDR :Variant;
  begin
    Q1.ParamByName('Y').AsVariant:=Y;
    Q1.ParamByName('M').AsVariant:=M;
    Q1.ParamByName('srv').AsVariant:=srv;
    Q1.ExecQuery;
    Result:=Q1.FN('CODE').AsVariant;
  end;

  function GetHouse :WideString;
  begin
    Result:='';
    Q.ParamByName('FBD').AsVariant:=cod;
    Q.ExecQuery;
    if Q.FN('house').AsVariant<>null then
    result:=Q.FN('house').AsWideString;
  end;

  procedure GetSum;
  var
    d1,d2 :TDateTime;
    Q :TFIBQuery;
  begin
    d1:=StartOfAMonth(Y,M);
    d2:=EndOfAMonth(Y,M)-1;

    Q3:=GetQueryForUse(cmDB.RT,
        'select OC.HOUSE, Sum(OC.SUMMA) SUMMA' + #13#10 +
        'from OUTCASHBDR OC' + #13#10 +
        'where OC.DATA between :D1 and :D2 and oc.housesrv=:srv and' + #13#10 +
        '('+hs+' containing '','' || OC.HOUSE || '','')' + #13#10 +
        'group by oc.house');
    Q3.ParamByName('D1').AsVariant:=d1;
    Q3.ParamByName('D2').AsVariant:=d2;
    Q3.ParamByName('srv').AsVariant:=srv;
    Q3.ExecQuery;
    Q:=GetQueryForUse(cmDB.WT,
      'update FACTDOCLIST' + #13#10 +
      'set FACTSUM = PLANSUM- :FACTSUM,' + #13#10 +
      '    CORRECT = :CORRECT' + #13#10 +
      'where FACTDOC = :FACTDOC and HOUSE = :HOUSE');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    MMO.Add('Корректиркем документ №'+VarToStr(FDCOD));
    try
      while not Q3.Eof do begin
        Q.ParamByName('FACTDOC').AsVariant:=FDCOD;
        Q.ParamByName('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
        Q.ParamByName('FACTSUM').AsVariant:=Q3.FN('SUMMA').AsVariant;
        Q.ParamByName('CORRECT').AsVariant:=Q3.FN('SUMMA').AsVariant;
        Q.ExecQuery;
        Q3.Next;
      end;
    finally
      FreeQueryForUse(Q);
      MMO.Add('Коррекция завершена.');
    end;
  end;

begin
  try
    FDCOD:=GetCodFactDoc(m, y, srv);
    if FDCOD=null then Exit;
    //формируем запросы
    MakeSQL;
    //код БДР
    cod:=GetCodBDR;
    //услуга
    if (srv=null) or (srv=6) or (srv=8) then
    begin
      FreeSQL;
      Exit;
    end;
    //список домов
    hs:=GetHouse;
    if hs<>'' then hs:=#39+hs+#39 else
    begin
      FreeSQL;
      Exit;
    end;
    //очищаем поле CORRECT  FACTSUM = PLANSUM
    Q2.ParamByName('FD').AsVariant:=FDCOD;
    Q2.ExecQuery;
    //получаем суммы и корректируем
    GetSum;
    //
    FreeSQL;
  finally

  end;
end;

constructor TFactDoc.Create;
begin
  inherited Create;
  MMO :=TStrings.Create;
end;

procedure TFactDoc.CreateDoc(m, y, srv: Variant);
var
  Q,Q1,Q2,Q3,Q4 :TFibQuery;
  hs :WideString;
  dg :Variant;
  //
  procedure MakeSQL;
  begin
    // дома из договора
    Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                              + #13#10 +
                              'FROM SRVDOGHOUSE sd' + #13#10 +
                              'WHERE sd.SRVDOG=:DOG');
    //код БДР
    Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    //очищаем таблицу перед заполнением
    Q2:=GetQueryForUse(cmDB.WT,'delete from FACTDOCLIST' + #13#10 +
                              'where (FACTDOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
  end;
  //
  procedure FreeSQL;
  begin
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;
  //
  function GetCodBDR(m,y,srv :Variant) :Variant;
  begin
    Q1.ParamByName('Y').AsVariant:=Y;
    Q1.ParamByName('M').AsVariant:=M;
    Q1.ParamByName('srv').AsVariant:=SRV;
    Q1.ExecQuery;
    Result:=Q1.FN('CODE').AsVariant;
  end;
  //
  function GetHouse(dog :variant) :WideString;
  begin
    Q.ParamByName('DOG').AsVariant:=dog;
    Q.ExecQuery;
    Result:=Q.FN('house').AsWideString;
  end;
  //
  function ClearFDoc :Boolean;
  begin
    Result:=false;
    Q2.ParamByName('FD').AsVariant:=FDCOD;
    try
      Q2.ExecQuery;
      Result:=True;
    finally

    end;
  end;

  //получаем будуший код документа FACTDOC.CODE
  function GetGenID :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select gen_id(FactDoc_gen, 1) code from ' +
                              'rdb$database');
    try
      Q.ExecQuery;
      Result:=Q.FN('code').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  //создаем заголовок документа
  procedure CreateHeadDoc;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.WT,'insert into FACTDOC (CODE, M, Y, HOUSESRV)' + #13#10 +
        'values (:CODE,:M, :Y, :HOUSESRV)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    //получить код генератора
    FDCOD:=GetGenID;
    Q.ParamByName('CODE').AsVariant:=FDCOD;
    Q.ParamByName('M').AsVariant:=M;
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('HOUSESRV').AsVariant:=srv;
    try
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  //заполняем документ
  procedure FillData;
  var
    Q :TFIBQuery;
  begin
    MMO.Add('Формируем документ №.'+VarToStr(FDCOD));
    Q3:=GetQueryForUse(cmDB.RT,'select HOUSE, F22 from PBDR1 ' + #13#10 +
                               'where PBDR = :FBD');
    BDRCOD :=GetCodBDR( m,y,srv);
    if BDRCOD = null then
    begin
      MMO.Add('Отсутствуют данные, формирование отменено.');
      MMO.Add('__________________________________________');
      Exit;
    end; 
    //hs:=#39+GetHouse(dg)+#39;
    //заполняем данные

    Q3.ParamByName('FBD').AsVariant:=BDRCOD;
    //Q3.ParamByName('HSE').AsWideString:=#39+hs+#39;
    Q3.ExecQuery;
    //insert data
    Q:=GetQueryForUse(cmDB.WT,
        'insert into FACTDOCLIST (FACTDOC, PLANSUM, FACTSUM, CORRECT, HOUSE)' +
        #13#10 + 'values (:FACTDOC, :PLANSUM, :FACTSUM, :CORRECT, :HOUSE)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    try
      while not Q3.Eof do begin
        Q.ParamByName('FACTDOC').AsVariant:=FDCOD;
        Q.ParamByName('PLANSUM').AsVariant:=Q3.FN('F22').AsVariant;
        Q.ParamByName('FACTSUM').AsVariant:=Q3.FN('F22').AsVariant;
        Q.ParamByName('CORRECT').AsVariant:=0;
        Q.ParamByName('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
        Q.ExecQuery;
        Q3.Next;
      end;
    finally
      FreeQueryForUse(Q);
      MMO.Add('Формирование завершено.');
      MMO.Add('_______________________');
    end;
  end;
begin
  try
    //формируем запросы
    MakeSQL;
    FDCOD:=GetCodFactDoc(m,y,srv);
    if FDCOD=null then  CreateHeadDoc;
    //чистим таблицу
    if not ClearFDoc then
    begin
      FreeSQL;
      Exit;
    end;
    FillData;
    // чистим
    FreeSQL;
  finally

  end;
end;

destructor TFactDoc.Destroy;
begin

  inherited;
end;

// получаем код FactDoc если есть
function TFactDoc.GetCodFactDoc(m, y, srv :Variant): Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE from FACTDOC' + #13#10 +
                            'where M=:m and Y=:y and HOUSESRV=:srv');
  Q.ParamByName('M').AsVariant:=m;
  Q.ParamByName('Y').AsVariant:=y;
  Q.ParamByName('srv').AsVariant:=srv;
  try
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

{ TFact1Doc }

procedure TFact1Doc.CorrectDoc1(m, y, srv: Variant);
var
  bdr,tbl,fld :Variant;
  d1 ,d2 :TDateTime;

  procedure ClearFact;
  var
    Q1:TFIBQuery;
  begin
    Q1:=GetQueryForUse(cmDB.WT,'update FACT1DOCLIST set FACTSUM = 0' + #13#10 +
                              'where (FACT1DOC = :CODE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('CODE').AsVariant:=F1DCOD;
    Q1.ExecQuery;
    FreeQueryForUse(Q1);
  end;

  procedure GetFact0(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    try
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRWORKBDR tw' + #13#10 +
                                'left outer join mlist m on m.code=tw.mlist' +
                                #13#10 +
                                'left outer join mgroup mg on mg.code=m.mgroup'
                                + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'and mg.code=3' + #13#10 +
                                'group by tw.house');
      //Q.ParamByName('hs').AsVariant:=FN('HOUSE').AsVariant;
      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=F1DCOD;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure GetFact1(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    try
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRWORKBDR tw' + #13#10 +
                                'left outer join mlist m on m.code=tw.mlist' +
                                #13#10 +
                                'left outer join mgroup mg on mg.code=m.mgroup'
                                + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'and mg.code=1' + #13#10 +
                                'group by tw.house');

      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=F1DCOD;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
    end;

  end;

  procedure GetFact(table :string);
  var
    Q :TFIBQuery;
    cnt :Integer;
  begin
    try
      Q:=GetQueryForUse(cmDB.RT,'SELECT sum(tw.SUMMA) summa,tw.house' + #13 +
                                #10 + 'FROM TRLWORKBDR tw' + #13#10 +
                                'where tw.DATA between :d1 and :d2' + #13#10 +
                                'group by tw.house');

      Q.ParamByName('d1').AsDateTime:=d1;
      Q.ParamByName('d2').AsDateTime:=d2;
      Q.ExecQuery;
      with ds_FACTDOCLIST do begin
        First;
        while not EOF do begin
          Edit;
          FN('FACTSUM').AsVariant:=0;
          Post;
          Next;
        end;
      end;

      while not Q.Eof do
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          if (Q.FN('SUMMA').AsVariant<>0) and (Q.FN('SUMMA').AsVariant<>null) then
          begin
            Edit;
             FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
             FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-Q.FN('SUMMA').AsVariant;
            Post;
          end;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=F1DCOD;
            FN('PLANSUM').AsVariant:=0;
            FN('FACTSUM').AsVariant:=Q.FN('SUMMA').AsVariant;
            FN('CORRECT').AsVariant:=0-Q.FN('SUMMA').AsVariant;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  //определяем тип услуги (6- общестрой,8 - лифт)
  F1DCOD:=GetCodFact1Doc(m, y, srv);
  if F1DCOD=null then exit;
  OpenFACTDOCLIST;
  //GetParamBDR(bdr,srv,tbl,fld);
  d1:=StartOfAMonth(Y,M);
  d2:=EndOfAMonth(Y,M)-1;
  //согласно услуги получаем факт (6-TRWORKBDR, 8-TRLWORKBDR) по дому
   MMO.Add('Формируем документы.');
  case srv of
    0 : GetFact0('TRWORKBDR');
    1 : GetFact1('TRWORKBDR');
    2 : GetFact('TRLWORKBDR');
    3 : GetODS(m, y, srv);
  end;
  MMO.Add('Формирование завершено.');
end;

constructor TFact1Doc.Create;
begin
  inherited;
  MMO :=TStrings.Create;
end;

procedure TFact1Doc.CreateDoc1(m, y, srv: Variant);
var
  srv1,bdr,tbl,fld :Variant;

  function ClearTable :Boolean;
  var
    Q2 :TFIBQuery;
  begin
    Result:=False;
    //очищаем таблицу перед заполнением
    Q2:=GetQueryForUse(cmDB.WT,'delete from FACT1DOCLIST' + #13#10 +
                              'where (FACT1DOC = :FD)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];

    Q2.ParamByName('FD').AsVariant:=F1DCOD;
    Q2.ExecQuery;
    Result:=True;
  end;

  //получаем будуший код документа FACTDOC.CODE
  function GetGenID :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'select gen_id(Fact1Doc_gen, 1) code from ' +
                              'rdb$database');
    try
      Q.ExecQuery;
      Result:=Q.FN('code').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  //создаем заголовок документа
  procedure CreateHeadDoc1;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.WT,'insert into FACT1DOC (CODE, M, Y, HOUSESRV)' + #13#10 +
        'values (:CODE,:M, :Y, :HOUSESRV)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    //получить код генератора
    F1DCOD:=GetGenID;
    Q.ParamByName('CODE').AsVariant:=F1DCOD;
    Q.ParamByName('M').AsVariant:=M;
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('HOUSESRV').AsVariant:=srv;
    try
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure FillData;
  var
    Q3,Q :TFIBQuery;
  begin
    //заполняем данные
    Q3:=GetQueryForUse(cmDB.RT,'select HOUSE, '+fld+' from '+tbl+' ' + #13#10 +
                               'where PBDR = :FBD');
    Q3.ParamByName('FBD').AsVariant:=bdr;
    //Q3.ParamByName('HSE').AsWideString:=#39+hs+#39;
    Q3.ExecQuery;
    //insert data
    Q:=GetQueryForUse(cmDB.WT,
        'insert into FACT1DOCLIST (FACT1DOC, PLANSUM, FACTSUM, CORRECT, HOUSE)'
        + #13#10 +
        'values (:FACT1DOC, :PLANSUM, :FACTSUM, :CORRECT, :HOUSE)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    try
      while not Q3.Eof do begin
        if Q3.FN(fld).AsVariant>0 then begin
          Q.ParamByName('FACT1DOC').AsVariant:=F1DCOD;
          Q.ParamByName('PLANSUM').AsVariant:=Q3.FN(fld).AsVariant;
          Q.ParamByName('FACTSUM').AsVariant:=Q3.FN(fld).AsVariant;
          Q.ParamByName('CORRECT').AsVariant:=0;
          Q.ParamByName('HOUSE').AsVariant:=Q3.FN('HOUSE').AsVariant;
          Q.ExecQuery;
        end;
        Q3.Next;
      end;
    finally
      FreeQueryForUse(Q3);
      FreeQueryForUse(Q);
    end;
  end;
begin
  F1DCOD:=GetCodFact1Doc(m, y, srv);
  if F1DCOD=null then CreateHeadDoc1;

  GetParamBDR(bdr,srv1,tbl,fld,srv,m,y);
  if bdr=null then Exit;
  try
    //
    if not ClearTable then Exit;
     //
    FillData;
  finally

  end;
end;

destructor TFact1Doc.Destroy;
begin

  inherited;
end;

function TFact1Doc.GetCodFact1Doc(m, y, srv: Variant): Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE from FACT1DOC' + #13#10 +
                            'where M=:m and Y=:y and HOUSESRV=:srv');
  Q.ParamByName('M').AsVariant:=m;
  Q.ParamByName('Y').AsVariant:=y;
  Q.ParamByName('srv').AsVariant:=srv;
  try
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFact1Doc.GetParamBDR(var bdr, srv, tbl, fld: Variant;
                                      housesrv,m,y :Variant);

  procedure SetParam(tb,fn,s :variant);
  begin
    tbl:=tb;
    fld:=fn;
    srv:=s;
  end;

  function GetBDRCode :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                              #10 + 'FROM PBDR fb' + #13#10 +
                              'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('M').AsVariant:=M;
    Q.ParamByName('srv').AsVariant:=srv;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
    FreeQueryForUse(Q);
  end;

begin
  case housesrv of
    0 : SetParam('PBDR2','F31',6);
    1 : SetParam('PBDR2','F33',6);
    2 : SetParam('PBDR3','F28',8);
    3 : SetParam('PBDR2','F12',6);
    4 : SetParam('PBDR2','F10',6);
    5 : SetParam('PBDR2','F29',6);
    6 : SetParam('PBDR2','F31',6);
    7 : SetParam('PBDR3','F13',8);
    8 : SetParam('PBDR3','F14',8);
    9 : SetParam('PBDR3','F15',8);
    10 : SetParam('PBDR3','F25',8);
    11 : SetParam('PBDR3','F26',8);
    12 : SetParam('PBDR3','F27',8);
  end;
  bdr:=GetBDRCode;
end;

procedure TFact1Doc.OpenFACTDOCLIST;
begin
  ds_FACTDOCLIST := TpFIBDataSet.Create(Application);
  with ds_FACTDOCLIST do begin
    Transaction := cmDB.RT;
    Database := cmDB.DB;
    UpdateTransaction := cmDB.WT;
    SelectSQL.Text:='select CODE, FACT1DOC, PLANSUM, FACTSUM, CORRECT, HOUSE'
                   + #13#10 + 'from FACT1DOCLIST';
    DSOptoins(ds_FACTDOCLIST,'','FACT1DOCLIST','CODE','FACT1DOCLIST_GEN',false);
    MainWhereClause:='FACT1DOC=:fd';
    ParamByName('fd').AsVariant:=F1DCOD;
    Open;                                       
  end;
end;

procedure TFact1Doc.GetODS(m, y, srv: Variant);
var
  ODCode,SumNum,Summa, CostNum :Variant;
  d1,d2 :TDateTime;

  //код документа ODSDOC
  function Get_ODSDOC_Code :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT CODE FROM ODSDOC' + #13#10 +
                              'where Y=:Y and M=:M');
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('M').AsVariant:=M;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
    FreeQueryForUse(Q);
  end;

  function CompareQuery :Boolean;
  var
    Q,Q1 :TpFIBDataSet;
  begin
    Result:=true;
    Q := TpFIBDataSet.Create(Application);
    Q.Transaction := cmDB.RT;
    Q.Database := cmDB.DB;
    Q.UpdateTransaction := cmDB.WT;
    Q.SelectSQL.Text:='select f1d.house from fact1doclist f1d' + #13 +
                              #10 + 'where f1d.fact1doc=:fd';
    Q.ParamByName('fd').AsVariant:=F1DCOD;
    Q.OrderClause:='f1d.house';
    Q.Open;

    Q1 := TpFIBDataSet.Create(Application);
    Q1.Transaction := cmDB.RT;
    Q1.Database := cmDB.DB;
    Q1.UpdateTransaction := cmDB.WT;
    Q1.SelectSQL.Text:='SELECT OD.HOUSE FROM ODSDOCLIST OD' + #13#10 +
                              'where od.odsdoc=:cod';
    Q1.ParamByName('cod').AsVariant:=OdCode;
    Q1.OrderClause:='OD.HOUSE';
    Q1.Open;

    //
    if q.RecordCountFromSrv<>q1.RecordCountFromSrv then Result:=false else
    begin
      while not Q.eof do begin
        if Q.FN('house').asvariant<>Q1.FN('house').asvariant then
        begin
          Result:=false;
          Break;
        end;
        Q1.Next;
        Q.Next;
      end;
    end;

    Q.Free;
    Q1.Free;
  end;

  function GetSumNum :Variant;
  var
    Q :TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT sum(NUM) num FROM ODSDOCLIST' + #13#10 +
                              'where ODSDOC=:doc');
    Q.ParamByName('doc').AsVariant:=OdCode;
    Q.ExecQuery;
    Result:=Q.FN('num').AsVariant;
    FreeQueryForUse(Q);
  end;

  procedure MakeDate;
  begin
    D1:=StartOfAMonth(Y,M);
    D2:=EndOfAMonth(Y,M);
  end;

  function GetSumma :Variant;
  var
    Q1 :TFIBQuery;
  begin
    MakeDate;
    Q1:=GetQueryForUse(cmDB.RT,'SELECT SUMMA FROM ODSFACT' + #13#10 +
                              ' where data>=:d1 and data<=:d2');
    Q1.ParamByName('d1').AsDateTime:=D1;
    Q1.ParamByName('d2').AsDateTime:=D2;
    Q1.ExecQuery;
    Result:=Q1.FN('SUMMA').AsVariant;
    FreeQueryForUse(Q1);
  end;

  procedure CorrectODS;
  var
    Q,Q1 :TFIBQuery;
    sum1,sum2 :Variant;
    cnt :Integer;
  begin
    //SetCapt('Получаем список обращений');
    Q:=GetQueryForUse(cmDB.RT,'SELECT HOUSE,NUM' + #13#10 +
                              'FROM ODSDOCLIST where ODSDOC=:doc');
    Q.ParamByName('doc').AsVariant:=OdCode;
    Q.ExecQuery;
    //
    Q1:=GetQueryForUse(cmDB.WT,'update FACT1DOCLIST set FACTSUM = 0' + #13#10 +
                              'where (FACT1DOC = :CODE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('CODE').AsVariant:=F1DCOD;
    Q1.ExecQuery;
    //открываем датасет
    
  
    //SetCapt('Формируем документ');
    while not Q.Eof do begin
      with ds_FACTDOCLIST do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then
        begin
          Edit;
           FN('FACTSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
           FN('CORRECT').AsVariant:=FN('PLANSUM').AsVariant-
                                              (CostNum * Q.FN('NUM').AsVariant);
          Post;
        end else
        begin
          Append;
            FN('FACT1DOC').AsVariant:=F1DCOD;
            FN('PLANSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
            FN('FACTSUM').AsVariant:=CostNum * Q.FN('NUM').AsVariant;
            FN('CORRECT').AsVariant:=0;
            FN('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
          Post;
        end;

      end;
      Q.Next;
    end;
    FreeQueryForUse(Q);
    //коррекция суммы
    sum1:=SumNum * CostNum;  //общее кол-во обращений * сумма за обращение
    sum2:=Summa - sum1;
      with ds_FACTDOCLIST do begin
        First;
        Edit;
        FN('FACTSUM').AsVariant:=FN('FACTSUM').AsVariant+sum2;
        Post;
      end;
  end;

begin
  try
    //SplashVisibility(True,'Получаем данные');
    OdCode:=Get_ODSDOC_Code;
    if ODCode=null then Exit;
    //сравнение запросов к ODSDOCLIST и fact1doclist  (не проверяю)
    ///if not CompareQuery then Exit;
    // получаем общее кол-во обращений за период
    SumNum:=GetSumNum;
    if (SumNum=null) or (SumNum=0) then Exit;
    // получаем сумму за период
    Summa:=GetSumma;
    if (Summa=null) or (Summa=0) then Exit;
    //сумма за обращение = сумма за период /кол-во обращений
    CostNum:=Summa div SumNum;
    //
    CorrectODS;
  finally
    ds_FACTDOCLIST.Free;
  end;
end;

end.











