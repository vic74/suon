unit Kontragent;

interface
uses
  Aurelius.Types.Nullable,
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Proxy, Piople;

  type
  [Entity]
  [Sequence('KONTRAGENT_GEN')]
  [Table('KONTRAGENT')]
  [Id('fCode', TIdGenerator.IdentityOrSequence)]
  TKontragent = class
  private
    [Column('CODE', [TColumnProp.Unique, TColumnProp.Required, TColumnProp.NoUpdate])]
    fCode: Integer;
    [Column('NAME',[TColumnProp.Required],128)]
    fName: string;
    [Column('FULLNAME',[],256)]
    fFullName: string;
    [Column('INN',[],32)]
    fInn: string;
    [Column('KPP',[],32)]
    fKpp: string;
    [Column('OGRN',[],32)]
    fOgrn: string;
    [Column('POSTADDR',[],256)]
    fPostAddr: string;
    [Column('URADDR',[],256)]
    fUrAddr: string;
    [Column('PHONE',[],64)]
    fPhone: string;
    [Column('EMAIL',[],64)]
    fEmail: string;
    [Column('KTYPE')]
    fKType: SmallInt;
    [Column('DEFSCHET',[],32)]
    fDefSchet: string;
    [Column('CODE1C',[],8)]
    fCode1C: string;
    [Column ('DIRECTOR',[TColumnProp.NoUpdate])]
    fDirector: Nullable<Integer>;
    [Column ('DOPNUM')]
    fDopNum: Nullable<Integer>;
    [Column ('DISP_ID')]
    fDispId: Nullable<Integer>;
    [Column ('UUID')]
    fUUId: string;
    [Column ('ISACTIVE')]
    fIsActive: Nullable<SmallInt>;
    //[Association([TAssociationProp.Lazy], [])]
    //[JoinColumn('CHIEF', [])]
    //fChief: Proxy<TPiople>;
    [Column('CHIEF')]
    fChief: Nullable<Integer>;

    function GetPiople: TPiople;
    procedure SetPiople(const Value: TPiople);
  public
    constructor Create;
    destructor Destroy; override;
  published
    property Code: Integer read fCode write fCode;
    property Name: string read fName write fName;
    property FullName: string read fFullName write fFullName;
    property INN: string read FINN write FINN;
    property KPP: string read FKPP write FKPP;
    property Ogrn: string read FOgrn write FOgrn;
    property PostAddr: string read FPostAddr write FPostAddr;
    property UrAddr: string read FUrAddr write FUrAddr;
    property Phone: string read FPhone write FPhone;
    property Email: string read FEmail write FEmail;
    property KType: SmallInt read FKType write FKType;
    property DefSchet: string read FDefSchet write FDefSchet;
    property Code1C: string read FCode1C write FCode1C;
    property Director: Nullable<Integer> read FDirector write FDirector;
    property DopNum: Nullable<Integer> read FDopNum write FDopNum;
    property DispId: Nullable<Integer> read FDispId write FDispId;
    property UUId: string read FUUId write FUUId;
    property IsActive: Nullable<SmallInt> read FIsActive write FIsActive;
    //property Chief: TPiople read GetPiople write SetPiople;
    property Chief: Nullable<Integer> read fChief write fChief;
  end;


implementation

{ TKontragent }

constructor TKontragent.Create;
begin

end;

destructor TKontragent.Destroy;
begin

  inherited;
end;

function TKontragent.GetPiople: TPiople;
begin
  //Result:= fChief.Value;
end;

procedure TKontragent.SetPiople(const Value: TPiople);
begin
  //fChief.Value :=Value;
end;

end.
