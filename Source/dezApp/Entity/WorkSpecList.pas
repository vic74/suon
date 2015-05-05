unit WorkSpecList;

interface

uses cmDBUnit, FIBQuery, pFIBCacheQueries, pFIBProps, System.SysUtils, System.Variants;
{ TWorkSpecList }
  type
  TWorkSpecList = class(TObject)
  private
    fCode: Variant;
    fData: Variant;
    fKontragent: Variant;
    fServisWork: Variant;
    fHouse: Variant;
    fPrice: Variant;
    fNote: Variant;
    fWorkList: Variant;
    fQuantity: Variant;
    fJWork: Variant;
    fJWork1: Variant;
    fRequestId: Variant;
    fDisp_base: Variant;
    fTOPlan: Variant;
  protected

  public
    constructor Create;
    destructor Destroy; override;
    //
    function Save: Variant; overload;
    function Save(ASQL: string; fieldIndexReturn: Integer = 0): Variant; overload;
    procedure FindById(Id: Variant);
    procedure DeleteWork; overload;
    procedure DeleteWork(Id: Variant); overload;
  published
    property Code: Variant read fCode write fCode;
    property Data: Variant read fData write fData;
    property Kontragent: Variant read fKontragent write fKontragent;
    property ServisWork: Variant read fServisWork write fServisWork;
    property House: Variant read fHouse write fHouse;
    property Price: Variant read fPrice write fPrice;
    property Note: Variant read fNote write fNote;
    property WorkList: Variant read fWorkList write fWorkList;
    property Quantity: Variant read fQuantity write fQuantity;
    property JWork: Variant read fJWork write fJWork;
    property JWork1: Variant read fJWork1 write fJWork1;
    property RequestId: Variant read fRequestId write fRequestId;
    property Disp_base: Variant read fDisp_base write fDisp_base;
    property TOPlan: Variant read fTOPlan write fTOPlan;
  end;

implementation

{ TWorkSpecList }

constructor TWorkSpecList.Create;
begin

end;

procedure TWorkSpecList.DeleteWork;
var
  ASQL: string;
  Q: TFIBQuery;
begin
  ASQL:= 'delete from WORKSPECLIST where (CODE = :CODE)';
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= fCode;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TWorkSpecList.DeleteWork(Id: Variant);
begin
  if VarIsType(Id,[varNull, varEmpty]) then
    raise Exception.Create('Не передан код записи для удаления!');
  fCode:= Id;
  DeleteWork;
end;

destructor TWorkSpecList.Destroy;
begin

  inherited;
end;

procedure TWorkSpecList.FindById(Id: Variant);
var
  Q: TFIBQuery;
  ASQL: string;
begin
  ASQL:= 'SELECT * FROM WORKSPECLIST WHERE CODE=:CODE';
  Q:= GetQueryForUse(cmDb.RT, ASQL);
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= Id;
    Q.ExecQuery;
    if Q.RecordCount>0 then begin
      fCode:= Q.FN('CODE').AsVariant;
      fData:= Q.FN('DATA').AsVariant;
      fKontragent:= Q.FN('KONTRAGENT').AsVariant;
      fServisWork:= Q.FN('SERVISWORK').AsVariant;
      fHouse:= Q.FN('HOUSE').AsVariant;
      fPrice:= Q.FN('PRICE').AsVariant;
      fNote:= Q.FN('NOTE').AsVariant;
      fWorkList:= Q.FN('WORKLIST').AsVariant;
      fQuantity:= Q.FN('QUANTITY').AsVariant;
      fJWork:= Q.FN('JWORK').AsVariant;
      fJWork1:= Q.FN('JWORK1').AsVariant;
      fRequestId:= Q.FN('REQUESTID').AsVariant;
      fDisp_base:= Q.FN('DISP_BASE').AsVariant;
      fTOPlan:= Q.FN('TOPLAN').AsVariant;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TWorkSpecList.Save(ASQL: string; fieldIndexReturn: Integer): Variant;
var
  Q: TFIBQuery;
  i: Integer;
begin
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    if Q.ParamExist('CODE',i) then Q.ParamByName('CODE').AsVariant:= fCode;
    if Q.ParamExist('DATA',i) then Q.ParamByName('DATA').AsVariant:= fData;
    if Q.ParamExist('KONTRAGENT',i) then Q.ParamByName('KONTRAGENT').AsVariant:= fKontragent;
    if Q.ParamExist('SERVISWORK',i) then Q.ParamByName('SERVISWORK').AsVariant:= fServisWork;
    if Q.ParamExist('HOUSE',i) then Q.ParamByName('HOUSE').AsVariant:= fHouse;
    if Q.ParamExist('PRICE',i) then Q.ParamByName('PRICE').AsVariant:= fPrice;
    if Q.ParamExist('NOTE',i) then Q.ParamByName('NOTE').AsVariant:= fNote;
    if Q.ParamExist('WORKLIST',i) then Q.ParamByName('WORKLIST').AsVariant:= fWorkList;
    if Q.ParamExist('QUANTITY',i) then Q.ParamByName('QUANTITY').AsVariant:= fQuantity;
    if Q.ParamExist('JWORK',i) then Q.ParamByName('JWORK').AsVariant:= fJWork;
    if Q.ParamExist('JWORK1',i) then Q.ParamByName('JWORK1').AsVariant:= fJWork1;
    if Q.ParamExist('REQUESTID',i) then Q.ParamByName('REQUESTID').AsVariant:= fRequestId;
    if Q.ParamExist('DISP_BASE',i) then Q.ParamByName('DISP_BASE').AsVariant:= fDisp_base;
    if Q.ParamExist('TOPLAN',i) then Q.ParamByName('TOPLAN').AsVariant:= fTOPlan;
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

function TWorkSpecList.Save: Variant;
var
  ASQL: string;
  Q: TFIBQuery;
begin
  ASQL:= 'update or insert into WORKSPECLIST (CODE, DATA, KONTRAGENT, SERVISWORK, HOUSE, PRICE, NOTE, WORKLIST,'+#10#13+
         '                                    QUANTITY, JWORK, JWORK1, REQUESTID, DISP_BASE, TOPLAN)'+#10#13+
         'values (:CODE, :DATA, :KONTRAGENT, :SERVISWORK, :HOUSE, :PRICE, :NOTE, :WORKLIST,'+#10#13+
         '        :QUANTITY, :JWORK, :JWORK1, :REQUESTID, :DISP_BASE, :TOPLAN)'+#10#13+
         'matching (CODE)'+#10#13+
         'returning CODE';
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= fCode;
    Q.ParamByName('DATA').AsVariant:= fData;
    Q.ParamByName('KONTRAGENT').AsVariant:= fKontragent;
    Q.ParamByName('SERVISWORK').AsVariant:= fServisWork;
    Q.ParamByName('HOUSE').AsVariant:= fHouse;
    Q.ParamByName('PRICE').AsVariant:= fPrice;
    Q.ParamByName('NOTE').AsVariant:= fNote;
    Q.ParamByName('WORKLIST').AsVariant:= fWorkList;
    Q.ParamByName('QUANTITY').AsVariant:= fQuantity;
    Q.ParamByName('JWORK').AsVariant:= fJWork;
    Q.ParamByName('JWORK1').AsVariant:= fJWork1;
    Q.ParamByName('REQUESTID').AsVariant:= fRequestId;
    Q.ParamByName('DISP_BASE').AsVariant:= fDisp_base;
    Q.ParamByName('TOPLAN').AsVariant:= fTOPlan;
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

end.
