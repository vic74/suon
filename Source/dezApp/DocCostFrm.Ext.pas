unit DocCostFrm.Ext;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, DB, FIBDataSet, pFIBDataSet, FIBQuery, pFIBProps, pFIBCacheQueries,
  dxmdaset,
  SingletonTemplate;
type
  TDocCostExt = class  (TSingleton)
  private

  public
    procedure GetShbArhiv(var ds: TdxMemData; Y,M,Srv,srvType: Variant);
  end;

  function  DocCostExt: TDocCostExt;

implementation

{ TDocCostExt }

uses cmDBUnit;

function  DocCostExt: TDocCostExt;
begin
  Result:= TDocCostExt.GetInstance;
end;

procedure TDocCostExt.GetShbArhiv(var ds: TdxMemData; Y,M,Srv,srvType: Variant);
var
  Q: TFIBQuery;
  sql: string;

  procedure AddRec;
  begin
    while not Q.Eof do begin
      ds.Append;
        ds.FieldByName('FLAG').AsVariant:= Q.FN('FLAG').AsVariant;
        ds.FieldByName('CODE').AsVariant:= Q.FN('CODE').AsVariant;
        ds.FieldByName('SRVDOG').AsVariant:= Q.FN('SRVDOG').AsVariant;
        ds.FieldByName('NOMER').AsVariant:= Q.FN('NOMER').AsVariant;
        ds.FieldByName('KONTRAGENT').AsVariant:= Q.FN('KONTRAGENT').AsVariant;
        ds.FieldByName('KNAME').AsVariant:= Q.FN('KNAME').AsVariant;
        ds.FieldByName('SUMMA').AsVariant:= Q.FN('SUMMA').AsVariant;
      ds.Post;
      Q.Next;
    end;
  end;

  function GetSql: string;
  begin
    Result:='';
    if srvType = 'SRV' then
       Result:= 'select * from GET_SHFROMARHIVBYSRV(:Y, :M, :SRV)';
    if srvType = 'HOUSESRV' then
       Result:= 'select * from GET_SHFROMARHIV$BYHOUSESRV(:Y, :M, :SRV)';
  end;


begin
  sql:= GetSql;
  if sql = '' then
     raise dezException.Create('Не определен тип услуги!'+#10#13+'Формирование отменено.');
  Q:= GetQueryForUse(cmDb.RT, sql);
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:= Y;
    Q.ParamByName('M').AsVariant:= M;
    Q.ParamByName('SRV').AsVariant:= Srv;
    Q.ExecQuery;
    AddRec;
  finally
    FreeQueryForUse(Q);
  end;
end;

end.
