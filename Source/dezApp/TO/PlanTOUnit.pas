unit PlanTOUnit;

interface
   uses
     Windows, Messages, SysUtils, Variants, Classes, SingletonTemplate;

{ TPlanTO }
  type
  TPlanTO = class(TSingleton)
  private

  protected
    constructor Create; override;
  public
    destructor Destroy; override;
    procedure LoadDogovor(year: Variant); overload;
    procedure LoadDogovor(year: Variant; kontr: Variant); overload;
  published

  end;

  function PlanTO: TPlanTO;

implementation

{ TPlanTO }

uses cmDBUnit;

function PlanTO: TPlanTO;
begin
  Result:= TPlanTO.GetInstance;
end;

constructor TPlanTO.Create;
begin
  inherited;

end;

destructor TPlanTO.Destroy;
begin

  inherited;
end;

procedure TPlanTO.LoadDogovor(year, kontr: Variant);
var
  d: TDateTime;
begin
  d:= StrToDate('01.01.'+VarToStr(year));
  with cmDb.ds_SrvDog do begin
    Close;
    MainWhereClause:= 'f.data = :data and k.code = :kontr';
    ParamByName('data').AsVariant:= d;
    ParamByName('kontr').AsVariant:= kontr;
    Open;
    First;
  end;
end;

procedure TPlanTO.LoadDogovor(year: Variant);
var
  d: TDateTime;
begin
  d:= StrToDate('01.01.'+VarToStr(year));
  with cmDb.ds_SrvDog do begin
    Close;
    MainWhereClause:= 'f.data = :data';
    ParamByName('data').AsVariant:= d;
    Open;
  end;
end;

end.
