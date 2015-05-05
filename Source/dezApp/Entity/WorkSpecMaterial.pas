unit WorkSpecMaterial;

interface

uses cmDBUnit, FIBQuery, pFIBCacheQueries, pFIBProps, System.SysUtils, System.Variants;
{ TWorkSpecMaterial }
  type
  TWorkSpecMaterial = class(TObject)
  private
    fCode: Variant;
    fData: Variant;
    fKontragent: Variant;
    fServisWork: Variant;
    fHouse: Variant;
	fServisMaterial: Variant;
    fPrice: Variant;
    fNote: Variant;
    fWorkSpecList: Variant;
    fQuantity: Variant;
    fClassmat: Variant;
    fPlace: Variant;
    fState: Variant;
  protected

  public
    constructor Create;
    destructor Destroy; override;
    //
    function Save: Variant; overload;
    function Save(ASQL: string; fieldIndexReturn: Integer = 0): Variant; overload;
    procedure FindById(Id: Variant);
    procedure DeleteMaterial; overload;
    procedure DeleteMaterial(Id: Variant); overload;
  published
    property Code: Variant read fCode write fCode;
    property Data: Variant read fData write fData;
    property Kontragent: Variant read fKontragent write fKontragent;
    property ServisWork: Variant read fServisWork write fServisWork;
    property House: Variant read fHouse write fHouse;
	property ServisMaterial: Variant read fServisMaterial write fServisMaterial;
    property Price: Variant read fPrice write fPrice;
    property Note: Variant read fNote write fNote;
    property WorkSpecList: Variant read fWorkSpecList write fWorkSpecList;
    property Quantity: Variant read fQuantity write fQuantity;    
	property Classmat: Variant read fClassmat write fClassmat;
    property Place: Variant read fPlace write fPlace;
    property State: Variant read fState write fState;
  end;

implementation

{ TWorkSpecMaterial }

constructor TWorkSpecMaterial.Create;
begin

end;

procedure TWorkSpecMaterial.DeleteMaterial;
var
  ASQL: string;
  Q: TFIBQuery;
begin
  ASQL:= 'delete from WORKSPECMATERIAL where (CODE = :CODE)';
  Q:= GetQueryForUse(cmDb.WT, ASQL);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= fCode;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TWorkSpecMaterial.DeleteMaterial(Id: Variant);
begin
  if VarIsType(Id,[varNull, varEmpty]) then
    raise Exception.Create('Не передан код записи для удаления!');
  fCode:= Id;
  DeleteMaterial;
end;

destructor TWorkSpecMaterial.Destroy;
begin

  inherited;
end;

procedure TWorkSpecMaterial.FindById(Id: Variant);
var
  Q: TFIBQuery;
  ASQL: string;
begin
  ASQL:= 'SELECT * FROM WORKSPECMATERIAL WHERE CODE=:CODE';
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
      fWorkSpecList:= Q.FN('WORKSPECLIST').AsVariant;
      fQuantity:= Q.FN('QUANTITY').AsVariant;
      fClassmat:= Q.FN('CLASSMAT').AsVariant;
      fPlace:= Q.FN('PLACE').AsVariant;
      fState:= Q.FN('STATE').AsVariant;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TWorkSpecMaterial.Save(ASQL: string; fieldIndexReturn: Integer): Variant;
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
    if Q.ParamExist('WORKSPECLIST',i) then Q.ParamByName('WORKSPECLIST').AsVariant:= fWorkSpecList;
    if Q.ParamExist('QUANTITY',i) then Q.ParamByName('QUANTITY').AsVariant:= fQuantity;
    if Q.ParamExist('CLASSMAT',i) then Q.ParamByName('CLASSMAT').AsVariant:= fClassmat;
    if Q.ParamExist('PLACE',i) then Q.ParamByName('PLACE').AsVariant:= fPlace;
    if Q.ParamExist('STATE',i) then Q.ParamByName('STATE').AsVariant:= fState;
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

function TWorkSpecMaterial.Save: Variant;
var
  ASQL: string;
  Q: TFIBQuery;
begin
	  ASQL:= 'update or insert into WORKSPECMATERIAL (CODE, WORKSPECLIST, DATA, KONTRAGENT, SERVISWORK, HOUSE, ADDR, SERVISMATERIAL,'+#10#13+
			 '										  QUANTITY, PRICE, NOTE, CLASSMAT, PLACE, STATE)'+#10#13+
			 'values (:CODE, :WORKSPECLIST, :DATA, :KONTRAGENT, :SERVISWORK, :HOUSE, :ADDR, :SERVISMATERIAL, :QUANTITY, :PRICE, :NOTE,'+#10#13+
			 '		  :CLASSMAT, :PLACE, :STATE)'+#10#13+
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
    Q.ParamByName('WORKSPECLIST').AsVariant:= fWorkSpecList;
    Q.ParamByName('QUANTITY').AsVariant:= fQuantity;
    Q.ParamByName('CLASSMAT').AsVariant:= fClassmat;
    Q.ParamByName('PLACE').AsVariant:= fPlace;
    Q.ParamByName('STATE').AsVariant:= fState;
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
