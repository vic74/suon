unit RepositoryUnit;

interface
uses
  SingletonTemplate, WorkSpecList, DB, System.SysUtils, System.Classes, System.Generics.Collections,
  pFibDataSet, FibDataSet,
  Aurelius.Drivers.Interfaces,
  Aurelius.Engine.ObjectManager,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Criteria.Expression,
  Aurelius.Criteria.Base,
  Aurelius.Drivers.FIBPlus,
  KontragentRepository,
  Kontragent;
{ TRepository }
  type
  TRepository = class(TSingleton)
  private
    fWorkSpecList: TWorkSpecList;
    FKontrCache: TpFIBDataSet;
    FKontrActiveCache: TpFIBDataSet;
    fConnection: IDBConnection;
    fManager: TObjectManager;
    fkontrRepo: TKontragentController;
  protected
    constructor Create; override;
    procedure PrepareDS(ds: TpFIBDataSet);

    function GetConnection: IDBConnection;
    function GetNewDatabaseManager: TDatabaseManager;
    function CreateObjectManager: TObjectManager;
    function GetManager: TObjectManager;

    function GetKontragentRepository: TKontragentController;
    function GetKontragentList(Filter: TCustomCriterion):TList<TKontragent>;
  public

    destructor Destroy; override;

    //Kontragent
    function GetActiveKontragent: TList<TKontragent>;
    //
  published
    property WorkSpecList: TWorkSpecList read fWorkSpecList write fWorkSpecList;
    property KontrCache: TpFIBDataSet read FKontrCache write FKontrCache;
    property KontrActiveCache: TpFIBDataSet read FKontrActiveCache write FKontrActiveCache;
    property Connection: IDBConnection read GetConnection;
    property Manager: TObjectManager read GetManager;
    property Kontragent: TKontragentController read GetKontragentRepository;
  end;

  function Repository: TRepository;

implementation

{ TRepository }

uses cmDBUnit;


function Repository: TRepository;
begin
  Result:= TRepository.GetInstance;
end;

constructor TRepository.Create;
begin
  inherited;
  //
  fConnection:= TFIBPlusConnectionAdapter.Create(cmDb.DB, True);
  FKontrCache:= TpFIBDataSet.Create(nil);
  FKontrActiveCache:= TpFIBDataSet.Create(nil);
  PrepareDS(FKontrCache);
  PrepareDS(FKontrActiveCache);
end;

function TRepository.CreateObjectManager: TObjectManager;
begin
  Result := TObjectManager.Create(Connection);
  Result.OwnsObjects := True;
end;

destructor TRepository.Destroy;
begin
  if Assigned(FKontrCache) then FreeAndNil(FKontrCache);
  if Assigned(FKontrActiveCache) then FreeAndNil(FKontrActiveCache);
  inherited;
end;

function TRepository.GetActiveKontragent: TList<TKontragent>;
begin

end;

function TRepository.GetConnection: IDBConnection;
begin
  if (fConnection = nil) then
    fConnection:= TFIBPlusConnectionAdapter.Create(cmDb.DB, True);
  Result := fConnection;
end;

function TRepository.GetKontragentList(
  Filter: TCustomCriterion): TList<TKontragent>;
begin
  //
end;

function TRepository.GetKontragentRepository: TKontragentController;
begin
  if fkontrRepo = nil then
     fkontrRepo:= TKontragentController.Create;
end;

function TRepository.GetManager: TObjectManager;
begin
  if fManager = nil then
     fManager:= CreateObjectManager;
  Result:= fManager;
end;

function TRepository.GetNewDatabaseManager: TDatabaseManager;
begin
  Result := TDatabaseManager.Create(fConnection);
end;

procedure TRepository.PrepareDS(ds: TpFIBDataSet);
begin
  with ds do begin
    Transaction := cmDb.RT;
    Database := cmDb.DB;
    UpdateTransaction := cmDb.WT;
  end;
end;

end.
