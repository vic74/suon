unit MakeDocProcessFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cmDBUnit, cmUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxLayoutControl, dxLayoutLookAndFeels, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Menus, StdCtrls, cxButtons, dezLoadData, dezMakeBDR,
  FIB, FIBDatabase, pFIBDatabase, FIBQuery, pFIBCacheQueries, cxMemo,
  cxProgressBar, dxLayoutControlAdapters, dxLayoutContainer, xmldom, XMLIntf,
  msxmldom, XMLDoc, DB, dxmdaset, ClosePeriodFrm, dxSkinDevExpressStyle;

type
  TMakeDocProcessForm = class(TDezForm)
    LayoutControlGroup_Root: TdxLayoutGroup;
    LayoutControl: TdxLayoutControl;
    LayouotLook: TdxLayoutLookAndFeelList;
    Skin: TdxLayoutSkinLookAndFeel;
    PeriodGroup: TdxLayoutGroup;
    DataGroup: TdxLayoutGroup;
    M: TcxComboBox;
    LayoutControlItem1: TdxLayoutItem;
    Y: TcxSpinEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    OperationGroup: TdxLayoutGroup;
    cxButton1: TcxButton;
    LayoutControlItem3: TdxLayoutItem;
    Memo: TcxMemo;
    LayoutControlItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    LayoutControlItem5: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
    LayoutControlItem6: TdxLayoutItem;
    XML: TXMLDocument;
    OpenDialog: TOpenDialog;
    LayoutControlGroup4: TdxLayoutGroup;
    LayoutControlGroup5: TdxLayoutGroup;
    cxButton3: TcxButton;
    LayoutControlItem9: TdxLayoutItem;
    BDRPlanBtn: TcxButton;
    LayoutControlItem10: TdxLayoutItem;
    T: TdxMemData;
    BDRFactBtn: TcxButton;
    LayoutControlItem11: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    M1: TcxComboBox;
    LayoutControlItem7: TdxLayoutItem;
    Y1: TcxSpinEdit;
    LayoutControlItem8: TdxLayoutItem;
    M2: TcxComboBox;
    LayoutControlItem12: TdxLayoutItem;
    Y2: TcxSpinEdit;
    LayoutControlItem13: TdxLayoutItem;
    cxButton4: TcxButton;
    LayoutControlItem14: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure BDRPlanBtnClick(Sender: TObject);
    procedure BDRFactBtnClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    procedure Msg(AText: string);
    procedure Progress(Count, Poz: integer);
    procedure CalcNGP_Srv(aY, aM: smallint);
  public
    { Public declarations }
  end;

var
  MakeDocProcessForm: TMakeDocProcessForm;

implementation

{$R *.dfm}

procedure TMakeDocProcessForm.BDRFactBtnClick(Sender: TObject);
var
  Obj: TbdrBuilder;
  Obj1: TbdrLoader;

  procedure MakeBDR(Srv: string);
  begin
    //формирование
    Obj:=TbdrBuilder.Create(M.ItemIndex+1, Y.EditValue, Srv);
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    try
      Obj.ExecuteFact(T);
    finally
      Obj.Free;
    end;
    //сохранение
    Obj1:=TbdrLoader.Create(M.ItemIndex+1, Y.EditValue, 1, StrToInt(Srv));
    try
      Obj1.OnProgress:=Progress;
      Obj1.OnMessage:=Msg;
      Obj1.Query:=false;
      Obj1.Save(T);
    finally
      Obj1.Free;
    end;
  end;

begin
  if Sender<>nil then
    if Application.MessageBox(PWideChar('Сформировать БДР (факт) за '+M.Text+' '+
      IntToStr(Y.Value)+' года?'),'',1)<>idOk then Exit;

  //проверка закрытого периода
  ScanClosePeriod(M.ItemIndex+1, Y.Value);

  //формируем документы ТР
  cxButton1Click(nil);

  //расчет НЖП по услугам
  if Y.Value>2013 then
    CalcNGP_Srv(Y.Value, M.ItemIndex+1);

  Memo.Clear;
  Msg('Формируем БДР (факт) за '+M.Text+' '+IntToStr(Y.Value));
  Msg(' ');

  Msg(' ');
  Msg('БДР1. Мусоропровод.');
  MakeBDR('9');

  Msg('БДР1. Вывоз ТБО.');
  MakeBDR('1');

  if Y.Value<2015 then
  begin
    Msg(' ');
    Msg('БДР1. Уборка двора.');
    MakeBDR('2');

    Msg(' ');
    Msg('БДР1. Уборка подъезда.');
    MakeBDR('3');
  end;

  Msg(' ');
  Msg('БДР2. Обслуживание и ремонт.');
  MakeBDR('6');

  Msg(' ');
  Msg('БДР1. ВДГО.');
  MakeBDR('5');

  Msg(' ');
  Msg('БДР1. Поверка ОПУ.');
  MakeBDR('14');

  Msg(' ');
  Msg('БДР3. Лифт.');
  MakeBDR('8');

  Msg(' ');
  Msg('Формирование БДР завершено.');
end;

procedure TMakeDocProcessForm.BDRPlanBtnClick(Sender: TObject);
var
  Obj: TbdrBuilder;
  Obj1: TbdrLoader;

  procedure MakeBDR(Srv: string);
  begin
    //формирование
    Obj:=TbdrBuilder.Create(M.ItemIndex+1, Y.EditValue, Srv);
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    try
      Obj.Execute(T);
    finally
      Obj.Free;
    end;
    //сохранение
    Obj1:=TbdrLoader.Create(M.ItemIndex+1, Y.EditValue, 0, StrToInt(Srv));
    try
      Obj1.OnProgress:=Progress;
      Obj1.OnMessage:=Msg;
      Obj1.Query:=false;
      Obj1.Save(T);
    finally
      Obj1.Free;
    end;
  end;

begin
  if Sender<>nil then
    if Application.MessageBox(PWideChar('Сформировать БДР (планы) за '+M.Text+' '+
      IntToStr(Y.Value)+' года?'),'',1)<>idOk then Exit;
  ScanClosePeriod(M.ItemIndex+1, Y.Value); //проверка закрытого периода
  Memo.Clear;
  Msg('Формируем БДР (планы) за '+M.Text+' '+IntToStr(Y.Value));
  Msg(' ');

  Msg('БДР1. Вывоз ТБО.');
  MakeBDR('1');

  Msg(' ');
  Msg('БДР1. Уборка двора.');
  MakeBDR('2');

  Msg(' ');
  Msg('БДР1. Уборка подъезда.');
  MakeBDR('3');

  Msg(' ');
  Msg('БДР1. ВДГО.');
  MakeBDR('5');

  Msg(' ');
  Msg('БДР1. Мусоропровод.');
  MakeBDR('9');

  Msg(' ');
  Msg('БДР1. Поверка ОПУ.');
  MakeBDR('14');

  Msg(' ');
  Msg('БДР2. Обслуживание и ремонт.');
  MakeBDR('6');

  Msg(' ');
  Msg('БДР3. Лифт.');
  MakeBDR('8');

  Msg(' ');
  Msg('Формирование планов завершено.');
end;

procedure TMakeDocProcessForm.CalcNGP_Srv(aY, aM: smallint);
var
  Q: TFIBQuery;
begin
  Q:=cmDB.GetQuery('execute procedure MAKE_HOUSE_NGP_LIST(:Y, :M)', cmDB.WT);
  Q.ParamByName('Y').AsInteger:=aY;
  Q.ParamByName('M').AsInteger:=aM;
  Q.ExecQuery;
  cmDB.WT.Commit;
  cmDB.FreeQuery(Q);
end;

procedure TMakeDocProcessForm.cxButton1Click(Sender: TObject);
var
  D1,D2: TDateTime;
  Q: TFIBQuery;
begin
  if Sender<>nil then
    if Application.MessageBox(PWideChar('Сформировать данные по ТР за '+M.Text+' '+
      IntToStr(Y.Value)+' года?'),'',1)<>idOk then Exit;
  ScanClosePeriod(M.ItemIndex+1, Y.Value); //проверка закрытого периода
  MakePeriodYM(Y.Value, M.ItemIndex+1, D1, D2);
  Memo.Lines.Add('Сканируем список работ ТР...');
  Q:=GetQueryForUse(cmDB.WT,'execute procedure AddTRWorkBDR(:D1, :D2)');
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  Memo.Lines.Add('Формируем корректирующие документы для БДР2 (факт)...');
  Q:=GetQueryForUse(cmDB.WT,'execute procedure MakeTRCorrectDoc(:D1, :D2)');
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  cmDb.WT.Commit;
  Memo.Lines.Add('Операция успешно завершена.');
end;

procedure TMakeDocProcessForm.cxButton2Click(Sender: TObject);
var
  Obj: ToiProcess;
  D1,D2: TDateTime;
  aY,aM: word;
begin
  ScanClosePeriod(M.ItemIndex+1, Y.Value); //проверка закрытого периода
  Obj:=ToiProcess.Create;
  try
    //расчет периода
    aY:=Y.Value;
    aM:=M.ItemIndex+1;
    D1:=EncodeDate(aY, aM, 1);
    if aM=12 then
    begin
      aM:=1;
      Inc(aY);
    end
    else
    begin
      Inc(aM);
    end;
    D2:=EncodeDate(aY,aM,1);
    D2:=D2-1;
    //выполнение обработки
    Obj.D1:=D1;
    Obj.D2:=D2;
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TMakeDocProcessForm.cxButton3Click(Sender: TObject);
var
  List1, List2: TStringList;
  i: integer;
  Q, Q1, Q2: TFIBQuery;
  S1, S2: string;
  Street, House: string;
  StreetCode, HouseCode: integer;

  function GetStreetCode(S: string): integer;
  begin
    Result:=-1;
    Q.ParamByName('Name').AsString:=S;
    Q.ExecQuery;
    if Q.Eof then
    begin
      Msg('Не найдена улица: '+S);
      Exit;
    end
    else
      Result:=Q.FN('Code').AsInteger;
  end;

  function GetHouseCode(AStreetCode: integer; ANomer: string): integer;
  begin
    Result:=-1;
    Q1.ParamByName('StreetCode').AsInteger:=AStreetCode;
    Q1.ParamByName('Nomer').AsString:=ANomer;
    Q1.ExecQuery;
    if Q1.Eof then
    begin
      Msg('Не найден дом: '+S1);
      Exit;
    end;
    Result:=Q1.FN('Code').AsInteger;
  end;

  procedure AddHouseData(S: string);
  var
    R: currency;
  begin
    S1:=cmGetWord(S,1,#9); //адрес
    S2:=cmCorrectFloat(cmGetWord(S,2,#9));
    Street:=AnsiUpperCase(CorrectStreetName(cmGetWord(S1,1,',')));
    House:=AnsiUpperCase(cmGetWord(S1,2,','));
    StreetCode:=GetStreetCode(Street);
    if StreetCode>0 then
    begin
      HouseCode:=GetHouseCode(StreetCode, House);
      if HouseCode>0 then
      begin
        R:=StrToFloatDef(S2,0);
        if R<>0 then
        begin
          Q2.ParamByName('Summa').AsCurrency:=R;
          Q2.ParamByName('House').AsInteger:=HouseCode;
          Q2.ExecQuery;
          Msg('+'+S);
        end;
      end;
    end;
  end;

begin
  List1:=TStringList.Create;
  List2:=TStringList.Create;
  Q:=cmDB.GetQuery('select * from Street where Name=:Name', cmDB.WT);
  Q1:=cmDB.GetQuery('select * from House where Street=:StreetCode and Nomer=:Nomer', cmDB.WT);
  Q2:=cmDB.GetQuery('insert into OIOstMoney(Y, House, Summa) values(2011, :House, :Summa)', cmDB.WT);
  try
    Msg('Загружаем баланс ОИ на 01.11....');
    List1.LoadFromFile('c:\base\OI.txt');
    //чистим таблицу сальдо
    cmDB.ExecQuery('delete from OIOstMoney where Y=2011', cmDB.WT);
    for i:=0 to List1.Count-1 do
      AddHouseData(List1[i]);
    //разносим суммы баланса ОИ в декабрь 2010
    cmDB.ExecQuery('execute procedure CorrectBalansOI', cmDB.WT);
  finally
    List1.Free;
    List2.Free;
    cmDB.FreeQuery(Q);
    cmDB.FreeQuery(Q1);
    cmDB.FreeQuery(Q2);
  end;
  if cmDB.WT.Active then
    cmDB.WT.Commit;
end;

procedure TMakeDocProcessForm.cxButton4Click(Sender: TObject);
var
  aM,aY: word;
begin
  aM:=M1.ItemIndex;
  aY:=Y1.Value;
  while (aM<=M2.ItemIndex) and (aY<=Y2.Value) do
  begin
    M.ItemIndex:=aM;
    Y.Value:=aY;
    Application.ProcessMessages;

    //БДР план
    BDRPlanBtnClick(nil);
    //TP
    cxButton1Click(nil);
    if aY<2013 then
      cxButton2Click(nil); //OИ
    //БДР факт
    BDRFactBtnClick(nil);
    //обновляем период
    Inc(aM);
    if aM>12 then
    begin
      aM:=1;
      Inc(aY);
    end;
  end;
end;

procedure TMakeDocProcessForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMakeDocProcessForm.FormCreate(Sender: TObject);
var
  aD,aM,aY: word;
begin
  DecodeDate(Date, aY,aM,aD);
  M.ItemIndex:=aM-1;
  M2.ItemIndex:=aM;
  Y.Value:=aY;
  Y1.Value:=aY;
  Y2.Value:=aY;
end;

procedure TMakeDocProcessForm.Msg(AText: string);
begin
  Memo.Lines.Add(AText);
  Application.ProcessMessages;
end;

procedure TMakeDocProcessForm.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

initialization
  RegisterClass(TMakeDocProcessForm);

end.
