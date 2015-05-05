unit Piople;

interface

uses
  Aurelius.Types.Nullable,
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Proxy;

  type
{ TPiople }
  [Entity]
  [Table('PIPLE')]
  [Id('fCode', TIdGenerator.IdentityOrSequence)]
  TPiople = class
  private
    [Column('CODE', [TColumnProp.Unique, TColumnProp.Required, TColumnProp.NoUpdate])]
    fCode: Integer;
    [Column('F')]
    fF: string;
    [Column('I')]
    fI: string;
    [Column('O')]
    fO: string;
    [Column('BORN')]
    fBorn: Nullable<TDate>;
    [Column('PS')]
    fPS: string;
    [Column('PN')]
    fPN: string;
    [Column('PD')]
    fPD: string;
    [Column('PV')]
    fPV: string;
    [Column('EMAIL')]
    fEmail: string;
    [Column('PHONE')]
    fPhone: string;
    [Column('DISP_LOGIN')]
    fDispLogin: string;
    [Column('DISP_PSWD')]
    fDispPswd: string;
    [Column('PSWD')]
    fPswd: string;
    [Column('ISDELETE')]
    fIsDelete: SmallInt;
    [Column('FIO', [TColumnProp.NoUpdate])]
    fFIO: string;
  protected

  public

  published
    property Code: Integer read fCode write fCode;
    property F: string read FF write FF;
    property I: string read FI write FI;
    property O: string read FO write FO;
    property Born: Nullable<TDate> read FBorn write FBorn;
    property PS: string read FPS write FPS;
    property PD: string read FPD write FPD;
    property PV: string read FPV write FPV;
    property Email: string read FEmail write FEmail;
    property Phone: string read FPhone write FPhone;
    property DispLogin: string read FDispLogin write FDispLogin;
    property DispPswd: string read FDispPswd write FDispPswd;
    property IsDelete: SmallInt read FIsDelete write FIsDelete;
    property FIO: string read FFIO write FFIO;
  end;

implementation

end.
