unit YMakeFinPlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  FIBQuery, pFIBCacheQueries, pFIBProps, DateUtils, ClosePeriodFrm,
  dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxMemo, cxCheckBox, cxSpinEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  dxSkinVS2010;

type
  TYMakeFinPlanForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    grlc1Group3: TdxLayoutGroup;
    mmo1: TcxMemo;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    cbb_m1: TcxComboBox;
    itmlc1Item11: TdxLayoutItem;
    msk_y1: TcxMaskEdit;
    itmlc1Item12: TdxLayoutItem;
    cbb_m2: TcxComboBox;
    itmlc1Item13: TdxLayoutItem;
    msk_y2: TcxMaskEdit;
    msk_Y: TcxMaskEdit;
    itmlc1Item3: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    chk_ob: TcxCheckBox;
    itm_ob: TdxLayoutItem;
    chk_lift: TcxCheckBox;
    itm_lift: TdxLayoutItem;
    grlc1Group4: TdxLayoutGroup;
    spin1: TcxSpinEdit;
    itmlc1Item14: TdxLayoutItem;
    itmlc1Item15: TdxLayoutItem;
    spin2: TcxSpinEdit;
    itmlc1Item16: TdxLayoutItem;
    spin3: TcxSpinEdit;
    itmlc1Item17: TdxLayoutItem;
    spin4: TcxSpinEdit;
    OstM: TcxComboBox;
    lc1Item1: TdxLayoutItem;
    OstY: TcxMaskEdit;
    lc1Item2: TdxLayoutItem;
    PKoef: TcxSpinEdit;
    lc1Item3: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    cxButton1: TcxButton;
    lc1Item4: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure Msg(S: string);
    { Private declarations }
    procedure SetLift;
    procedure GetData;
    procedure GetPeriod(var d1, d2: Variant);
    function GetCodeFBDR(d1, d2 :Variant; aSrv: integer): WideString;
    function GetCodeFBDR_YM(aY, aM, Srv: integer): integer;
    function CheckParams :Boolean;
    function GetStreetCode(AStreetName: string): integer;
    function GetHouseCode(AStreet,AHouse: string): integer;
    procedure LoadLiftFinPlan;
  public
    { Public declarations }
  end;

var
  YMakeFinPlanForm: TYMakeFinPlanForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, dezLoadData;

{$R *.dfm}

procedure TYMakeFinPlanForm.btn_execClick(Sender: TObject);
begin
  if not CheckParams then Exit;
  if StrToIntDef(msk_Y.Text, 0)<2013 then
  begin
    ShowMessage('Период закрыт');
    Exit;
  end;
  //ScanClosePeriod(integer(cbb_m1.ItemIndex+1), integer(msk_Y1.EditValue));
  SplashVisibility(true,'Дождитесь окончания операции.');
  try
    if chk_ob.Checked then GetData;
    if chk_lift.Checked then SetLift;
  finally
    SplashVisibility(false);
  end;

  //сохраняем транзакцию
  cmDB.WT.Commit;
end;

function TYMakeFinPlanForm.CheckParams: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if (cbb_m1.ItemIndex<1) or (cbb_m2.ItemIndex<1) or
     (msk_y1.EditText='') or (msk_y2.EditText='') then begin
    Rez('Не верно указан период!',cbb_m1);
    Exit;
  end;
  if msk_Y.EditText='' then begin
    Rez('Не указан год!',msk_Y);
    Exit;
  end;
end;

procedure TYMakeFinPlanForm.cxButton1Click(Sender: TObject);
begin
  LoadLiftFinPlan;
end;

procedure TYMakeFinPlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Prop1.StorageName:=ExtractFilePath(Application.ExeName) + 'config\' + Self.Name;
  Prop1.StoreTo;
  Action:=caFree;
end;

procedure TYMakeFinPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TYMakeFinPlanForm.GetPeriod(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+VarToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+VarToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

function TYMakeFinPlanForm.GetStreetCode(AStreetName: string): integer;
var
  Q: TFIBQuery;
begin
  Q:=cmDB.GetQuery('select * from Street where Name=:Name', cmDB.WT);
  try
    Q.ParamByName('Name').AsString:=AStreetName;
    Q.ExecQuery;
    if Q.Eof then
      Result:=-1
    else
      Result:=Q.FN('Code').AsInteger;
   if Result<0 then
     Msg('Не найдена улица - '+AStreetName);
  finally
    cmDB.FreeQuery(Q);
  end;
end;

procedure TYMakeFinPlanForm.LoadLiftFinPlan;
var
  i: integer;
  List: TStringList;
  Q: TFIBQuery;

  procedure AddRec;
  var
    S, AStreet, AHouse: string;
    Summa, Ost: currency;
    AHouseCode: integer;
  begin
    S:=List[i];
    AStreet:=CorrectStreetName(cmGetWord(S,1,';'));
    AHouse:=AnsiUpperCase(cmGetWord(S,2,';'));
    Ost:=StrToFloatDef(cmCorrectFloat(cmGetWord(S,3,';')), 0);
    Summa:=StrToFloatDef(cmCorrectFloat(cmGetWord(S,4,';')), 0);

    AHouseCode:=GetHouseCode(AStreet, AHouse);
    if AHouseCode<0 then
      mmo1.Lines.Add('Дом не найден: '+AStreet+','+AHouse);

    Q.ParamByName('Y').AsInteger:=msk_Y.EditValue;
    Q.ParamByName('House').AsInteger:=AHouseCode;
    Q.ParamByName('Ost').AsCurrency:=Ost;
    Q.ParamByName('Summa').AsCurrency:=Summa;
    Q.ExecQuery;

  end;

begin
  //получаем имя файла
  if not OpenDialog.Execute then Exit;
  if not cmMessageBox('Загрузить данные за '+msk_Y.Text+' год ?') then Exit;
  //чистим список сообщений
  mmo1.Clear;
  //загружаем файл
  List:=TStringList.Create;
  Q:=cmDB.GetQuery('execute procedure AddTRLFinPlan(:Y, :House, :Ost, :Summa)', cmDB.WT);
  try
    List.LoadFromFile(OpenDialog.FileName);
    for i:=0 to List.Count-1 do
      AddRec;
  finally
    Q.Free;
    List.Free;
  end;

  cmDB.WT.Commit;
  cmShowMessage('Финансовый план ТР(лифт) загружен. Проверьте загруженные данные.');
end;

procedure TYMakeFinPlanForm.Msg(S: string);
begin
  mmo1.Lines.Add(S);
  Application.ProcessMessages;
end;

function TYMakeFinPlanForm.GetCodeFBDR_YM(aY, aM, Srv: integer): integer;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'select code' + #13#10 +
    'from FBDR' + #13#10 +
    'where  M=:M and Y=:Y '+
    'and HouseSrv=:Srv');
  Q.ParamByName('M').AsVariant:=aM;
  Q.ParamByName('Y').AsVariant:=aY;
  Q.ParamByName('Srv').AsVariant:=Srv;
  try
    Q.ExecQuery;
    Result:=Q.FN('code').AsInteger;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TYMakeFinPlanForm.GetData;
var
  Q,Q1,Q2,Q3 :TFIBQuery;
  sumY,sumM,sum1,sum2,sum3,sum4, _ostatok: Currency;
  d1, d2: Variant;
  code: WideString;
  FBDR_Code, OstMonth: integer;

  //
  procedure ClearData;
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.WT,
        'delete from TRFINPLAN' + #13#10 +
        'where (Y = :Y)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('Y').AsVariant:=msk_Y.EditValue;
    try
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  //расчет остатка на начало года
  function CalcOstatok(AHouse: integer): currency;
  var
    Ost, Ost1: currency;
    K: integer;
  begin
    //без остатка
    Result:=0;
    if OstM.ItemIndex=0 then Exit;
    //остаток на выбранный месяц
    Q2.ParamByName('FBDR').AsInteger:=FBDR_Code;
    Q2.ParamByName('House').AsInteger:=AHouse;
    Q2.ExecQuery;
    Ost:=Q2.FN('F17').AsCurrency; //Баланс_1
    //фин план по дому
    Q3.ParamByName('Y').AsInteger:=StrToInt(OstY.Text);
    Q3.ParamByName('House').AsInteger:=AHouse;
    Q3.ExecQuery;
    Ost1:=Q3.FN('Sum4').AsCurrency;
    //определяем коэф. пересчета
    case OstMonth of
      12: K:=0;
      11: K:=1;
      10: K:=2;
    else
      K:=3;
    end;
    Result:=Ost+(SumM*K)-(Ost1/3*K);
  end;

  //получение суммы на год и распределение по кварталам
  procedure CalcSum;
  var
    i :Integer;
    _planOst: Currency;
  begin
    i:=MonthsBetween(d1,d2);
    if i=0 then i:=1 else i:=i+2;
    sumY:=(Q.FN('SUMY').AsCurrency/i)*12;
    sumM:=sumY/12*PKoef.Value;
    _ostatok:= CalcOstatok(Q.FN('HOUSE').AsInteger);
    _planOst:= sumY+ _ostatok;
    //todo получить сумму План+Остаток = sumY + CalcOstatok(Q.FN('HOUSE').AsInteger)
    //todo проверить чтобы сумма План+Остаток была больше нуля
      //todo изменить получение сумм на период = План+Остаток * (spin1.EditValue/100)*PKoef.Value;
    sum1:=0; sum2:=0; sum3:=0;sum4:=0;
    if (_planOst>0) then
    begin
      sum1:=_planOst*(spin1.EditValue/100)*PKoef.Value;
      sum2:=_planOst*(spin2.EditValue/100)*PKoef.Value;
      sum3:=_planOst*(spin3.EditValue/100)*PKoef.Value;
      sum4:=_planOst*(spin4.EditValue/100)*PKoef.Value;
    end;
  end;

  //
  procedure InsData;
  begin
    CalcSum;
    Q1.ParamByName('Y').AsVariant:=msk_Y.EditValue;
    Q1.ParamByName('SumOst').AsCurrency:=_ostatok;
    Q1.ParamByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
    Q1.ParamByName('SUMY').AsVariant:=sumY;
    Q1.ParamByName('SUM1').AsVariant:=sum1;
    Q1.ParamByName('SUM2').AsVariant:=sum2;
    Q1.ParamByName('SUM3').AsVariant:=sum3;
    Q1.ParamByName('SUM4').AsVariant:=sum4;
    Q1.ExecQuery;
  end;
  //
begin
  //стартуем транзакцию
  if not cmDB.WT.Active then
    cmDB.WT.StartTransaction;
  //получаем период для формирования плана
  GetPeriod(d1,d2);
  //список БДР планов для расчета сумм
  code:=GetCodeFBDR(d1,d2, 6);
  //код факта БДР для расчета
  if OstM.ItemIndex>0 then
  begin
    OstMonth:=OstM.ItemIndex+8;
    FBDR_Code:=GetCodeFBDR_YM(StrToInt(msk_Y.Text), 1, 6);
  end;

  mmo1.Clear;
  if code='' then begin
    mmo1.Lines.Add('Данные за указанный период не обнаружены.');
    mmo1.Lines.Add('Формирование отменено.');
    Exit;
  end;
  mmo1.Lines.Add('Очищаем данные за период.');
  ClearData;
  Q:=GetQueryForUse(cmDB.RT,
      'select a.HOUSE, sum(a.F34) SUMY' + #13#10 +
      'from PBDR2 a ' + #13#10 +
      'where pbdr in('+code+')' + #13#10 +
      'group by house');

  Q1:=GetQueryForUse(cmDB.WT,
      'insert into TRFINPLAN (Y, HOUSE, SumOst, SUMY, SUM1, SUM2, SUM3, SUM4)' + #13 +
      #10 + 'values (:Y, :HOUSE, :SumOst, :SUMY, :SUM1, :SUM2, :SUM3, :SUM4)');
  Q1.Options:=[qoStartTransaction,qoAutoCommit];
  Q2:=GetQueryForUse(cmDB.WT, 'select * from FBDR2 where FBDR=:FBDR and House=:House');
  Q3:=GetQueryForUse(cmDB.WT, 'select * from TRFinPlan where Y=:Y and House=:House');

  try
    mmo1.Lines.Add('Получаем данные за период.');
    Q.ExecQuery;
    mmo1.Lines.Add('Записываем данные.');
    while not Q.Eof do begin
      if Q.FN('SUMY').AsVariant>0 then InsData;
      Q.Next;
    end;
    mmo1.Lines.Add('Формирование завершено.');
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
    FreeQueryForUse(Q3);
  end;
end;

function TYMakeFinPlanForm.GetHouseCode(AStreet, AHouse: string): integer;
var
  AStreetCode: integer;
  Q: TFIBQuery;
begin
  Result:=-1;
  AStreetCode:=GetStreetCode(AStreet);
  if AStreetCode<0 then Exit;
  Q:=cmDB.GetQuery('select * from House where Street=:Street and Nomer=:House', cmDB.WT);
  try
    Q.ParamByName('Street').AsInteger:=AStreetCode;
    Q.ParamByName('House').AsString:=AHouse;
    Q.ExecQuery;
    if Q.Eof then
      Msg('Дом: '+AStreet+','+AHouse+' не найден.')
    else
      Result:=Q.FN('Code').AsInteger;
  finally
    cmDB.FreeQuery(Q);
  end;

end;

function TYMakeFinPlanForm.GetCodeFBDR(d1, d2 :Variant; aSrv: integer) :WideString;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'select list(CODE,'','') code' + #13#10 +
    'from PBDR' + #13#10 +
    'where  cast((''01.''||m||''.''||Y) as date) between :d1 and :d2 '+
    'and HouseSrv=:Srv');
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  Q.ParamByName('Srv').AsInteger:=aSrv;
  try
    Q.ExecQuery;
    Result:=Q.FN('code').AsWideString;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TYMakeFinPlanForm.SetLift;
var
  Q,Q1,Q2,Q3 :TFIBQuery;
  sumY,sumM, sum1,sum2,sum3,sum4 :Currency;
  d1, d2: Variant;
  code :WideString;
  OstMonth, FBDR_Code: integer;
  //
  procedure ClearData;
  var
    Q: TFIBQuery;
  begin
    Q:=GetQueryForUse(cmDB.WT,
        'delete from TRLFINPLAN' + #13#10 +
        'where (Y = :Y)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('Y').AsVariant:=msk_Y.EditValue;
    try
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  //расчет остатка на начало года
  function CalcOstatok(AHouse: integer): currency;
  var
    Ost, Ost1: currency;
    K: integer;
  begin
    //остаток на выбранный месяц
    Q2.ParamByName('FBDR').AsInteger:=FBDR_Code;
    Q2.ParamByName('House').AsInteger:=AHouse;
    Q2.ExecQuery;
    Ost:=Q2.FN('F30').AsCurrency;
    //фин план по дому
    Q3.ParamByName('Y').AsInteger:=StrToIntDef(OstY.Text, CurrentYear);
    Q3.ParamByName('House').AsInteger:=AHouse;
    Q3.ExecQuery;
    Ost1:=Q3.FN('Sum4').AsCurrency;
    //определяем коэф. пересчета
    case OstMonth of
      12: K:=0;
      11: K:=1;
      10: K:=2;
    else
      K:=3;
    end;
    Result:=Ost+(SumM*K)-(Ost1/3*K);
  end;
  //
  procedure CalcSum;
  var
    i :Integer;
  begin
    i:=MonthsBetween(d1,d2);
    if i=0 then i:=1 else i:=i+2;
    sumY:=(Q.FN('SUMY').AsCurrency/i)*12;
    sumM:=sumY/12;
    sum1:=sumY*(spin1.EditValue/100);
    sum2:=sumY*(spin2.EditValue/100);
    sum3:=sumY*(spin3.EditValue/100);
    sum4:=sumY*(spin4.EditValue/100);
  end;
  //
  procedure InsData;
  begin
    CalcSum;
    Q1.ParamByName('Y').AsVariant:=msk_Y.EditValue;
    Q1.ParamByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
    //Q1.ParamByName('SumOst').AsCurrency:=CalcOstatok(Q.FN('HOUSE').AsInteger);
    Q1.ParamByName('SUMY').AsVariant:=sumY;
    Q1.ParamByName('SUM1').AsVariant:=sum1;
    Q1.ParamByName('SUM2').AsVariant:=sum2;
    Q1.ParamByName('SUM3').AsVariant:=sum3;
    Q1.ParamByName('SUM4').AsVariant:=sum4;
    Q1.ExecQuery;
  end;
  //
begin
  GetPeriod(d1,d2);
  //head fbdr
  code:=GetCodeFBDR(d1,d2, 8);
  //код факта БДР для расчета
  if OstM.ItemIndex>0 then
  begin
    OstMonth:=OstM.ItemIndex+8;
    FBDR_Code:=GetCodeFBDR_YM(StrToIntDef(OstY.Text, CurrentYear), OstMonth, 8);
  end;

  mmo1.Clear;
  if code='' then begin
    mmo1.Lines.Add('Данные за указанный период не обнаружены.');
    mmo1.Lines.Add('Формирование отменено.');
    Exit;
  end;
  mmo1.Lines.Add('Очищаем данные за период.');
  ClearData;
  Q:=GetQueryForUse(cmDB.RT,
      'select HOUSE, sum(F28)SUMY' + #13#10 +
      'from PBDR3 a ' + #13#10 +
      'where pbdr in('+code+')' + #13#10 +
      'group by house');

  Q1:=GetQueryForUse(cmDB.WT,
      'insert into TRLFINPLAN (Y, HOUSE, SumOst, SUMY, SUM1, SUM2, SUM3, SUM4)' + #13 +
      #10 + 'values (:Y, :HOUSE, :SumOst, :SUMY, :SUM1, :SUM2, :SUM3, :SUM4)');
  Q1.Options:=[qoStartTransaction,qoAutoCommit];
  Q2:=GetQueryForUse(cmDB.WT, 'select * from FBDR3 where FBDR=:FBDR and House=:House');
  Q3:=GetQueryForUse(cmDB.WT, 'select * from TRLFinPlan where Y=:Y and House=:House');

  try
    mmo1.Lines.Add('Получаем данные за период.');
    Q.ExecQuery;
    mmo1.Lines.Add('Записываем данные.');
    while not Q.Eof do begin
      if Q.FN('SUMY').AsVariant>0 then InsData;
      Q.Next;
    end;
    mmo1.Lines.Add('Формирование завершено.');
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
  end;
end;

initialization
 RegisterClass(TYMakeFinPlanForm);
end.




