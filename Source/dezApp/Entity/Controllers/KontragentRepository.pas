unit KontragentRepository;

interface
uses
  DBHelpers,
  Vcl.Forms, Vcl.Controls, System.Variants,
  System.SysUtils, System.Classes, System.Generics.Collections,
  Aurelius.Drivers.Interfaces,
  Aurelius.Engine.ObjectManager,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Criteria.Expression,
  Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  Aurelius.Drivers.FIBPlus, Kontragent, Piople, DBConnection,
  FIBQuery, pFIBCacheQueries, pFIBProps, FIBDataSet, pFIBDataSet, AppUtils;

 type
{ TKontragentRepository }

  TKontragentController = class
  private
     fKontragent: TKontragent;
     fManager: TObjectManager;
     fDS: TpFIBDataSet;
  protected
    function GetKontragentList(Filter: TCustomCriterion):TObjectList<TKontragent>;
    procedure PrepareDS;
    function GetKontragents(clause: string; short: Boolean = false): TpFIBDataSet;
  public
    constructor Create;
    destructor Destroy; override;
    // Get Data
    function GetActiveKontragentsAU: TObjectList<TKontragent>; overload;
    function GetKontragentsAU: TObjectList<TKontragent>; overload;
    function GetByIdAU(Id: Variant): TKontragent; overload;
    //fibplus
    function GetActiveKontragents(isOpen: Boolean = True; short: Boolean = false): TpFIBDataSet; overload;
    function GetActiveKontrWithDez(isOpen: Boolean = True; short: Boolean = false): TpFIBDataSet; overload;
    function GetActiveKontrShort(isOpen: Boolean = True): TpFIBDataSet; overload;
    function LoadKontragents(clause: string =''; isOpen: Boolean = true; short: Boolean = false): TpFIBDataSet;
    function GetById(Id: Variant; isOpen: Boolean = True): TpFIBDataSet;
    // edit form
    function ShowEditForm(Id: Variant): Boolean;
    // update
    procedure Save(Kontr: TKontragent);
    //delete
    procedure Delete(Id: Variant);
  published
    property Kontragent: TKontragent read FKontragent;
    property DS: TpFibDataSet read FDS;
  end;

implementation

{ TKontragentRepository }

uses KontragentEditFrm, cmDBUnit;

constructor TKontragentController.Create;
begin
  //inherited;
  PrepareDS;
  fKontragent:= TKontragent.Create;
  fManager:= TDBConnection.GetInstance.CreateObjectManager;
end;

procedure TKontragentController.Delete(Id: Variant);
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'update KONTRAGENT set ISDELETE = 1 where (CODE = :CODE)');
  try
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    Q.ParamByName('CODE').AsVariant:= Id;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

destructor TKontragentController.Destroy;
begin
  fDS.Close;
  inherited;
end;

function TKontragentController.GetActiveKontragentsAU: TObjectList<TKontragent>;
var
  Filter: TCustomCriterion;
begin
  Filter := TExpression.Eq('ISACTIVE', 1);
  Result:= GetKontragentList(Filter);
end;

function TKontragentController.GetActiveKontrShort(isOpen: Boolean): TpFIBDataSet;
begin
  Result:= GetActiveKontragents(isOpen, True);
end;

function TKontragentController.GetActiveKontrWithDez(isOpen,
  short: Boolean): TpFIBDataSet;
begin
  Result:= GetKontragents('ISACTIVE = 1', short);
  if isOpen then
     Result.Open;
end;

function TKontragentController.GetById(Id: Variant; isOpen: Boolean): TpFIBDataSet;
begin
  with fDS do begin
    Close;
      MainWhereClause:= 'CODE = :CODE';
      ParamByName('CODE').AsVariant:= Id;
  end;
  Result:= fDS;
  if isOpen then
    Result.Open;
end;

function TKontragentController.LoadKontragents(clause: string; isOpen: Boolean; short: Boolean): TpFIBDataSet;
begin
  Result:= GetKontragents(clause, short);
  if isOpen then
     Result.Open;
end;

function TKontragentController.GetActiveKontragents(isOpen: Boolean; short: Boolean): TpFIBDataSet;
begin
  Result:= GetKontragents('ISACTIVE = 1 and KTYPE = 1', short);
  if isOpen then
     Result.Open;
end;



function TKontragentController.GetByIdAU(Id: Variant): TKontragent;
begin
  if not FManager.IsAttached(fKontragent) then
    fKontragent.Free;
  fKontragent:=fManager.Find<TKontragent>(Id);
  Result:= fKontragent;
end;

function TKontragentController.GetKontragentList(Filter: TCustomCriterion): TObjectList<TKontragent>;
var
  Criteria: TCriteria<TKontragent>;
  KontrList: TObjectList<TKontragent>;
begin
  if not TDBConnection.GetInstance.HasConnection then
      raise Exception.Create('отстутствует соединение!');
  Criteria:= fManager.CreateCriteria<TKontragent>;
  if (Filter<>nil) then
    Criteria.Add(Filter);
  Result:= Criteria.List;
end;

function TKontragentController.GetKontragents(clause: string; short: Boolean): TpFIBDataSet;
begin
  with fDS do begin
    Close;
    if short then
       SelectSQL.Text:= 'select CODE, NAME from KONTRAGENT' else
       SelectSQL.Text:= 'select * from KONTRAGENT';
    if Trim(clause)<>'' then
      MainWhereClause:= 'ISDELETE = 0 and '+ clause else
      MainWhereClause:= 'ISDELETE = 0';
    OrderClause:='NAME';
  end;
  Result:= fDS;
end;

procedure TKontragentController.PrepareDS;
begin
  fDS:= TpFIBDataSet.Create(nil);
  with fDS do begin
    Transaction := cmDb.RT;
    Database := cmDb.DB;
    UpdateTransaction := cmDb.WT;
    SetWriteOpt(False,'select * from KONTRAGENT','KONTRAGENT','CODE');
  end;
end;

function TKontragentController.GetKontragentsAU: TObjectList<TKontragent>;
begin
  Result:= GetKontragentList(nil);
end;

procedure TKontragentController.Save(Kontr: TKontragent);
begin
    fManager.SaveOrUpdate(Kontr);
    fManager.Flush;
end;

function TKontragentController.ShowEditForm(Id: Variant): Boolean;
var
  F: TKontragentEditForm;
begin
  Result:= False;
  //fKontragent:= TKontragent.Create;
  if not VarIsType(Id,[0,1]) then
     GetByIdAU(Id) else
     begin
       fKontragent:= TKontragent.Create;
       //fKontragent.Chief:= TPiople.Create;
     end;
  if fKontragent = nil then
    raise Exception.Create('ошибка получения записи');
  F:= TKontragentEditForm.Create(Application.MainForm, fKontragent);
  try
    if (F.ShowModal = mrOk) then begin
      fKontragent.Director:=Aurelius.Types.Nullable.SNull; //set to null
      Save(fKontragent);
      Result := True;
    end;
  finally
    if Assigned(F) then FreeAndNil(F);
  end;
end;

end.
