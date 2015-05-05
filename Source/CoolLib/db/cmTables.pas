unit cmTables;

interface

uses
  SysUtils, Classes, FIB, FIBDatabase, pFIBDatabase, FIBQuery, FIBDataSet,
  pFIBProps, cmDBUnit, DB, Contnrs, cmUtils, pFIBCacheQueries, pFIBDataSet,
  dxmdaset;

type

  TcmLinkType = (cmlField, cmlParam);

  TcmDBLink = class(TPersistent)
  private
    fQuery: TFIBQuery;
    fDataSet: TDataSet;
    fName: string;
    fLinkType: TcmLinkType;
    function GetAsCurrency: Currency;
    procedure SetAsCurrency(const Value: Currency);
    function GetAsInteger: integer;
    procedure SetAsInteger(const Value: integer);
    function GetAsInt64: Int64;
    procedure SetAsInt64(const Value: Int64);
    function GetAsExtended: Extended;
    procedure SetAsExtended(const Value: Extended);
    function GetAsDouble: Double;
    procedure SetAsDouble(const Value: Double);
    function GetDT: TDateTime;
    procedure SetDT(const Value: TDateTime);
    function GetDate: TDateTime;
    function GetTime: TDateTime;
    procedure SetDate(const Value: TDateTime);
    procedure SetTime(const Value: TDateTime);
    function GetStr: string;
    procedure SetStr(const Value: string);
    function GetBool: boolean;
    procedure SetBool(const Value: boolean);
    function GetGuid: TGUID;
    procedure SetGuid(const Value: TGUID);
    function GetVariant: Variant;
    procedure SetVariant(const Value: Variant);
    procedure DoSetData;
    function GetBLOBField: TBLOBField;
  protected
  public
    property Name: string read fName;
    property Curr: Currency read GetAsCurrency write SetAsCurrency;
    property Int: integer read GetAsInteger write SetAsInteger;
    property Int64: Int64 read GetAsInt64 write SetAsInt64;
    property Ext: Extended read GetAsExtended write SetAsExtended;
    property Dbl: Double read GetAsDouble write SetAsDouble;
    property DT: TDateTime read GetDT write SetDT;
    property Date: TDateTime read GetDate write SetDate;
    property Time: TDateTime read GetTime write SetTime;
    property Str: string read GetStr write SetStr;
    property Bool: boolean read GetBool write SetBool;
    property GUID: TGUID read GetGuid write SetGuid;
    property Variant: Variant read GetVariant write SetVariant;
    property BLOB: TBLOBField read GetBLOBField;
    constructor Create(AName: string; ALinkType: TcmLinkType;
      ADataSet: TObject); virtual;
    destructor Destroy; override;
    procedure LoadFromFile(const AFileName: string);
    procedure SaveToFile(const AFileName: string);
    procedure LoadFromStream(AStream: TStream);
    procedure SaveToStream(AStream: TStream);
  end;

  TcmDBLinks = class(TPersistent)
  private
    fObj: TObject;
    fFields: TObjectList;
    fParams: TObjectList;
    procedure PrepareQuery;
    procedure PrepareDataSet;
    function GetField(i: integer): TcmDBLink;
    function GetParam(i: integer): TcmDBLink;
  public
    property Fields[i: integer]: TcmDBLink read GetField;
    property Params[i: integer]: TcmDBLink read GetParam;
    constructor Create(AObj: TObject); virtual;
    destructor Destroy; override;
    procedure Prepare;
    function FieldCount: integer;
    function ParamCount: integer;
    function FN(const AName: string): TcmDBLink;
    function PN(const AName: string): TcmDBLink;
  end;

  TcmDataBase = class(TPersistent)
  private
    function GetConnected: boolean;
    function GetDataBaseName: string;
    function GetServerName: string;
  public
    property DataBaseName: string read GetDataBaseName;
    property ServerName: string read GetServerName;
    property Connected: boolean read GetConnected;
    constructor Create;
    destructor Destroy; override;
    procedure StartTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
    procedure Disconnect;
    procedure Connect(ABaseName: string);
    procedure ExecuteScript(AScript: TStrings);
    //buckup\restore базы данных
    function BackupDataBase(AServerName, ADataBaseName, ABackupName,
      APassword, ALogFileName: string): boolean;
    function RestoreDataBase(AServerName, ADataBaseName, ABackupName,
      APassword, ALogFileName: string): boolean;
  end;

  TcmSQL = class(TPersistent)
  private
    fFP: TcmDBLinks;
    fQuery: TFIBQuery;
    fExecQuery: boolean;
    fPrepared: boolean;
    function GetFields(i: integer): TcmDBLink;
    function GetParams(i: integer): TcmDBLink;
  public
    property Fields[i: integer]: TcmDBLink read GetFields;
    property Params[i: integer]: TcmDBLink read GetParams;

    constructor Create(ASQL: string; AExecQuery: boolean = false);
    destructor Destroy; override;

    function FieldCount: integer;
    function ParamCount: integer;
    function FN(AFieldName: string): TcmDBLink;
    function PN(AParamName: string): TcmDBLink;

    procedure ExecQuery;
    procedure Next;
    function Eof: boolean;
  end;

  //базовый набор данных
  TcmDataSet = class(TPersistent)
  private
    fDataSet: TDataSet;
    fFP: TcmDBLinks;
    function GetActive: Boolean;
    function GetFilter: string;
    function GetFiltered: Boolean;
    procedure SetFilter(const Value: string);
    procedure SetFiltered(const Value: Boolean);

    procedure OnBeforeOpen(DataSet: TDataSet);
    procedure OnAfterOpen(DataSet: TDataSet);
    procedure OnBeforeClose(DataSet: TDataSet);
    procedure OnAfterClose(DataSet: TDataSet);
    procedure OnBeforeInsert(DataSet: TDataSet);
    procedure OnAfterInsert(DataSet: TDataSet);
    procedure OnBeforeEdit(DataSet: TDataSet);
    procedure OnAfterEdit(DataSet: TDataSet);
    procedure OnBeforePost(DataSet: TDataSet);
    procedure OnAfterPost(DataSet: TDataSet);
    procedure OnBeforeCancel(DataSet: TDataSet);
    procedure OnAfterCancel(DataSet: TDataSet);
    procedure OnBeforeDelete(DataSet: TDataSet);
    procedure OnAfterDelete(DataSet: TDataSet);
    procedure OnBeforeScroll(DataSet: TDataSet);
    procedure OnAfterScroll(DataSet: TDataSet);
    procedure OnBeforeRefresh(DataSet: TDataSet);
    procedure OnAfterRefresh(DataSet: TDataSet);
    procedure OnCalcFields(DataSet: TDataSet);
    procedure OnDeleteError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure OnEditError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure OnFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure OnNewRecord(DataSet: TDataSet);
    procedure OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);

  protected
    procedure SetActive(const Value: Boolean); virtual;
    procedure SetDataSet(Value: TDataSet);
    function GetFields(i: integer): TcmDBLink;
    function GetParams(i: integer): TcmDBLink;
  public
    property DataSet: TDataSet read fDataSet write SetDataSet;
    property Fields[i: integer]: TcmDBLink read GetFields;
    property Params[i: integer]: TcmDBLink read GetParams;

    function FieldCount: integer;
    function ParamCount: integer;
    function FN(AFieldName: string): TcmDBLink;
    function PN(AParamName: string): TcmDBLink;

    procedure Append;
    procedure Cancel;
    procedure Close;
    procedure Delete;
    procedure DisableControls;
    procedure Edit;
    procedure EnableControls;
    procedure First;
    procedure Insert;
    function IsEmpty: Boolean;
    procedure Last;
    function Locate(const KeyFields: string; const KeyValues: Variant): boolean;
    function MoveBy(Distance: Integer): Integer;
    procedure Next;
    procedure Open; virtual;
    procedure Post;
    procedure Prior;
    procedure Refresh;
    function Bof: Boolean;
    function Eof: Boolean;
    function Modified: Boolean;
    property Filter: string read GetFilter write SetFilter;
    property Filtered: Boolean read GetFiltered write SetFiltered;
    property Active: Boolean read GetActive write SetActive;

    procedure BeforeOpen; virtual;
    procedure AfterOpen; virtual;
    procedure BeforeClose; virtual;
    procedure AfterClose; virtual;
    procedure BeforeInsert; virtual;
    procedure AfterInsert; virtual;
    procedure BeforeEdit; virtual;
    procedure AfterEdit; virtual;
    procedure BeforePost; virtual;
    procedure AfterPost; virtual;
    procedure BeforeCancel; virtual;
    procedure AfterCancel; virtual;
    procedure BeforeDelete; virtual;
    procedure AfterDelete; virtual;
    procedure BeforeScroll; virtual;
    procedure AfterScroll; virtual;
    procedure BeforeRefresh; virtual;
    procedure AfterRefresh; virtual;
    procedure CalcFields; virtual;
    procedure DeleteError(E: Exception; var Action: TDataAction); virtual;
    procedure EditError(E: Exception; var Action: TDataAction); virtual;
    procedure FilterRecord(var Accept: Boolean); virtual;
    procedure NewRecord; virtual;
    procedure PostError(E: Exception; var Action: TDataAction); virtual;
  end;

  //SQL таблица
  TcmSQLTable = class(TcmDataSet)
  private
    function GetKeyFields: string;
    procedure SetKeyFields(const Value: string);
    function GetTableName: string;
    procedure SetTableName(const Value: string);
    function GetLimitBuferMode: boolean;
    function GetLimitPlanDesc: string;
    procedure SetLimitBuferMode(const Value: boolean);
    procedure SetLimitBufferRec(const Value: integer);
    procedure SetLimitPlanDesc(const Value: string);
    function GetLimitBufferRec: integer;
    function GetInsertSQL: string;
    function GetRefreshSQL: string;
    function GetSelectSQL: string;
    function GetUpDateSQL: string;
    procedure SetInsertSQL(const Value: string);
    procedure SetRefreshSQL(const Value: string);
    procedure SetSelectSQL(const Value: string);
    procedure SetUpdateSQL(const Value: string);
    function GetAutoCommit: boolean;
    procedure SetAutoCommit(const Value: boolean);
  protected
    procedure SetActive(const Value: Boolean); override;
  public
    constructor Create;
    destructor Destroy; override;
    function FIB: TpFIBDataSet;
    procedure Prepare;
    procedure Open; override;
  published
    property AutoCommit: boolean read GetAutoCommit write SetAutoCommit;
    property KeyFields: string read GetKeyFields write SetKeyFields;
    property TableName: string read GetTableName write SetTableName;
    property LimitBufferMode: boolean read GetLimitBuferMode write SetLimitBuferMode;
    property LimitBufferRec: integer read GetLimitBufferRec write SetLimitBufferRec;
    property LimitPlanDesc: string read GetLimitPlanDesc write SetLimitPlanDesc;
    property SelectSQL: string read GetSelectSQL write SetSelectSQL;
    property InsertSQL: string read GetInsertSQL write SetInsertSQL;
    property UpdateSQL: string read GetUpDateSQL write SetUpdateSQL;
    property RefreshSQL: string read GetRefreshSQL write SetRefreshSQL;
  end;

  TcmMemTable = class(TcmDataSet)
  private
  protected
    procedure SetActive(const Value: Boolean); override;
  public
    constructor Create;
    destructor Destroy; override;
    function Table: TdxMemData;
    procedure Prepare;
    procedure Open; override;
    procedure AddField(AFieldName: string; AFieldType: TFieldType;
      AFieldSize: integer = 0);
    procedure ClearFields;
  end;

  //доступ к объекту базы данных
  function DataBase: TcmDataBase;

implementation

var
  fDataBase: TcmDataBase;

function DataBase: TcmDataBase;
begin
  if not Assigned(fDatabase) then
    fDataBase:=TcmDataBase.Create;
  Result:=fDataBase;
end;

{ TcmDBLink }

constructor TcmDBLink.Create(AName: string; ALinkType: TcmLinkType;
  ADataSet: TObject);
begin
  inherited Create;
  fName:=UpperCase(AName);
  fLinkType:=ALinkType;
  if ADataSet is TDataSet then
  begin
    fDataSet:=TDataSet(ADataSet);
    fQuery:=nil;
  end
  else
  begin
    fDataSet:=nil;
    fQuery:=TFIBQuery(ADataSet);
  end;
end;

destructor TcmDBLink.Destroy;
begin
  inherited;
end;

procedure TcmDBLink.DoSetData;
begin
  if (fLinkType=cmlField) and (fDataSet<>nil) then
    if not (fDataSet.State in [dsInsert, dsEdit]) then
      if fDataSet.RecordCount=0 then
        fDataSet.Append
      else
        fDataSet.Edit;
end;

function TcmDBLink.GetAsCurrency: Currency;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsCurrency
    else
      Result:=fQuery.FN(fName).AsCurrency
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsCurrency
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsCurrency;
  end;
end;

function TcmDBLink.GetAsDouble: Double;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsFloat
    else
      Result:=fQuery.FN(fName).AsDouble
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsDouble
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsDouble;
  end;
end;

function TcmDBLink.GetAsExtended: Extended;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsExtended
    else
      Result:=fQuery.FN(fName).AsDouble
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsExtended
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsExtended;
  end;
end;

function TcmDBLink.GetAsInt64: Int64;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TLargeIntField(TFIBDataSet(fDataSet).FN(fName)).AsLargeInt
    else
      Result:=fQuery.FN(fName).AsInt64
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsInt64
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsInt64;
  end;
end;

function TcmDBLink.GetAsInteger: integer;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsInteger
    else
      Result:=fQuery.FN(fName).AsInteger
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsInteger
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsInteger;
  end;
end;

function TcmDBLink.GetBLOBField: TBLOBField;
begin
  Result:=TBLOBField(fDataSet.FieldByName(fName));
end;

function TcmDBLink.GetBool: boolean;
begin
  Result:=false;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsBoolean
    else
      Result:=fQuery.FN(fName).AsBoolean
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsBoolean
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsBoolean;
  end;
end;

function TcmDBLink.GetDate: TDateTime;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if (fDataSet<>nil) then
      if fDataSet is TFIBDataSet then
        Result:=TFIBDateField(TFIBDataSet(fDataSet).FieldByName(fName)).AsDateTime
      else
        Result:=fDataSet.FieldByName(fName).AsDateTime
    else
      Result:=fQuery.FN(fName).AsDate
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsDate
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsDate;
  end;
end;

function TcmDBLink.GetDT: TDateTime;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsDateTime
    else
      Result:=fQuery.FN(fName).AsDateTime
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsDateTime
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsDateTime;
  end;
end;

function TcmDBLink.GetGuid: TGUID;
begin
  FillChar(Result, SizeOf(TGUID), 0);
  if fLinkType=cmlField then
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBGUIDField(fDataSet.FieldByName(fName)).AsGuid
    else
      Result:=fQuery.FN(fName).AsGUID
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsGUID
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsGUID;
  end;
end;

function TcmDBLink.GetStr: string;
begin
  Result:='';
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsString
    else
      Result:=fQuery.FN(fName).AsString
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsString
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsString;
  end;
end;

function TcmDBLink.GetTime: TDateTime;
begin
  Result:=0;
  if fLinkType=cmlField then
  begin
    if (fDataSet<>nil) then
      if fDataSet is TFIBDataSet then
        Result:=TFIBTimeField(fDataSet.FieldByName(fName)).AsDateTime
      else
        Result:=fDataSet.FieldByName(fName).AsDateTime
    else
      Result:=fQuery.FN(fName).AsTime
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsTime
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsTime;
  end;
end;

function TcmDBLink.GetVariant: Variant;
begin
  Result:='';
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      Result:=fDataSet.FieldByName(fName).AsVariant
    else
      Result:=fQuery.FN(fName).AsVariant
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      Result:=TFIBDataSet(fDataSet).Params.ByName[fName].AsVariant
    else
    if (fQuery<>nil) then
      Result:=fQuery.Params.ByName[fName].AsVariant;
  end;
end;

procedure TcmDBLink.LoadFromFile(const AFileName: string);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      TBLOBField(fDataSet.FieldByName(fName)).LoadFromFile(AFileName)
    else
      fQuery.FN(fName).LoadFromFile(AFileName);
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].LoadFromFile(AFileName)
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].LoadFromFile(AFileName);
  end;
end;

procedure TcmDBLink.LoadFromStream(AStream: TStream);
begin
  AStream.Position:=0;
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      TBLOBField(fDataSet.FieldByName(fName)).LoadFromStream(AStream)
    else
      fQuery.FN(fName).LoadFromStream(AStream);
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].LoadFromStream(AStream)
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].LoadFromStream(AStream);
  end;
end;

procedure TcmDBLink.SaveToFile(const AFileName: string);
begin
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      TBLOBField(fDataSet.FieldByName(fName)).SaveToFile(AFileName)
    else
      fQuery.FN(fName).SaveToFile(AFileName);
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].SaveToFile(AFileName)
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].SaveToFile(AFileName);
  end;
end;

procedure TcmDBLink.SaveToStream(AStream: TStream);
begin
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      TBLOBField(fDataSet.FieldByName(fName)).SaveToStream(AStream)
    else
      fQuery.FN(fName).SaveToStream(AStream);
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].SaveToStream(AStream)
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].SaveToStream(AStream);
  end;
end;

procedure TcmDBLink.SetAsCurrency(const Value: Currency);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsCurrency:=Value
    else
      fQuery.FN(fName).AsCurrency:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsCurrency:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsCurrency:=Value;
  end;
end;

procedure TcmDBLink.SetAsDouble(const Value: Double);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsFloat:=Value
    else
      fQuery.FN(fName).AsDouble:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsDouble:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsDouble:=Value;
  end;
end;

procedure TcmDBLink.SetAsExtended(const Value: Extended);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsExtended:=Value
    else
      fQuery.FN(fName).AsExtended:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsExtended:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsExtended:=Value;
  end;
end;

procedure TcmDBLink.SetAsInt64(const Value: Int64);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      if fDataSet is TFIBDataSet then
        TFIBLargeIntField(fDataSet.FieldByName(fName)).Value:=Value
      else
        fDataSet.FieldByName(fName).AsInteger:=Value
    else
      fQuery.FN(fName).AsInt64:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsInt64:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsInt64:=Value;
  end;
end;

procedure TcmDBLink.SetAsInteger(const Value: integer);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsInteger:=Value
    else
      fQuery.FN(fName).AsInteger:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsInteger:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsInteger:=Value;
  end;
end;

procedure TcmDBLink.SetBool(const Value: boolean);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsBoolean:=Value
    else
      fQuery.FN(fName).AsBoolean:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsBoolean:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsBoolean:=Value;
  end;
end;

procedure TcmDBLink.SetDate(const Value: TDateTime);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      if fDataSet is TFIBDataSet then
        TFIBDateField(fDataSet.FieldByName(fName)).AsDateTime:=Value
      else
        fDataSet.FieldByName(fName).AsDateTime:=Value
    else
      fQuery.FN(fName).AsDate:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsDate:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsDate:=Value;
  end;
end;

procedure TcmDBLink.SetDT(const Value: TDateTime);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsDateTime:=Value
    else
      fQuery.FN(fName).AsDateTime:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsDateTime:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsDateTime:=Value;
  end;
end;

procedure TcmDBLink.SetGuid(const Value: TGUID);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBGUIDField(fDataSet.FieldByName(fName)).AsGUID:=Value
    else
      fQuery.FN(fName).AsGUID:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsGUID:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsGUID:=Value;
  end;
end;

procedure TcmDBLink.SetStr(const Value: string);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsString:=Value
    else
      fQuery.FN(fName).AsString:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsString:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsString:=Value;
  end;
end;

procedure TcmDBLink.SetTime(const Value: TDateTime);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsDateTime:=Value
    else
      fQuery.FN(fName).AsTime:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsTime:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsTime:=Value;
  end;
end;

procedure TcmDBLink.SetVariant(const Value: Variant);
begin
  DoSetData;
  if fLinkType=cmlField then
  begin
    if fDataSet<>nil then
      fDataSet.FieldByName(fName).AsVariant:=Value
    else
      fQuery.FN(fName).AsVariant:=Value
  end
  else
  begin
    if (fDataSet<>nil) and (fDataSet is TFIBDataSet) then
      TFIBDataSet(fDataSet).Params.ByName[fName].AsVariant:=Value
    else
    if (fQuery<>nil) then
      fQuery.Params.ByName[fName].AsVariant:=Value;
  end;
end;

{ TcmTableFields }

constructor TcmDBLinks.Create(AObj: TObject);
begin
  inherited Create;
  fObj:=AObj;
  fFields:=TObjectList.Create;
  fParams:=TObjectList.Create;
end;

destructor TcmDBLinks.Destroy;
begin
  fFields.Free;
  fParams.Free;
  inherited;
end;

function TcmDBLinks.FieldCount: integer;
begin
  Result:=fFields.Count;
end;

function TcmDBLinks.FN(const AName: string): TcmDBLink;
var
  i: integer;
begin
  Result:=nil;
  for i:=0 to fFields.Count-1 do
    if TcmDBLink(fFields[i]).Name=UpperCase(AName) then
    begin
      Result:=TcmDBLink(fFields[i]);
      Break;
    end;
end;

function TcmDBLinks.GetField(i: integer): TcmDBLink;
begin
  Result:=TcmDBLink(fFields[i]);
end;

function TcmDBLinks.GetParam(i: integer): TcmDBLink;
begin
  Result:=TcmDBLink(fParams[i]);
end;

procedure TcmDBLinks.PrepareDataSet;
var
  DS: TFIBDataSet;
  i: integer;
begin
  DS:=fObj as TFIBDataSet;
  //список полей
  fFields.Clear;

  for i:=0 to DS.FieldCount-1 do
    fFields.Add(TcmDBLink.Create(DS.Fields[i].FieldName, cmlField, DS));
  //список параметров
  fParams.Clear;
  for i:=0 to DS.ParamCount-1 do
    fParams.Add(TcmDBLink.Create(DS.Params[i].Name, cmlParam, DS));
end;

procedure TcmDBLinks.PrepareQuery;
var
  Q: TFIBQuery;
  DS: TDataSet;
  i: integer;
begin
  if fObj is TFIBQuery then
  begin
    Q:=fObj as TFIBQuery;
    //список полей
    fFields.Clear;
    for i:=0 to Q.FieldCount-1 do
      fFields.Add(TcmDBLink.Create(Q.Fields[i].Name, cmlField, Q));
    //список параметров
    fParams.Clear;
    for i:=0 to Q.ParamCount-1 do
      fParams.Add(TcmDBLink.Create(Q.Params[i].Name, cmlParam, Q));
  end
  else
  begin
    DS:=fObj as TDataSet;
    //список полей
    fFields.Clear;
    for i:=0 to DS.FieldCount-1 do
      fFields.Add(TcmDBLink.Create(DS.Fields[i].FieldName, cmlField, DS));
    //список параметров
    fParams.Clear;
    if DS is TFIBDataSet then
    begin
      for i:=0 to TFIBDataSet(DS).Params.Count-1 do
        fParams.Add(TcmDBLink.Create(TFIBDataSet(DS).Params[i].Name, cmlParam, DS));
    end;
  end;
end;

function TcmDBLinks.ParamCount: integer;
begin
  Result:=fParams.Count;
end;

function TcmDBLinks.PN(const AName: string): TcmDBLink;
var
  i: integer;
begin
  Result:=nil;
  //ищем параметр
  for i:=0 to fParams.Count-1 do
    if TcmDBLink(fParams[i]).Name=UpperCase(AName) then
    begin
      Result:=TcmDBLink(fParams[i]);
      Break;
    end;
end;

procedure TcmDBLinks.Prepare;
begin
  if fObj is TFIBQuery then
    PrepareQuery
  else
    PrepareDataSet;
end;

{ TcmSQL }

constructor TcmSQL.Create(ASQL: string; AExecQuery: boolean = false);
var
  T: TFIBTransaction;
begin
  inherited Create;
  fExecQuery:=AExecQuery;
  if AExecQuery then
    T:=cmDB.WT
  else
    T:=cmDB.RT;
  fQuery:=GetQueryForUse(T, ASQL);
  fFP:=TcmDBLinks.Create(fQuery);
  //подготовка полей запроса
  fFP.PrepareQuery;
  fPrepared:=false;
end;

destructor TcmSQL.Destroy;
begin
  fFP.Free;
  FreeQueryForUse(fQuery);
  inherited;
end;

function TcmSQL.Eof: boolean;
begin
  Result:=fQuery.Eof;
end;

procedure TcmSQL.ExecQuery;
begin
  //автоматический запуск транзакции
  if not fQuery.Transaction.Active then
    fQuery.Transaction.StartTransaction;
  //выполняем запрос
  fQuery.ExecQuery;
  //пересоздание полей запроса
  if not fPrepared then
  begin
    fFP.PrepareQuery;
    fPrepared:=true;
  end;
end;

function TcmSQL.FieldCount: integer;
begin
  Result:=fFP.FieldCount;
end;

function TcmSQL.FN(AFieldName: string): TcmDBLink;
begin
  Result:=fFP.FN(AFieldName);
end;

function TcmSQL.GetFields(i: integer): TcmDBLink;
begin
  Result:=fFP.Fields[i];
end;

function TcmSQL.GetParams(i: integer): TcmDBLink;
begin
  Result:=fFP.Params[i];
end;

procedure TcmSQL.Next;
begin
  fQuery.Next;
end;

function TcmSQL.ParamCount: integer;
begin
  Result:=fFP.ParamCount;
end;

function TcmSQL.PN(AParamName: string): TcmDBLink;
begin
  Result:=fFP.PN(AParamName);
end;

{ TcmDataBase }

function TcmDataBase.BackupDataBase(AServerName, ADataBaseName, ABackupName,
  APassword, ALogFileName: string): boolean;
begin
  Result:=cmDB.BackupDataBase(AServerName, ADataBaseName, ABackupName, APassword, ALogFileName);
end;

procedure TcmDataBase.CommitTransaction;
begin
  if cmDB.WT.Active then
    cmDB.WT.Commit;
end;

procedure TcmDataBase.Connect(ABaseName: string);
begin
end;

constructor TcmDataBase.Create;
begin
  inherited;
end;

destructor TcmDataBase.Destroy;
begin
  inherited;
end;

procedure TcmDataBase.Disconnect;
begin
  cmDB.CloseDataBase;
end;

procedure TcmDataBase.ExecuteScript(AScript: TStrings);
begin
  with cmDB.Scripter do
  begin
    Script.Assign(AScript);
    StartTransaction;
    ExecuteScript;
    CommitTransaction;
  end;
end;

function TcmDataBase.GetConnected: boolean;
begin
  Result:=cmDB.DB.Connected;
end;

function TcmDataBase.GetDataBaseName: string;
var
  Poz,i,Count,Len: integer;
begin
  Result:=cmDB.DB.DBName;
  if Copy(Result,1,2)='\\' then
  begin
    Delete(Result,1,2);
    Poz:=Pos('\',Result);
    if Poz<>0 then
      Delete(Result,1,Poz);
  end
  else
  begin
    Len:=Length(Result);
    Count:=0;
    for i:=1 to Len do
      if Result[i]=':' then
        Inc(Count);
    if Count=2 then
    begin
      Poz:=Pos(':',Result);
      Delete(Result,1,Poz);
    end;
  end;
end;

function TcmDataBase.GetServerName: string;
var
  Poz,i,Count,Len: integer;
begin
  Result:=cmDB.DB.DBName;
  if Copy(Result,1,2)='\\' then
  begin
    Delete(Result,1,2);
    Poz:=Pos('\',Result);
    if Poz<>0 then
      Result:=Copy(Result, 1, Poz-1);
  end
  else
  begin
    Len:=Length(Result);
    Count:=0;
    for i:=1 to Len do
      if Result[i]=':' then
        Inc(Count);
    if Count=2 then
    begin
      Poz:=Pos(':',Result);
      Result:=Copy(Result, 1, Poz-1);
    end;
  end;
end;

function TcmDataBase.RestoreDataBase(AServerName, ADataBaseName, ABackupName,
  APassword, ALogFileName: string): boolean;
begin
  Result:=cmDB.RestoreDataBase(AServerName, ADataBaseName, ABackupName, APassword, ALogFileName);
end;

procedure TcmDataBase.RollbackTransaction;
begin
  if cmDB.WT.Active then
    cmDB.WT.Rollback;
end;

procedure TcmDataBase.StartTransaction;
begin
  if not cmDB.WT.Active then
    cmDB.DB.StartTransaction;
end;

{ TcmDataSet }

procedure TcmDataSet.AfterCancel;
begin

end;

procedure TcmDataSet.AfterClose;
begin

end;

procedure TcmDataSet.AfterDelete;
begin

end;

procedure TcmDataSet.AfterEdit;
begin

end;

procedure TcmDataSet.AfterInsert;
begin

end;

procedure TcmDataSet.AfterOpen;
begin

end;

procedure TcmDataSet.AfterPost;
begin

end;

procedure TcmDataSet.AfterRefresh;
begin

end;

procedure TcmDataSet.AfterScroll;
begin

end;

procedure TcmDataSet.Append;
begin
  if Assigned(fDataSet) then
    fDataSet.Append;
end;

procedure TcmDataSet.BeforeCancel;
begin

end;

procedure TcmDataSet.BeforeClose;
begin

end;

procedure TcmDataSet.BeforeDelete;
begin

end;

procedure TcmDataSet.BeforeEdit;
begin

end;

procedure TcmDataSet.BeforeInsert;
begin

end;

procedure TcmDataSet.BeforeOpen;
begin

end;

procedure TcmDataSet.BeforePost;
begin

end;

procedure TcmDataSet.BeforeRefresh;
begin

end;

procedure TcmDataSet.BeforeScroll;
begin

end;

function TcmDataSet.Bof: Boolean;
begin
  Result:=true;
  if Assigned(fDataSet) then
    Result:=fDataSet.Bof;
end;

procedure TcmDataSet.Cancel;
begin
  if Assigned(fDataSet) then
    fDataSet.Cancel;
end;

procedure TcmDataSet.Close;
begin
  if Assigned(fDataSet) then
    fDataSet.Close;
end;

procedure TcmDataSet.Delete;
begin
  if Assigned(fDataSet) then
    fDataSet.Delete;
end;

procedure TcmDataSet.DisableControls;
begin
  if Assigned(fDataSet) then
    fDataSet.DisableControls;
end;

procedure TcmDataSet.Edit;
begin
  if Assigned(fDataSet) then
    fDataSet.Edit;
end;

procedure TcmDataSet.EnableControls;
begin
  if Assigned(fDataSet) then
    fDataSet.EnableControls;
end;

function TcmDataSet.Eof: Boolean;
begin
  Result:=true;
  if Assigned(fDataSet) then
    Result:=fDataSet.Eof;
end;

function TcmDataSet.FieldCount: integer;
begin
  Result:=0;
  if Assigned(fFP) then Result:=fFP.FieldCount;
end;

procedure TcmDataSet.First;
begin
  if Assigned(fDataSet) then
    fDataSet.First;
end;

function TcmDataSet.FN(AFieldName: string): TcmDBLink;
begin
  Result:=nil;
  if Assigned(fFP) then Result:=fFP.FN(AFieldName);
end;

function TcmDataSet.GetActive: Boolean;
begin
  Result:=false;
  if Assigned(fDataSet) then
    Result:=fDataSet.Active;
end;

function TcmDataSet.GetFields(i: integer): TcmDBLink;
begin
  Result:=nil;
  if Assigned(fFP) then Result:=fFP.Fields[i];
end;

function TcmDataSet.GetFilter: string;
begin
  Result:='';
  if Assigned(fDataSet) then
    Result:=fDataSet.Filter;
end;

function TcmDataSet.GetFiltered: Boolean;
begin
  Result:=false;
  if Assigned(fDataSet) then
    Result:=fDataSet.Filtered;
end;

function TcmDataSet.GetParams(i: integer): TcmDBLink;
begin
  Result:=nil;
  if Assigned(fFP) then Result:=fFP.Params[i];
end;

procedure TcmDataSet.Insert;
begin
  if Assigned(fDataSet) then
    fDataSet.Insert;
end;

function TcmDataSet.IsEmpty: Boolean;
begin
  Result:=true;
  if Assigned(fDataSet) then
    Result:=fDataSet.IsEmpty;
end;

procedure TcmDataSet.Last;
begin
  if Assigned(fDataSet) then
    fDataSet.Last;
end;

function TcmDataSet.Locate(const KeyFields: string;
  const KeyValues: Variant): boolean;
begin
  Result:=false;
  if Assigned(fDataSet) then
    Result:=fDataSet.Locate(KeyFields, KeyValues, []);
end;

function TcmDataSet.Modified: Boolean;
begin
  Result:=false;
  if Assigned(fDataSet) then
    Result:=fDataSet.Modified;
end;

function TcmDataSet.MoveBy(Distance: Integer): Integer;
begin
  Result:=0;
  if Assigned(fDataSet) then
    Result:=fDataSet.MoveBy(Distance);
end;

procedure TcmDataSet.Next;
begin
  if Assigned(fDataSet) then
    fDataSet.Next;
end;

procedure TcmDataSet.OnAfterCancel(DataSet: TDataSet);
begin
  AfterCancel;
end;

procedure TcmDataSet.OnAfterClose(DataSet: TDataSet);
begin
  AfterClose;
end;

procedure TcmDataSet.OnAfterDelete(DataSet: TDataSet);
begin
  AfterDelete;
end;

procedure TcmDataSet.OnAfterEdit(DataSet: TDataSet);
begin
  AfterEdit;
end;

procedure TcmDataSet.OnAfterInsert(DataSet: TDataSet);
begin
  AfterInsert;
end;

procedure TcmDataSet.OnAfterOpen(DataSet: TDataSet);
begin
  AfterOpen;
end;

procedure TcmDataSet.OnAfterPost(DataSet: TDataSet);
begin
  AfterPost;
end;

procedure TcmDataSet.OnAfterRefresh(DataSet: TDataSet);
begin
  AfterRefresh;
end;

procedure TcmDataSet.OnAfterScroll(DataSet: TDataSet);
begin
  AfterScroll;
end;

procedure TcmDataSet.OnBeforeCancel(DataSet: TDataSet);
begin
  BeforeCancel;
end;

procedure TcmDataSet.OnBeforeClose(DataSet: TDataSet);
begin
  BeforeClose;
end;

procedure TcmDataSet.OnBeforeDelete(DataSet: TDataSet);
begin
  BeforeDelete;
end;

procedure TcmDataSet.OnBeforeEdit(DataSet: TDataSet);
begin
  BeforeEdit;
end;

procedure TcmDataSet.OnBeforeInsert(DataSet: TDataSet);
begin
  BeforeInsert;
end;

procedure TcmDataSet.OnBeforeOpen(DataSet: TDataSet);
begin
  BeforeOpen;
end;

procedure TcmDataSet.OnBeforePost(DataSet: TDataSet);
begin
  BeforePost;
end;

procedure TcmDataSet.OnBeforeRefresh(DataSet: TDataSet);
begin
  BeforeRefresh;
end;

procedure TcmDataSet.OnBeforeScroll(DataSet: TDataSet);
begin
  BeforeScroll;
end;

procedure TcmDataSet.CalcFields;
begin
end;

procedure TcmDataSet.OnCalcFields(DataSet: TDataSet);
begin
  CalcFields;
end;

procedure TcmDataSet.OnDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  DeleteError(E, Action);
end;

procedure TcmDataSet.DeleteError(E: Exception; var Action: TDataAction);
begin
end;

procedure TcmDataSet.OnEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  EditError(E, Action);
end;

procedure TcmDataSet.EditError(E: Exception; var Action: TDataAction);
begin
end;

procedure TcmDataSet.OnFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  FilterRecord(Accept);
end;

procedure TcmDataSet.FilterRecord(var Accept: Boolean);
begin
end;

procedure TcmDataSet.OnNewRecord(DataSet: TDataSet);
begin
  NewRecord;
end;

procedure TcmDataSet.NewRecord;
begin
end;

procedure TcmDataSet.OnPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  PostError(E, Action);
end;

procedure TcmDataSet.PostError(E: Exception; var Action: TDataAction);
begin
end;

procedure TcmDataSet.Open;
begin
  if Assigned(fDataSet) then
    fDataSet.Open;
end;

function TcmDataSet.ParamCount: integer;
begin
  Result:=0;
  if Assigned(fFP) then Result:=fFP.ParamCount;
end;

function TcmDataSet.PN(AParamName: string): TcmDBLink;
begin
  Result:=nil;
  if Assigned(fFP) then Result:=fFP.PN(AParamName);
end;

procedure TcmDataSet.Post;
begin
  if Assigned(fDataSet) then
    fDataSet.Post;
end;

procedure TcmDataSet.Prior;
begin
  if Assigned(fDataSet) then
    fDataSet.Prior;
end;

procedure TcmDataSet.Refresh;
begin
  if Assigned(fDataSet) then
    fDataSet.Refresh;
end;

procedure TcmDataSet.SetActive(const Value: Boolean);
begin
  if Assigned(fDataSet) then
    fDataSet.Active:=Value;
end;

procedure TcmDataSet.SetDataSet(Value: TDataSet);
begin
  fDataSet:=Value;
  if Value=nil then Exit;

  DataSet.BeforeOpen:=OnBeforeOpen;
  DataSet.AfterOpen:=OnAfterOpen;
  DataSet.BeforeClose:=OnBeforeClose;
  DataSet.AfterClose:=OnAfterClose;
  DataSet.BeforeInsert:=OnBeforeInsert;
  DataSet.AfterInsert:=OnAfterInsert;
  DataSet.BeforeEdit:=OnBeforeEdit;
  DataSet.AfterEdit:=OnAfterEdit;
  DataSet.BeforePost:=OnBeforePost;
  DataSet.AfterPost:=OnAfterPost;
  DataSet.BeforeCancel:=OnBeforeCancel;
  DataSet.AfterCancel:=OnAfterCancel;
  DataSet.BeforeDelete:=OnBeforeDelete;
  DataSet.AfterDelete:=OnAfterDelete;
  DataSet.BeforeScroll:=OnBeforeScroll;
  DataSet.AfterScroll:=OnAfterScroll;
  DataSet.BeforeRefresh:=OnBeforeRefresh;
  DataSet.AfterRefresh:=OnAfterRefresh;
  DataSet.OnCalcFields:=OnCalcFields;
  DataSet.OnDeleteError:=OnDeleteError;
  DataSet.OnEditError:=OnEditError;
  DataSet.OnFilterRecord:=OnFilterRecord;
  DataSet.OnNewRecord:=OnNewRecord;
  DataSet.OnPostError:=OnPostError;
end;

procedure TcmDataSet.SetFilter(const Value: string);
begin
  if Assigned(fDataSet) then
    fDataSet.Filter:=Value;
end;

procedure TcmDataSet.SetFiltered(const Value: Boolean);
begin
  if Assigned(fDataSet) then
    fDataSet.Filtered:=Value;
end;

{ TcmSQLTable }

constructor TcmSQLTable.Create;
begin
  inherited;
  fDataSet:=TpFIBDataSet.Create(nil);
  FIB.Database:=cmDB.DB;
  FIB.Transaction:=cmDB.RT;
  FIB.UpdateTransaction:=cmDB.WT;
  FIB.AutoCommit:=true;
  FIB.AutoUpdateOptions.AutoReWriteSqls:=true;
  FIB.AutoUpdateOptions.CanChangeSQLs:=true;
  //FIB.AutoUpdateOptions.SeparateBlobUpdate:=true;
  FIB.PrepareOptions:=FIB.PrepareOptions + [psUseLargeIntField];
end;

destructor TcmSQLTable.Destroy;
begin
  FreeAndNil(fDataSet);
  inherited;
end;

function TcmSQLTable.FIB: TpFIBDataSet;
begin
  Result:=TpFIBDataSet(fDataSet);
end;

function TcmSQLTable.GetAutoCommit: boolean;
begin
  Result:=FIB.AutoCommit;
end;

function TcmSQLTable.GetInsertSQL: string;
begin
  Result:=FIB.SQLs.InsertSQL.Text;
end;

function TcmSQLTable.GetKeyFields: string;
begin
  Result:=FIB.AutoUpdateOptions.KeyFields;
end;

function TcmSQLTable.GetLimitBuferMode: boolean;
begin
  Result:=FIB.CacheModelOptions.CacheModelKind=cmkLimitedBufferSize;
end;

function TcmSQLTable.GetLimitBufferRec: integer;
begin
  Result:=FIB.CacheModelOptions.BufferChunks;
end;

function TcmSQLTable.GetLimitPlanDesc: string;
begin
  Result:=FIB.CacheModelOptions.PlanForDescSQLs;
end;

function TcmSQLTable.GetRefreshSQL: string;
begin
  Result:=FIB.SQLs.RefreshSQL.Text;
end;

function TcmSQLTable.GetSelectSQL: string;
begin
  Result:=FIB.SQLs.SelectSQL.Text;
end;

function TcmSQLTable.GetTableName: string;
begin
  Result:=FIB.AutoUpdateOptions.UpdateTableName;
end;

function TcmSQLTable.GetUpDateSQL: string;
begin
  Result:=FIB.SQLs.UpdateSQL.Text;
end;

procedure TcmSQLTable.Open;
begin
  FIB.Open;
  Prepare;
end;

procedure TcmSQLTable.Prepare;
begin
  FIB.Prepare;
  if not Assigned(fFP) then FreeAndNil(fFP);
  fFP:=TcmDBLinks.Create(fDataSet);
  fFP.PrepareDataSet;
end;

procedure TcmSQLTable.SetActive(const Value: Boolean);
begin
  if Value then Open else Close;
end;

procedure TcmSQLTable.SetAutoCommit(const Value: boolean);
begin
  FIB.AutoCommit:=Value;
end;

procedure TcmSQLTable.SetInsertSQL(const Value: string);
begin
  FIB.SQLs.InsertSQL.Text:=Value;
end;

procedure TcmSQLTable.SetKeyFields(const Value: string);
begin
  FIB.AutoUpdateOptions.KeyFields:=UpperCase(Value);
end;

procedure TcmSQLTable.SetLimitBuferMode(const Value: boolean);
begin
  if Value then
    FIB.CacheModelOptions.CacheModelKind:=cmkLimitedBufferSize
  else
    FIB.CacheModelOptions.CacheModelKind:=cmkStandard;
end;

procedure TcmSQLTable.SetLimitBufferRec(const Value: integer);
begin
  FIB.CacheModelOptions.BufferChunks:=Value;
end;

procedure TcmSQLTable.SetLimitPlanDesc(const Value: string);
begin
  FIB.CacheModelOptions.PlanForDescSQLs:=Value;
end;

procedure TcmSQLTable.SetRefreshSQL(const Value: string);
begin
  FIB.SQLs.RefreshSQL.Text:=Value;
end;

procedure TcmSQLTable.SetSelectSQL(const Value: string);
begin
  FIB.SQLs.SelectSQL.Text:=Value;
end;

procedure TcmSQLTable.SetTableName(const Value: string);
begin
  FIB.AutoUpdateOptions.UpdateTableName:=UpperCase(Value);
end;

procedure TcmSQLTable.SetUpdateSQL(const Value: string);
begin
  FIB.SQLs.UpdateSQL.Text:=Value;
end;

{ TcmMemTable }

procedure TcmMemTable.AddField(AFieldName: string; AFieldType: TFieldType; AFieldSize: integer = 0);
begin
  if AFieldName = '' then Exit;
  with Table.FieldDefs.AddFieldDef do
  begin
    Name := AFieldName;
    DataType := AFieldType;
    if AFieldSize>0 then Size:=AFieldSize;
    CreateField(Table);
  end;
end;

procedure TcmMemTable.ClearFields;
begin
  Table.Close;
  Table.FieldDefs.Clear;
end;

constructor TcmMemTable.Create;
begin
  inherited;
  fDataSet:=TdxMemData.Create(nil);
end;

destructor TcmMemTable.Destroy;
begin
  FreeAndNil(fDataSet);
  inherited;
end;

procedure TcmMemTable.Open;
begin
  Prepare;
end;

procedure TcmMemTable.Prepare;
begin
  if Assigned(fFP) then FreeAndNil(fFP);
  fFP:=TcmDBLinks.Create(fDataSet);
  fFP.PrepareQuery;
end;

procedure TcmMemTable.SetActive(const Value: Boolean);
begin
  if Value then Open else Close;
end;

function TcmMemTable.Table: TdxMemData;
begin
  Result:=TdxMemData(fDataSet);
end;

initialization
  fDataBase:=nil;

finalization
  if Assigned(fDataBase) then
    fDataBase.Free;

end.
