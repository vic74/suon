unit BdrUtils;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  EXLReportExcelTLB,EXLReportBand, EXLReport,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants;
 type
{ TBdrDoc }

  TBdrDoc = class(TObject)
  private
    fY :Variant;
    fM :Variant;
    fSrv :Variant;
    fSrvType :Variant;
  protected

  public
    property Y: Variant read fY write fY;
    property M: Variant read fM write fM;
    property Srv: Variant read fSrv write fSrv;
    property SrvType: Variant read fSrvType write fSrvType;
    constructor Create;
    destructor Destroy; override;
  published

  end;

implementation

{ TBdrDoc }

constructor TBdrDoc.Create;
begin

end;

destructor TBdrDoc.Destroy;
begin

  inherited;
end;

end.
