unit SQLList;

interface
    uses SysUtils, Classes, Forms, Windows, Messages, IniFiles;

    const
    BUDGETSHABLON =
    'select CODE,NAME from BUDGETSHABLON';

    PLANHOUSE =
    'SELECT ph.CODE,'+
      ' ph.PLANDATE,'+
      ' ph.HOUSE,'+
      ' ph.PLANDATA,'+
      ' ph.SRVLIST,'+
      ' ph.BUDGET, b.name BudgetName,'+
      ' h.nomer,s.name StreetName'+
    ' FROM PLANHOUSE ph'+
    ' left outer join budgetshablon b on ph.budget=b.code'+
    ' left outer join house h on ph.house=h.code'+
    ' left outer join street s on h.street=s.code'+
    ' where '+
    ' @@where_clause% 1=1@';

    ObjForm_TRFACT =
    ' select' +#13#10+
    '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,' +#13#10+
    '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,' +#13#10+
    '  K.NAME KNAME, TF.MANAGER,(P.F || '' '' || P.I || '' '' || P.O) FIO,' +#13#10+
    '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,' +#13#10+
    '  TF.PLANCODE,TF.STATE,TF.TRDOPSOG, td.code trdop, td.state TRDOPSTATE,' +#13#10+
    '  td.d1, td.d2, TF.SMANAGER, TF.ZD, TF.SD, TF.DPLACE,' +#13#10+
    '  iif(tf.SMETA is NULL, 0,1) SMETA, tf.FNAME,' +#13#10+
    '   tf.STATE FSTATE,' +#13#10+
    '         case' +#13#10+
    '           when tf.STATE = 0 then ''предремонтная встреча''' +#13#10+
    '           when tf.STATE = 1 then ''дефектная ведомость''' +#13#10+
    '           when tf.STATE = 2 then ''смета''' +#13#10+
    '           when tf.STATE = 3 then ''доп. соглашение''' +#13#10+
    '           when tf.STATE = 4 then ''в работе''' +#13#10+
    '           when tf.STATE = 5 then ''завершено''' +#13#10+
    '           else ''''' +#13#10+
    '         end FSTATENAME' +#13#10+
    'from TRFACT TF' +#13#10+
    ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
    ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
    ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
    ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT' +#13#10+
    ' left outer join WORKER W on W.CODE = TF.MANAGER' +#13#10+
    ' left outer join PIPLE P on P.CODE = W.PIPLE' +#13#10+
    ' left outer join trdopsog ts on ts.code=tf.trdopsog' +#13#10+
    ' left outer join trdop td on td.code=ts.trdop';

    ObjForm_TRLFACT =
    'select' +#13#10+
    '  TF.CODE, TF.DATA, S.CODE STREET, S.NAME SNAME, TF.HOUSE,' +#13#10+
    '  H.NOMER, TF.MLIST, M.NAME MNAME, TF.KONTRAGENT,' +#13#10+
    '  K.NAME KNAME, TF.MANAGER,(P.F || '' '' || P.I || '' '' || P.O) FIO,' +#13#10+
    '  TF.NCALC, TF.NCALCDATE, TF.NSUMMA, TF.NDOP, TF.SUMMA, TF.NOTE,' +#13#10+
    '  TF.PLANCODE,TF.STATE,TF.TRLDOPSOG, td.code trdop, td.state TRDOPSTATE,' +#13#10+
    '  td.d1, td.d2, TF.SMANAGER, TF.ZD, TF.SD, TF.DPLACE,' +#13#10+
    '  iif(tf.SMETA is NULL, 0,1) SMETA, tf.FNAME,' +#13#10+
    '   tf.STATE FSTATE,' +#13#10+
    '         case' +#13#10+
    '           when tf.STATE = 0 then ''предремонтная встреча''' +#13#10+
    '           when tf.STATE = 1 then ''дефектная ведомость''' +#13#10+
    '           when tf.STATE = 2 then ''смета''' +#13#10+
    '           when tf.STATE = 3 then ''доп. соглашение''' +#13#10+
    '           when tf.STATE = 4 then ''в работе''' +#13#10+
    '           when tf.STATE = 5 then ''завершено''' +#13#10+
    '           else ''''' +#13#10+
    '         end FSTATENAME' +#13#10+
    'from TRLFACT TF' +#13#10+
    ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
    ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
    ' left outer join MLIST M on M.CODE = TF.MLIST' +#13#10+
    ' left outer join KONTRAGENT K on K.CODE = TF.KONTRAGENT' +#13#10+
    ' left outer join WORKER W on W.CODE = TF.MANAGER' +#13#10+
    ' left outer join PIPLE P on P.CODE = W.PIPLE' +#13#10+
    ' left outer join trldopsog ts on ts.code=tf.trldopsog' +#13#10+
    ' left outer join trldop td on td.code=ts.trldop' +#13#10+
    '' +#13#10+
    ' where (case' +#13#10+
    '          when tf.STATE = 0 then tf.DATA' +#13#10+
    '          when tf.STATE = 1 then tf.DDATE' +#13#10+
    '          when tf.STATE = 2 then tf.NCALCDATE' +#13#10+
    '          when tf.STATE = 3 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
    '          when tf.STATE = 4 then iif(td.d2 is null,tf.NCALCDATE,td.d2 )' +#13#10+
    '          when tf.STATE = 5 then tf.ZD' +#13#10+
    '        end) BETWEEN :d1 and :d2';

    ObjForm_Obj =
    'SELECT TB.CODE,' +#13#10+
    '       TB.TRFACT,' +#13#10+
    '       TB.POFACTDATE,' +#13#10+
    '       TB.PHASE,' +#13#10+
    '       TB.PODATE,' +#13#10+
    '       TB.PORESULT,' +#13#10+
    '       TB.POPLANDATE,' +#13#10+
    '       TB.OSDATE,' +#13#10+
    '       TB.OSRESULT,' +#13#10+
    '       TB.OSDOC,' +#13#10+
    '       CASE' +#13#10+
    '         when tt.AKTTYPE = 0 then ''акт освидетельствования скрытых работ''' +#13#10+
    '         when tt.AKTTYPE = 1 then ''акт проверки качества''' +#13#10+
    '         else ''''' +#13#10+
    '       end DOC,' +#13#10+
    '       tt.AKTTYPE,' +#13#10+
    '       TB.FACTCOST' +#13#10+
    'FROM TRFACT$OBJ TB' +#13#10+
    'left OUTER join TRFACT$OBJ$TYPE tt on tt.ID = tb.OSDOC' +#13#10+
    'where TB.TRFACT = :mas_code';

    ObjForm_ObjL =
    'SELECT TB.CODE,' +#13#10+
    '       TB.TRLFACT TRFACT,' +#13#10+
    '       TB.POFACTDATE,' +#13#10+
    '       TB.PHASE,' +#13#10+
    '       TB.PODATE,' +#13#10+
    '       TB.PORESULT,' +#13#10+
    '       TB.POPLANDATE,' +#13#10+
    '       TB.OSDATE,' +#13#10+
    '       TB.OSRESULT,' +#13#10+
    '       TB.OSDOC,' +#13#10+
    '       CASE' +#13#10+
    '         when tt.AKTTYPE = 0 then ''акт освидетельствования скрытых работ''' +#13#10+
    '         when tt.AKTTYPE = 1 then ''акт проверки качества''' +#13#10+
    '         else ''''' +#13#10+
    '       end DOC,' +#13#10+
    '       tt.AKTTYPE,' +#13#10+
    '       TB.FACTCOST' +#13#10+
    'FROM TRLFACT$OBJ TB' +#13#10+
    'left OUTER join TRLFACT$OBJ$TYPE tt on tt.ID = tb.OSDOC' +#13#10+
    'where TB.TRLFACT = :mas_code';

    DefArhForm_TRDEFECTVED =
    'SELECT df.CODE,' +#13#10+
    '       df.TRFACT,' +#13#10+
    '       tf.house,S.NAME SNAME,H.NOMER,M.NAME MNAME,' +#13#10+
    '       tf.mlist,' +#13#10+
    '       df.WNOTE,' +#13#10+
    '       df.ED,' +#13#10+
    '       df.QUANTITY,' +#13#10+
    '       df.NOTE, df.NUM' +#13#10+
    'FROM TRDEFECTVED df' +#13#10+
    'left outer join trfact tf on tf.code=df.trfact' +#13#10+
    ' left outer join HOUSE H on H.CODE = TF.HOUSE' +#13#10+
    ' left outer join STREET S on S.CODE = H.STREET' +#13#10+
    ' left outer join MLIST M on M.CODE = TF.MLIST';

    DefArhForm_TRLDEFECTVED =
    'SELECT DF.CODE,' +#13#10+
    '       DF.TRLFACT TRFACT,' +#13#10+
    '       TF.HOUSE,S.NAME SNAME,H.NOMER,M.NAME MNAME,' +#13#10+
    '       TF.MLIST,' +#13#10+
    '       DF.WNOTE,' +#13#10+
    '       DF.ED,' +#13#10+
    '       DF.QUANTITY,' +#13#10+
    '       DF.NOTE, DF.NUM' +#13#10+
    'FROM TRLDEFECTVED DF' +#13#10+
    'LEFT OUTER JOIN TRLFACT TF ON TF.CODE=DF.TRLFACT' +#13#10+
    ' LEFT OUTER JOIN HOUSE H ON H.CODE = TF.HOUSE' +#13#10+
    ' LEFT OUTER JOIN STREET S ON S.CODE = H.STREET' +#13#10+
    ' LEFT OUTER JOIN MLIST M ON M.CODE = TF.MLIST';

implementation

end.
