unit IMPORT_cmTables;

interface

uses
  SysUtils,
  cmTables,
  PaxRegister,
  PaxCompiler;

procedure Register_cmTables;

implementation

function _cmDataBase_DataBaseName(Self: TcmDataBase): string;
begin
  Result:=Self.DataBaseName;
end;

function _cmDataBase_ServerName(Self: TcmDataBase): string;
begin
  Result:=Self.ServerName;
end;

function _cmDataBase_Connected(Self: TcmDataBase): boolean;
begin
  Result:=Self.Connected;
end;

function _TcmDBLink_ReadCurr(Self: TcmDBLink): currency;
begin
  Result:=Self.Curr;
end;

procedure _TcmDBLink_WriteCurr(Self: TcmDBLink; const Value: currency);
begin
  Self.Curr:=Value;
end;

function _TcmDBLink_ReadInt(Self: TcmDBLink): integer;
begin
  Result:=Self.Int;
end;

procedure _TcmDBLink_WriteInt(Self: TcmDBLink; const Value: integer);
begin
  Self.Int:=Value;
end;

function _TcmDBLink_ReadName(Self: TcmDBLink): string;
begin
  Result:=Self.Name;
end;

function _TcmDBLink_ReadInt64(Self: TcmDBLink): Int64;
begin
  Result:=Self.Int64;
end;

procedure _TcmDBLink_WriteInt64(Self: TcmDBLink; const Value: Int64);
begin
  Self.Int64:=Value;
end;

function _TcmDBLink_ReadExt(Self: TcmDBLink): Extended;
begin
  Result:=Self.Ext;
end;

procedure _TcmDBLink_WriteExt(Self: TcmDBLink; const Value: Extended);
begin
  Self.Ext:=Value;
end;

function _TcmDBLink_ReadDbl(Self: TcmDBLink): Double;
begin
  Result:=Self.Dbl;
end;

procedure _TcmDBLink_WriteDbl(Self: TcmDBLink; const Value: Double);
begin
  Self.Dbl:=Value;
end;

function _TcmDBLink_ReadDT(Self: TcmDBLink): TDateTime;
begin
  Result:=Self.DT;
end;

procedure _TcmDBLink_WriteDT(Self: TcmDBLink; const Value: TDateTime);
begin
  Self.DT:=Value;
end;

function _TcmDBLink_ReadDate(Self: TcmDBLink): TDateTime;
begin
  Result:=Self.Date;
end;

procedure _TcmDBLink_WriteDate(Self: TcmDBLink; const Value: TDateTime);
begin
  Self.Date:=Value;
end;

function _TcmDBLink_ReadTime(Self: TcmDBLink): TDateTime;
begin
  Result:=Self.Time;
end;

procedure _TcmDBLink_WriteTime(Self: TcmDBLink; const Value: TDateTime);
begin
  Self.Time:=Value;
end;

function _TcmDBLink_ReadStr(Self: TcmDBLink): string;
begin
  Result:=Self.Str;
end;

procedure _TcmDBLink_WriteStr(Self: TcmDBLink; const Value: string);
begin
  Self.Str:=Value;
end;

function _TcmDBLink_ReadBool(Self: TcmDBLink): boolean;
begin
  Result:=Self.Bool;
end;

procedure _TcmDBLink_WriteBool(Self: TcmDBLink; const Value: boolean);
begin
  Self.Bool:=Value;
end;

function _TcmDBLink_ReadGUID(Self: TcmDBLink): TGUID;
begin
  Result:=Self.GUID;
end;

procedure _TcmDBLink_WriteGUID(Self: TcmDBLink; const Value: TGUID);
begin
  Self.GUID:=Value;
end;

function _TcmDBLink_ReadVariant(Self: TcmDBLink): Variant;
begin
  Result:=Self.Variant;
end;

procedure _TcmDBLink_WriteVariant(Self: TcmDBLink; const Value: Variant);
begin
  Self.Variant:=Value;
end;

function _TcmSQL_ReadFields(Self: TcmSQL; i: integer): TcmDBLink;
begin
  Result:=Self.Fields[i];
end;

function _TcmSQL_ReadParams(Self: TcmSQL; i: integer): TcmDBLink;
begin
  Result:=Self.Params[i];
end;

function _TcmDataSet_Fields(Self: TcmDataSet; AIndex: integer): TcmDBLink;
begin
  Result:=Self.Fields[AIndex];
end;

function _TcmDataSet_Params(Self: TcmDataSet; AIndex: integer): TcmDBLink;
begin
  Result:=Self.Params[AIndex];
end;

function _TcmDataSet_GetFilter(Self: TcmDataSet): string;
begin
  Result:=Self.Filter;
end;

procedure _TcmDataSet_SetFilter(Self: TcmdataSet; Value: string);
begin
  Self.Filter:=Value;
end;

function _TcmDataSet_GetFiltered(Self: TcmDataSet): boolean;
begin
  Result:=Self.Filtered;
end;

procedure _TcmDataSet_SetFiltered(Self: TcmDataSet; Value: boolean);
begin
  Self.Filtered:=Value;
end;

function _TcmDataSet_GetActive(Self: TcmDataSet): boolean;
begin
  Result:=Self.Active;
end;

procedure _TcmDataSet_SetActive(Self: TcmDataSet; Value: boolean);
begin
  Self.Active:=Value;
end;

procedure Register_cmTables;
var
  H,G: integer;
begin
  H:=RegisterNamespace(0, 'cmDataBase');

  //база данных
  G:=RegisterClassType(H, TcmDataBase);
  RegisterHeader(G, 'function _cmDataBase_DataBaseName: string;', @_cmDataBase_DataBaseName);
  RegisterProperty(G, 'property DataBaseName: string read _cmDataBase_DataBaseName;');
  RegisterHeader(G, 'function _cmDataBase_ServerName: string;', @_cmDataBase_ServerName);
  RegisterProperty(G, 'property ServerName: string read _cmDataBase_ServerName;');
  RegisterHeader(G, 'function _cmDataBase_Connected: boolean;', @_cmDataBase_Connected);
  RegisterProperty(G, 'property Connected: boolean read _cmDataBase_Connected;');
  RegisterHeader(G, 'procedure StartTransaction;', @TcmDataBase.StartTransaction);
  RegisterHeader(G, 'procedure CommitTransaction;', @TcmDataBase.CommitTransaction);
  RegisterHeader(G, 'procedure RollbackTransaction;', @TcmDataBase.RollbackTransaction);
  RegisterHeader(G, 'procedure Connect(ABaseName: string);', @TcmDataBase.Connect);
  RegisterHeader(G, 'procedure Disconnect;', @TcmDataBase.Disconnect);
  RegisterHeader(G, 'function BackupDataBase(AServerName, ADataBaseName, '+
      'ABackupName, APassword, ALogFileName: string): boolean;', @TcmDataBase.BackupDataBase);
  RegisterHeader(G, 'function RestoreDataBase(AServerName, ADataBaseName, '+
      'ABackupName, APassword, ALogFileName: string): boolean;', @TcmDataBase.RestoreDataBase);

  RegisterHeader(H, 'function DataBase: TcmDataBase', @DataBase);

  //поле набора данных
  G:=RegisterClassType(H, TcmDBLink);
  //RegisterHeader(G, 'constructor Create(AObj, ADataSet: TObject); virtual;', @TcmDBLink.Create);
  //RegisterHeader(G, 'destructor Destroy; override;', @TcmDBLink.Destroy);

  RegisterHeader(G, 'function _TcmDBLink_ReadName: string;', @_TcmDBLink_ReadName);
  RegisterProperty(G, 'property Name: string read _TcmDBLink_ReadName;');

  RegisterHeader(G, 'function _TcmDBLink_ReadCurr: currency;', @_TcmDBLink_ReadCurr);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteCurr(const Value: currency);', @_TcmDBLink_WriteCurr);
  RegisterProperty(G, 'property Curr: currency read _TcmDBLink_ReadCurr write _TcmDBLink_WriteCurr;');

  RegisterHeader(G, 'function _TcmDBLink_ReadInt: integer;', @_TcmDBLink_ReadInt);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteInt(const Value: integer);', @_TcmDBLink_WriteInt);
  RegisterProperty(G, 'property Int: integer read _TcmDBLink_ReadInt write _TcmDBLink_WriteInt;');

  RegisterHeader(G, 'function _TcmDBLink_ReadInt64: Int64;', @_TcmDBLink_ReadInt64);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteInt64(const Value: Int64);', @_TcmDBLink_WriteInt64);
  RegisterProperty(G, 'property Int64: Int64 read _TcmDBLink_ReadInt64 write _TcmDBLink_WriteInt64;');

  RegisterHeader(G, 'function _TcmDBLink_ReadExt: extended;', @_TcmDBLink_ReadExt);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteExt(const Value: Extended);', @_TcmDBLink_WriteExt);
  RegisterProperty(G, 'property Ext: Extended read _TcmDBLink_ReadExt write _TcmDBLink_WriteExt;');

  RegisterHeader(G, 'function _TcmDBLink_ReadDbl: double;', @_TcmDBLink_ReadDbl);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteDbl(const Value: Double);', @_TcmDBLink_WriteDbl);
  RegisterProperty(G, 'property Dbl: double read _TcmDBLink_ReadDbl write _TcmDBLink_WriteDbl;');

  RegisterHeader(G, 'function _TcmDBLink_ReadDT: TDateTime;', @_TcmDBLink_ReadDT);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteDT(const Value: TDateTime);', @_TcmDBLink_WriteDT);
  RegisterProperty(G, 'property DT: TDateTime read _TcmDBLink_ReadDT write _TcmDBLink_WriteDT;');

  RegisterHeader(G, 'function _TcmDBLink_ReadDate: TDateTime;', @_TcmDBLink_ReadDate);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteDate(const Value: TDateTime);', @_TcmDBLink_WriteDate);
  RegisterProperty(G, 'property Date: TDateTime read _TcmDBLink_ReadDate write _TcmDBLink_WriteDate;');

  RegisterHeader(G, 'function _TcmDBLink_ReadTime: TDateTime;', @_TcmDBLink_ReadTime);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteTime(const Value: TDateTime);', @_TcmDBLink_WriteTime);
  RegisterProperty(G, 'property Time: TDateTime read _TcmDBLink_ReadTime write _TcmDBLink_WriteTime;');

  RegisterHeader(G, 'function _TcmDBLink_ReadStr: string;', @_TcmDBLink_ReadStr);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteStr(const Value: string);', @_TcmDBLink_WriteStr);
  RegisterProperty(G, 'property Str: string read _TcmDBLink_ReadStr write _TcmDBLink_WriteStr;');

  RegisterHeader(G, 'function _TcmDBLink_ReadBool: boolean;', @_TcmDBLink_ReadBool);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteBool(const Value: boolean);', @_TcmDBLink_WriteBool);
  RegisterProperty(G, 'property Bool: boolean read _TcmDBLink_ReadBool write _TcmDBLink_WriteBool;');

  RegisterHeader(G, 'function _TcmDBLink_ReadGUID: TGUID;', @_TcmDBLink_ReadGUID);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteGUID(const Value: TGUID);', @_TcmDBLink_WriteGUID);
  RegisterProperty(G, 'property GUID: TGUID read _TcmDBLink_ReadGUID write _TcmDBLink_WriteGUID;');

  RegisterHeader(G, 'function _TcmDBLink_ReadVariant: Variant;', @_TcmDBLink_ReadVariant);
  RegisterHeader(G, 'procedure _TcmDBLink_WriteVariant(const Value: Variant);', @_TcmDBLink_WriteVariant);
  RegisterProperty(G, 'property Variant: Variant read _TcmDBLink_ReadVariant write _TcmDBLink_WriteVariant;');

  //SQL Запросы
  G:=RegisterClassType(H, TcmSQL);
  RegisterHeader(G, 'constructor Create(ASQL: string; AExecQuery: boolean = false);', @TcmSQL.Create);
  RegisterHeader(G, 'destructor Destroy; override;', @TcmSQL.Destroy);
  RegisterHeader(G, 'function _TcmSQL_ReadFields(i: integer): TcmDBLink;', @_TcmSQL_ReadFields);
  RegisterProperty(G, 'property Fields[i: integer]: TcmDBLink read _TcmSQL_ReadFields;');
  RegisterHeader(G, 'function _TcmSQL_ReadParams(i: integer): TcmDBLink;', @_TcmSQL_ReadParams);
  RegisterProperty(G, 'property Params[i: integer]: TcmDBLink read _TcmSQL_ReadParams;');
  RegisterHeader(G, 'function FieldCount: integer;', @TcmSQL.FieldCount);
  RegisterHeader(G, 'function ParamCount: integer;', @TcmSQL.ParamCount);
  RegisterHeader(G, 'function FN(AFieldName: string): TcmDBLink;', @TcmSQL.FN);
  RegisterHeader(G, 'function PN(AParamName: string): TcmDBLink;', @TcmSQL.PN);
  RegisterHeader(G, 'procedure ExecQuery;', @TcmSQL.ExecQuery);
  RegisterHeader(G, 'procedure Next;', @TcmSQL.Next);
  RegisterHeader(G, 'function Eof: boolean;', @TcmSQL.Eof);

  //базовый датасет
  G:=RegisterClassType(H, TcmDataSet);
  RegisterHeader(G, 'procedure _TcmDataSet_Fields(AIndex: integer): TcmDBLink;', @_TcmDataSet_Fields);
  RegisterProperty(G, 'property Fields[i: integer]: TcmDBLink read _TcmDataSet_Fields;');
  RegisterHeader(G, 'procedure _TcmDataSet_Params(AIndex: integer): TcmDBLink;', @_TcmDataSet_Params);
  RegisterProperty(G, 'property Params[i: integer]: TcmDBLink read _TcmDataSet_Params;');

  RegisterHeader(G, 'function FieldCount: integer;', @TcmDataSet.FieldCount);
  RegisterHeader(G, 'function ParamCount: integer;', @TcmDataSet.ParamCount);
  RegisterHeader(G, 'function FN(AFieldName: string): TcmDBLink;', @TcmDataSet.FN);
  RegisterHeader(G, 'function PN(AParamName: string): TcmDBLink;', @TcmDataSet.PN);

  RegisterHeader(G, 'procedure Append;', @TcmDataSet.Append);
  RegisterHeader(G, 'procedure Cancel;', @TcmDataSet.Cancel);
  RegisterHeader(G, 'procedure Close;', @TcmDataSet.Close);
  RegisterHeader(G, 'procedure Delete;', @TcmDataSet.Delete);
  RegisterHeader(G, 'procedure DisableControls;', @TcmDataSet.DisableControls);
  RegisterHeader(G, 'procedure EnableControls;', @TcmDataSet.EnableControls);
  RegisterHeader(G, 'procedure Edit;', @TcmDataSet.Edit);
  RegisterHeader(G, 'procedure First;', @TcmDataSet.First);
  RegisterHeader(G, 'procedure Insert;', @TcmDataSet.Insert);
  RegisterHeader(G, 'function IsEmpty: Boolean;', @TcmDataSet.IsEmpty);
  RegisterHeader(G, 'procedure Last;', @TcmDataSet.Last);
  RegisterHeader(G, 'function Locate(const KeyFields: string; const KeyValues: Variant): boolean;', @TcmDataSet.Locate);
  RegisterHeader(G, 'function MoveBy(Distance: Integer): Integer;', @TcmDataSet.MoveBy);
  RegisterHeader(G, 'procedure Next;', @TcmDataSet.Next);
  RegisterHeader(G, 'procedure Open; virtual;', @TcmDataSet.Open);
  RegisterHeader(G, 'procedure Post;', @TcmDataSet.Post);
  RegisterHeader(G, 'procedure Prior;', @TcmDataSet.Prior);
  RegisterHeader(G, 'procedure Refresh;', @TcmdataSet.Refresh);
  RegisterHeader(G, 'function Bof: Boolean;', @TcmDataSet.Bof);
  RegisterHeader(G, 'function Eof: Boolean;', @TcmDataSet.Eof);
  RegisterHeader(G, 'function Modified: Boolean;', @TcmDataSet.Modified);

  RegisterHeader(G, 'function _TcmDataSet_GetFilter: string;', @_TcmdataSet_GetFilter);
  RegisterHeader(G, 'procedure _TcmDataSet_SetFilter(Value: string);', @_TcmdataSet_SetFilter);
  RegisterProperty(G, 'property Filter: string read _TcmDataSet_GetFilter write _TcmDataSet_SetFilter;');
  RegisterHeader(G, 'function _TcmDataSet_GetFiltered: boolean;', @_TcmdataSet_GetFiltered);
  RegisterHeader(G, 'procedure _TcmDataSet_SetFiltered(Value: boolean);', @_TcmdataSet_SetFiltered);
  RegisterProperty(G, 'property Filtered: string read _TcmDataSet_GetFiltered write _TcmDataSet_SetFiltered;');
  RegisterHeader(G, 'function _TcmDataSet_GetActive: boolean;', @_TcmdataSet_GetActive);
  RegisterHeader(G, 'procedure _TcmDataSet_SetActive(Value: boolean);', @_TcmdataSet_SetActive);
  RegisterProperty(G, 'property Active: boolean read _TcmDataSet_GetActive write _TcmDataSet_SetActive;');

  RegisterHeader(G, 'procedure BeforeOpen; virtual;', @TcmDataSet.BeforeOpen);
  RegisterHeader(G, 'procedure AfterOpen; virtual;', @TcmdataSet.AfterOpen);
  RegisterHeader(G, 'procedure BeforeClose; virtual;', @TcmDataSet.BeforeClose);
  RegisterHeader(G, 'procedure AfterClose; virtual;', @TcmdataSet.AfterClose);
  RegisterHeader(G, 'procedure BeforeInsert; virtual;', @TcmdataSet.BeforeInsert);
  RegisterHeader(G, 'procedure AfterInsert; virtual;', @TcmDataSet.AfterInsert);
  RegisterHeader(G, 'procedure BeforeEdit; virtual;', @TcmDataSet.BeforeEdit);
  RegisterHeader(G, 'procedure AfterEdit; virtual;', @TcmDataSet.AfterEdit);
  RegisterHeader(G, 'procedure BeforePost; virtual;', @TcmDataSet.BeforePost);
  RegisterHeader(G, 'procedure AfterPost; virtual;', @TcmdataSet.AfterPost);
  RegisterHeader(G, 'procedure BeforeCancel; virtual;', @TcmdataSet.BeforeCancel);
  RegisterHeader(G, 'procedure AfterCancel; virtual;', @TcmDataSet.AfterCancel);
  RegisterHeader(G, 'procedure BeforeDelete; virtual;', @TcmdataSet.BeforeDelete);
  RegisterHeader(G, 'procedure AfterDelete; virtual;', @TcmdataSet.AfterDelete);
  RegisterHeader(G, 'procedure BeforeScroll; virtual;', @TcmDataSet.BeforeScroll);
  RegisterHeader(G, 'procedure AfterScroll; virtual;', @TcmDataSet.AfterScroll);
  RegisterHeader(G, 'procedure BeforeRefresh; virtual;', @TcmDataSet.BeforeRefresh);
  RegisterHeader(G, 'procedure AfterRefresh; virtual;', @TcmDataSet.AfterRefresh);
  RegisterHeader(G, 'procedure CalcFields; virtual;', @TcmDataSet.CalcFields);
  RegisterHeader(G, 'procedure DeleteError(E: Exception; var Action: TDataAction); virtual;', @TcmDataSet.DeleteError);
  RegisterHeader(G, 'procedure EditError(E: Exception; var Action: TDataAction); virtual;', @TcmDataSet.EditError);
  RegisterHeader(G, 'procedure FilterRecord(var Accept: Boolean); virtual;', @TcmDataSet.FilterRecord);
  RegisterHeader(G, 'procedure NewRecord; virtual;', @TcmDataSet.NewRecord);
  RegisterHeader(G, 'procedure PostError(E: Exception; var Action: TDataAction); virtual;', @TcmDataSet.PostError);

  //SQL dataset
  G:=RegisterClassType(H, TcmSQLTable);
  RegisterHeader(G, 'constructor Create;', @TcmSQLTable.Create);
  RegisterHeader(G, 'destructor Destroy; override;', @TcmSQLTable.Destroy);
  RegisterHeader(G, 'procedure Prepare;', @TcmSQLTable.Prepare);
  RegisterHeader(G, 'procedure Open; override;', @TcmSQLTable.Open);

  //Mem dataset
  G:=RegisterClassType(H, TcmMemTable);
  RegisterHeader(G, 'constructor Create;', @TcmMemTable.Create);
  RegisterHeader(G, 'destructor Destroy; override;', @TcmMemTable.Destroy);
  RegisterHeader(G, 'procedure Prepare;', @TcmMemTable.Prepare);
  RegisterHeader(G, 'procedure Open; override;', @TcmMemTable.Open);
  RegisterHeader(G, 'procedure AddField(AFieldName: string; AFieldType: TFieldType; AFieldSize: integer = 0);', @TcmMemTable.AddField);
  RegisterHeader(G, 'procedure ClearFields;', @TcmMemTable.ClearFields);

end;

end.
