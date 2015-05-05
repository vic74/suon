unit AnalizMatFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalc, cxTextEdit,
  FIBQuery, pFIBQuery, pFIBProps, pFIBCacheQueries,
  cxMaskEdit, dxmdaset, cxMemo, cxCurrencyEdit, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle, KontragentRepository;

type
  TAnalizMatForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    msk_Y1: TcxMaskEdit;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    cbb_m1: TcxComboBox;
    msk_Y2: TcxMaskEdit;
    itmlc1Item3: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itmlc1Item4: TdxLayoutItem;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group5: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    cbb_type: TcxComboBox;
    itm_type: TdxLayoutItem;
    ced_proc: TcxCalcEdit;
    itm_proc: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itmlc1Item5: TdxLayoutItem;
    src_KONTRAGENT: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    m1: TdxMemData;
    src_m1: TDataSource;
    gr_log: TdxLayoutGroup;
    log: TcxMemo;
    itm_log: TdxLayoutItem;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1PSUM: TcxGridDBColumn;
    clv1PSUM1: TcxGridDBColumn;
    clv1FSUM: TcxGridDBColumn;
    clv1FSUM1: TcxGridDBColumn;
    clv1SUM: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
  private
    { Private declarations }
    fContrller: TKontragentController;
    procedure MakeClause;
    procedure GetPlan_Ob;
    procedure GetFact_Ob;
    procedure GetPlan_El;
    procedure GetFact_El;
    procedure GetPlan_Lift;
    procedure GetFact_Lift;
    procedure GetHouse(kontr :variant; var house: WideString);
    function GetPBDR(srv: variant) :WideString;
    procedure GetData(var d1, d2: Variant);
    procedure CreateMem;
    function GetWorkListCode(cod: variant) :WideString;
  public
    { Public declarations }
  end;

var
  AnalizMatForm: TAnalizMatForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TAnalizMatForm.GetData(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+IntToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+IntToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

procedure TAnalizMatForm.GetFact_El;
var
  Q: TFIBQuery;
  kontr, d1, d2 :Variant;
  code :WideString;
  i :integer;
  //
  procedure AddFact;
  begin
    while not Q.Eof do begin
      with m1 do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
          Edit;
          FieldByName('FSUM').AsVariant:=Q.FN('FSUM').AsVariant;
          FieldByName('FSUM1').AsVariant:=
                           FieldByName('PSUM1').AsVariant-Q.FN('FSUM').AsVariant;
         // FieldByName('SUM').AsVariant:=Q.FN('FSUM').AsVariant/
         //                     (FieldByName('PSUM').AsVariant/100);
         FieldByName('SUM').AsVariant:= FieldByName('FSUM1').AsVariant / FieldByName('PSUM1').AsVariant * 100;
          Post;                 
        end;           
      end;
      Q.Next;
    end;
  end;
  //
begin
  GetData(d1, d2);
  code:=GetWorkListCode(28); //28 -Электромонтажные работы
  Q:=GetQueryForUse(cmDB.RT,
      '      SELECT wm.HOUSE, sum(wm.QUANTITY*wm.PRICE) FSUM' +#13#10+
      '      FROM WORKSPECMATERIAL wm' +#13#10+
      '      left outer join serviswork sw on sw.code=wm.serviswork' +#13#10+
      '      left outer join kserviswork kw on kw.code=sw.kserviswork' +#13#10+
      '      left outer join classmat c on c.code = wm.classmat');
  Q.MainWhereClause:=
        'kw.code in('+code+') and wm.data between :d1 and :d2 and sw.cash=0';      
  if cbb_kontr.EditValue<>null then       
  Q.MainWhereClause:=Q.MainWhereClause+' and wm.kontragent=:kontr';
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  if Q.ParamExist('kontr',i) then 
     Q.ParamByName('kontr').AsVariant:=cbb_kontr.EditValue;
  Q.GroupByClause:='wm.HOUSE';
  try    
    Q.ExecQuery;
    AddFact;
  finally
    FreeQueryForUse(Q);
  end;   
end;

procedure TAnalizMatForm.GetFact_Lift;
var
  Q: TFIBQuery;
  kontr, d1, d2 :Variant;
  code :WideString;
  i :integer;
  procedure AddFact;
  begin
    while not Q.Eof do begin
      with m1 do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
          Edit;
          FieldByName('FSUM').AsVariant:=Q.FN('FSUM').AsVariant;
          FieldByName('FSUM1').AsVariant:=
                           FieldByName('PSUM1').AsVariant-Q.FN('FSUM').AsVariant;
          FieldByName('SUM').AsVariant:=Q.FN('FSUM1').AsVariant/
                              FieldByName('PSUM1').AsVariant*100;
          Post;                 
        end;           
      end;
      Q.Next;
    end;
  end;
begin
  GetData(d1, d2);
  code:=GetWorkListCode(38); //38 -lift root
  Q:=GetQueryForUse(cmDB.RT,
      '      SELECT wm.HOUSE, sum(wm.QUANTITY*wm.PRICE) FSUM' +#13#10+
      '      FROM WORKSPECMATERIAL wm' +#13#10+
      '      left outer join serviswork sw on sw.code=wm.serviswork' +#13#10+
      '      left outer join kserviswork kw on kw.code=sw.kserviswork' +#13#10+
      '      left outer join classmat c on c.code = wm.classmat');
      
  Q.MainWhereClause:=
        'kw.code in('+code+') and wm.data between :d1 and :d2 and sw.cash=0';      
  if cbb_kontr.EditValue<>null then       
  Q.MainWhereClause:=Q.MainWhereClause+' and wm.kontragent=:kontr';
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  if Q.ParamExist('kontr',i) then 
     Q.ParamByName('kontr').AsVariant:=cbb_kontr.EditValue;
  Q.GroupByClause:='wm.HOUSE';
  try    
    Q.ExecQuery;
    AddFact;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAnalizMatForm.GetFact_Ob;
var
  Q: TFIBQuery;
  kontr, d1, d2 :Variant;
  code, s :WideString;
  i :integer;
  procedure AddFact;
  begin
    while not Q.Eof do begin
      with m1 do begin
        if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
          Edit;
          FieldByName('FSUM').AsVariant:=Q.FN('FSUM').AsVariant;
          FieldByName('FSUM1').AsVariant:=
                           FieldByName('PSUM1').AsVariant-Q.FN('FSUM').AsVariant;
          //FieldByName('SUM').AsVariant:=FieldByName('FSUM1').AsVariant/
          //                    (FieldByName('PSUM').AsVariant/100);
          FieldByName('SUM').AsVariant:= FieldByName('FSUM1').AsVariant / FieldByName('PSUM1').AsVariant * 100;
          Post;                 
        end;           
      end;
      Q.Next;
    end;
  end;
begin
  GetData(d1, d2);
  code:=GetWorkListCode(1); //1 -Сантехнические работы root
  code:=code+','+GetWorkListCode(11); //11 - Общестроительные работы
  Q:=GetQueryForUse(cmDB.RT,
      '      SELECT wm.HOUSE, sum(wm.QUANTITY*wm.PRICE) FSUM' +#13#10+
      '      FROM WORKSPECMATERIAL wm' +#13#10+
      '      left outer join serviswork sw on sw.code=wm.serviswork' +#13#10+
      '      left outer join kserviswork kw on kw.code=sw.kserviswork' +#13#10+
      '      left outer join classmat c on c.code = wm.classmat');
  Q.MainWhereClause:=
        'kw.code in('+code+') and wm.data between :d1 and :d2 and sw.cash=0';      
  if cbb_kontr.EditValue<>null then       
  Q.MainWhereClause:=Q.MainWhereClause+' and wm.kontragent=:kontr';
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  if Q.ParamExist('kontr',i) then 
     Q.ParamByName('kontr').AsVariant:=cbb_kontr.EditValue;
  Q.GroupByClause:='wm.HOUSE';
  s:=Q.ReadySQLText;
  try    
    Q.ExecQuery;
    AddFact;
    log.Lines.Add('формирование завершено');
  finally
    FreeQueryForUse(Q);
  end;   
end;

procedure TAnalizMatForm.btn_execClick(Sender: TObject);
begin
  MakeClause;
end;

procedure TAnalizMatForm.CreateMem;
begin
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'SNAME',ftString,128);
  CreateField(m1,'PSUM',ftBCD);  //сумма из плана БДР
  CreateField(m1,'PSUM1',ftBCD); //План\100*(Процент указанный в параметрах отчета)
  CreateField(m1,'FSUM',ftBCD);  //Факт - сумма за материалы по факту
  CreateField(m1,'FSUM1',ftBCD); //Отклонение - План (материалы) - Факт
  CreateField(m1,'SUM',ftBCD);   //Проц. отклонения - Отклонение\(План\100)
  m1.Indexes.Add.FieldName:='HOUSE';
  m1.Open;
end;

procedure TAnalizMatForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fContrller.Free;
  Action:=caFree;
end;

procedure TAnalizMatForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fContrller:= TKontragentController.Create;
  CreateMem;
  src_KONTRAGENT.DataSet:= fContrller.DS;
  fContrller.GetActiveKontragents(True, True);
end;

function TAnalizMatForm.GetPBDR(srv: variant): WideString;
var
  Q: TFIBQuery;
  d1,d2 :variant;
begin
  GetData(d1,d2);
  Q:= GetQueryForUse(cmDB.RT,'select list(CODE,'','')code from PBDR');
  Q.MainWhereClause:='cast((''01.''||m||''.''||Y) as date) between :d1 and :d2'
                    + #13#10 + '      and HOUSESRV =:hs';
  Q.ParamByName('hs').AsVariant:=srv;
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  try                  
    Q.ExecQuery;
    Result:=Q.FN('code').AsWideString;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAnalizMatForm.GetHouse(kontr: variant; var house: WideString);
var
  Q :TFibQuery;
begin
  if kontr=null then Exit;
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT list(sd.HOUSE,'','') house' + #13#10 +
      'FROM SRVDOGHOUSE sd' + #13#10 +
      'left outer join srvdog s on s.code=sd.srvdog' + #13#10 +
      'where s.kontragent=:kontr and s."ACTIVE"=1');
  Q.ParamByName('kontr').AsVariant:=kontr;
  try
    Q.ExecQuery;
    house:=Q.FN('house').AsWideString;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAnalizMatForm.GetPlan_El;
var
  house, PBDR: WideString;
  Q: TFIBQuery;
  procedure AddData;
  begin
    while not Q.Eof do begin
      with m1 do begin
        Append;
        FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
        FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
        FieldByName('PSUM').AsVariant:=Q.FN('PSUM').AsVariant;
        FieldByName('PSUM1').AsVariant:=
                                  Q.FN('PSUM').AsVariant/100*ced_proc.EditValue;
        Post;           
      end;
      Q.Next;
    end;
  end;
begin
  if cbb_kontr.EditValue<>null then begin
    GetHouse(cbb_kontr.EditValue,house);    
    if house='' then begin
      //add log - nohouse
      log.Lines.Add('отсутствуют дома по договору.');
      log.Lines.Add('формирование завершено.');
      Exit;                 
    end;     
  end;
  PBDR:= GetPBDR(6);
  if PBDR='' then begin
    //add log - no plan
    log.Lines.Add('отсутствуют данные по плану');
    log.Lines.Add('формирование завершено.');    
    Exit;                
  end;
  //
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT pb.HOUSE,h.nomer,s.name SNAME, sum(pb.F32) PSUM' + #13#10 +
      'FROM PBDR2 pb' + #13#10 +
      'left outer join house h on h.code=pb.house' + #13#10 +
      'left outer join street s on s.code=h.street');
  Q.MainWhereClause:='pb.PBDR in('+PBDR+')';
  if house<>'' then  
  Q.MainWhereClause:=Q.MainWhereClause+' and pb.HOUSE in ('+house+')';
  Q.GroupByClause:='pb.HOUSE,h.nomer,s.name';
  try    
    Q.ExecQuery;
    AddData;
    log.Lines.Add('получаем данные по факту');
    GetFact_El;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAnalizMatForm.GetPlan_Lift;
var
  house, PBDR: WideString;
  Q: TFIBQuery;
  procedure AddData;
  begin
    while not Q.Eof do begin
      with m1 do begin
        Append;
        FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
        FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
        FieldByName('PSUM').AsVariant:=Q.FN('PSUM').AsVariant;
        FieldByName('PSUM1').AsVariant:=
                                  Q.FN('PSUM').AsVariant/100*ced_proc.EditValue;
        Post;           
      end;
      Q.Next;
    end;
  end;
begin
  if cbb_kontr.EditValue<>null then begin
    GetHouse(cbb_kontr.EditValue,house);
    if house='' then begin
      log.Lines.Add('отсутствуют дома по договору.');
      log.Lines.Add('формирование завершено.');
      Exit;                 
    end;     
  end;

  PBDR:= GetPBDR(8);
  if PBDR='' then begin
    log.Lines.Add('отсутствуют данные по плану');
    log.Lines.Add('формирование завершено.');   
    Exit;                
  end;
  //
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT pb.HOUSE,h.nomer,s.name SNAME, sum(pb.F27) PSUM' + #13#10 +
      'FROM PBDR3 pb' + #13#10 +
      'left outer join house h on h.code=pb.house' + #13#10 +
      'left outer join street s on s.code=h.street');
  Q.MainWhereClause:='pb.PBDR in('+PBDR+')';
  if house<>'' then  
  Q.MainWhereClause:=Q.MainWhereClause+' and pb.HOUSE in ('+house+')';
  Q.GroupByClause:='pb.HOUSE,h.nomer,s.name';
  try    
    Q.ExecQuery;
    AddData;
    log.Lines.Add('получаем данные по факту');
    GetFact_Lift; 
  finally
    FreeQueryForUse(Q);
  end;
end;

//общестрой
procedure TAnalizMatForm.GetPlan_Ob;
var
  house, PBDR: WideString;
  Q: TFIBQuery;
  procedure AddData;
  begin
    while not Q.Eof do begin
      with m1 do begin
        Append;
        FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
        FieldByName('SNAME').AsVariant:=Q.FN('SNAME').AsVariant;
        FieldByName('PSUM').AsVariant:=Q.FN('PSUM').AsVariant;
        FieldByName('PSUM1').AsVariant:=
                                  Q.FN('PSUM').AsVariant/100*ced_proc.EditValue;
        Post;           
      end;
      Q.Next;
    end;
  end;  
begin
  if cbb_kontr.EditValue<>null then begin
    GetHouse(cbb_kontr.EditValue,house);
    if house='' then begin
      log.Lines.Add('отсутствуют дома по договору.');
      log.Lines.Add('формирование завершено.');
      Exit;                 
    end;     
  end;

  PBDR:= GetPBDR(6);
  if PBDR='' then begin
    log.Lines.Add('отсутствуют данные по плану');
    log.Lines.Add('формирование завершено.');   
    Exit;                
  end;
  //
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT pb.HOUSE,h.nomer,s.name SNAME, sum(pb.F30) PSUM' + #13#10 +
      'FROM PBDR2 pb' + #13#10 +
      'left outer join house h on h.code=pb.house' + #13#10 +
      'left outer join street s on s.code=h.street');
  Q.MainWhereClause:='pb.PBDR in('+PBDR+')';
  if house<>'' then  
  Q.MainWhereClause:=Q.MainWhereClause+' and pb.HOUSE in ('+house+')';
  Q.GroupByClause:='pb.HOUSE,h.nomer,s.name';
  try    
    Q.ExecQuery;
    AddData;
    log.Lines.Add('получаем данные по факту');
    GetFact_Ob;    
  finally
    FreeQueryForUse(Q);
  end;  
end;

function TAnalizMatForm.GetWorkListCode(cod: variant): WideString;
var 
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
    'WITH RECURSIVE' + #13#10 +
    '   tree (code, own,name)' + #13#10 +
    '   AS (SELECT code, own,name FROM kserviswork' + #13#10 +
    '      WHERE code = :cod' + #13#10 +
    '      UNION ALL ' + #13#10 +
    '      SELECT  code, own,name FROM kserviswork V' + #13#10 +
    '      INNER JOIN tree t ON t.code = V.own)' + #13#10 +
    '   SELECT List(code,'','') code FROM tree');
  Q.ParamByName('cod').AsVariant:=cod;
  try  
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsWideString;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TAnalizMatForm.MakeClause;
begin
  log.Clear;
  m1.Close; m1.Open;
  v1.BeginUpdate;
  try
    case cbb_type.ItemIndex of
      0 : begin
            log.Lines.Add('получаем данные по плану');
            GetPlan_Ob;
          end;
      1 : begin
            log.Lines.Add('получаем данные по плану');
            GetPlan_El;
          end;
      2 : begin
            log.Lines.Add('получаем данные по плану');
            GetPlan_Lift;
          end;        
    end;
  finally
    v1.EndUpdate;
  end;
end;

initialization
 RegisterClass(TAnalizMatForm);
end.









