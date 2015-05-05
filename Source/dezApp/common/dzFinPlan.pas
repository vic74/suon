unit dzFinPlan;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants, SingletonTemplate;

Type
{ TFinPlan }

  TFinPlan = class(TSingleton)
  private
    fY :Variant;
    DS :TpFIBDataSet;
    flog :TStringList;
  protected
    constructor Create; override;
    property Y :Variant read fY write fY;
		{$REGION 'get'}
		///<summary>Получаем данные из осмотров за указанный год по типу "осень"</summary>
		{$ENDREGION}
    procedure GetData;
		{$REGION 'create'}
		///<summary>Создаем FIBDataset и устанавливаем начальные параметры</summary>
		{$ENDREGION}
    procedure PrepareDS;
		{$REGION 'clear'}
		///<summary>Очищаем план текущего ремонта за указанный год</summary>
		{$ENDREGION}
    function ClearTrplan :boolean;
		{$REGION 'insert'}
		///<summary>Заполняем данными таблицу TRPlan</summary>
		{$ENDREGION}
    procedure InsertData;
  public

    destructor Destroy; override;
  published
    procedure CreatePlan(Year :Variant);
    property Log: TStringList read flog write flog;
  end;

  function FinPlan :TFinPlan;

implementation

uses cmDBUnit;


function FinPlan :TFinPlan;
begin
  Result:=TFinPlan.GetInstance;
end;
{ TFinPlan }

function TFinPlan.ClearTrplan :boolean;
var
  Q :TFIBQuery;
begin
  Result:=true;
  Q:=GetQueryForUse(cmDB.WT,'delete from TRPLAN where (Y = :Y)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('Y').AsVariant:=Y;
  try
    try
      Q.ExecQuery;
      log.Add('Очистили таблицу.');
    except
      on E :Exception do begin
        log.Add(E.Message);
        Result:=false;
      end;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

constructor TFinPlan.Create;
begin
  inherited;
  log:=TStringList.Create;
end;

procedure TFinPlan.CreatePlan(Year: Variant);
begin
  fY:=Year;
  if not ClearTrplan then Exit; //чистим таблицу
  GetData;     //получаем данные
  InsertData;  //вставляем данные
end;

destructor TFinPlan.Destroy;
begin
  DS.Free;
  log.Free;
  inherited;
end;

procedure TFinPlan.GetData;
begin
  PrepareDS;
  log.Add('Получаем данные.');
  DS.MainWhereClause:='sh.syear=:Y and sh.stype=1 and SR.MLIST is not null';
  DS.GroupByClause:='SR.MLIST, SR.SHOWHOUSE, SH.SYEAR, SH.STYPE,' + #13#10 +
                    'SR.HOUSE, SD.KONTRAGENT, h.mse';
  DS.ParamByName('Y').AsVariant:=Y;
  DS.Open;
end;

procedure TFinPlan.InsertData;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'insert into TRPLAN (Y, HOUSE, MLIST, KONTRAGENT,MANAGER)' + #13#10 +
    'values (:Y, :HOUSE, :MLIST,:KONTRAGENT, :MANAGER)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  log.Add('Добавляем данные в таблицу.');
  try
    with DS do
    while not Eof do begin
      Q.ParamByName('Y').AsVariant:=FN('SYEAR').AsVariant;
      Q.ParamByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
      Q.ParamByName('MLIST').AsVariant:=FN('MLIST').AsVariant;
      Q.ParamByName('KONTRAGENT').AsVariant:=FN('KONTRAGENT').AsVariant;
      Q.ParamByName('MANAGER').AsVariant:=FN('MSE').AsVariant;
      Q.ExecQuery;
      Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TFinPlan.PrepareDS;
begin
  log.Add('Подготавливаем набор данных.');
  DS:=TpFIBDataSet.Create(Application);
  DS.Transaction := cmDB.RT;
  DS.Database := cmDB.DB;
  DS.UpdateTransaction := cmDB.WT;
  DS.SelectSQL.Text:=
    'select distinct(SR.MLIST), max(SR.V) V, sum(SR.QUANTITY) QUANTITY, ' +
    'SR.SHOWHOUSE,' + #13#10 +
    '       SH.SYEAR, SH.STYPE, SR.HOUSE, SD.KONTRAGENT, h.mse' + #13#10 +
    'from SHOWRESULT SR' + #13#10 +
    'left outer join SHOWHOUSE SH on SH.CODE = SR.SHOWHOUSE' + #13#10 +
    'left outer join SRVDOG SD on SD.CODE = SH.SRVDOG' + #13#10 +
    'left outer join house h on h.code=sr.house';
end;

end.



