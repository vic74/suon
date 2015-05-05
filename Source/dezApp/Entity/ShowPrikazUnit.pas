unit ShowPrikazUnit;

interface
 uses cmDBUnit, FIBQuery, pFIBCacheQueries, pFIBProps, System.SysUtils, System.Variants;

{ TShowPrikaz }
  type
  TShowPrikaz = class(TObject)
  private
    fCode: Variant;
    fNum: Variant;
    fData: Variant;
    fShowType: Variant;
    fGenDir: Variant;
    fChiefOE: Variant;
    fChiefTO: Variant;
    fStNum: Variant;
    fStDate: Variant;
    fChiefFIN: Variant;
    fCheifUO: Variant;
  protected

  public
    constructor Create;
    destructor Destroy; override;
    //
    function Save: Variant; overload;
    function Save(ASQL: string; fieldIndexReturn: Integer = 0): Variant; overload;
    procedure FindById(Id: Variant);
    procedure DeleteRec; overload;
    procedure DeleteRec(Id: Variant); overload;
  published
    property Code: Variant read fCode write fCode;
    property Num: Variant read fNum write fNum;
    property Data: Variant read FData write FData;
    property ShowType: Variant read fShowType write fShowType;
    property GenDir: Variant read fGenDir write fGenDir;
    property ChiefOE: Variant read fChiefOE write fChiefOE;
    property ChiefTO: Variant read fChiefTO write fChiefTO;
    property StNum: Variant read fStNum write fStNum;
    property StDate: Variant read fStDate write fStDate;
    property ChiefFIN: Variant read fChiefFIN write fChiefFIN;
    property CheifUO: Variant read fCheifUO write fCheifUO;
  end;

implementation

{ TShowPrikaz }

constructor TShowPrikaz.Create;
begin

end;

procedure TShowPrikaz.DeleteRec;
var
  ASQL: string;
  Q: TFIBQuery;
begin
  ASQL:= 'delete from SHOWPRIKAZ where (CODE = :CODE)';
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= fCode;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TShowPrikaz.DeleteRec(Id: Variant);
begin
  if VarIsType(Id,[varNull, varEmpty]) then
    raise Exception.Create('Не передан код записи для удаления!');
  fCode:= Id;
  DeleteRec;
end;

destructor TShowPrikaz.Destroy;
begin

  inherited;
end;

procedure TShowPrikaz.FindById(Id: Variant);
var
  Q: TFIBQuery;
  ASQL: string;
begin
  ASQL:= 'SELECT * FROM SHOWPRIKAZ WHERE CODE=:CODE';
  Q:= GetQueryForUse(cmDb.RT, ASQL);
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= Id;
    Q.ExecQuery;
    if Q.RecordCount>0 then begin
      fCode:=     Q.FN('CODE').AsVariant;
      fNum:=      Q.FN('NUM').AsVariant;
      fData:=     Q.FN('DATA').AsVariant;
      fShowType:= Q.FN('SHOWTYPE').AsVariant;
      fGenDir:=   Q.FN('GENDIR').AsVariant;
      fChiefOE:=  Q.FN('CHIEFOE').AsVariant;
      fChiefTO:=  Q.FN('CHIEFTO').AsVariant;
      fStNum:=    Q.FN('STNUM').AsVariant;
      fStDate:=   Q.FN('STDATE').AsVariant;
      fChiefFIN:= Q.FN('CHIEF_FIN').AsVariant;
      fCheifUO:=  Q.FN('CHIEF_UO').AsVariant;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TShowPrikaz.Save: Variant;
var
  ASQL: string;
  Q: TFIBQuery;
begin
	  ASQL:= 'update or insert into SHOWPRIKAZ (CODE, NUM, DATA, SHOWTYPE, GENDIR, CHIEFOE, CHIEFTO, STNUM, STDATE, CHIEF_FIN, CHIEF_UO)'+#10#13+
           'values (:CODE, :NUM, :DATA, :SHOWTYPE, :GENDIR, :CHIEFOE, :CHIEFTO, :STNUM, :STDATE, :CHIEF_FIN,:CHIEF_UO)'+#10#13+
           'matching (CODE)'+#10#13+
			     'returning CODE';
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= fCode;
    Q.ParamByName('NUM').AsVariant:= fNum;
    Q.ParamByName('DATA').AsVariant:= fData;
    Q.ParamByName('SHOWTYPE').AsVariant:= fShowType;
    Q.ParamByName('GENDIR').AsVariant:= fGenDir;
    Q.ParamByName('CHIEFOE').AsVariant:= fChiefOE;
    Q.ParamByName('CHIEFTO').AsVariant:= fChiefTO;
    Q.ParamByName('STNUM').AsVariant:= fStNum;
    Q.ParamByName('STDATE').AsVariant:= fStDate;
    Q.ParamByName('CHIEF_FIN').AsVariant:= fChiefFIN;
    Q.ParamByName('CHIEF_UO').AsVariant:= fCheifUO;
    try
      Q.ExecQuery;
      Result:= Q.FN('CODE').AsVariant;
    except
      on E: Exception do
        raise Exception.Create(e.Message);
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TShowPrikaz.Save(ASQL: string; fieldIndexReturn: Integer): Variant;
var
  Q: TFIBQuery;
  i: Integer;
begin
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    if Q.ParamExist('CODE',i) then Q.ParamByName('CODE').AsVariant:= fCode;
    if Q.ParamExist('NUM',i) then Q.ParamByName('NUM').AsVariant:= fNum;
    if Q.ParamExist('DATA',i) then Q.ParamByName('DATA').AsVariant:= fData;
    if Q.ParamExist('SHOWTYPE',i) then Q.ParamByName('SHOWTYPE').AsVariant:= fShowType;
    if Q.ParamExist('GENDIR',i) then Q.ParamByName('GENDIR').AsVariant:= fGenDir;
    if Q.ParamExist('CHIEFOE',i) then Q.ParamByName('CHIEFOE').AsVariant:= fChiefOE;
    if Q.ParamExist('CHIEFTO',i) then Q.ParamByName('CHIEFTO').AsVariant:= fChiefTO;
    if Q.ParamExist('STNUM',i) then Q.ParamByName('STNUM').AsVariant:= fStNum;
    if Q.ParamExist('STDATE',i) then Q.ParamByName('STDATE').AsVariant:= fStDate;
    if Q.ParamExist('CHIEF_FIN',i) then Q.ParamByName('CHIEF_FIN').AsVariant:= fChiefFIN;
    if Q.ParamExist('CHIEF_UO',i) then Q.ParamByName('CHIEF_UO').AsVariant:= fCheifUO;
    try
      Q.ExecQuery;
      if fieldIndexReturn>-1 then
      Result:= Q.Fields[fieldIndexReturn].AsVariant else
      Result:= null;
    except
      on E: Exception do
        raise Exception.Create(e.Message);
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

end.
