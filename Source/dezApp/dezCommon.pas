unit dezCommon;

interface

uses
  SysUtils, Classes, DB, cmDBUnit, FIBQuery;

  procedure SetActiveWorker(AWorker, ARole: integer; AUserName: string);
  function IsGrant(ACode: integer): boolean;
  procedure MakeKategoryList(AList: TStrings);

var
  ActiveWorker: integer; //активный пользователь
  ActiveRole: integer; //роль пользователя
  ActiveUserName: string; //имя пользователя FireBird
  {$REGION 'Тип пользователя'}
  ///<summary>0 -упр. компания; 1- подрядчик</summary>
  {$ENDREGION}
  ActiveUserType: integer; //тип компании пользователя 0-упр.комп. 1- подрядчик
  ActivePiple: integer; //код активного пользователя в таблице Piple
  ActiveKontragent: integer; //активный контрагент
  GrantList: TStringList; //список прав доступа
  KategoryGrantList: TStringList; //список доступных категорий
  DispBaseName: Variant;  //имя базы диспетчера
  DispUser: Variant;      //логин для диспетчера

implementation

procedure SetActiveWorker(AWorker, ARole: integer; AUserName: string);
var
  SQL: TFIBQuery;
begin
  ActiveWorker:=AWorker;
  ActiveRole:=ARole;
  ActiveUserName:=UpperCase(AUserName);
  //получаем запись справочника сотрудников
  SQL:=cmDB.GetQuery('select * from Worker where Code='+IntToStr(AWorker));
  try
    SQL.ExecQuery;
    ActiveKontragent:=SQL.FN('Kontragent').AsInteger;
    ActivePiple:=SQL.FN('Piple').AsInteger;
  finally
    cmDB.FreeQuery(SQL);
  end;
  //администратор может ВСЕ
  if ActiveUserName='SYSDBA' then Exit;
  //получаем тип исполнителя
  SQL:=cmDB.GetQuery('select * from Kontragent where Code='+IntToStr(ActiveKontragent));
  try
    SQL.ExecQuery;
    ActiveUserType:=SQL.FN('KType').AsInteger;
  finally
    cmDB.FreeQuery(SQL);
  end;
  //список прав доступа
  SQL:=cmDB.GetQuery('select * from Rights where ARole='+IntToStr(ActiveRole));
  try
    SQL.ExecQuery;
    while not SQL.Eof do
    begin
      GrantList.Add(SQL.FN('ARight').AsString);
      SQL.Next;
    end;
  finally
    cmDB.FreeQuery(SQL);
  end;
  //список прав доступа к категориям
  SQL:=cmDB.GetQuery('select * from KategoryRights where ARole='+IntToStr(ActiveRole));
  try
    SQL.ExecQuery;
    while not SQL.Eof do
    begin
      KategoryGrantList.Add(SQL.FN('Kategory').AsString);
      SQL.Next;   //
    end;
  finally
    cmDB.FreeQuery(SQL);
  end;
end;

function IsGrant(ACode: integer): boolean;
begin
  Result:=true;
  if ActiveUserName='SYSDBA' then Exit;
  Result:=(ACode<>-1) and (GrantList.IndexOf(IntToStr(ACode))>=0);
end;

procedure MakeKategoryList(AList: TStrings);
var
  S: string;
  i: integer;
  SQL: TFIBQuery;
begin
  AList.Clear;
  //формируем список категорий
  S:='';
  if ActiveUserName<>'SYSDBA' then
  begin
    for i:=0 to KategoryGrantList.Count-1 do
    begin
      S:=S+KategoryGrantList[i];
      if i<>KategoryGrantList.Count-1 then S:=S+',';
    end;
    if S='' then Exit;
    S:='where Code IN ('+S+')';
  end;
  //формируем запрос
  SQL:=cmDB.GetQuery('SELECT * FROM Kategory '+S+' ORDER BY Name');
  SQL.ExecQuery;
  while not SQL.Eof do
  begin
    AList.AddObject(SQL.FN('Name').AsString, TObject(SQL.FN('Code').AsInteger));
    SQL.Next;
  end;
end;

initialization
  GrantList:=TStringList.Create;
  KategoryGrantList:=TStringList.Create;

finalization
  GrantList.Free;
  KategoryGrantList.Free;

end.
