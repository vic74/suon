unit IMPORT_PlanShablon;

interface

uses
  SysUtils,
  PaxRegister,
  PaxCompiler,
  PlanShablon;

procedure Register_PlanShablon;

implementation

function _TdezNachList_GetNach(Self: TdezNachList; AIndex: integer): TdezNach;
begin
  Result:=Self.Nach[AIndex];
end;

function _TdezNachList_GetBySrv(Self: TdezNachList; AName: string): TdezNach;
begin
  Result:=Self.BySrv[AName];
end;

function _TdezGlobalVars_GetDVar(Self: TdezGlobalVars; AIndex: integer): TdezGlobalVar;
begin
  Result:=Self.DVar[AIndex];
end;

function _TdezGlobalVars_GetByName(Self: TdezGlobalVars; AName: string): double;
begin
  Result:=Self.ByName[AName];
end;

procedure Register_PlanShablon;
var
  H,G: integer;
begin
  H:=RegisterNamespace(0, 'PlanShablon');

  RegisterClassType(H, TdezNach);

  G:=RegisterClassType(H, TdezRecv);
  RegisterHeader(G, 'function GetValueByCode(ACode: smallint): double;', @TdezRecv.GetValueByCode);

  G:=RegisterClassType(H, TdezNachList);
  RegisterHeader(G, 'function _TdezNachList_GetNach(AIndex: integer): TdezNach;', @_TdezNachList_GetNach);
  RegisterProperty(G, 'property Nach[AIndex: integer]: TdezNach read _TdezNachList_GetNach;');
  RegisterHeader(G, 'function _TdezNachList_GetBySrv(AName: string): TdezNach;', @_TdezNachList_GetBySrv);
  RegisterProperty(G, 'property BySrv[ASrv: string]: TdezNach read _TdezNachList_GetBySrv;');

  RegisterClassType(H, TdezGlobalVar);

  G:=RegisterClassType(H, TdezGlobalVars);
  RegisterHeader(G, 'procedure _TdezGlobalVars_GetDVar(Self: TdezGlobalVars; AIndex: integer): TdezGlobalVar;', @_TdezGlobalVars_GetDVar);
  RegisterProperty(G, 'property DVar[AIndex: integer]: TdezGlobalVar read _TdezGlobalVars_GetDVar;');
  RegisterHeader(G, 'procedure _TdezGlobalVars_GetByName(Self: TdezGlobalVars; AName: string): double;', @_TdezGlobalVars_GetByName);
  RegisterProperty(G, 'property ByName[AId: string]: double read _TdezGlobalVars_GetByName;');

  G:=RegisterClassType(H, TdezNachHouse);
  RegisterHeader(G,  'function CalcSrv(ASrv: string): currency;', @TdezNachHouse.CalcSrv);

  RegisterRTTIType(H, TypeInfo(TdezFieldType));

  G:=RegisterClassType(H, TdezPlanReport);
end;

end.
