unit ObjLift;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  FIBQuery,pFIBCacheQueries,pFIBProps,FIBDataSet, pFIBDataSet,DateUtils,
  frxClass,frxFIBComponents,dxmdaset, DB,
  cxGridBandedTableView, cxGridDBBandedTableView,
  Dialogs, StdCtrls, ExtCtrls, AppUtils,Variants;

  type

  TObjL = class(TObject)
  private

  protected

  public
     procedure makedata(ds: TpFIBDataSet; d1, d2, kontr: Variant);
  published

  end;

implementation

{ TObjL }

procedure TObjL.makedata(ds: TpFIBDataSet; d1, d2, kontr: Variant);
var
  i: Integer;
begin
    with ds do begin
      Close;
      MainWhereClause:=
          '(case' +#13#10+
          '          when tf.STATE = 0 then tf.DATA' +#13#10+
          '          when tf.STATE = 1 then tf.DDATE' +#13#10+
          '          when tf.STATE = 2 then tf.NCALCDATE' +#13#10+
          '          when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
          '          when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
          '          when tf.STATE = 5 then tf.ZD' +#13#10+
          '        end) BETWEEN :d1 and :d2 and tf.STATE>2';
      if kontr<>-1 then
      MainWhereClause:= MainWhereClause + ' and TF.KONTRAGENT=:kontr';
      ParamByName('d1').AsVariant:= d1;
      ParamByName('d2').AsVariant:= d2;
      if ParamExist('kontr',i) then
         ParamByName('kontr').AsVariant:= kontr;
      Open;
    end;
end;

end.
