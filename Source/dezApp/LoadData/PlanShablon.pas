unit PlanShablon;

interface

uses
  SysUtils, Classes, DB, fs_xml, cmUtils, cmTables, DateUtils, cmDBUnit,
  FIBDataSet, pFIBDataSet, Forms, ComCtrls, dxmdaset, TypInfo;

type

  TdezNach = class(TPersistent)
  private
    fSrv: string;
    fTarif: currency;
    fTBase: smallint;
  public
    procedure LoadFromXML(AItem: TfsXMLItem);
    procedure WriteToXML(AItem: TfsXMLItem);
  published
    property Srv: string read fSrv write fSrv;
    property Tarif: currency read fTarif write fTarif;
    property TBase: smallint read fTBase write fTBase;
  end;

  TdezRecv = class(TPersistent)
  private
    fHouse: integer;
    fTotal_SQ: double;
    fLiving_SQ: double;
    fCommerce_SQ: double;
    fCellar_SQ: double;
    fLodger_CNT: smallint;
    fFlat_CNT: smallint;
    fAccCode_CNT: smallint;
    fEntrance_CNT: smallint;
    fLift_CNT: smallint;
    fGarbage_CNT: smallint;
  public
    procedure WriteToXML(AItem: TfsXMLItem);
    procedure LoadFormXML(AItem: TfsXMLItem);
    function GetValueByCode(ACode: smallint): double;
  published
    property House: integer read fHouse write fHouse;
    property Total_SQ: double read fTotal_SQ write fTotal_SQ;
    property Living_SQ: double read fLiving_SQ write fLiving_SQ;
    property Commerce_SQ: double read fCommerce_SQ write fCommerce_SQ;
    property Cellar_SQ: double read fCellar_SQ write fCellar_SQ;
    property Lodger_CNT: smallint read fLodger_CNT write fLodger_CNT;
    property Flat_CNT: smallint read fFlat_CNT write fFlat_CNT;
    property AccCode_CNT: smallint read fAccCode_CNT write fAccCode_CNT;
    property Entrance_CNT: smallint read fEntrance_CNT write fEntrance_CNT;
    property Lift_CNT: smallint read fLift_CNT write fLift_CNT;
    property Garbage_CNT: smallint read fGarbage_CNT write fGarbage_CNT;
  end;

  TdezNachList = class(TList)
  private
    function GetDezNach(AIndex: integer): TdezNach;
    function GetBySrv(ASrv: string): TdezNach;
  public
    property Nach[AIndex: integer]: TdezNach read GetDezNach;
    property BySrv[ASrv: string]: TdezNach read GetBySrv;
    destructor Destroy; override;
    procedure ClearAll;
    procedure WriteToXML(AItem: TfsXMLItem);
    procedure LoadFromXML(AItem: TfsXMLItem);
    function GetSrvList: string;
  end;

  TdezGlobalVar = class(TPersistent)
  private
    fId: string;
    fCaption: string;
    fValue: double;
  published
    property Id: string read fId write fId;
    property Caption: string read fCaption write fCaption;
    property Value: double read fValue write fValue;
  end;

  TdezGlobalVars = class(TList)
  private
    function GetByName(AId: string): double;
    function GetDVar(AIndex: integer): TdezGlobalVar;
    procedure SetByName(AId: string; const Value: double);
  public
    property DVar[AIndex: integer]: TdezGlobalVar read GetDVar;
    property ByName[AId: string]: double read GetByName write SetByName;
    procedure ClearAll;
    procedure LoadFromBase;
    procedure LoadFromXML(AItem: TfsXMLItem);
    procedure WriteToXML(AItem: TfsXMLItem);
  end;

  TdezNachHouse = class(TPersistent)
  private
    fDList: TdezNachList;
    fRecv: TdezRecv;
    fHouse: integer;
    fStartDate: TDateTime;
    fPlan: integer;
    function GetDList: TdezNachList;
    function GetRecv: TdezRecv;
    procedure LoadPlanData;
  public
    constructor Create(AHouse, APlan: integer; AStartDate: TDateTime);
    destructor Destroy; override;
    procedure WriteToXML(AItem: TfsXMLItem);
    procedure LoadFromXML(AItem: TfsXMLItem);
    procedure LoadFromBase;
    procedure WriteToBase;
    procedure LoadPlan(SQL: TcmSQL);
    function CalcSrv(ASrv: string): currency;
  published
    property DList: TdezNachList read GetDList;
    property Recv: TdezRecv read GetRecv;
    property House: integer read fHouse write fHouse;
    property StartDate: TDateTime read fStartDate write fStartDate;
    property Plan: integer read fPlan write fPlan;
  end;

  TdezNachHouses = class(TObject)
  private
    fNum: integer;
    fOnScanHouse: TNotifyEvent;
  public
    property Num: integer read fNum;
    procedure MakeHousePlan(AData: TDateTime);
    property OnScanHouse: TNotifyEvent read fOnScanHouse write fOnScanHouse;
  end;

  TdezFieldType = (dtGroup, dtString, dtNumeric);

  TdezPlanColumn = class(TPersistent)
  private
    fName: string;
    fCaption: string;
    fPos: Integer;
    fWidth: integer;
    fFieldType: TdezFieldType;
    fItems: TList;
    fValue: currency;
    fData: string;
    fShablon: string;
    fParent: TdezPlanColumn;
    fFieldIndex: integer;
    fBandIndex: integer;
    fColumnIndex: integer;
    function GetChild(AIndex: integer): TdezPlanColumn;
  public
    property Child[AIndex: integer]: TdezPlanColumn read GetChild;
    constructor Create(AParent: TdezPlanColumn);
    destructor Destroy; override;
    function Count: integer;
    procedure Clear;
    function AddChild: TdezPlanColumn;
    function Cut(AIndex: integer): TdezPlanColumn;
    procedure Insert(AIndex: integer; AItem: TdezPlanColumn);
    procedure Remove(AItem: TObject);
    procedure LoadFromXML(AItem: TfsXMLItem);
    procedure WriteToXML(AItem: TfsXMLItem);
  published
    property Parent: TdezPlanColumn read fParent write fParent;
    property Name: string read fName write fName;
    property Caption: string read fCaption write fCaption;
    property Width: integer read fWidth write fWidth;
    property FieldType: TdezFieldType read fFieldType write fFieldType;
    property Value: currency read fValue write fValue;
    property Shablon: string read fShablon write fShablon;
    property Data: string read fData write fData;
    property FieldIndex: integer read fFieldIndex write fFieldIndex;
    property BandIndex: integer read fBandIndex write fBandIndex;
    property ColumnIndex: integer read fColumnIndex write fColumnIndex;
  end;

  TdezPlanReport = class(TPersistent)
  private
    fStartDate: TdateTime;
    fReportCode: integer;
    fTable: TcmMemtable;
  public
    constructor Create(AReportCode: integer; AStartDate: TDateTime);
    destructor Destroy; override;
    procedure Execute;
    procedure Compile;
  published
    property StartDate: TDateTime read fStartDate;
    property ReportCode: integer read fReportCode;
    property Table: TcmMemTable read fTable;
  end;

implementation

{ TdezNach }

procedure TdezNach.LoadFromXML(AItem: TfsXMLItem);
begin
  Srv:=AItem.Name;
  Tarif:=StrToFloatDef(cmCorrectFloat(AItem.Prop['Tarif']),0);
  TBase:=StrToIntDef(AItem.Prop['TBase'],0);
end;

procedure TdezNach.WriteToXML(AItem: TfsXMLItem);
begin
  AItem.Name:=Srv;
  AItem.Prop['Tarif']:=FormatFloat('0.00', Tarif);
  AItem.Prop['TBase']:=IntToStr(TBase);
end;

{ TdezRecv }

function TdezRecv.GetValueByCode(ACode: smallint): double;
begin
  case ACode of
    0: Result:=Total_SQ;
    1: Result:=Living_SQ;
    2: Result:=Commerce_SQ;
    3: Result:=Cellar_SQ;
    4: Result:=Lodger_CNT;
    5: Result:=Flat_CNT;
    6: Result:=AccCode_CNT;
    7: Result:=Entrance_CNT;
    8: Result:=Lift_CNT;
    9: Result:=Garbage_CNT;
  else
    Result:=0;
  end;
end;

procedure TdezRecv.LoadFormXML(AItem: TfsXMLItem);
begin
  House:=StrToIntDef(AItem.Prop['House'],0);
  Total_SQ:=StrToFloatDef(AItem.Prop['Total_SQ'],0);
  Living_SQ:=StrToFloatDef(AItem.Prop['Living_SQ'],0);
  Commerce_SQ:=StrToFloatDef(AItem.Prop['Commerce_SQ'],0);
  Cellar_SQ:=StrToFloatDef(AItem.Prop['Cellar_SQ'],0);
  Lodger_CNT:=StrToIntDef(AItem.Prop['Lodger_CNT'],0);
  Flat_CNT:=StrToIntDef(AItem.Prop['Flat_CNT'],0);
  AccCode_CNT:=StrToIntDef(AItem.Prop['AccCode_CNT'],0);
  Entrance_CNT:=StrToIntDef(AItem.Prop['Entrance_CNT'],0);
  Lift_CNT:=StrToIntDef(AItem.Prop['Lift_CNT'],0);
  Garbage_CNT:=StrToIntDef(AItem.Prop['Garbage_CNT'],0);
end;

procedure TdezRecv.WriteToXML(AItem: TfsXMLItem);
begin
  AItem.Prop['House']:=IntToStr(House);
  if Total_SQ<>0 then
    AItem.Prop['Total_SQ']:=FormatFloat('0.00', Total_SQ);
  if Living_SQ<>0 then
    AItem.Prop['Living_SQ']:=FormatFloat('0.00', Living_SQ);
  if Commerce_SQ<>0 then
    AItem.Prop['Commerce_SQ']:=FormatFloat('0.00', Commerce_SQ);
  if Cellar_SQ<>0 then
    AItem.Prop['Cellar_SQ']:=FormatFloat('0.00', Cellar_SQ);
  if Lodger_CNT<>0 then
    AItem.Prop['Lodger_CNT']:=IntToStr(Lodger_CNT);
  if Flat_CNT<>0 then
    AItem.Prop['Flat_CNT']:=IntToStr(Flat_CNT);
  if AccCode_CNT<>0 then
    AItem.Prop['AccCode_CNT']:=IntToStr(AccCode_CNT);
  if Entrance_CNT<>0 then
    AItem.Prop['Entrance_CNT']:=IntToStr(Entrance_CNT);
  if Lift_CNT<>0 then
    AItem.Prop['Lift_CNT']:=IntToStr(Lift_CNT);
  if Garbage_CNT<>0 then
    AItem.Prop['Garbage_CNT']:=IntToStr(Garbage_CNT);
end;

{ TdezNachList }

procedure TdezNachList.ClearAll;
var
  i: integer;
begin
  for i:=0 to Count - 1 do TObject(Items[i]).Free;
  Clear;
end;

destructor TdezNachList.Destroy;
begin
  ClearAll;
  inherited;
end;

function TdezNachList.GetBySrv(ASrv: string): TdezNach;
var
  i: integer;
begin
  for i:=0 to Count - 1 do
  begin
    Result:=Nach[i];
    if Result.Srv=ASrv then Exit;
  end;
  Result:=nil;
end;

function TdezNachList.GetDezNach(AIndex: integer): TdezNach;
begin
  Result:=TdezNach(Items[AIndex]);
end;

function TdezNachList.GetSrvList: string;
var
  N: TdezNach;
  i: integer;
begin
  Result:=';';
  for i := 0 to Count - 1 do
  begin
    N:=TdezNach(Items[i]);
    Result:=Result+N.Srv+';';
  end;

end;

procedure TdezNachList.LoadFromXML(AItem: TfsXMLItem);
var
  i: integer;
  N: TdezNach;
begin
  ClearAll;
  for i:=0 to AItem.Count - 1 do
  begin
    N:=TdezNach.Create;
    Add(N);
    N.LoadFromXML(AItem[i]);
  end;
end;

procedure TdezNachList.WriteToXML(AItem: TfsXMLItem);
var
  i: integer;
  N: TdezNach;
  Item: TfsXMLItem;
begin
  AItem.Clear;
  for i:=0 to Count - 1 do
  begin
    N:=Nach[i];
    Item:=AItem.Add;
    N.WriteToXML(Item);
  end;
end;

{ TdezNachHouse }

function TdezNachHouse.CalcSrv(ASrv: string): currency;
var
  N: TdezNach;
begin
  Result:=0;
  N:=DList.GetBySrv(ASrv);
  if N=nil then Exit;
  Result:=N.Tarif*Recv.GetValueByCode(N.TBase);
end;

constructor TdezNachHouse.Create(AHouse, APlan: integer; AStartDate: TDateTime);
begin
  inherited Create;
  fDList:=TdezNachList.Create;
  fRecv:=TdezRecv.Create;
  fHouse:=AHouse;
  fStartDate:=AStartDate;
  fPlan:=APlan;
end;

destructor TdezNachHouse.Destroy;
begin
  fDList.Free;
  fRecv.Free;
  inherited;
end;

function TdezNachHouse.GetDList: TdezNachList;
begin
  Result:=fDList;
end;

function TdezNachHouse.GetRecv: TdezRecv;
begin
  Result:=fRecv;
end;

procedure TdezNachHouse.LoadFromBase;
var
  DS: TcmSQLTable;
  D: TDateTime;
  Doc: TfsXMLDocument;
  Stream: TMemoryStream;
begin
  DS:=TcmSQLTable.Create;
  D:=StartOfTheMonth(StartDate);
  Doc:=TfsXMLDocument.Create;
  Stream:=TMemoryStream.Create;
  DS.SelectSQL:='select * from PlanHouse where PlanDate='#39+DateToStr(D)+#39+
    ' and House='+IntToStr(House);
  DS.Open;
  try
    if not DS.Eof then
    begin
      DS.FN('PlanData').SaveToStream(Stream);
      Stream.Position:=0;
      Doc.LoadFromStream(Stream);
      LoadFromXML(Doc.Root);
    end;
  finally
    Stream.Free;
    Doc.Free;
    DS.Free;
  end;
end;

procedure TdezNachHouse.LoadFromXML(AItem: TfsXMLItem);
var
  Item: TfsXMLItem;
begin
  Item:=AItem.FindItem('DList');
  DList.LoadFromXML(Item);
  Item:=AItem.FindItem('Recv');
  Recv.LoadFormXML(Item);
end;

procedure TdezNachHouse.LoadPlan(SQL: TcmSQL);
begin
  //получаем реквизиты дома
  with Recv do
  begin
    House:=SQL.FN('Code').Int;
    Total_SQ:=SQL.FN('Total_SQ').Dbl;
    Living_SQ:=SQL.FN('Living_SQ').Dbl;
    Commerce_SQ:=SQL.FN('Commerce_SQ').Dbl;
    Lodger_CNT:=SQL.FN('Lodger_CNT').Int;
    Cellar_SQ:=SQL.FN('Cellar_SQ').Dbl;
    Flat_CNT:=SQL.FN('Flat_CNT').Int;
    AccCode_CNT:=SQL.FN('AccCode_CNT').Int;
    Lift_CNT:=SQL.FN('Lift_CNT').Int;
    Entrance_CNT:=SQL.FN('Entrance_CNT').Int;
    Garbage_CNT:=SQL.FN('Garbage_CNT').Int;
  end;
  //получаем список начислений
  LoadPlanData;
end;

procedure TdezNachHouse.LoadPlanData;
var
  SQL: TcmSQL;
  N: TdezNach;
begin
  DList.ClearAll;
  //получаем реквизиты дома
  SQL:=TcmSQL.Create('select * from BudgetLine where Budget=:Plan');
  SQL.PN('Plan').Int:=Plan;
  SQL.ExecQuery;
  try
    while not SQL.Eof do
    begin
      N:=TDezNach.Create;
      N.Srv:=SQL.FN('Srv').Str;
      N.Tarif:=SQL.FN('Tarif').Curr;
      N.TBase:=SQL.FN('TBase').Int;
      DList.Add(N);
      SQL.Next;
    end;
  finally
    SQL.Free;
  end;
end;

procedure TdezNachHouse.WriteToBase;
var
  DS: TcmSQLTable;
  D: TDateTime;
  Doc: TfsXMLDocument;
  Stream: TMemoryStream;
begin
  //дата начала периода
  D:=StartOfTheMonth(StartDate);
  //XML шаблон для записи объекта в базу
  Doc:=TfsXMLDocument.Create;
  Doc.AutoIndent:=true;
  Doc.Root.Name:=IntToStr(House);
  //поток для записи XML
  Stream:=TMemoryStream.Create;
  //набор данных для обновления
  DS:=TcmSQLTable.Create;
  DS.SelectSQL:='select * from PlanHouse where PlanDate='#39+DateToStr(D)+#39+
    ' and House='+IntToStr(House);
  DS.AutoCommit:=false;
  DS.KeyFields:='Code';
  DS.TableName:='PlanHouse';
  DS.Open;
  try
    if DS.Eof then DS.Append else DS.Edit;
    DS.FN('PlanDate').Date:=D;
    DS.FN('Budget').Int:=Plan;
    DS.FN('House').Int:=House;
    DS.FN('SrvList').Str:=DList.GetSrvList;
    WriteToXML(Doc.Root);
    Doc.SaveToStream(Stream);
    DS.FN('PlanData').LoadFromStream(Stream);
    DS.Post;
  finally
    Stream.Free;
    Doc.Free;
    DS.Free;
  end;
end;

procedure TdezNachHouse.WriteToXML(AItem: TfsXMLItem);
var
  Item: TfsXMLItem;
begin
  Item:=AItem.FindItem('DList');
  DList.WriteToXML(Item);
  Item:=AItem.FindItem('Recv');
  Recv.WriteToXML(Item);
end;

{ TdezNachHouses }

procedure TdezNachHouses.MakeHousePlan(AData: TDateTime);
var
  SQL: TcmSQL;
  H: TdezNachHouse;
begin
  fNum:=0;
  AData:=StartOfTheMonth(AData);
  //чистим данные за указанный период
  SQL:=TcmSQL.Create('delete from PlanHouse where PlanDate='#39+DateToStr(AData)+#39, true);
  SQL.ExecQuery;
  SQL.Free;
  DataBase.CommitTransaction;
  //формируем список начислений
  SQL:=TcmSQL.Create('select * from House where Active=1 and Budget>0');
  SQL.ExecQuery;
  while not SQL.Eof do
  begin
    H:=TdezNachHouse.Create(SQL.FN('Code').Int, SQL.FN('Budget').Int, AData);
    H.LoadPlan(SQL);
    H.WriteToBase;
    H.Free;

    Inc(fNum);
    if Assigned(OnScanHouse) then OnScanHouse(Self);

    SQL.Next;
  end;
  SQL.Free;
  DataBase.CommitTransaction;
end;

{ TdezGlobalVars }

procedure TdezGlobalVars.ClearAll;
var
  i: integer;
begin
  for i:=0 to Count - 1 do
    TObject(Items[i]).Free;
  Clear;
end;

function TdezGlobalVars.GetByName(AId: string): double;
var
  V: TdezGlobalVar;
  i: integer;
begin
  Result:=0;
  AId:=UpperCase(AId);
  for i:=0 to Count - 1 do
  begin
    V:=TdezGlobalVar(Items[i]);
    if V.Id=AId then
    begin
      Result:=V.Value;
      Break;
    end;
  end;
end;

function TdezGlobalVars.GetDVar(AIndex: integer): TdezGlobalVar;
begin
  Result:=TdezGlobalVar(Items[AIndex]);
end;

procedure TdezGlobalVars.LoadFromBase;
var
  SQL: TcmSQL;
  V: TdezGlobalVar;
begin
  SQL:=TcmSQL.Create('select * from GlobalPlanVar');
  try
    SQL.ExecQuery;
    ClearAll;
    while not SQL.Eof do
    begin
      V:=TdezGlobalVar.Create;
      V.Id:=UpperCase(SQL.FN('Id').Str);
      V.Caption:=UpperCase(SQL.FN('Caption').Str);
      Add(V);
      SQL.Next;
    end;
  finally
    SQL.Free;
  end;

end;

procedure TdezGlobalVars.LoadFromXML(AItem: TfsXMLItem);
var
  i: integer;
  V: TdezGlobalVar;
  Item: TfsXMLItem;
begin
  for i:=0 to Count - 1 do
  begin
    Item:=AItem.Items[i];
    V:=TdezGlobalVar.Create;
    V.Id:=Item.Name;
    V.Caption:=Item.Prop['Caption'];
    V.Value:=StrToFloatDef(cmCorrectFloat(Item.Prop['Value']),0);
  end;
end;

procedure TdezGlobalVars.SetByName(AId: string; const Value: double);
var
  i: integer;
  V: TdezGlobalVar;
begin
  AId:=UpperCase(AId);
  for i:=0 to Count - 1 do
  begin
    V:=TdezGlobalVar(Items[i]);
    if V.Id=AId then
    begin
      V.Value:=Value;
      Break;
    end;
  end;
end;

procedure TdezGlobalVars.WriteToXML(AItem: TfsXMLItem);
var
  i: integer;
  V: TdezGlobalVar;
  Item: TfsXMLItem;
begin
  AItem.Clear;
  for i:=0 to Count - 1 do
  begin
    V:=DVar[i];
    Item:=AItem.Add;
    Item.Name:=V.Id;
    Item.Prop['Caption']:=V.Caption;
    Item.Prop['Value']:=FormatFloat('0.####', V.Value);
  end;
end;

{ TdezPlanColumn }

function TdezPlanColumn.AddChild: TdezPlanColumn;
begin
  Result:=TdezPlanColumn.Create(Self);
  fItems.Add(Result);
end;

procedure TdezPlanColumn.Clear;
var
  i: integer;
begin
  for i:=0 to Count-1 do
  begin
    TdezPlanColumn(fItems[i]).Clear;
    TObject(fItems[i]).Free;
  end;
end;

function TdezPlanColumn.Count: integer;
begin
  Result:=fItems.Count;
end;

constructor TdezPlanColumn.Create(AParent: TdezPlanColumn);
begin
  inherited Create;
  fParent:=AParent;
  fItems:=TList.Create;
end;

function TdezPlanColumn.Cut(AIndex: integer): TdezPlanColumn;
begin
  Result:=TdezPlanColumn(fItems[AIndex]);
  Result.Parent:=nil;
  fItems.Delete(AIndex);
end;

destructor TdezPlanColumn.Destroy;
begin
  Clear;
  fItems.Free;
  inherited;
end;

function TdezPlanColumn.GetChild(AIndex: integer): TdezPlanColumn;
begin
  Result:=TdezPlanColumn(fItems[AIndex]);
end;

procedure TdezPlanColumn.Insert(AIndex: integer; AItem: TdezPlanColumn);
begin
  AItem.Parent:=Self;
  fItems.Insert(AIndex, AItem);
end;

procedure TdezPlanColumn.LoadFromXML(AItem: TfsXMLItem);
var
  i: integer;
begin
  Name:=AItem.Name;
  Caption:=AItem.Prop['Caption'];
  Width:=StrToIntDef(AItem.Prop['Width'],20);
  Shablon:=AItem.Prop['Shablon'];
  FieldType:=TdezFieldType(StrToIntDef(AItem.Prop['FieldType'],0));
  FieldIndex:=StrToIntDef(AItem.Prop['Index'],-1);
  BandIndex:=StrToIntDef(AItem.Prop['BandIndex'],0);
  ColumnIndex:=StrToIntDef(AItem.Prop['ColumnIndex'],0);
  for i:=0 to AItem.Count - 1 do
    AddChild.LoadFromXML(AItem.Items[i]);
end;

procedure TdezPlanColumn.Remove(AItem: TObject);
var
  i: integer;
begin
  i:=fItems.IndexOf(AItem);
  if i<0 then Exit;
  fItems.Delete(i);
  AItem.Free;
end;

procedure TdezPlanColumn.WriteToXML(AItem: TfsXMLItem);
var
  i: integer;
begin
  if FieldIndex>=0 then
  begin
    AItem.Name:=Name;
    AItem.Prop['Caption']:=Caption;
    AItem.Prop['Width']:=IntToStr(Width);
    AItem.Prop['Shablon']:=Shablon;
    AItem.Prop['FieldType']:=IntToStr(Ord(FieldType));
    AItem.Prop['Index']:=IntToStr(FieldIndex);
    AItem.Prop['BandIndex']:=IntToStr(FieldIndex);
    AItem.Prop['ColumnIndex']:=IntToStr(ColumnIndex);
  end else
   AItem.Name:=Name;
  for i:=0 to Count - 1 do
    Child[i].WriteToXML(AItem.Add);
end;

{ TdezPlanReport }

procedure TdezPlanReport.Compile;
begin

end;

constructor TdezPlanReport.Create(AReportCode: integer; AStartDate: TDateTime);
begin
  inherited Create;
  fReportCode:=AReportCode;
  fStartDate:=AStartDate;
  fTable:=TcmMemTable.Create;
end;

destructor TdezPlanReport.Destroy;
begin
  fTable.Free;
  inherited;
end;

procedure TdezPlanReport.Execute;
begin

end;

end.
