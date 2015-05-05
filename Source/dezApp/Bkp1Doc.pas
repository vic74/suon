unit Bkp1Doc;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  EXLReportExcelTLB,EXLReportBand, EXLReport,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants;
 type
{ TBkp1Obj }

  TBkp1Obj = class(TObject)
  private

  protected
    Y :Variant;
    M :Variant;
    SRV,LocSrv,dc,kontr :Variant;
    ds_SancSum: TpFIBDataSet;
    ds_Sanc: TpFIBDataSet;
    xl1: TEXLReport;
    xl_sub: TEXLReport;
    D1: TDateTime;
    D2: TDateTime;
    FCounter :integer;
    rdu :string;
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
    procedure ExpSmeta(kontr :variant);
    function GetFactDocCode(srv :Variant) :Variant;
    procedure ExpAkt(kontr :variant);
    procedure GetParamBDR(var bdr,Srv,tbl,fld :Variant);
  public
    procedure PrintSmeta(Year,Month,S,dogovor,kname :Variant);
    procedure PrintAkt(Year, Month, S,dogovor,kname: Variant);
    constructor Create;
    destructor Destroy; override;
  published

  end;

implementation

uses GetDogFrm, cmDBUnit;


{ TBkp1Obj }

constructor TBkp1Obj.Create;
begin
  CreateComponents;
end;

procedure TBkp1Obj.CreateComponents;
begin
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
  xl_sub.DataSet := ds_Sanc;
  xl_sub.OnBeforeBuild := xl_subBeforeBuild;
  xl_sub.OnFormatCell := xl_subFormatCell;

  //xl1
  xl1 := TEXLReport.Create(nil);
  //xl1
  xl1.Name := 'xl1';
  xl1.DataSet := ds_SancSum;
  xl1.SubReport := xl_sub;
end;

destructor TBkp1Obj.Destroy;
begin
  FreeComponents;
  inherited;
end;

procedure TBkp1Obj.ExpAkt(kontr: variant);
var
  month :Variant;
begin
  month := LongMonthNames[Integer(M)];
  //
  xl1.Template:='rep\akt1.xls';
  xl1.TemplSheet:='Заголовок';
  xl1.Bands.Clear;
  with xl1.Bands.AddBand(xlrbtTitle) do
    Range:='A1:I13';
  with xl1.Bands.AddBand(xlrbtMasterData) do
    Range:='A14:I14';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A16:I33';
  with xl1.Bands.AddBand(xlrbtSummary) do
    Range:='A15:I15';

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
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(Y);
  end;

  //Данные-------------------------------------
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:J10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:J9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:J8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:J11';
  //--------------------------------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(d1);
  end;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='month';
    ValueAsString:=VarToStr(month);
  end;
  xl1.Show();
end;

procedure TBkp1Obj.ExpSmeta(kontr: variant);
begin
  //
  xl1.Template:='rep\smeta1.xls';
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
    ValueAsString:=VarToStr(d1);
  end;
  with xl1.Dictionary.Add do
  begin
    FieldName:='Kontr';
    ValueAsString:=VarToStr(kontr);
  end;

  //Данные
  //xl_sub.Template:='rep\smeta.xls';
  xl_sub.TemplSheet:='Данные';
  xl_sub.Bands.Clear;
  with xl_sub.Bands.AddBand(xlrbtTitle) do
    Range:='A1:J7';
  with (xl_sub.Bands.AddBand(xlrbtGroupFooter) as TEXLReportGroupFooterBand) do
  begin
    //Name:='GroupFooter1';
    Range:='A10:J10';
  end;
  with (xl_sub.Bands.AddBand(xlrbtGroupHeader) as TEXLReportGroupHeaderBand) do
  begin
    Range:='A9:J9';
    FieldName:='DNAME';
    FooterBand:='GroupFooter1';
  end;
  with xl_sub.Bands.AddBand(xlrbtMasterData) do
    Range:='A8:J8';
  with xl_sub.Bands.AddBand(xlrbtSummary) do
    Range:='A11:J11';
  //------------------
  xl_sub.Dictionary.Clear;
  with xl_sub.Dictionary.Add do
  begin
    FieldName:='year';
    ValueAsString:=VarToStr(d1);
  end;
  xl1.Show();
end;

procedure TBkp1Obj.FreeComponents;
begin
  xl1.Free;
  xl_sub.Free;
  ds_SancSum.Free;
  ds_Sanc.Free;
end;

function TBkp1Obj.GetCodBDR(Y, M, HOUSESRV: Variant): Variant;
begin

end;

function TBkp1Obj.GetDogCod(var dc, kontr: Variant): Variant;
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


function TBkp1Obj.GetHouse(dog: variant): WideString;
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

procedure TBkp1Obj.GetParamBDR(var bdr,Srv,tbl,fld :Variant);
var
  housesrv :Variant;

  procedure SetParam(tb,fn,s :variant);
  begin
    tbl:=tb;
    fld:=fn;
    Srv:=s;
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
    Q.ParamByName('srv').AsVariant:=Srv;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant;
    FreeQueryForUse(Q);
  end;

begin
  //определяем услугу
  housesrv:=LocSrv;
  case housesrv of
    0 : SetParam('PBDR2','F32',6); //ТР электрика  ---
    1 : SetParam('PBDR2','F30',6); //ТР общестрой  ---
    2 : SetParam('PBDR3','F28',8); //ТР лифт  ---
    3 : SetParam('PBDR2','F12',6); //ОДС ---
    4 : SetParam('PBDR2','F10',6); //дератизаця
    5 : SetParam('PBDR2','F30',6); //ТО общестрой
    6 : SetParam('PBDR2','F32',6); //ТО электрика
    7 : SetParam('PBDR3','F13',8); //уборка кабины лифта
    8 : SetParam('PBDR3','F14',8); //техосвидетельствование
    9 : SetParam('PBDR3','F15',8); //экспертиза
    10 : SetParam('PBDR3','F25',8);//АВС
    11 : SetParam('PBDR3','F26',8);//LDSS
    12 : SetParam('PBDR3','F27',8);//ТО лифт
  end;
  bdr:=GetBDRCode;
end;

procedure TBkp1Obj.MakeDate;
begin
  D1:=StartOfAMonth(Y,M);
  D2:=EndOfAMonth(Y,M)-1;
end;

function TBkp1Obj.GetFactDocCode(srv :variant) :Variant;
var
  Q :TFibQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT fb.CODE' + #13 +
                            #10 + 'FROM FACT1DOC fb' + #13#10 +
                            'where fb.y=:y and fb.M=:M and fb.HOUSESRV=:srv');
  Q.ParamByName('Y').AsVariant:=Y;
  Q.ParamByName('M').AsVariant:=M;
  Q.ParamByName('srv').AsVariant:=srv;
  Q.ExecQuery;
  Result:=Q.FN('CODE').AsVariant;
  FreeQueryForUse(Q);
end;

procedure TBkp1Obj.PrintAkt(Year, Month, S,dogovor,kname: Variant);
var
  Q :TFIBQuery;
  dc,kontr,bdr,MonthName,srv,tbl,fld,fd :Variant;
  hs :WideString;

  //----------------------------------------
  procedure GetData;
    var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16';
    if tbl='PBDR3' then ngF:='fb1.F18';
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.'+fld+' GSumma,'+ngF+' NGArea,0 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+'+ngF+') Area,(FB1.'+fld+') Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      ' ,fd.plansum,fd.factsum,fd.correct, (fd.factsum-fd.correct) S1 ' + #13#10 +
      ' ,((FB1.'+fld+'-fd.correct) ) Itog ' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join fact1doclist fd on fd.house=fb1.house and ' +
      'fd.fact1doc=:fd'+ #13#10 +
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
      'from '+tbl+' FB1' + #13#10 +
      'left outer join house h on h.code=fb1.house' + #13#10 +
      'left outer join street s on s.code=h.street' + #13#10 +
      'left outer join du d on d.code=h.du' + #13#10 +
      'left outer join fact1doclist fd on fd.house=fb1.house and fd.fact1doc=:fd'
      + #13#10 +
      'where FB1.PBDR = :fbd' + #13#10 +
      '  and ('#39+hs+#39' containing '','' || FB1.HOUSE || '','')' + #13#10 +
      'group by 1,2';
      //ShowMessage(SelectSQL.Text);
      ParamByName('FBD').AsVariant:=bdr;
      ParamByName('fd').AsVariant:=fd;
      Open;
    end;
  end;
begin
  Y:=Year;
  M:=Month;
  LocSrv:=S;
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
    GetParamBDR(bdr,srv,tbl,fld);
  if bdr=null then Exit;
  fd:=GetFactDocCode(srv);
  if fd=null then Exit;
  GetTitle;
  GetData;
  ExpAkt(kontr);
end;

procedure TBkp1Obj.PrintSmeta(Year, Month, S,dogovor,kname: Variant);
var
  dc,kontr,bdr,srv,tbl,fld :Variant;
  hs :WideString;

  procedure GetData;
  var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16'; //площадь нежилая
    if tbl='PBDR3' then ngF:='fb1.F18'; //площадь нежилая
    with ds_Sanc do
    begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    FB1.HOUSE, FB1.f4 GArea,FB1.'+fld+' GSumma,fb1.f11 NGArea,0 ' +
      'NGSumma,' + #13#10 +
      '    (FB1.f4+'+ngF+') Area,(FB1.'+fld+') Summa,' + #13#10 +
      '    h.nomer,s.code street, s.name SNAME,' + #13#10 +
      '    d.code DU,iif(d.code in ' +
      '(2,3,9,11,13,14),d.name,trim(RIGHT(d.name,2))) DNAME' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
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
  var
    ngF :string;
  begin
    if tbl='PBDR2' then ngF:='fb1.F16';
    if tbl='PBDR3' then ngF:='fb1.F18';

    with ds_SancSum do begin
      Close;
      SelectSQL.Text:=
      'select' + #13#10 +
      '    d.code DU,iif(d.code in (2,3,9,11,13,14),' + #13#10 +
      '    d.name,trim(RIGHT(d.name,2))) DNAME,' + #13#10 +
      '   sum(FB1.f4+'+ngF+') SArea, sum(FB1.'+fld+') SSUM' + #13#10 +
      'from '+tbl+' FB1' + #13#10 +
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
  LocSrv:=S;
  dc:=dogovor;
  kontr:=kname;
  MakeDate;
  //получаем код договора и контрагента
  //if GetDogCod(dc,kontr)=null then Exit;
  //список домов по договору
  if dc=null then Exit;
  hs:=GetHouse(dc);
  if hs=null then Exit;
  //бдр код
  GetParamBDR(bdr,Srv,tbl,fld);
  if bdr=null then Exit;
  //
  GetTitle;
  GetData;
  //
  ExpSmeta(kontr);
end;

procedure TBkp1Obj.xl_subBeforeBuild(Sender: TObject);
begin
  FCounter:=1;
  rdu:='';
end;

procedure TBkp1Obj.xl_subFormatCell(Sender: TObject; Band: TEXLReportBand;
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
