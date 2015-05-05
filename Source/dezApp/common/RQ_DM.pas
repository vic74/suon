unit RQ_DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB;

type
  TRQ_DModule = class(TDataModule)
    src_JobType: TDataSource;
    src_JobSubtype: TDataSource;
    src_Status: TDataSource;
    src_Location: TDataSource;
    src_CanceledCompany: TDataSource;
    src_Users: TDataSource;
    src_DU: TDataSource;
    src_MgmtCompany: TDataSource;
    src_Street: TDataSource;
    src_HOUSE: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RQ_DModule: TRQ_DModule;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
