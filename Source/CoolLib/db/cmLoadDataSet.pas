unit cmLoadDataSet;

interface

uses
  SysUtils, Classes, jbDBF, cmUtils;

type
 EMyException = class(Exception);
 TcmExtDataSet = class(TPersistent)
 protected
   function FF(const AData: string): string;
 public
   constructor Create;
   procedure Open(const AFileName: string); virtual;
   procedure Close; virtual;
   function RecordCount: integer; virtual;
   procedure GotoNext; virtual;
   function Eof: boolean; virtual;
   function Load(const AFieldName: string): string; virtual;
   function Numeric(const AFieldName: string): double;
   function StrDate(const AFieldName: string): TDateTime;
 end;

 TcmDBFDataSet = class(TcmExtDataSet)
 private
   DBF: TjbDBF;
 public
   constructor Create;
   destructor Destroy; override;
   procedure Open(const AFileName: string); override;
   procedure Close; override;
   function RecordCount: integer; override;
   procedure GotoNext; override;
   function Eof: boolean; override;
   function Load(const AFieldName: string): string; override;
 end;

 TcmTextDataSet = class(TcmExtDataSet)
 private
   fFields: TStringList;
   f: TextFile;
   IsFileOpen: boolean;
   fEof: boolean;
   LastLine: string;
 public
   constructor Create;
   destructor Destroy; override;
   procedure Open(const AFileName: string); override;
   procedure Close; override;
   procedure GotoNext; override;
   function Eof: boolean; override;
   function Load(const AFieldName: string): string; override;
 published
   property Fields: TStringList read fFields;
 end;

implementation

{ TcmExtDataSet }

procedure TcmExtDataSet.Close;
begin

end;

constructor TcmExtDataSet.Create;
begin
  inherited;
end;

function TcmExtDataSet.Eof: boolean;
begin
  Result:=true;
end;

function TcmExtDataSet.FF(const AData: string): string;
var
  SD: string;
  Poz: integer;
  i: integer;
begin
  Result:=AData;
  if DecimalSeparator='.' then
    SD:=','
  else
    SD:='.';
  Poz:=Pos(SD, Result);
  if Poz<>0 then
    Result[Poz]:=DecimalSeparator;
  for i:=Length(Result) downto 1 do
    if Result[i]=' ' then Delete(Result,i,1);
end;

procedure TcmExtDataSet.GotoNext;
begin

end;

function TcmExtDataSet.Load(const AFieldName: string): string;
begin
  Result:='';
end;

function TcmExtDataSet.Numeric(const AFieldName: string): double;
begin
  Result:=StrToFloatDef(FF(Load(AFieldName)), 0);
end;

procedure TcmExtDataSet.Open(const AFileName: string);
begin

end;

function TcmExtDataSet.RecordCount: integer;
begin
  Result:=0;
end;

function TcmExtDataSet.StrDate(const AFieldName: string): TDateTime;
var
  S: string;
begin
  S:=Load(AFieldName);
  if S='' then
  begin
    Result:=0;
    Exit;
  end;
  //формируем дату
  if (Length(S)<3) or (S[3]<>DateSeparator) then
    S:=Copy(S,7,2)+DateSeparator+Copy(S,5,2)+DateSeparator+Copy(S,1,4);
  Result:=StrToDate(S);
end;

{ TcmDBFDataSet }

procedure TcmDBFDataSet.Close;
begin
  inherited;
  if DBF.Open then
    DBF.Close;
end;

constructor TcmDBFDataSet.Create;
begin
  inherited Create;
  DBF:=TjbDBF.Create(nil);
end;

destructor TcmDBFDataSet.Destroy;
begin
  if DBF.FileIsOpen then
    DBF.Close;
  DBF.Free;
  inherited;
end;

function TcmDBFDataSet.Eof: boolean;
begin
  Result:=DBF.CurrRec>=DBF.RecordsCount;
end;

procedure TcmDBFDataSet.GotoNext;
begin
  DBF.GotoNext;
end;

function TcmDBFDataSet.Load(const AFieldName: string): string;
var
  S: AnsiString;
begin
  S:=AnsiString(AFieldName);
  Result:=string(DBF.Load(S));
end;

procedure TcmDBFDataSet.Open(const AFileName: string);
begin
  DBF.FileName:=AFileName;
  DBF.Open;
end;

function TcmDBFDataSet.RecordCount: integer;
begin
  Result:=DBF.RecordsCount;
end;

{ TcmTextDataSet }

procedure TcmTextDataSet.Close;
begin
  inherited;
  if IsFileOpen then
    CloseFile(f);
  fFields.Free;
end;

constructor TcmTextDataSet.Create;
begin
  inherited;
  IsFileOpen:=false;
  LastLine:='';
  fEof:=false;
  fFields:=TStringList.Create;
end;

destructor TcmTextDataSet.Destroy;
begin
  Close;
  inherited;
end;

function TcmTextDataSet.Eof: boolean;
begin
  Result:=fEof;
end;

procedure TcmTextDataSet.GotoNext;
begin
  while not System.Eof(f) do
  begin
    Readln(f, LastLine);
    if LastLine<>'' then
      Exit;
  end;
  fEof:=true;
end;

function TcmTextDataSet.Load(const AFieldName: string): string;
var
  i: integer;
begin
  Result:='';
  i:=Fields.IndexOf(UpperCase(AFieldName));
  if i>=0 then
    Result:=cmGetWord(LastLine, i+1, #9)
  else
    Result:='';
end;

procedure TcmTextDataSet.Open(const AFileName: string);
var
  i,Count: integer;
begin
  if FileExists(AFileName) then
  begin
    AssignFile(f, AFileName);
    Reset(f);
    IsFileOpen:=true;
    GotoNext; //считываем первую строку c описанием полей набора данных
    Count:=cmWordCount(LastLine, #9);
    Fields.Clear;
    for i:=1 to Count do
      Fields.Add(Trim(UpperCase(cmGetWord(LastLine,i,#9))));
    GotoNext; //к первой записи набора данных
  end
  else
    raise EMyException.Create('Файл - '+AFileName+' не найден.');
end;

end.
