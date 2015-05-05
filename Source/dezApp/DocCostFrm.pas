unit DocCostFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, DB, FIBDataSet, pFIBDataSet,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  FIBQuery, pFIBProps, pFIBCacheQueries, BaseForm, System.DateUtils,
  dxLayoutContainer, cxTextEdit, cxDropDownEdit, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxmdaset, cxCheckBox, dxLayoutLookAndFeels,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxMemo, cxProgressBar,
  dxSkinsdxBarPainter, dxBar, cxCurrencyEdit, cxNavigator, dxSkinVS2010;

type
  TSrvSet = set of 1..25;
  TDocCostForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    grpcnt1Group1: TdxLayoutGroup;
    grpcnt1Group2: TdxLayoutGroup;
    cbb_month: TcxComboBox;
    itmcnt1Item1: TdxLayoutItem;
    itmcnt1Item3: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    grpcnt1Group3: TdxLayoutGroup;
    src_HOUSESRV: TDataSource;
    ds_HOUSESRV: TpFIBDataSet;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_MAKESMETASHABLON: TpFIBDataSet;
    md: TdxMemData;
    src_md: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1FLAG: TcxGridDBColumn;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    grpcnt1Group4: TdxLayoutGroup;
    btn_Create: TcxButton;
    itmcnt1Item11: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itmcnt1Item12: TdxLayoutItem;
    grpcnt1Group5: TdxLayoutGroup;
    ds: TpFIBDataSet;
    grp2: TdxLayoutGroup;
    grpcnt1Group7: TdxLayoutGroup;
    mmo1: TcxMemo;
    itmcnt1Item13: TdxLayoutItem;
    md1: TdxMemData;
    prb1: TcxProgressBar;
    itmcnt1Item14: TdxLayoutItem;
    bm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmcnt1Item15: TdxLayoutItem;
    grpcnt1Group6: TdxLayoutGroup;
    grpcnt1Group8: TdxLayoutGroup;
    grpcnt1Group9: TdxLayoutGroup;
    grpcnt1Group10: TdxLayoutGroup;
    btn_ChecAll: TdxBarButton;
    btn_UnCheck: TdxBarButton;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    chk1: TcxCheckBox;
    LItemcnt1Item1: TdxLayoutItem;
    cbb_Y: TcxComboBox;
    lItmcnt1Item1: TdxLayoutItem;
    cbb_FIRM: TcxLookupComboBox;
    litm_Firm: TdxLayoutItem;
    procedure cbb_srvPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure clv1FLAGPropertiesEditValueChanged(Sender: TObject);
    procedure btn_CreateClick(Sender: TObject);
    procedure btn_ChecAllClick(Sender: TObject);
    procedure btn_UnCheckClick(Sender: TObject);
    procedure chk1PropertiesEditValueChanged(Sender: TObject);
    procedure cbb_YPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_monthPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    SrvType, SrvCode, BDRCode: Variant;
    procedure OpenDS;
    procedure OpenShablon;
    procedure CreateMem;
    procedure FactDoc1Create;
    function GetData: Boolean;
    function GetCode: string;
    procedure CheckList;
    function FindDoc(M,Y,SRV,FIRM: variant): Variant;
    procedure ClearDoc(docCode: Variant);
    function CreateDoc: Variant;
    function GetGenCode: Variant;
    procedure FillDoc(code: variant);
    procedure SetMes(mes: string);
    function GetSrv(code: string): Variant;
    procedure CheckRecord(AValue: Boolean = true);
    function GetShtrafSum(house, kontr: variant): Variant;
    procedure DisableControls(isEnable: Boolean = true);
    function GetSQL: string;
    procedure FactDoc1CreateAll;
    function GetBDRCode: Variant;
  public
    { Public declarations }
  end;

var
  DocCostForm: TDocCostForm;

implementation

uses cmDBUnit, AppUtils, cmUtils, DocCostFrm.Ext;

{$R *.dfm}

{ TDocCostForm }

procedure TDocCostForm.btn_ChecAllClick(Sender: TObject);
begin
  CheckRecord;
end;

procedure TDocCostForm.btn_CreateClick(Sender: TObject);
begin
  {if Application.MessageBox('Имеющийся документ корректировок будет перезаписан!'
    + #13#10 + '                              Продолжить?', 'Внимание',
    MB_YESNO + MB_ICONQUESTION + MB_TOPMOST) = IDYES then
  begin
    mmo1.Lines.Clear;

    if chk1.Checked then
       FactDoc1CreateAll else
       FactDoc1Create;
    ShowMessage('Операция завершена.');
  end;}

      mmo1.Lines.Clear;

    if chk1.Checked then
       FactDoc1CreateAll else
       FactDoc1Create;
    ShowMessage('Операция завершена.');

end;

procedure TDocCostForm.btn_UnCheckClick(Sender: TObject);
begin
  CheckRecord(false);
end;

procedure TDocCostForm.cbb_monthPropertiesEditValueChanged(Sender: TObject);
begin
  SrvCode:= GetSrv(VarToStr(cbb_srv.EditValue));
  OpenShablon;
end;

procedure TDocCostForm.cbb_srvPropertiesEditValueChanged(Sender: TObject);
begin
  SrvCode:= GetSrv(VarToStr(cbb_srv.EditValue));
  OpenShablon;
end;

procedure TDocCostForm.cbb_YPropertiesEditValueChanged(Sender: TObject);
begin
  SrvCode:= GetSrv(VarToStr(cbb_srv.EditValue));
  OpenShablon;
end;

procedure TDocCostForm.CheckList;
var
  house, kontr, sname, nomer: Variant;

  procedure AddMessage(mem: TdxMemData);
  var s: string;
  begin
     s:= md.Lookup('KONTRAGENT',mem.FieldByName('KONTRAGENT').AsVariant,'KNAME');
     mmo1.Lines.Add('- повтор адреса');
     mmo1.Lines.Add('  '+mem.FieldByName('SNAME').AsString+','+
                            mem.FieldByName('NOMER').AsString+
                            ' ['+s+'}');
     s:= md.Lookup('KONTRAGENT',kontr,'KNAME');
     mmo1.Lines.Add('  '+sname+','+ nomer+ ' ['+s+'}');
     mmo1.Lines.Add(' ');
  end;

begin
  with md1 do begin
    First;
    while not Eof do begin
      if house = FieldByName('HOUSE').AsVariant then begin
        AddMessage(md1);
        md1.Delete;
      end else begin
        house:= FieldByName('HOUSE').AsVariant;
        kontr:= FieldByName('KONTRAGENT').AsVariant;
        sname:=  FieldByName('SNAME').AsString;
        nomer:=  FieldByName('NOMER').AsString;
        Next;
      end;
      //house:= FieldByName('HOUSE').AsVariant;
    end;
  end;
  //ShowMessage('CheckList '+IntToStr(md1.RecordCount));
end;

procedure TDocCostForm.CheckRecord(AValue: Boolean);
begin
  v1.BeginUpdate;
  try
    with v1.DataController.DataSet do begin
      First;
      while not Eof do begin
        Edit;
        FieldByName('FLAG').AsInteger:= Integer(AValue);
        Post;
        Next;
      end;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TDocCostForm.chk1PropertiesEditValueChanged(Sender: TObject);
begin
  DisableControls(not chk1.Checked);
end;

procedure TDocCostForm.ClearDoc(docCode: Variant);
var
  Q: TFIBQuery;
  sql, TableName, TableClause: string;
begin
  SetMes(' Найден документ за указанный период. Документ будет очищен.');
  if SrvType = 'HOUSESRV' then begin
    TableName := 'FACTDOCLIST';
    TableClause:= 'FACTDOC';
  end else begin
    TableName := 'FACT1DOCLIST';
    TableClause:= 'FACT1DOC';
  end;
  sql:= 'delete from '+TableName + #13#10 +
        'where ('+TableClause+' = :CODE)';
  Q:=GetQueryForUse(cmDb.WT, sql);
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= docCode;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TDocCostForm.clv1FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post;
end;

function TDocCostForm.GetGenCode: Variant;
var
  Q: TFIBQuery;
  GeneratorName: string;
begin
  if SrvType = 'HOUSESRV' then
     GeneratorName:= 'FACTDOC_GEN' else
     GeneratorName:= 'FACT1DOC_GEN';
  Q:=GetQueryForUse(cmDb.WT,
                   'SELECT NEXT VALUE FOR '+GeneratorName+' FROM RDB$DATABASE');
  Q.Options:=[qoStartTransaction];
  try
    Q.ExecQuery;
    Result:= Q.FN('GEN_ID').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TDocCostForm.GetShtrafSum(house, kontr: variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,
   'SELECT SUM(SUMMA) SUMMA' +#13#10+
   'FROM OUTCASHBDR' +#13#10+
   'where DATA BETWEEN :D1 and :D2' +#13#10+
   '      and KONTRAGENT=:kontr' +#13#10+
   '      and HOUSE=:house' +#13#10+
   '      and HOUSESRV=:srv');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('D1').AsVariant:= StartOfAMonth(StrToInt(cbb_Y.Text),cbb_month.ItemIndex);
    Q.ParamByName('D2').AsVariant:= EndOfAMonth(StrToInt(cbb_Y.Text),cbb_month.ItemIndex);
    Q.ParamByName('kontr').AsVariant:= kontr;
    Q.ParamByName('house').AsVariant:= house;
    Q.ParamByName('srv').AsVariant:= cbb_srv.EditValue;
    Q.ExecQuery;
    if Q.FN('SUMMA').AsVariant<>null then
       Result:= Q.FN('SUMMA').AsVariant else
       Result:=0;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TDocCostForm.GetSQL: string;
begin
  //if chk1.Checked = true then
     Result:= 'SELECT MH.A FLAG, MH.CODE,' +#13#10+
              '       MH.SRVDOG, S.NOMER,' +#13#10+
              '       S.KONTRAGENT, K.NAME KNAME,' +#13#10+
              '       SUM(IIF(MS.SUMMA IS NULL, 0,MS.SUMMA)) SUMMA' +#13#10+
              'FROM MAKESMETASHABLON MH' +#13#10+
              'LEFT OUTER JOIN SRVDOG S ON S.CODE = MH.SRVDOG' +#13#10+
              'LEFT OUTER JOIN KONTRAGENT K ON K.CODE=S.KONTRAGENT' +#13#10+
              'LEFT OUTER JOIN MAKESMETASHABLONSPEC MS ON MS.MAKESMETASHABLON = MH.CODE';
  //else
    { Result:= 'SELECT MH.CODE,' +#13#10+
              '       MH.SRVDOG, S.NOMER,' +#13#10+
              '       S.KONTRAGENT, K.NAME KNAME,' +#13#10+
              '       SUM(IIF(MS.SUMMA IS NULL, 0,MS.SUMMA)) SUMMA' +#13#10+
              'FROM MAKESMETASHABLON MH' +#13#10+
              'LEFT OUTER JOIN SRVDOG S ON S.CODE = MH.SRVDOG' +#13#10+
              'LEFT OUTER JOIN KONTRAGENT K ON K.CODE=S.KONTRAGENT' +#13#10+
              'LEFT OUTER JOIN MAKESMETASHABLONSPEC MS ON MS.MAKESMETASHABLON = MH.CODE';}
end;

function TDocCostForm.GetSrv(code: string): Variant;
begin
  Result:= cmGetWord(code,2,'_');
end;

function TDocCostForm.CreateDoc: Variant;
var
  Q: TFIBQuery;
  code: Variant;
  sql, TableName: string;
begin
  SetMes(' Документ за указанный период не найден. Документ будет создан.');
  //получаем следующее значение генератора
  code:= GetGenCode;
  // создаем документ
  if SrvType = 'HOUSESRV' then
     TableName := 'FACTDOC'else
     TableName := 'FACT1DOC';
  sql:=
    'insert into '+TableName+' (CODE, M, Y, HOUSESRV, SHB, FIRM)' + #13#10 +
    'values (:CODE, :M, :Y, :HOUSESRV, :SHB, :FIRM)';
  Q:= GetQueryForUse(cmDb.WT, sql);
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= code;
    Q.ParamByName('M').AsVariant:= cbb_month.ItemIndex;
    Q.ParamByName('Y').AsVariant:= cbb_Y.Text;
    Q.ParamByName('HOUSESRV').AsVariant:= SrvCode;
    Q.ParamByName('SHB').AsVariant:=1;
    Q.ParamByName('FIRM').AsVariant:= cbb_FIRM.EditValue;
    Q.ExecQuery;
    Result:= code;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TDocCostForm.CreateMem;
begin
  CreateField(md,'FLAG',ftSmallint);
  CreateField(md,'CODE',ftInteger);
  CreateField(md,'SRVDOG',ftInteger);
  CreateField(md,'NOMER',ftString,16);
  CreateField(md,'KONTRAGENT',ftInteger);
  CreateField(md,'KNAME',ftString,256);
  CreateField(md,'SUMMA',ftBCD);
  md.Open;
  //
  CreateField(md1,'HOUSE',ftInteger);
  CreateField(md1,'SNAME',ftString, 128);
  CreateField(md1,'NOMER',ftString,32);
  CreateField(md1,'SUMMA',ftBCD);
  CreateField(md1,'KONTRAGENT',ftInteger);
  CreateField(md1,'SQ1',ftBCD);
  CreateField(md1,'SQ2',ftBCD);
  md1.Open;
end;

procedure TDocCostForm.DisableControls(isEnable: Boolean);
begin
  cbb_srv.Enabled:= isEnable;
  grp2.Enabled:= isEnable;
end;

procedure TDocCostForm.FactDoc1Create;
var
  doc: Variant;
begin
  if not chk1.Checked then
      btn_Create.Enabled:=false;
  grp2.ItemIndex:=1;
  Application.ProcessMessages;
  try
    // получаем данные
    if not GetData then Exit;
    //поиск документа
    doc:= FindDoc(cbb_month.ItemIndex, cbb_Y.Text, cbb_srv.EditValue, cbb_FIRM.EditValue);
      // очистка если нашли
    if doc <> null then
      if doc=-1 then Exit else
      ClearDoc(doc) else
      // создание если не нашли
      doc:=CreateDoc;
    // заполняем документ
    FillDoc(doc);
  finally
    if not chk1.Checked then
        btn_Create.Enabled:=true;
  end;
end;

procedure TDocCostForm.FactDoc1CreateAll;
var
  i: integer;
begin
  btn_Create.Enabled:=False;
  grpcnt1Group3.Enabled:= False;
  Application.ProcessMessages;
  try
    with ds_HOUSESRV do begin
      First;
      while not Eof do begin
        cbb_srv.EditValue:= FN('COD').AsVariant;
        FactDoc1Create;
        Application.ProcessMessages;
        Next;
      end;
    end;
  finally
    chk1.Checked:= False;
    btn_Create.Enabled:=true;
    grpcnt1Group3.Enabled:=True;
  end;
end;

procedure TDocCostForm.FillDoc(code: variant);
var
  Q, Q1,Q2,Q3, Q4: TFIBQuery;
  sql, TableName, TableClause, FormName: string;
  shtraf, SQ1, SQ2: Variant;

  procedure GetArea(Q: TFIBQuery; house: Variant);
  begin
    with Q do begin
      ParamByName('PBDR').AsVariant:=BDRCode;
      ParamByName('HOUSE').AsVariant:= house;
      ExecQuery;
      SQ1:= FN('SQ1').AsVariant;
      SQ2:= FN('SQ2').AsVariant;
      if SQ1=Null then SQ1:=0;
      if SQ2=Null then SQ2:=0;
    end;
  end;

  procedure GetAreaFromBDR(house: Variant);
  begin
    if SrvType = 'HOUSESRV' then begin
      GetArea(Q1, house);
    end else begin
      case SrvCode of
        5,6 : GetArea(Q2, house);
        7,10..12 : GetArea(Q3, house);
      end;
    end;
  end;

begin
  if SrvType = 'HOUSESRV' then begin
    TableName := 'FACTDOCLIST';
    TableClause:= 'FACTDOC';
    FormName:= 'Корректировки (услуги РКЦ)';
  end else begin
    TableName := 'FACT1DOCLIST';
    TableClause:= 'FACT1DOC';
    FormName:= 'Корректировки (прочее)';
  end;
  //
  {$MESSAGE WARN '-----------------------------------------Переписать получение данных из шаблона'}
  Q1:=GetQueryForUse(cmDb.WT,   //PBDR1
    'SELECT F4 SQ1, F11 SQ2 FROM PBDR1 where PBDR=:PBDR and HOUSE=:HOUSE');
  Q2:=GetQueryForUse(cmDb.WT,   //PBDR2
    'SELECT F4 SQ1, F16 SQ2 FROM PBDR2 where PBDR=:PBDR and HOUSE=:HOUSE');
  Q3:=GetQueryForUse(cmDb.WT,   //PBDR3
    'SELECT F4 SQ1, F18 SQ2 FROM PBDR3 where PBDR=:PBDR and HOUSE=:HOUSE');

  Q1.Options:=[qoStartTransaction];
  Q2.Options:=[qoStartTransaction];
  Q3.Options:=[qoStartTransaction];
  //
  sql:=
    'insert into '+TableName+' ('+TableClause+', PLANSUM, FACTSUM, CORRECT, HOUSE, KONTRAGENT, SQ1, SQ2)'#13#10+
    'values (:DOC, :PLANSUM, :FACTSUM, :CORRECT, :HOUSE, :KONTRAGENT, :SQ1, :SQ2)';
  Q:= GetQueryForUse(cmDb.WT, sql);
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    with md1 do begin
      prb1.Properties.Min:=0;
      prb1.Properties.Max:= md1.RecordCount-1;
      prb1.Properties.Text:= 'заполняем документ.';
      md1.First;
      while not md1.EOF do begin
        Q.ParamByName('DOC').AsVariant:= code;
        Q.ParamByName('PLANSUM').AsVariant:= FieldByName('SUMMA').AsVariant;
        //получаем снятие с объема
        shtraf:= GetShtrafSum(FieldByName('HOUSE').AsVariant,FieldByName('KONTRAGENT').AsVariant);
        Q.ParamByName('CORRECT').AsVariant:= shtraf;
        Q.ParamByName('FACTSUM').AsVariant:= FieldByName('SUMMA').AsVariant - shtraf;
        Q.ParamByName('HOUSE').AsVariant:= FieldByName('HOUSE').AsVariant;
        Q.ParamByName('KONTRAGENT').AsVariant:= FieldByName('KONTRAGENT').AsVariant;
        // получаем площади по документу БДР
        //GetAreaFromBDR(FieldByName('HOUSE').AsVariant);  не используется получаем из шаблона
        Q.ParamByName('SQ1').AsVariant:= FieldByName('SQ1').AsVariant;
        Q.ParamByName('SQ2').AsVariant:= FieldByName('SQ2').AsVariant;
        //
        Q.ExecQuery;
        md1.Next;
        prb1.Position:= RecNo;
      end;
    end;
    //устанавливаем признак формирования из шаблона
    Q4:= GetQueryForUse(cmDb.WT, 'update '+TableClause+' set SHB = 1 where (CODE = :CODE)');
    Q4.Options:=[qoStartTransaction, qoAutoCommit];
    Q4.ParamByName('CODE').AsVariant:= code;
    Q4.ExecQuery;
    //сохраняем транзакцию
    cmDB.WT.Commit;
    //
    SetMes(' Создан документ: '+FormName+' №'+ VarToStr(code));
    //btn_Create.Enabled:= False;
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
    FreeQueryForUse(Q4);
  end;
end;

function TDocCostForm.FindDoc(M, Y, SRV, FIRM: variant): Variant;
var
  Q: TFIBQuery;
  sql, TableName, s: string;
begin
  if SrvType = 'HOUSESRV' then
     TableName := 'FACTDOC'else
     TableName := 'FACT1DOC';
     sql:=
        'SELECT CODE, PRV' + #13#10 +
        'FROM '+TableName+#13#10 +
        'where  M =:M and Y =:Y and HOUSESRV=:srv and FIRM =:FIRM';
  Q:= GetQueryForUse(cmDb.WT, sql);
  try
    Q.ParamByName('M').AsVariant:= M;
    Q.ParamByName('Y').AsVariant:= Y;
    Q.ParamByName('SRV').AsVariant:= SrvCode;
    Q.ParamByName('FIRM').AsVariant:= FIRM;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant;
    if Q.FN('PRV').AsVariant =1 then begin
       s:= ' Документ №'+Q.FN('CODE').AsString+'по услуге '+cbb_srv.Text+
           ' закрыт.'+#13+'Перезаписывать запрещено!';
       mmo1.Lines.Add(s);
       Result:=-1;
       if not chk1.Checked then
       raise dezException.Create(s) else
       MessageDlg(s,  mtCustom, [mbOK], 0);
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TDocCostForm.FormCreate(Sender: TObject);
begin
  CreateMem;
  OpenDS;
  cbb_month.ItemIndex:= MonthOf(Date);
  cbb_Y.ItemIndex:= cbb_Y.Properties.Items.IndexOf(VarToStr(YearOf(Date)));
end;

function TDocCostForm.GetBDRCode: Variant;
var
  Cod: Variant;

  procedure GetCode(Srv: Variant);
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT,
        'SELECT CODE FROM PBDR' +#13#10+
        'where Y=:Y and M=:M and HOUSESRV=:HOUSESRV');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('Y').AsVariant:= cbb_Y.Text;
      Q.ParamByName('M').AsVariant:= cbb_month.ItemIndex;
      Q.ParamByName('HOUSESRV').AsVariant:= Srv;
      Q.ExecQuery;
      Cod:= Q.FN('CODE').AsVariant;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  if SrvType = 'HOUSESRV' then begin
    GetCode(SrvCode);
  end else begin
    case SrvCode of
      5,6 : GetCode(6);
      7,10..12 : GetCode(8);
    end;
  end;
  Result:= Cod;
end;

function TDocCostForm.GetCode: string;
var
  s: string;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    s:='';
    with md do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsInteger = 1 then
           s:= s+FieldByName('CODE').AsString+',';
        Next;
      end;
    end;
    if s<>'' then
       Delete(s,Length(s),1);
    Result:=s;
  finally
    v1.EndUpdate;
  end;
end;

function TDocCostForm.GetData: Boolean;
var
  codelist: string;
begin
  Result:= False;
  codelist:= GetCode;
  if codelist='' then
     if chk1.Checked then Exit else
     raise dezException.Create('Не выбраны шаблоны!');
  if not chk1.Checked then
     mmo1.Clear;
  {BDRCode:= GetBDRCode;
  //если не найден документ БДР
  if BDRCode = null then
     if chk1.Checked then begin
       mmo1.Lines.Add('услуга '+cbb_srv.Text+'.'+
                      ' Отсутствует документ БДР.');
       mmo1.Lines.Add('Формирование отменено.');
       mmo1.Lines.Add(' ');
       Exit;
     end else
     raise dezException.Create('Отсутствует документ БДР!');  }


  mmo1.Lines.Add(' --получаем данные... '+cbb_srv.Text);
  with ds do begin
    Close;
    MainWhereClause:=' MS.ARCSHBHEAD in('+codelist+') and MS.SUMMA<>0';
    OrderClause:='MS.HOUSE';
    Open;
  end;
  md1.Close; md1.Open;
  md1.LoadFromDataSet(ds);
  //ShowMessage(IntToStr(md1.RecordCount));
  if md1.IsEmpty then
     if chk1.Checked then Exit;
     // else
     //raise dezException.Create('Данные в шаблонах не найдены!'#10#13+
     //                          '   Формирование отменено!');
  //проверка дублирования
  CheckList;
  Result:= True;
end;

procedure TDocCostForm.OpenDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
     cbb_FIRM.EditValue:=1;
  ds_HOUSESRV.CloseOpen(true);
  ds_kontr.CloseOpen(true);
end;

procedure TDocCostForm.OpenShablon;
begin
  if SrvCode = '' then
     Exit;
  with cbb_srv.Properties.Grid.DataController do
  begin
    SrvType := Values[FocusedRecordIndex, 3];
  end;
  //
  v1.BeginUpdate(lsimImmediate);
  try
    md.Close; md.Open;
    DocCostExt.GetShbArhiv(md, cbb_Y.Text, cbb_month.ItemIndex, SrvCode, SrvType);

    {with ds_MAKESMETASHABLON do begin
      Close;
      SelectSQL.Text:= GetSQL;
    end;
    //
    if SrvType = 'SRV' then begin
      with ds_MAKESMETASHABLON do begin
        Close;
        MainWhereClause:='MH.SRV = :SRV';
        ParamByName('SRV').AsVariant:= SrvCode;
        if chk1.Checked then
        GroupByClause:='MH.A, MH.CODE, MH.SRVDOG, s.NOMER, s.KONTRAGENT, k.NAME' else
        GroupByClause:='MH.A, MH.CODE, MH.SRVDOG, s.NOMER, s.KONTRAGENT, k.NAME';
        Open;
      end;
      md.Close; md.Open;
      md.LoadFromDataSet(ds_MAKESMETASHABLON);
    end else
    if SrvType = 'HOUSESRV' then begin
      with ds_MAKESMETASHABLON do begin
        Close;
        MainWhereClause:='MH.HOUSESRV = :SRV';
        ParamByName('SRV').AsVariant:= srvCode;
        if chk1.Checked then
        GroupByClause:='MH.A, MH.CODE, MH.SRVDOG, s.NOMER, s.KONTRAGENT, k.NAME' else
        GroupByClause:='MH.A, MH.CODE, MH.SRVDOG, s.NOMER, s.KONTRAGENT, k.NAME';
        Open;
      end;
      md.Close; md.Open;
      md.LoadFromDataSet(ds_MAKESMETASHABLON);
    end;}
    //btn_Create.Enabled:= true;
    grp2.ItemIndex:=0;
  finally
    v1.EndUpdate;
  end;
end;

procedure TDocCostForm.SetMes(mes: string);
begin
  mmo1.Lines.Add(mes);
end;

end.







