unit BkpDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  EXLReportExcelTLB,EXLReportBand, EXLReport, dxmdaset,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants;
 type
{ TBkpObj }

  TReportType =(rtByBDR, rtByShablon);
  TExportType = (etSmeta, etAct);
  TBkpObj = class(TObject)
  private
    fY :Variant;
    fM :Variant;
    fSRV: Variant;
    fsrvName: Variant;
    fkontr :Variant;
    fKontrCode: Variant;
    FDog :Variant;
    fProc: Variant;
    fReportType: TReportType;
    mSmeta, mSmeta1, mAkt: TdxMemData;
  protected
    SrvCode, SrvType, SumStr: Variant; //
    POCode :variant;
    dc :Variant;
    ds_SancSum: TpFIBDataSet;
    ds_Sanc: TpFIBDataSet;
    xl1: TEXLReport;
    xl_sub: TEXLReport;
    D1: TDateTime;
    D2: TDateTime;
    FCounter :integer;
    rdu :string;
    fRole: Variant;
    fWorker: Variant;
    function GetDogCod(var dc,kontr :Variant) :Variant;
    function GetHouse(dog :variant) :WideString;
    function GetCodBDR(Y,M,HOUSESRV :Variant): Variant;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure MakeDate;
    procedure xl_subBeforeBuild(Sender: TObject);
    procedure xl_subFormatCell(Sender: TObject;
      Band: TEXLReportBand; RowInTemplate, RowInReport, ColumnInReport: Integer;
      Report: _Worksheet; const CellValue: OleVariant);

    procedure ExpSmeta(PO: Variant);
    procedure ExpSmetaLift;
    procedure ExpSmetaABC;
    function GetFactDocCode :Variant;
    procedure ExpAkt(PO: Variant);
    procedure ExpAktLift;
    procedure ExpAktABC;
  public
    ///	<summary>
    ///	  Печать сметы по документу Кооректировок (Услуги РКЦ/Прочее)
    ///	</summary>
    ///	<param name="code">
    ///	   Код документа
    ///	</param>
    ///	<param name="M">
    ///	  Месяц
    ///	</param>
    ///	<param name="Y">
    ///	  Год
    ///	</param>
    ///	<param name="HOUSESRV">
    ///	  Услуга  (типа 0_9)
    ///	</param>
    ///	<param name="PO">
    ///	  Код контрагента
    ///	</param>
    procedure PrintSmetaByDoc(code, M, Y, HOUSESRV, PO: Variant);
    ///	<summary>
    ///	  Печать акта по документу Кооректировок (Услуги РКЦ/Прочее)
    ///	</summary>
    ///	<param name="code">
    ///	   Код документа
    ///	</param>
    ///	<param name="M">
    ///	  Месяц
    ///	</param>
    ///	<param name="Y">
    ///	  Год
    ///	</param>
    ///	<param name="HOUSESRV">
    ///	  Услуга  (типа 0_9)
    ///	</param>
    ///	<param name="PO">
    ///	  Код контрагента
    ///	</param>
    procedure PrintAKTByDoc(code, M, Y, HOUSESRV, PO, DogType: Variant);
    procedure PrintSmeta(Year,Month,S,dogovor,kname :Variant);
    procedure PrintAkt(Year, Month, S,dogovor,kname: Variant);
    //
    procedure PrintSmetaBDR1;
    procedure PrintSmetaBDR2;
    procedure PrintSmetaBDR3;
    procedure PrintSMETABDR31;
    procedure PrintSMETABDR32;
    //
    procedure PrintAktBDR(ProcName :string);
    procedure PrintAktBDR31;
    procedure PrintAktBDR32;
    //
    function GetKontrByDog(dogCode: Variant) :Variant;
    function GetKontrName(poCode: Variant): string;
    function GetDirName(kontr: variant) :string;
    //
    procedure PrinSmetaTemplate(Template: variant);
    //
    procedure VentilationReport(GraphList: Variant; eType: TExportType); overload;
    ///	<summary>
    ///	  Формирование Акта или сметы по графику вентиляции
    ///	</summary>
    ///	<param name="tarif">
    ///	  тариф
    ///	</param>
    ///	<param name="d1">
    ///	  начало периода
    ///	</param>
    ///	<param name="d2">
    ///	  конец периода
    ///	</param>
    ///	<param name="eType">
    ///	  тип формирования (Смета, Акт)
    ///	</param>
    procedure VentilationReport(tarif: Variant; d1, d2: Variant; eType: TExportType); overload;
    procedure VentilationReport(tarif: Variant; graphCode: Variant; d1, d2: Variant; eType: TExportType); overload;
    //
    constructor Create;
    destructor Destroy; override;
  published
    property Y: Variant read FY write FY;
    property M: Variant read FM write FM;
    property SRV: Variant read FSRV write FSRV;
    property srvName: Variant read FsrvName write FsrvName;
    property kontr: Variant read Fkontr write Fkontr;
    property KontrCode: Variant read FkontrCode write FkontrCode;
    property Dog: Variant read FDog write FDog;
    property Proc: Variant read fProc write fProc;
    property ReportType: TReportType read fReportType write fReportType;
  end;


implementation

uses GetDogFrm, cmDBUnit, cmUtils, VentSmetalFrm;


function SumNumToFull(Number:real):string;
var
  PartNum, TruncNum, NumTMP, D: integer;
  NumStr : string;
  i, R : byte;
  Flag11 : boolean;
begin
  D:=1000000;
  R:=4;
  //выделяем рубли
  TruncNum:=Trunc(Number);
  if TruncNum<>0 then
    repeat
      PartNum:=TruncNum div D;
      Dec(R);
      D:=D div 1000;
    until
      PartNum<>0
  else
    R:=0;

  // перевод рублей
  for i:=R downto 1 do
  begin
    Flag11:=False;
    // выделение цифры сотен
    NumTMP:=PartNum div 100;
    case NumTMP of
      1: NumStr:=NumStr+'сто ';
      2: NumStr:=NumStr+'двести ';
      3: NumStr:=NumStr+'триста ';
      4: NumStr:=NumStr+'четыреста ';
      5: NumStr:=NumStr+'пятьсот ';
      6: NumStr:=NumStr+'шестьсот ';
      7: NumStr:=NumStr+'семьсот ';
      8: NumStr:=NumStr+'восемьсот ';
      9: NumStr:=NumStr+'девятьсот ';
    end;
    // выделение цифры десятков
    NumTMP:=(PartNum mod 100) div 10;
    case NumTMP of
      1:
      begin
        NumTMP:=PartNum mod 100;
        case NumTMP of
          10: NumStr:=NumStr+'десять ';
          11: NumStr:=NumStr+'одиннадцать ';
          12: NumStr:=NumStr+'двенадцать ';
          13: NumStr:=NumStr+'тринадцать ';
          14: NumStr:=NumStr+'четырнадцать ';
          15: NumStr:=NumStr+'пятнадцать ';
          16: NumStr:=NumStr+'шестнадцать ';
          17: NumStr:=NumStr+'семнадцать ';
          18: NumStr:=NumStr+'восемнадцать ';
          19: NumStr:=NumStr+'девятнадцать ';
        end;
        case i of
          3: NumStr:=NumStr+'миллионов ';
          2: NumStr:=NumStr+'тысяч ';
          1: NumStr:=NumStr+'рублей ';
        end;
        Flag11:=True;
      end;
      2: NumStr:=NumStr+'двадцать ';
      3: NumStr:=NumStr+'тридцать ';
      4: NumStr:=NumStr+'сорок ';
      5: NumStr:=NumStr+'пятьдесят ';
      6: NumStr:=NumStr+'шестьдесят ';
      7: NumStr:=NumStr+'семьдесят ';
      8: NumStr:=NumStr+'восемьдесят ';
      9: NumStr:=NumStr+'девяносто ';
    end;
    // выделение цифры единиц
    NumTMP:=PartNum mod 10;
    if not Flag11 then
    begin
      case NumTMP of
        1:
          if i=2 then
            NumStr:=NumStr+'одна '
          else
            NumStr:=NumStr+'один ';
        2:
          if i=2 then
            NumStr:=NumStr+'две '
          else
            NumStr:=NumStr+'два ';
        3: NumStr:=NumStr+'три ';
        4: NumStr:=NumStr+'четыре ';
        5: NumStr:=NumStr+'пять ';
        6: NumStr:=NumStr+'шесть ';
        7: NumStr:=NumStr+'семь ';
        8: NumStr:=NumStr+'восемь ';
        9: NumStr:=NumStr+'девять ';
      end;
      case i of
        3:
          case NumTMP of
            1: NumStr:=NumStr+'миллион ';
            2,3,4: NumStr:=NumStr+'миллиона ';
            else
              NumStr:=NumStr+'миллионов ';
          end;
        2:
          case NumTMP of
            1 : NumStr:=NumStr+'тысяча ';
            2,3,4: NumStr:=NumStr+'тысячи ';
            else
              if PartNum<>0 then
                NumStr:=NumStr+'тысяч ';
          end;
        1:
          case NumTMP of
            1 : NumStr:=NumStr+'рубль ';
            2,3,4: NumStr:=NumStr+'рубля ';
            else
              NumStr:=NumStr+'рублей ';
          end;
      end;
    end;
    if i>1 then
    begin
      PartNum:=(TruncNum mod (D*1000)) div D;
      D:=D div 1000;
    end;
  end;

  //перевод копеек
  PartNum:=Round(Frac(Number)*100);
  if PartNum=0 then
  begin
    SumNumToFull:=NumStr+'00 копеек';
    Exit;
  end;
  // выделение цифры десятков
  NumTMP:=PartNum div 10;
  if NumTMP=0 then
    NumStr:=NumStr+'0'+IntToStr(PartNum)+' '
  else
    NumStr:=NumStr+IntToStr(PartNum)+' ';
  // выделение цифры единиц
  NumTMP:=PartNum mod 10;
  case NumTMP of
    1:
      if PartNum<>11 then
        NumStr:=NumStr+'копейка'
      else
        NumStr:=NumStr+'копеек';
    2,3,4:
      if (PartNum<5) or (PartNum>14) then
        NumStr:=NumStr+'копейки'
      else
        NumStr:=NumStr+'копеек';
    else
      NumStr:=NumStr+'копеек';
  end;
  SumNumToFull:=NumStr;
end;

{ TBkpObj }

constructor TBkpObj.Create;
begin
  CreateComponents;
  fReportType:=rtByBDR;
end;

procedure TBkpObj.CreateComponents;
begin
  //
   mSmeta := TdxMemData.Create(nil);
   mSmeta1 := TdxMemData.Create(nil);
   mAkt:= TdxMemData.Create(nil);
  //ds_SancSum
  ds_SancSum := TpFIBDataSet.Create(nil);
  //ds_SancSum
  ds_SancSum.Name := 'ds_SancSum';
  ds_SancSum.Transaction := cmDB.RT;
  ds_SancSum.Database := cmDB.DB;
  ds_SancSum.UpdateTransaction := cmDB.WT;

  //ds_Sanc
  ds_Sanc := TpFIBDataSet.Create(nil);
  //ds_Sanc
  ds_Sanc.Name := 'ds_Sanc';
  ds_Sanc.Transaction := cmDB.RT;
  ds_Sanc.Database := cmDB.DB;
  ds_Sanc.UpdateTransaction := cmDB.WT;

  //xl_sub
  xl_sub := TEXLReport.Create(nil);
  //xl_sub
  xl_sub.Name := 'xl_sub';
  //xl_sub.DataSet := ds_Sanc;
  xl_sub.DataSet := mAkt;
  xl_sub.OnBeforeBuild := xl_subBeforeBuild;
  xl_sub.OnFormatCell := xl_subFormatCell;

  //xl1
  xl1 := TEXLReport.Create(nil);
  //xl1
  xl1.Name := 'xl1';
  //xl1.DataSet := mSmeta;
  xl1.DataSet := ds_SancSum;
  xl1.SubReport := xl_sub;
end;

destructor TBkpObj.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure TBkpObj.FreeComponents;
begin
  xl1.Free;
  xl_sub.Free;
  ds_SancSum.Free;
  ds_Sanc.Free;
  if Assigned(mSmeta) then FreeAndNil(mSmeta);
  if Assigned(mSmeta1) then FreeAndNil(mSmeta1);
  if Assigned(mAkt) then FreeAndNil(mAkt);
end;

{------------------------------------------------------------------------------
 Получаем код из таблицы PBDR
-------------------------------------------------------------------------------}
function TBkpObj.GetCodBDR(Y,M,HOUSESRV :Variant): Variant;
var
  Q1 :TFibQuery;
begin
  //код БДР
  Q1:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE,fb.Y,fb.M,fb.HOUSESRV' + #13 +
                            #10 + 'FROM PBDR fb' + #13#10 +
                            'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
  Q1.ParamByName('Y').AsVariant:=Y;
  Q1.ParamByName('M').AsVariant:=M;
  Q1.ParamByName('srv').AsVariant:=HOUSESRV;
  Q1.ExecQuery;
  Result:=Q1.FN('CODE').AsVariant;
  FreeQueryForUse(Q1);
end;
{------------------------------------------------------------------------------}
function TBkpObj.GetDirName(kontr: variant): string;
var
  Q: TFIBQuery;

  function CorrectFIO(fio :string) :string;
  var
    f,i,o :string;
  begin
    f:=cmGetWord(fio,1,#32);
    i:=Copy(cmGetWord(fio,2,#32),1,1)+'.';
    o:=Copy(cmGetWord(fio,3,#32),1,1)+'.';
    Result:=i+o+f;
  end;

begin
  Result:='';
  Q:=GetQueryForUse(cmDB.RT,
        ' SELECT k.DIRECTOR,' +#13#10+
        '               (LEFT(p.i,1)||''.''||LEFT(p.o,1)||''. ''||p.f) fio' +#13#10+
        '        FROM KONTRAGENT k' +#13#10+
        '        left outer join worker w on w.code=k.director' +#13#10+
        '        left outer join piple p on p.code=w.piple' +#13#10+
        '        where k.code=:kontr'
        );
  Q.ParamByName('kontr').AsVariant:=kontr;
  try
    Q.ExecQuery;
    Result:=Q.FN('FIO').AsString;
  finally
    FreeQueryForUse(Q);
  end;
end;
{------------------------------------------------------------------------------
 Получаем код договора и наименование контрагента
-------------------------------------------------------------------------------}
function TBkpObj.GetDogCod(var dc, kontr: Variant): Variant;
var
  Form: TGetDogForm;
begin
  Result:=null;
  Form := TGetDogForm.Create(Application);
  if Form.ShowModal=mrOk then
  begin
    dc:=Form.v1.GetColumnByFieldName('CODE').EditValue;
    kontr:=Form.v1.GetColumnByFieldName('KName').EditValue;
    Result:=Form.v1.GetColumnByFieldName('CODE').EditValue;
  end;
  Form.Free;
end;
{------------------------------------------------------------------------------
 Получаем список домов по договору
-------------------------------------------------------------------------------}
function TBkpObj.GetHouse(dog: variant): WideString;
var
  Q :TFibQuery;
begin
    // дома из договора
  Q:=GetQueryForUse(cmDB.RT,'select '',''||list(sd.HOUSE,'','')||'','' house'
                            + #13#10 +
                            'FROM SRVDOGHOUSE sd' + #13#10 +
                            'WHERE sd.SRVDOG=:DOG');
  Q.ParamByName('DOG').AsVariant:=dog;
  Q.ExecQuery;
  Result:=Q.FN('house').AsWideString;
  FreeQueryForUse(Q);
end;

function TBkpObj.GetKontrByDog(dogCode: Variant): Variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
          'select  KONTRAGENT' + #13#10 +
          'from SRVDOG where CODE=:dog');
  Q.ParamByName('dog').AsVariant:=dogCode;
  try
    Q.ExecQuery;
    Result:=Q.FN('KONTRAGENT').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TBkpObj.GetKontrName(poCode: Variant): string;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
          'select FULLNAME' + #13#10 +
          'from KONTRAGENT where CODE=:CODE');
  Q.ParamByName('CODE').AsVariant:=poCode;
  try
    Q.ExecQuery;
    Result:=Q.FN('FULLNAME').AsString;
  finally
    FreeQueryForUse(Q);
  end;
end;

{------------------------------------------------------------------------------
 Получаем начальную /конечную дату периода
-------------------------------------------------------------------------------}
procedure TBkpObj.MakeDate;
begin
  D1:=StartOfAMonth(Y,M);
  D2:=EndOfAMonth(Y,M)-1;
end;

function TBkpObj.GetFactDocCode :Variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE' + #13 +
                            #10 + 'FROM FACTDOC fb' + #13#10 +
                            'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
  Q.ParamByName('Y').AsVariant:=Y;
  Q.ParamByName('M').AsVariant:=M;
  Q.ParamByName('srv').AsVariant:=Srv;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
  FreeQueryForUse(Q);
end;

{------------------------------------------------------------------------------
 Экспорт акта
-------------------------------------------------------------------------------}
procedure TBkpObj.PrintAkt(Year, Month, S,dogovor,kname: Variant);
var
  dc, kontr, bdr,fd: Variant;
  hs :WideString;
  //----------------------------------------
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.f10 GSumma,fb1.f11 NGArea,fb1.f15 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+fb1.f11) Area,(FB1.f10+fb1.f15) Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      ' ,fd.plansum,fd.factsum,fd.correct, (FB1.f10-fd.correct) S1 ' + #13#10 +
      ' ,((FB1.f10-fd.correct) + f15) Itog ' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join factdoclist fd on fd.house=fb1.house and ' +
      'fd.factdoc=:fd'+ #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')';
      ParamByName('FBD').AsVariant:=bdr;
      ParamByName('fd').AsVariant:=fd;
      Open;
    end;
  end;
  //---------------------------------------------
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      '    ,sum(fd.plansum) plansum,sum(fd.factsum) factsum,sum(fd.correct) ' +
      'correct' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join factdoclist fd on fd.house=fb1.house and fd.factdoc=:fd'
      + #13#10 +
      'where FB1.PBDR = :fbd' + #13#10 +
      '  and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      ParamByName('FBD').AsVariant:=bdr;
      ParamByName('fd').AsVariant:=fd;
      Open;
    end;
  end;
begin

  Y:=Year;
  M:=Month;
  Srv:=S;
  dc:=dogovor;
  kontr:=kname;
  MakeDate;
    //получаем код договора и контрагента
  //if GetDogCod(dc,kontr)=null then Exit;
  if dc=null then Exit;
  //список домов по договору
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  bdr:=GetCodBDR(Y,M,Srv);
  if bdr=null then Exit;
  fd:=GetFactDocCode;
  if fd=null then Exit;
  GetTitle;
  GetData;
  ExpAkt(kontr);
end;

procedure TBkpObj.PrintAktBDR(ProcName: string);
var
  Q: TFIBQuery;
  srvCod: Variant;

  function GetShtrafSum(house: variant): Variant;
  begin
    try
      Q.ParamByName('D1').AsVariant:= StartOfAMonth(Y,M);
      Q.ParamByName('D2').AsVariant:= EndOfAMonth(Y,M);
      Q.ParamByName('kontr').AsVariant:= fKontrCode;
      Q.ParamByName('house').AsVariant:= house;
      Q.ParamByName('srv').AsVariant:= SRV;
      Q.ExecQuery;
      if Q.FN('SUMMA').AsVariant<>null then
         Result:= Q.FN('SUMMA').AsVariant else
         Result:=0;
    finally

    end;
  end;

  procedure SetBalance;
  begin
    Q:= GetQueryForUse(cmDb.RT,
       'SELECT SUM(SUMMA) SUMMA' +#13#10+
       'FROM OUTCASHBDR' +#13#10+
       'where DATA BETWEEN :D1 and :D2' +#13#10+
       '      and KONTRAGENT=:kontr' +#13#10+
       '      and HOUSE=:house' +#13#10+
       '      and HOUSESRV=:srv');
    Q.Options:= [qoStartTransaction];
    try
      with mAkt do begin
        First;
        while not EOF do begin
          Edit;
          FieldByName('BALANCE').AsVariant:= GetShtrafSum(FieldByName('HOUSE').AsVariant);
          FieldByName('BITOG').AsVariant:= FieldByName('ITOG').AsVariant +
                                           FieldByName('BALANCE').AsVariant;
          Post;
          if FieldByName('ITOG').AsVariant = 0 then
            mAkt.Delete else
          mAkt.Next;
        end;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME SNAME, HOUSENOMER NOMER, DUNAME DNAME,' +#13#10 +
      '       GP GAREA, NGP NGAREA,'+#13#10 +
      '       ALLP AREA, (ALLSUM) ITOG, 0 BALANCE, 0 BITOG' + #13#10 +
      'from '+ProcName+' (:SRVDOG, :M, :Y, :SRV, :PROC) order by DUNAME, STREETNAME, HOUSENOMER';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=srvCod;
      ParamByName('PROC').AsVariant:= Proc;
      Open;
    end;
    mAkt.Close; mAkt.Open;
    mAkt.LoadFromDataSet(ds_Sanc);
    SetBalance;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME DNAME, sum(ALLSUM) PLANSUM,'+#13#10+
      '       (sum(ALLSUM)) FACTSUM' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV, :PROC)' + #13#10 +
      'group by DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      srvCod:= cmGetWord(SRV,2,'_');
      ParamByName('SRV').AsVariant:=srvCod;
      ParamByName('PROC').AsVariant:= Proc;
      Open;
    end;
    if ds_SancSum.IsEmpty then
       raise dezException.Create('Данные отсутствуют!');
  end;
begin
  GetTitle;
  GetData;
  ExpAkt(KontrCode);
end;

procedure TBkpObj.PrintAktBDR31;
var
  ProcName: string;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME, HOUSENOMER, DUNAME, LIFT, GP,' + #13#10 +
      '       sum(TO_) TO_ ,' + #13#10 +
      '       ABS_, LDSS, sum(TO_)SUMMA' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV)' + #13#10 +
      'group by DUNAME, STREETNAME, HOUSENOMER,HOUSE  , LIFT,' + #13#10 +
      '       GP,  ABS_, LDSS';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME, sum(TO_)PLANSUM, 0 CORRECT ,' + #13#10 +
      '       sum(TO_) FACTSUM' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV)' + #13#10 +
      'group by DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
begin
  if ReportType = rtByBDR then
     ProcName:= 'SMETABDR31'  else
     ProcName:= 'SMETABDR31DOC';
  //
  GetTitle;
  GetData;
  ExpAktLift;
end;

procedure TBkpObj.PrintAktBDR32;
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME, HOUSENOMER, DUNAME, LIFT, GP, sum(SUMMA' +
      ')SUMMA' + #13#10 +
      'from SMETABDR32(:M, :Y, :SRV)' + #13#10 +
      'group by DUNAME, STREETNAME, HOUSENOMER, HOUSE,LIFT, GP';
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME, sum(SUMMA)PLANSUM, 0 CORRECT ,' + #13#10 +
      '       sum(SUMMA) FACTSUM' + #13#10 +
      'from SMETABDR32(:M, :Y, :SRV)' + #13#10 +
      'group by DUNAME';
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
begin
  GetTitle;
  GetData;
  ExpAktABC;
end;

procedure TBkpObj.PrintAKTByDoc(code, M, Y, HOUSESRV, PO, DogType: Variant);
var
  DocCode, PRV: Variant;
  TableName, TableSpec: string;

  procedure GetSrvCode;
  begin
    //код услуги
    SrvCode:=cmGetWord(HOUSESRV,2,'_');
    // тип услуги 1 = SRV [FACT1DOC]; 0 = HOUSESRV [FACTDOC]
    SrvType:=cmGetWord(HOUSESRV,1,'_');
    case SrvType of
      0: begin
           TableName := 'FACTDOC';
           TableSpec := 'FACTDOCLIST';
         end;
      1: begin
           TableName := 'FACT1DOC';
           TableSpec := 'FACT1DOCLIST';
         end;
    end;
  end;

  // ищем документ
  function GetDocCode: Variant;
  var
    Q: TFIBQuery;
    SQL: string;
  begin
       sql:=
          'SELECT CODE, SHB, PRV' + #13#10 +
          'FROM '+TableName+#13#10 +
          'where  M =:M and Y =:Y and HOUSESRV=:srv';
    Q:= GetQueryForUse(cmDb.RT, sql);
    try
      Q.ParamByName('M').AsVariant:= M;
      Q.ParamByName('Y').AsVariant:= Y;
      Q.ParamByName('SRV').AsVariant:=SrvCode;
      Q.ExecQuery;
      PRV:=Q.FN('PRV').AsVariant;
      if Q.FN('CODE').AsVariant<> null then
      if Q.FN('SHB').AsVariant<>1 then
         raise dezException.Create('Документ создан вручную (не по шаблону).'
                                    +#10#13+'Формирование акта отменено!');
      Result:= Q.FN('CODE').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  // формируем спецификацию
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'SELECT S.NAME SNAME,' +#13#10+
      '       H.NOMER, DU.NAME DNAME,' +#13#10+
      '       FDL.SQ1 GAREA,' +#13#10+
      '       FDL.SQ2 NGAREA,' +#13#10+
      '       (FDL.SQ1 + FDL.SQ2) AREA,' +#13#10+
      '       FDL.PLANSUM ITOG,' +#13#10+
      '       FDL.CORRECT BALANCE,' +#13#10+
      '       FDL.FACTSUM BITOG' +#13#10+
      'FROM '+TableSpec+' FDL' +#13#10+
      'left outer join house h on h.CODE = fdl.HOUSE' +#13#10+
      'left outer join street s on s.CODE = h.STREET' +#13#10+
      'left outer join du on du.CODE = h.DU' +#13#10+
      'where fdl.'+TableName+'=:doc and fdl.KONTRAGENT =:kontr' +#13#10+
      'order by DU.NAME, S.NAME, H.NOMER';
      ParamByName('Doc').AsVariant:=DocCode;
      ParamByName('kontr').AsVariant:=PO;
      Open;
      //
      mAkt.Close; mAkt.Open;
      mAkt.LoadFromDataSet(ds_Sanc);
      if mAkt.IsEmpty then
        raise dezException.Create('Данные, по указаным параметрам, не обнаружены!');
    end;
  end;
  //формируем заголовок
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      '     SELECT DU.NAME DNAME,' +#13#10+
      '            SUM(FDL.PLANSUM) PLANSUM,' +#13#10+
      '            SUM(FDL.CORRECT) CORRECT,' +#13#10+
      '            SUM(FDL.FACTSUM) FACTSUM' +#13#10+
      '     FROM '+TableSpec+' FDL' +#13#10+
      '     left outer join house h on h.CODE = fdl.HOUSE' +#13#10+
      '     left outer join DU on Du.CODE = h.DU' +#13#10+
      '     where FDL.'+TableName+'=:Doc and FDL.KONTRAGENT=:kontr' +#13#10+
      '     group by DU.NAME';
      ParamByName('Doc').AsVariant:=DocCode;
      ParamByName('kontr').AsVariant:=PO;
      Open;
      while not Eof do begin
        SumStr:= Sumstr + FN('FACTSUM').AsVariant;
        Next;
      end;

    end;
  end;
  //обновляем суммы снятия с объема
  procedure UpdateCorrect;
  var
    Q,Q1: TFIBQuery;
    D1, D2: TDate;
  begin
    Q:=GetQueryForUse(cmDb.RT,
      '  SELECT SUM(SUMMA) SUMMA, HOUSE' +#13#10+
      '  FROM OUTCASHBDR' +#13#10+
      '  where DATA BETWEEN :D1 and :D2' +#13#10+
      '        and KONTRAGENT=:kontr' +#13#10+
      '        and HOUSESRV=:srv' +#13#10+
      '  group by house');
    Q1:=GetQueryForUse(cmDb.WT,
     '  update '+TableSpec+' set CORRECT = :CORRECT, FACTSUM = PLANSUM - :CORRECT' +#13#10+
     '  where ('+TableName+'=:DOC and HOUSE = :HOUSE)');
    Q.Options:=[qoStartTransaction];
    Q1.Options:=[qoStartTransaction, qoAutoCommit];
    try
      D1:=StartOfAMonth(Y,M);
      D2:=EndOfAMonth(Y,M);
      Q.ParamByName('D1').AsVariant:= D1;
      Q.ParamByName('D2').AsVariant:= D2;
      Q.ParamByName('kontr').AsVariant:= PO;
      Q.ParamByName('srv').AsVariant:= HOUSESRV;
      Q.ExecQuery;
      //
      while not Q.Eof do begin
        Q1.ParamByName('DOC').AsVariant:= DocCode;
        Q1.ParamByName('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        Q1.ParamByName('CORRECT').AsVariant:= Q.FN('SUMMA').AsVariant;
        Q1.ExecQuery;
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
      FreeQueryForUse(Q1);
    end;
  end;
  // проверяем разницу по снятию с объемов
  procedure GetDiff;
  var
    SumCash, SumDoc: Variant;
    Q, Q1: TFIBQuery;
    D1, D2: TDate;
    s: string;
  begin
    //query to OUTCASHBDR
    Q:=GetQueryForUse(cmDb.RT,
      'SELECT SUM(SUMMA) SUMMA' +#13#10+
      'FROM OUTCASHBDR' +#13#10+
      'where DATA BETWEEN :D1 and :D2' +#13#10+
      '      and KONTRAGENT=:kontr' +#13#10+
      '      and HOUSESRV=:srv');
    //query to FactDocList
    Q1:= GetQueryForUse(cmDb.RT,
      'select SUM(CORRECT) SUMMA from '+TableSpec+#13#10+
      'where '+TableName+'=:doc and KONTRAGENT=:kontr');
    //
    Q.Options:=[qoStartTransaction];
    Q1.Options:=[qoStartTransaction];
    try
      D1:=StartOfAMonth(Y,M);
      D2:=EndOfAMonth(Y,M);
      Q.ParamByName('D1').AsVariant:=D1;
      Q.ParamByName('D2').AsVariant:=D2;
      Q.ParamByName('kontr').AsVariant:=PO;
      Q.ParamByName('srv').AsVariant:=HOUSESRV;
      Q.ExecQuery;
      SumCash:= Q.FN('SUMMA').AsCurrency;
      //
      Q1.ParamByName('doc').AsVariant:= DocCode;
      Q1.ParamByName('kontr').AsVariant:= PO;
      Q1.ExecQuery;
      SumDoc:= Q1.FN('SUMMA').AsCurrency;
      //

      // проверяем если документ зарыт то выдаем сообщение иначе перезаписываем корректировки
      if SumCash<>SumDoc then
      if PRV=1 then begin
         s:='Внимание! Сумма снятия с объемов = '+VarToStr(SumCash)+#10#13+
                   'Сумма по акту = '+VarToStr(SumDoc) +#10#13+
                   'Акт закрыт. Изменять нельзя.'+#10#13+
                   'Обратитесь в службу эксплуатации ДЕЗ!';
         MessageDlg(s,  mtWarning, [mbOK], 0);
      end else begin
        //обновляем корректировки в документе
        UpdateCorrect;
      end;
    finally
      FreeQueryForUse(Q);
      FreeQueryForUse(Q1);
    end;
  end;

  procedure GetKontrTypeInfo;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.RT,
       'SELECT KT.CODE, ' +#13#10+
       '       KT.SRVDOGTYPE, ' +#13#10+
       '       KT.ROLES, R.NAME RNAME,' +#13#10+
       '       KT.WORKER,' +#13#10+
       '       IIF(KT.WORKER=7, ''Администратор'',(LEFT(P.I, 1) || ''.'' ||LEFT(P.O, 1) || ''.''|| '' '' ||P.F )) FIO' +#13#10+
       'FROM KONTR$TYPE$INFO KT' +#13#10+
       'LEFT OUTER JOIN ROLES R ON R.CODE = KT.ROLES' +#13#10+
       'LEFT OUTER JOIN WORKER W ON W.CODE = KT.WORKER' +#13#10+
       'LEFT OUTER JOIN PIPLE P ON P.CODE = W.PIPLE' +#13#10+
       'where kt.SRVDOGTYPE = :SRVDOGTYPE');
    Q.Options:= [qoStartTransaction];
    try
      Q.ParamByName('SRVDOGTYPE').AsVariant:= DogType;
      Q.ExecQuery;
      fRole:= Q.FN('RNAME').AsVariant;
      if fRole = null then
         fRole:='Ст. менеджер СЭ';
      fWorker:= Q.FN('FIO').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure CheckArea;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT,'execute procedure SETSHABLONSQ$PDU(:DOC_CODE, :M, :Y, :SRV1, :SRV2, :SRVTYPE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('DOC_CODE').AsVariant:= DocCode;
      Q.ParamByName('M').AsVariant:= M;
      Q.ParamByName('Y').AsVariant:= Y;
      case SrvType of
        0 : begin
              Q.ParamByName('SRV1').AsVariant:= SrvCode;
              Q.ParamByName('SRV2').AsVariant:= 0;
            end;
        1 : begin
              Q.ParamByName('SRV1').AsVariant:= 0;
              Q.ParamByName('SRV2').AsVariant:= SrvCode;
            end;
      end;

      Q.ParamByName('SRVTYPE').AsVariant:= SrvType;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  //если контрагент не задан - нечего печатать
  if PO = Null then
     raise dezException.Create('Не указан код контрагента!');
  //парсим код услуги
  GetSrvCode;
  //если код документа не найден - пытаемся определить по периоду и услуге
  if (code = null) or (code = Unassigned) then begin
    if (M = null) or (Y = null) then
       raise dezException.Create('Не указаны обязательные параметры!'+#10#13+'месяц/год');
    if (HOUSESRV = Null) then
       raise dezException.Create('Не указан код услуги!');
    //ищем код докмента
    DocCode:= GetDocCode;
    if DocCode = null then
       raise dezException.Create('Не найден документ за указанный период!');
  end else
    DocCode:= code;
  //проверяем площади
  CheckArea;
  //получаем спецификацию документа
  GetDiff;
  GetTitle;
  GetData;
  // получаем данные по типу договора
  GetKontrTypeInfo;
  //
  ExpAkt(KontrCode);
end;

procedure TBkpObj.ExpAkt(PO: Variant);
var
  month :Variant;
  Dir,Dir1 :variant;
begin
  // получаем данные по типу договора

  //
  month := LongMonthNames[Integer(M)];
  if PO=null then
    Dir:=''
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);
  //
  xl1.Template:='rep\akt.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I10';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A11:I11';
//  with xl1.Bands.AddBand(xlrbtSummary) do
//    Range:='A16:I34';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A12:I26';

  //-----------------------------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='d1';
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    if Dir<>null then
    ValueAsString:=VarToStr(Dir) else
    ValueAsString:='____________________';
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='SumStr';
    ValueAsString:= SumNumToFull(SumStr);
  end;
  //Данные-------------------------------------
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:H7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:H10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:H9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:H8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:H28';
  //--------------------------------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Role';
    ValueAsString:=VarToStr(fRole);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Worker';
    ValueAsString:=VarToStr(fWorker);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Role1';
    case SrvType of
      0: begin
           if SrvCode = 8 then
              ValueAsString:=VarToStr('Инженер-куратор 1 категории') else
              ValueAsString:=VarToStr('Инженер-куратор');
         end;
      1: begin
           case SrvCode of
             2,7..12: ValueAsString:=VarToStr('Инженер-куратор 1 категории');
             else ValueAsString:=VarToStr('Инженер-куратор');
           end;
         end;
    end;
  end;
  xl1.Show();
end;

procedure TBkpObj.ExpAktABC;
var
  month :Variant;
  PO,Dir,Dir1 :variant;
begin
  month := LongMonthNames[Integer(M)];
  PO:= GetKontrByDog(Dog);
  if PO=null then
    Dir:=''
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);
  //
  xl1.Template:='rep\aktABC.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
//  with xl1.Bands.AddBand(xlrbtSummary) do
//    Range:='A16:I34';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I34';

  //-----------------------------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='d1';
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  //Данные-------------------------------------
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:G7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:G10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:G9';
    FieldName:='DUNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:G8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:G11';
  //--------------------------------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  xl1.Show();
end;

procedure TBkpObj.ExpAktLift;
var
  month :Variant;
  PO,Dir,Dir1:variant;
begin
  month := LongMonthNames[Integer(M)];
  PO:= GetKontrByDog(Dog);
  if PO=null then
    Dir:=''
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);
  //
  xl1.Template:='rep\aktlift.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
//  with xl1.Bands.AddBand(xlrbtSummary) do
//    Range:='A16:I34';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I34';

  //-----------------------------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='d1';
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  //Данные-------------------------------------
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:G7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:G10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:G9';
    FieldName:='DUNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:G8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:G11';
  //--------------------------------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  xl1.Show();
end;

{------------------------------------------------------------------------------
 Экспорт сметы
-------------------------------------------------------------------------------}
procedure TBkpObj.PrintSmeta(Year, Month, S,dogovor,kname: Variant);
var
  dc, kontr, bdr: Variant;
  hs :WideString;
  //-------------------------------------------
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.f10 GSumma,fb1.f11 NGArea,fb1.f15 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+fb1.f11) Area,(FB1.f10+fb1.f15) Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')';
      ParamByName('FBD').AsVariant:=bdr;
      Open;
    end;
  end;
  //---------------------------------------------
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in (2,3,9,11,13,14),' + #13#10 +
      '    d.name,trim(RIGHT(d.name,2))) DNAME,' + #13#10 +
      '    sum(FB1.f4+fb1.f11) SArea,sum(FB1.f10+fb1.f15) SSum' + #13#10 +
      'from PBDR1 FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'where FB1.PBDR = :FBD' + #13#10 +
      '     and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      ParamByName('FBD').AsVariant:=bdr;
      Open;
    end;
  end;
begin
  Y:=Year;
  M:=Month;
  Srv:=S;
  dc:=dogovor;
  kontr:=kname;
  //
  MakeDate;
  //получаем код договора и контрагента
  //if GetDogCod(dc,kontr)=null then Exit;
  if dc=null then Exit;
  //список домов по договору
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  bdr:=GetCodBDR(Y,M,Srv);
  if bdr=null then Exit;
  GetTitle;
  GetData;
  ExpSmeta(KontrCode);
end;

procedure TBkpObj.PrinSmetaTemplate(Template: variant);

  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
        'select  SUM(MS.SUMMA) SSUM,' + #13#10 +
        '       SUM(h.total_sq + h.commerce_sq) SArea,' + #13#10 +
        '       iif(du.code in (2,3,9,11,13,14),' + #13#10 +
        '           du.name,trim(RIGHT(du.name,2))) DNAME' + #13#10 +
        'from MAKESMETASHABLONSPEC MS' + #13#10 +
        'left outer join house h on h.code=ms.house' + #13#10 +
        'left outer join street s on s.code=h.street' + #13#10 +
        'left outer join du on du.code=h.DU' + #13#10 +
        'where MS.MAKESMETASHABLON=:shablon';
      ParamByName('shablon').AsVariant:= Template;
      GroupByClause:='3';
      Open;
      mSmeta.Close;
      mSmeta.LoadFromDataSet(ds_SancSum);
    end;
  end;

  procedure GetDetail;
  begin
    with ds_Sanc do begin
      Close;
      SelectSQL.Text:=
        'select du.code DU,' + #13#10 +
        '       S.name SName,' + #13#10 +
        '       MS.HOUSE, H.nomer, h.living_sq, h.total_sq GAREA,' + #13#10 +
        '       MS.SUMMA, h.commerce_sq NGAREA,' + #13#10 +
        '       (h.total_sq + h.commerce_sq) AREA,' + #13#10 +
        '       iif(du.code in (2,3,9,11,13,14),' + #13#10 +
        '           du.name,trim(RIGHT(du.name,2))) DNAME' + #13#10 +
        'from MAKESMETASHABLONSPEC MS' + #13#10 +
        'left outer join house h on h.code=ms.house' + #13#10 +
        'left outer join street s on s.code=h.street' + #13#10 +
        'left outer join du on du.code=h.DU' + #13#10 +
        'where MS.MAKESMETASHABLON=:shablon and MS.SUMMA<>0';
      ParamByName('shablon').AsVariant:= Template;
      OrderClause:='10';
      Open;
      mAkt.Close; mAkt.Open;
      mAkt.LoadFromDataSet(ds_Sanc);
    end;
  end;

begin
  GetTitle;
  GetDetail;
  ExpSmeta(KontrCode);
end;

procedure TBkpObj.PrintSmetaBDR1;
var
  ProcName: string;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME SNAME, HOUSENOMER NOMER, DUNAME DNAME,' + #13 +
      #10 +
      '       GP GAREA,  NGP NGAREA, ' + #13#10 +
      '       ALLP AREA, ALLSUM SUMMA' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV, :PROC) ORDER BY DUNAME, STREETNAME, HOUSENOMER';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      ParamByName('PROC').AsVariant:= Proc;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME DNAME, SUM(ALLP) SAREA, SUM(ALLSUM) SSUM' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV, :PROC)' + #13#10 +
      'group by DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      ParamByName('PROC').AsVariant:= Proc;
      Open;
    end;
  end;
begin
  if ReportType = rtByBDR then
     ProcName:= 'SMETABDR1'  else
     ProcName:= 'SMETABDR1DOC';
  //
  GetTitle;
  GetData;
  ExpSmeta(KontrCode);
end;

procedure TBkpObj.PrintSmetaBDR2;
var
  ProcName: string;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME SNAME, HOUSENOMER NOMER, DUNAME DNAME,' + #13 +
      #10 +
      '       GP GAREA, NGP NGAREA, ' + #13#10 +
      '       ALLP AREA, ALLSUM SUMMA, 0 OUTSUM' + #13#10 +
      'from SMETABDR2(:SRVDOG, :M, :Y, :SRV, :PROC) ORDER BY DUNAME, STREETNAME, HOUSENOMER';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      ParamByName('PROC').AsVariant:=0;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME DNAME, SUM(ALLP) SAREA, SUM(ALLSUM) SSUM' + #13#10 +
      'from SMETABDR2(:SRVDOG, :M, :Y, :SRV, :PROC)' + #13#10 +
      'group by DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      ParamByName('PROC').AsVariant:=0;
      Open;
    end;
  end;
begin
  if ReportType = rtByBDR then
     ProcName:= 'SMETABDR2'  else
     ProcName:= 'SMETABDR2DOC';
  //
  GetTitle;
  if ds_SancSum.IsEmpty then
     raise dezException.Create('Отсутствуют данные!');
  GetData;
  ExpSmeta(KontrCode);
end;

procedure TBkpObj.PrintSmetaBDR3;
var
  ProcName: string;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME SNAME, HOUSENOMER NOMER, DUNAME DNAME,' + #13 +
      #10 +
      '       GP GAREA, NGP NGAREA, ' + #13#10 +
      '       ALLP AREA, ALLSUM SUMMA, 0 OUTSUM' + #13#10 +
      'from SMETABDR3(:SRVDOG, :M, :Y, :SRV) ORDER BY DUNAME, STREETNAME, HOUSENOMER';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME DNAME, SUM(ALLP) SAREA, SUM(ALLSUM) SSUM' + #13#10 +
      'from SMETABDR3(:SRVDOG, :M, :Y, :SRV, :PROC)' + #13#10 +
      'group by DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      ParamByName('PROC').AsVariant:= 0;
      Open;
    end;
  end;
begin
  if ReportType = rtByBDR then
     ProcName:= 'SMETABDR3'  else
     ProcName:= 'SMETABDR2DOC';
  //
  GetTitle;
  if ds_SancSum.IsEmpty then
     raise dezException.Create('Отсутствуют данные!');
  GetData;
  ExpSmeta(KontrCode);
end;

procedure TBkpObj.PrintSMETABDR31;
var
  ProcName: string;

  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME, HOUSENOMER, DUNAME, LIFT,' + #13#10 +
      '       GP, TO_, ABS_, LDSS,sum(TO_)SUMMA' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :Srv)' + #13#10 +
      'group by DUNAME, STREETNAME, HOUSENOMER,HOUSE  , LIFT,' + #13#10 +
      '       GP, TO_, ABS_, LDSS';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME,' + #13#10 +
      '       sum(GP) SAREA, sum(TO_) SSUM' + #13#10 +
      'from '+ProcName+'(:SRVDOG, :M, :Y, :SRV)' + #13#10 +
      'group BY DUNAME';
      ParamByName('SRVDOG').AsVariant:=Dog;
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
begin
  if ReportType = rtByBDR then
     ProcName:= 'SMETABDR31'  else
     ProcName:= 'SMETABDR31DOC';
  //
  GetTitle;
  GetData;
  ExpSmetaLift;
end;

procedure TBkpObj.PrintSMETABDR32;
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select HOUSE, STREETNAME, HOUSENOMER, DUNAME, LIFT, GP, SUMMA, 0 OUTSUM' +
      #13#10 +
      'from SMETABDR32(:M, :Y, :SRV)' + #13#10 +
      'order by DUNAME, STREETNAME, HOUSENOMER';
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select DUNAME,' + #13#10 +
      '       sum(GP) SAREA, sum(SUMMA) SSUM' + #13#10 +
      'from SMETABDR32(:M, :Y, :SRV)' + #13#10 +
      'group BY DUNAME';
      ParamByName('M').AsVariant:=M;
      ParamByName('Y').AsVariant:=Y;
      ParamByName('SRV').AsVariant:=SRV;
      Open;
    end;
  end;
begin
  //
  GetTitle;
  GetData;
  ExpSmetaABC;
end;

procedure TBkpObj.PrintSmetaByDoc(code, M, Y, HOUSESRV, PO: Variant);
var
  SrvCode, SrvType, DocCode: Variant;
  TableName, TableSpec: string;

  procedure GetSrvCode;
  begin
    //код услуги
    SrvCode:=cmGetWord(HOUSESRV,2,'_');
    // тип услуги 1 = SRV [FACT1DOC]; 0 = HOUSESRV [FACTDOC]
    SrvType:=cmGetWord(HOUSESRV,1,'_');
    case SrvType of
      0: begin
           TableName := 'FACTDOC';
           TableSpec := 'FACTDOCLIST';
         end;
      1: begin
           TableName := 'FACT1DOC';
           TableSpec := 'FACT1DOCLIST';
         end;
    end;
  end;

  // ищем документ
  function GetDocCode: Variant;
  var
    Q: TFIBQuery;
    SQL: string;
  begin
    sql:=
          'SELECT CODE, SHB' + #13#10 +
          'FROM '+TableName+#13#10 +
          'where  M =:M and Y =:Y and HOUSESRV=:srv';
    Q:= GetQueryForUse(cmDb.RT, sql);
    try
      Q.ParamByName('M').AsVariant:= M;
      Q.ParamByName('Y').AsVariant:= Y;
      Q.ParamByName('SRV').AsVariant:=SrvCode;
      Q.ExecQuery;
      if Q.FN('CODE').AsVariant<> null then
      if Q.FN('SHB').AsVariant<>1 then
         raise dezException.Create('Документ создан вручную (не по шаблону).'
                                    +#10#13+'Формирование сметы отменено!');
      Result:= Q.FN('CODE').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  // формируем спецификацию
  procedure GetData;
  begin
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text :=
      'SELECT S.NAME SNAME,' +#13#10+
      '       H.NOMER, DU.NAME DNAME,' +#13#10+
      '       FDL.SQ1 GAREA,' +#13#10+
      '       FDL.SQ2 NGAREA,' +#13#10+
      '       (FDL.SQ1 + FDL.SQ2) AREA,' +#13#10+
      '       FDL.PLANSUM SUMMA' +#13#10+
      'FROM '+TableSpec+' FDL' +#13#10+
      'left outer join house h on h.CODE = fdl.HOUSE' +#13#10+
      'left outer join street s on s.CODE = h.STREET' +#13#10+
      'left outer join du on du.CODE = h.DU' +#13#10+
      'where fdl.'+TableName+'=:doc and fdl.KONTRAGENT =:kontr' +#13#10+
      'order by DU.NAME, S.NAME, H.NOMER';
      ParamByName('Doc').AsVariant:=DocCode;
      ParamByName('kontr').AsVariant:=PO;
      Open;
      //
      mAkt.Close;
      mAkt.Open;
      mAkt.LoadFromDataSet(ds_Sanc);
      if mAkt.IsEmpty then
         raise dezException.Create('Данные, по указаным параметрам, не обнаружены!');
    end;
  end;
  //формируем заголовок
  procedure GetTitle;
  begin
    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'SELECT DU.NAME DNAME,' +#13#10+
      '       SUM(FDL.PLANSUM) SSUM,' +#13#10+
      '       SUM(FDL.SQ1 + FDL.SQ2) SAREA' +#13#10+
      'FROM '+TableSpec+' FDL' +#13#10+
      'left outer join house h on h.CODE = fdl.HOUSE' +#13#10+
      'left outer join DU on Du.CODE = h.DU' +#13#10+
      'where FDL.'+TableName+'=:Doc and FDL.KONTRAGENT=:kontr' +#13#10+
      'group by DU.NAME';
      ParamByName('Doc').AsVariant:=DocCode;
      ParamByName('kontr').AsVariant:=PO;
      Open;
    end;
  end;
  // проверяем разницу по снятию с объемов
  {$MESSAGE WARN 'БЛЯ ЭТО ДЛЯ ПЕЧАТИ АКТА'}
  procedure GetDiff;
  var
    SumCash, SumDoc: Variant;
    Q, Q1: TFIBQuery;
    D1, D2: TDate;
  begin
    //query to OUTCASHBDR
    Q:=GetQueryForUse(cmDb.RT,
      'SELECT SUM(SUMMA) SUMMA' +#13#10+
      'FROM OUTCASHBDR' +#13#10+
      'where DATA BETWEEN :D1 and :D2' +#13#10+
      '      and KONTRAGENT=:kontr' +#13#10+
      '      and HOUSESRV=:srv');
    //query to FactDocList
    Q1:= GetQueryForUse(cmDb.RT,
      'select SUM(CORRECT) SUMMA from FACTDOCLIST' +#13#10+
      'where FACTDOC=:doc and KONTRAGENT=:kontr');
    //
    Q.Options:=[qoStartTransaction];
    Q1.Options:=[qoStartTransaction];
    try
      D1:=StartOfAMonth(Y,M);
      D2:=EndOfAMonth(Y,M);
      Q.ParamByName('D1').AsVariant:=D1;
      Q.ParamByName('D2').AsVariant:=D2;
      Q.ParamByName('kontr').AsVariant:=PO;
      Q.ParamByName('srv').AsVariant:=HOUSESRV;
      Q.ExecQuery;
      SumCash:= Q.FN('SUMMA').AsVariant;
      //
      Q1.ParamByName('doc').AsVariant:= DocCode;
      Q1.ParamByName('kontr').AsVariant:= PO;
      Q1.ExecQuery;
      SumDoc:= Q1.FN('SUMMA').AsVariant;
      //
      if SumCash<>SumDoc then
         MessageDlg('Суммы',  mtWarning, [mbOK], 0);

    finally
      FreeQueryForUse(Q);
      FreeQueryForUse(Q1);
    end;
  end;

  procedure CheckArea;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT,'execute procedure SETSHABLONSQ$PDU(:DOC_CODE, :M, :Y, :SRV1, :SRV2, :SRVTYPE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('DOC_CODE').AsVariant:= DocCode;
      Q.ParamByName('M').AsVariant:= M;
      Q.ParamByName('Y').AsVariant:= Y;
      case SrvType of
        0 : begin
              Q.ParamByName('SRV1').AsVariant:= SrvCode;
              Q.ParamByName('SRV2').AsVariant:= 0;
            end;
        1 : begin
              Q.ParamByName('SRV1').AsVariant:= 0;
              Q.ParamByName('SRV2').AsVariant:= SrvCode;
            end;
      end;

      Q.ParamByName('SRVTYPE').AsVariant:= SrvType;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  //если контрагент не задан - нечего печатать
  if PO = Null then
     raise dezException.Create('Не указан код контрагента!');
  //парсим код услуги
  GetSrvCode;
  //если код документа не найден - пытаемся определить по периоду и услуге
  if (code = null) or (code = Unassigned) then begin
    if (M = null) or (Y = null) then
       raise dezException.Create('Не указаны обязательные параметры!'+#10#13+'месяц/год');
    if (HOUSESRV = Null) then
       raise dezException.Create('Не указан код услуги!');
    //ищем код докмента
    DocCode:= GetDocCode;
    if DocCode = null then
       raise dezException.Create('Не найден документ за указанный период!');
  end else
    DocCode:= code;
  // проверяем площади
  //  CheckArea;
  //получаем спецификацию документа
  GetTitle;
  GetData;
  ExpSmeta(PO);
end;

procedure TBkpObj.VentilationReport(tarif, d1, d2: Variant; eType: TExportType);
begin
  raise Exception.Create('Не реализовано');
end;

procedure TBkpObj.VentilationReport(tarif, graphCode, d1, d2: Variant;
  eType: TExportType);
var
  Q, Q1: TpFIBDataSet;
  xlr: TEXLReport;
  gName: string;

  function GetGraphName(Code: Variant): string;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.RT, 'select gt.name from graphlist gl'+#10#13+
                                'left outer join graphto gt on gt.code = gl.graphto'+#10#13+
                                'where gl.code = :code');
    Q.Options:= [qoStartTransaction];
    try
      Q.ParamByName('code').AsVariant:= Code;
      Q.ExecQuery;
      Result:= Q.FN('NAME').AsString;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  //получаем код договора по коду графика
  function GetSrvDog(graphList: Variant) : Variant;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.RT, 'select SRVDOG from GRAPHLIST WHERE CODE=:CODE');
    Q.Options:= [qoStartTransaction];
    try
      Q.ParamByName('CODE').AsVariant:= graphList;
      Q.ExecQuery;
      Result:= Q.FN('SRVDOG').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure ExportSmeta;
  var
    PO, Dir, Dir1, dog, kontr :variant;
  begin
    dog:= GetSrvDog(graphCode);
    if VarIsType(dog,[varNull, varEmpty]) then
      raise dezException.Create('Ошибка получения кода договора из графика!');
    PO:= GetKontrByDog(dog);
    kontr:= GetKontrName(PO);
    if PO=null then
      Dir:=''
    else
      Dir:=GetDirName(PO);
    Dir1:=GetDirName(1);

    with xlr do begin
      Template:=AppUtils.AppPath+'rep\smeta_vent.xls';
      TemplSheet:='Заголовок';
      Bands.Clear;
      with Bands.AddBand(xlrbtTitle) do
        Range:='A1:I13';
      with Bands.AddBand(xlrbtMasterData) do
        Range:='A14:I14';
      with Bands.AddBand(xlrbtSummary) do
        Range:='A15:I22';
      //------------------
      Dictionary.Clear;
      with Dictionary.Add do
      begin
        FieldName:='d1';
        ValueAsString:=VarToStr(d1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='d2';
        ValueAsString:=VarToStr(d2);
      end;
      with Dictionary.Add do
      begin
        FieldName:='graphName';
        ValueAsString:=gName;
      end;
      with Dictionary.Add do
      begin
        FieldName:='tarif';
        ValueAsString:=VarToStr(tarif);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir';
        ValueAsString:=VarToStr(Dir);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir1';
        ValueAsString:=VarToStr(Dir1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Kontr';
        ValueAsString:=VarToStr(kontr);
      end;
    end;

    //Данные
    with xl_sub do begin
      TemplSheet:='Данные';
      Bands.Clear;

      with Bands.AddBand(xlrbtTitle) do
        Range:='A1:F6';
      with Bands.AddBand(xlrbtMasterData) do
        Range:='A7:F7';
      with Bands.AddBand(xlrbtSummary) do
        Range:='A9:F16';

      //-----------------------------------------
      Dictionary.Clear;
      with Dictionary.Add do
      begin
        FieldName:='d1';
        ValueAsString:=VarToStr(d1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='d2';
        ValueAsString:=VarToStr(d2);
      end;
      with Dictionary.Add do
      begin
        FieldName:='graphName';
        ValueAsString:=gName;
      end;
      with Dictionary.Add do
      begin
        FieldName:='tarif';
        ValueAsString:=VarToStr(tarif);
      end;
            with Dictionary.Add do
      begin
        FieldName:='Dir';
        ValueAsString:=VarToStr(Dir);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir1';
        ValueAsString:=VarToStr(Dir1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Kontr';
        ValueAsString:=VarToStr(kontr);
      end;
    end;
    xlr.Show();
  end;

  procedure ExportAct;
  var
    PO,Dir,Dir1, dog, kontr :variant;
  begin
    dog:= GetSrvDog(graphCode);
    if VarIsType(dog,[varNull, varEmpty]) then
      raise dezException.Create('Ошибка получения кода договора из графика!');
    PO:= GetKontrByDog(dog);
    kontr:= GetKontrName(PO);
    if PO=null then
      Dir:=''
    else
      Dir:=GetDirName(PO);
    Dir1:=GetDirName(1);
    //
    with xlr do begin
      Template:=AppUtils.AppPath+'rep\act_vent.xls';
      TemplSheet:='Заголовок';
      Bands.Clear;
      with Bands.AddBand(xlrbtTitle) do
        Range:='A1:I10';
      with Bands.AddBand(xlrbtMasterData) do
        Range:='A11:I11';
      with Bands.AddBand(xlrbtSummary) do
        Range:='A12:I26';

      //-----------------------------------------
      Dictionary.Clear;
      with Dictionary.Add do
      begin
        FieldName:='d1';
        ValueAsString:=VarToStr(d1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Kontr';
        ValueAsString:=VarToStr(kontr);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir';
        if Dir<>null then
        ValueAsString:=VarToStr(Dir) else
        ValueAsString:='____________________';
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir1';
        ValueAsString:=VarToStr(Dir1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='d1';
        ValueAsString:=VarToStr(d1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='d2';
        ValueAsString:=VarToStr(d2);
      end;
      with Dictionary.Add do
      begin
        FieldName:='graphName';
        ValueAsString:=gName;
      end;
      with Dictionary.Add do
      begin
        FieldName:='tarif';
        ValueAsString:=VarToStr(tarif);
      end;
      with Dictionary.Add do
      begin
        FieldName:='SumStr';
        ValueAsString:= SumNumToFull(SumStr);
      end;
    end;

    //Данные-------------------------------------
    with xl_sub do begin
      TemplSheet:='Данные';
      Bands.Clear;

      with Bands.AddBand(xlrbtTitle) do
        Range:='A1:H6';
      with Bands.AddBand(xlrbtMasterData) do
        Range:='A7:H7';
      with Bands.AddBand(xlrbtSummary) do
        Range:='A9:H27';

      //-----------------------------------------
      Dictionary.Clear;
      with Dictionary.Add do
      begin
        FieldName:='d1';
        ValueAsString:=VarToStr(d1);
      end;
      with Dictionary.Add do
      begin
        FieldName:='d2';
        ValueAsString:=VarToStr(d2);
      end;
      with Dictionary.Add do
      begin
        FieldName:='graphName';
        ValueAsString:=gName;
      end;
      with Dictionary.Add do
      begin
        FieldName:='tarif';
        ValueAsString:=VarToStr(tarif);
      end;
            with Dictionary.Add do
      begin
        FieldName:='Kontr';
        ValueAsString:=VarToStr(kontr);
      end;
      with Dictionary.Add do
      begin
        FieldName:='Dir';
        if Dir<>null then
        ValueAsString:=VarToStr(Dir) else
        ValueAsString:='____________________';
      end;
    end;
    xlr.Show();
  end;

begin
  try
    Q:= TpFIBDataSet.Create(nil);
    Q.Database:= cmDb.DB;
    Q.Transaction:= cmDb.RT;
    Q.UpdateTransaction:= cmDb.WT;
    Q.Options:=[poStartTransaction, poAutoFormatFields, poFetchAll];
    //
    Q1:= TpFIBDataSet.Create(nil);
    Q1.Database:= cmDb.DB;
    Q1.Transaction:= cmDb.RT;
    Q1.UpdateTransaction:= cmDb.WT;
    Q1.Options:=[poStartTransaction, poAutoFormatFields, poFetchAll];
    //xl_sub
    xl_sub := TEXLReport.Create(nil);
    xl_sub.DataSet := Q;
    //xl_sub.OnBeforeBuild := xl_subBeforeBuild;
    //xl_sub.OnFormatCell := xl_subFormatCell;
    //
    xlr := TEXLReport.Create(nil);
    xlr.DataSet:= Q1;
    xlr.SubReport:= xl_sub;
    //
    gName:= GetGraphName(graphCode);
    //
    case eType of
      etSmeta: begin
                 Q.SelectSQL.Text:= 'select * from GET_VENTILATION_SMETA(:DSTART, :DEND, :TARIF, :GRAPHLIST)';
                 Q1.SelectSQL.Text:= 'select DUNAME, sum(FLAT_SUM) FLAT_SUM, sum(ALL_CNT) ALL_CNT'+#10#13+
                                     ' from GET_VENTILATION_SMETA(:DSTART, :DEND, :TARIF, :GRAPHLIST)'+#10#13+
                                     ' group by 1';
                 try
                    Q.ParamByName('DSTART').AsVariant:=  d1;
                    Q.ParamByName('DEND').AsVariant:= d2;
                    Q.ParamByName('TARIF').AsVariant:= tarif;
                    Q.ParamByName('GRAPHLIST').AsVariant:= graphCode;
                    Q.Open;
                    if Q.RecordCount < 1 then
                      raise dezException.Create('За указанный период данные не найдены.');
                    //head
                    Q1.ParamByName('DSTART').AsVariant:=  d1;
                    Q1.ParamByName('DEND').AsVariant:= d2;
                    Q1.ParamByName('TARIF').AsVariant:= tarif;
                    Q1.ParamByName('GRAPHLIST').AsVariant:= graphCode;
                    Q1.Open;
                   //экспорт в Excel
                   ExportSmeta;
                 finally

                 end;
               end;
      etAct:   begin
                 Q.SelectSQL.Text:= 'select * from GET_VENTILATION_ACT(:DSTART, :DEND, :TARIF, :GRAPHLIST)';
                 Q1.SelectSQL.Text:= 'select DUNAME, sum(FLAT_SUM) FLAT_SUM, sum(ACTFACT) ACTFACT, sum(ALL_CNT) ALL_CNT'+#10#13+
                                     ' from GET_VENTILATION_ACT(:DSTART, :DEND, :TARIF, :GRAPHLIST)'+#10#13+
                                     ' group by 1';
                 try
                    Q.ParamByName('DSTART').AsVariant:=  d1;
                    Q.ParamByName('DEND').AsVariant:= d2;
                    Q.ParamByName('TARIF').AsVariant:= tarif;
                    Q.ParamByName('GRAPHLIST').AsVariant:= graphCode;
                    Q.Open;
                    if Q.RecordCount < 1 then
                      raise dezException.Create('За указанный период данные не найдены.');
                    //head
                    Q1.ParamByName('DSTART').AsVariant:=  d1;
                    Q1.ParamByName('DEND').AsVariant:= d2;
                    Q1.ParamByName('TARIF').AsVariant:= tarif;
                    Q1.ParamByName('GRAPHLIST').AsVariant:= graphCode;
                    Q1.Open;
                   //экспорт в Excel
                   ExportAct;
                 finally

                 end;
               end;
    end;
  finally
    FreeAndNil(xlr);
    FreeAndNil(Q);
    FreeAndNil(Q1);
    FreeAndNil(xl_sub);
  end;
end;

procedure TBkpObj.VentilationReport(GraphList: Variant; eType: TExportType);
var
  F: TVentSmetalForm;
begin
    try
      F:= TVentSmetalForm.Create(Application);
      if F.ShowModal = mrOk then begin
        VentilationReport(F.sp_Tarif.EditValue, GraphList, F.dt1.EditValue, F.dt2.EditValue, eType);
      end;
    finally
      FreeAndNil(F);
    end;
end;

procedure TBkpObj.ExpSmeta(PO: Variant);
var
  month :string;
  Dir, Dir1 :variant;
begin
  //
  if M = null then
  month := 'по шаблону' else
  month :='за '+ LongMonthNames[Integer(M)];
  if PO=null then
    Dir:='____________________'
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);

  xl1.Template:='rep\smeta.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I22';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  //Данные
  //xl_sub.Template:='rep\smeta.xls';
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:H7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:H10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:H9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:H8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:H17';
  //------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  xl1.Show();
end;

procedure TBkpObj.ExpSmetaABC;
var
  month :string;
  PO, Dir, Dir1 :variant;
begin
  //
  month := LongMonthNames[Integer(M)];
  PO:= GetKontrByDog(Dog);
  if PO=null then
    Dir:=''
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);
  xl1.Template:='rep\smetaabs.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I22';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  //Данные
  //xl_sub.Template:='rep\smeta.xls';
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:G7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:G10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:G9';
    FieldName:='DUNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:G8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:G11';
  //------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  xl1.Show();
end;

procedure TBkpObj.ExpSmetaLift;
var
  month :string;
  PO, Dir, Dir1 :variant;
begin
  //
  month := LongMonthNames[Integer(M)];
  PO:= GetKontrByDog(Dog);
  if PO=null then
    Dir:=''
  else
    Dir:=GetDirName(PO);
  Dir1:=GetDirName(1);
  xl1.Template:='rep\smetalift.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I22';
  //------------------
  xl1.Dictionary.Clear;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Dir1';
    ValueAsString:=VarToStr(Dir1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  //Данные
  //xl_sub.Template:='rep\smeta.xls';
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:G7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:G10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:G9';
    FieldName:='DUNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:G8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:G11';
  //------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='srvName';
    ValueAsString:=VarToStr(srvName);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=month;
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='Dir';
    ValueAsString:=VarToStr(Dir);
  end;
  xl1.Show();
end;

procedure TBkpObj.xl_subBeforeBuild(Sender: TObject);
begin
  FCounter:=1;
  rdu:='';
end;

procedure TBkpObj.xl_subFormatCell(Sender: TObject; Band: TEXLReportBand;
  RowInTemplate, RowInReport, ColumnInReport: Integer; Report: _Worksheet;
  const CellValue: OleVariant);
var
  R1: String;
begin
  if (Band.BandType = xlrbtMasterData) and (ColumnInReport = 4) then
  begin
    R1 := 'A' + IntToStr(RowInReport);
    if CellValue = rdu then
    begin
      Inc(FCounter);
      Report.Range[R1, R1].Value:=FCounter;
    end
    else if CellValue <> rdu then
    begin
      FCounter:=1;
      rdu:=CellValue;
      Report.Range[R1, R1].Value:=FCounter;
    end;
  end;
end;

end.


















