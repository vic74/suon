unit RepUseFundsUnit;

interface
  uses FIBDataSet, pFIBDataSet, Data.DB;
  type
{ TRepUseFunds }

  TRepUseFunds = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
    function MakeReport(m1, m2, y, house: Variant): TDataSet;
  published

  end;


implementation

{ TRepUseFunds }

constructor TRepUseFunds.Create;
begin

end;

destructor TRepUseFunds.Destroy;
begin

  inherited;
end;

function TRepUseFunds.MakeReport(m1, m2, y, house: Variant): TDataSet;
begin

end;

end.
