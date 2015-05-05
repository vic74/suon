unit DBHelpers;

interface
uses
  SingletonTemplate, WorkSpecList, DB, System.SysUtils, System.Classes, System.Generics.Collections,
  pFibDataSet, FibDataSet,
  Aurelius.Drivers.Interfaces,
  Aurelius.Engine.ObjectManager,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Criteria.Expression,
  Aurelius.Criteria.Base,
  Aurelius.Sql.Firebird,
  Aurelius.Drivers.FIBPlus;

type
{ TDBAurelius }

  TDBAurelius = class(TObject)
  private
    fConnection: IDBConnection;
    fManager: TObjectManager;
  protected
    function GetConnection: IDBConnection;
    function GetNewDatabaseManager: TDatabaseManager;
    function CreateObjectManager: TObjectManager;
    function GetManager: TObjectManager;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Connection: IDBConnection read GetConnection;
    property Manager: TObjectManager read GetManager;
  end;


implementation

{ TDBAurelius }

uses cmDBUnit, DBConnection;

constructor TDBAurelius.Create;
begin
  //fConnection:= TFIBPlusConnectionAdapter.Create(cmDb.DB, 'Firebird', True);
  fManager:= CreateObjectManager;
end;

function TDBAurelius.CreateObjectManager: TObjectManager;
begin
  Result := TObjectManager.Create(Connection);
  Result.OwnsObjects := True;
end;

destructor TDBAurelius.Destroy;
begin
  if Assigned(fManager) then FreeAndNil(fManager);
  {if Assigned(fConnection) then begin
    fConnection.Disconnect;
    FreeAndNil(fConnection);
  end; }
  inherited;
end;

function TDBAurelius.GetConnection: IDBConnection;
begin
  Result := TDBConnection.GetInstance.Connection;
end;

function TDBAurelius.GetManager: TObjectManager;
begin
  if fManager = nil then
     fManager:= CreateObjectManager;
  Result:= fManager;
end;

function TDBAurelius.GetNewDatabaseManager: TDatabaseManager;
begin
  Result := TDatabaseManager.Create(Connection);
end;

end.
