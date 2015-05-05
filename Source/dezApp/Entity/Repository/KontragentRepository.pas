unit KontragentRepository;

interface
uses
  DBHelpers,
  System.SysUtils, System.Classes, System.Generics.Collections,
  Aurelius.Drivers.Interfaces,
  Aurelius.Engine.ObjectManager,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Criteria.Expression,
  Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Drivers.FIBPlus, Kontragent, DBConnection;

 type
{ TKontragentRepository }

  TKontragentController = class(TDBAurelius)
  private
    //Manager: TObjectManager;
  protected
    //function Connection: IDBConnection;
    function GetKontragentList(Filter: TCustomCriterion):TObjectList<TKontragent>;
  public
    constructor Create;
    destructor Destroy; override;
    //
    function GetActiveKontragent: TObjectList<TKontragent>;
  published

  end;

implementation

{ TKontragentRepository }

//function TKontragentRepository.Connection: IDBConnection;
//begin
  //Result := TDBConnection.GetInstance.Connection;
//end;

constructor TKontragentController.Create;
begin
  inherited;
  //Manager:= TObjectManager.Create(Connection);
end;

destructor TKontragentController.Destroy;
begin
  //Manager.Free;
  inherited;
end;

function TKontragentController.GetActiveKontragent: TObjectList<TKontragent>;
var
  Filter: TCustomCriterion;
begin
  Filter := TExpression.Eq('ISACTIVE', 1);
  Result:= GetKontragentList(Filter);
end;

function TKontragentController.GetKontragentList(Filter: TCustomCriterion): TObjectList<TKontragent>;
var
  Criteria: TCriteria<TKontragent>;
  KontrList: TObjectList<TKontragent>;
begin
  if not TDBConnection.GetInstance.HasConnection then
      raise Exception.Create('отстутствует соединение!');
  Criteria:= Manager.CreateCriteria<TKontragent>;
  Criteria.Add(Filter);
  Result:= Criteria.List;
end;

end.
