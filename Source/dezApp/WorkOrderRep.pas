unit WorkOrderRep;

interface
{ TWorkOrder }
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet,pFIBDataSet,dxmdaset;
 type
  TWorkOrder = class(TObject)
  private
    fD1 :Variant;           //начало периода
    fD2 :Variant;           //окончание периода
    fKontr :Variant;        //Подрядчик
    fHouse :Variant;        //дом
  protected
    FDS : TpFIBDataSet;
    procedure CreateFDS;
  public
    property D1: Variant read fD1 write fD1;
    property D2: Variant read fD2 write fD2;
    property Kontr: Variant read fKontr write fKontr;
    property House: Variant read fHouse write fHouse;
    constructor Create;
    destructor Destroy; override;
    procedure GetMaterial(var DS :TdxMemData);
    function CheckParam :Boolean;
  published

  end;

implementation

uses cmDBUnit, LoadingSplash;

{ TWorkOrder }

function TWorkOrder.CheckParam: Boolean;
begin
  Result:=True;
  if (D1=Unassigned) or (D1=null) then begin
    Application.MessageBox('Не указана дата начала периода!', 'Ошибка',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  if (D2=Unassigned) or (D2=null) then begin
    Application.MessageBox('Не указана дата окончания периода!', 'Ошибка',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  if (Kontr=Unassigned) or (Kontr=null) then begin
    Application.MessageBox('Не указана подрядная организация!', 'Ошибка',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
end;

constructor TWorkOrder.Create;
begin
  CreateFDS;
end;

//DU, DUNAME, HOUSE, SNAME, NOMER, SERVISMATERIAL, NAME, ED, QUANTITY, PRICE, SUMMA
procedure TWorkOrder.CreateFDS;
begin
  FDS:=TpFIBDataSet.Create(nil);
  FDS.Database:=cmDB.DB;
  FDS.Transaction:=cmDB.RT;
  FDS.UpdateTransaction:=cmDB.WT;
  FDS.SelectSQL.Text:=
  '  select DU.code DU, Du.name DUName,' +#13#10+
  '         ws.house,s.name SNAME,h.nomer, WS.CLASSMAT, SM.FULLNAME name, SM.ED,' +#13#10+
  '         sum(WS.QUANTITY) QUANTITY, WS.PRICE,' +#13#10+
  '         sum(WS.QUANTITY * WS.PRICE) SUMMA ' +#13#10+
  '  from WORKSPECMATERIAL WS' +#13#10+
  '  left outer join CLASSMAT SM on SM.CODE = WS.CLASSMAT' +#13#10+
  '     left outer join serviswork sw on sw.code=ws.serviswork' +#13#10+
  '  left outer join house h on h.code=ws.house' +#13#10+
  '  left outer join street s on s.code=h.street' +#13#10+
  '  left outer join DU on DU.code=h.du';
end;

destructor TWorkOrder.Destroy;
begin
  FDS.Free;
  inherited;
end;

procedure TWorkOrder.GetMaterial(var DS: TdxMemData);
begin
  if not CheckParam then Exit;
  if (House=Unassigned) or (House=null) then
  with FDS do begin
    Close;
      MainWhereClause:=
        'WS.DATA between :D1 and :D2 and' + #13#10 +
        'WS.KONTRAGENT = :KONTR and sw.cash=0';
      ParamByName('D1').AsVariant:=D1;
      ParamByName('D2').AsVariant:=D2;
      ParamByName('KONTR').AsVariant:=Kontr;
      GroupByClause:='DU.code, Du.name,ws.house,s.name,h.nomer, ' +
                    'WS.CLASSMAT, SM.FULLNAME, SM.ED, WS.PRICE';
      OrderClause:='Du.name,s.name,h.nomer';
    Open;
  end else
  with FDS do begin
    Close;
      MainWhereClause:=
        'WS.DATA between :D1 and :D2 and' + #13#10 +
        'WS.KONTRAGENT = :KONTR and' + #13#10 +
        'WS.HOUSE = :HOUSE  and sw.cash=0';
      ParamByName('D1').AsVariant:=D1;
      ParamByName('D2').AsVariant:=D2;
      ParamByName('KONTR').AsVariant:=Kontr;
      ParamByName('HOUSE').AsVariant:=HOUSE;
      GroupByClause:='DU.code, Du.name,ws.house,s.name,h.nomer, ' +
                    'WS.CLASSMAT, SM.FULLNAME,SM.ED, WS.PRICE';
      OrderClause:='Du.name,s.name,h.nomer';
    Open;
  end;
  DS.LoadFromDataSet(FDS);
end;

end.




