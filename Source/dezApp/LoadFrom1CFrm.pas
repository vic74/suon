unit LoadFrom1CFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxLayoutControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, ExtDlgs, cxButtonEdit, cxSpinEdit, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxMemo, cxProgressBar, dxStatusBar,
  dxLayoutLookAndFeels, Menus, StdCtrls, cxButtons, FIBQuery, cmDBUnit, cmUtils,
  dezLoadData, dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  EMyException = class(Exception);

  TLoadFrom1CForm = class(TDezForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    StatusBarItem: TdxLayoutItem;
    StatusBarContainer1: TdxStatusBarContainerControl;
    ProgressBar: TcxProgressBar;
    dxLayoutControl1Group2: TdxLayoutGroup;
    Memo: TcxMemo;
    dxLayoutControl1Item1: TdxLayoutItem;
    Month: TcxComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    Year: TcxSpinEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    FileName: TcxButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    Code: TcxMaskEdit;
    cxCode: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    procedure Msg(AText: string);
    procedure Progress(Count, Poz: integer);
  public
    { Public declarations }
  end;

  TSQLData = class(TObject)
  private
    fOnMessage: TMessageEvent;
    fOnProgress: TProgressEvent;
    StreetQ: TFIBQuery;
    HouseQ: TFIBQuery;
    WorkQ: TFIBQuery;
    PodrQ: TFIBQuery;
    function CorrectStreetName(AName: string): string;
  protected
    procedure Prepare; virtual;
  public
    property OnMessage: TMessageEvent read fOnMessage write fOnMessage;
    property OnProgress: TProgressEvent read fOnProgress write fOnProgress;
    constructor Create;
    destructor Destroy; override;
    procedure Msg(S: string);
    procedure Progress(ACount, APosition: integer);
    function GetStreetCode(AStreet: string): integer;
    function GetHouseCode(AHouse: string): integer;
    function GetHouseCodeByStreet(AStreet: integer; AHouse: string): integer;
    function GetWorkCode(aCode1C: integer): integer;
    function GetPodrCode(aCode1C: string): integer;
  end;

  TLoadTRFile = class(TSQLData)
  private
    fM: integer;
    fY: integer;
    fFileName: string;
    fLoadType: smallint;
  public
    property M: integer read fM write fM;
    property Y: integer read fY write fY;
    property FileName: string read fFileName write fFileName;
    property LoadType: smallint read fLoadType write fLoadType;
    procedure Prepare; override;
    procedure Execute;
    procedure ExecuteODS;
  end;

  TLoadHouseOI = class(TSQLData)
  private
    fDogCode: integer;
    fFileName: string;
    ClearSQL: TFIBQuery;
    AddSQL: TFIBQuery;
    EntSQL: TFIBQuery;
  public
    property DogCode: integer read fDogCode write fDogCode;
    property FileName: string read fFileName write fFileName;
    destructor Destroy; override;
    procedure Prepare; override;
    procedure Execute;
  end;

var
  LoadFrom1CForm: TLoadFrom1CForm;

implementation

{$R *.dfm}

{ TSQLData }

constructor TSQLData.Create;
begin
  Prepare;
end;

destructor TSQLData.Destroy;
begin
  cmDBUnit.cmDB.FreeQuery(StreetQ);
  cmDBUnit.cmDB.FreeQuery(HouseQ);
  cmDBUnit.cmDB.FreeQuery(WorkQ);
  cmDBUnit.cmDB.FreeQuery(PodrQ);
  inherited;
end;

function TSQLData.CorrectStreetName(AName: string): string;
const
  Shb=';ПР.;УЛ.;ПЕР.;';
var
  i, Count: integer;
  S: string;
begin
  Result:='';
  Count:=cmWordCount(AName, ' ');
  for i:=1 to Count do
  begin
    S:=cmGetWord(AName, i, ' ');
    if Pos(';'+S+';', Shb)=0 then
    begin
      if Result<>'' then Result:=Result+' ';
      Result:=Result+S;
    end;
  end;
  //корреция наименования улицы
  if Result='3-АЯ АРЗАМАССКАЯ' then
    Result:='3-Я АРЗАМАССКАЯ'
  else
  if Result='40 ЛЕТ ПОБЕДЫ' then
    Result:='40-ЛЕТИЯ ПОБЕДЫ'
  else
  if Result='УНИВЕРСИТЕТСКАЯ НАБ.' then
    Result:='УНИВЕРСИТЕТСКАЯ НАБЕРЕЖНАЯ'
  else
  if Result='ГРОМОВОЙ' then
    Result:='УЛЬЯНЫ ГРОМОВОЙ'
end;


function TSQLData.GetStreetCode(AStreet: string): integer;
begin
  Result:=-1;
  StreetQ.ParamByName('StreetName').AsString:=CorrectStreetName(AStreet);
  StreetQ.ExecQuery;
  if not StreetQ.Eof then
    Result:=StreetQ.FN('Code').AsInteger;
end;

function TSQLData.GetHouseCode(AHouse: string): integer;
var
  StreetName, Nomer: string;
  Street: integer;
begin
  Result:=-1;
  StreetName:=cmGetWord(AHouse, 1, ',');
  Nomer:=cmGetWord(AHouse, 2, ',');
  //получаем код улицы
  Street:=GetStreetCode(StreetName);
  //получаем код дома
  HouseQ.ParamByName('Street').AsInteger:=Street;
  HouseQ.ParamByName('Nomer').AsString:=Nomer;
  HouseQ.ExecQuery;
  if not HouseQ.Eof then
    Result:=HouseQ.FN('Code').AsInteger;
end;

function TSQLData.GetHouseCodeByStreet(AStreet: integer;
  AHouse: string): integer;
begin
  Result:=-1;
  //получаем код дома
  HouseQ.ParamByName('Street').AsInteger:=AStreet;
  HouseQ.ParamByName('Nomer').AsString:=AHouse;
  HouseQ.ExecQuery;
  if not HouseQ.Eof then
    Result:=HouseQ.FN('Code').AsInteger;
end;

function TSQLData.GetPodrCode(aCode1C: string): integer;
begin
  Result:=-1;
  PodrQ.ParamByName('Code').AsString:=aCode1C;
  PodrQ.ExecQuery;
  if not PodrQ.Eof then
    Result:=PodrQ.FN('Code').AsInteger;
end;

function TSQLData.GetWorkCode(aCode1C: integer): integer;
begin
  Result:=-1;
  WorkQ.ParamByName('Code').AsInteger:=aCode1C;
  WorkQ.ExecQuery;
  if not WorkQ.Eof then
    Result:=WorkQ.FN('Code').AsInteger;
end;

procedure TSQLData.Msg(S: string);
begin
  if Assigned(OnMessage) then OnMessage(S);
end;

procedure TSQLData.Prepare;
begin
  StreetQ:=cmDBUnit.cmDB.GetQuery('select * from Street where Name=:StreetName', cmDBUnit.cmDB.WT);
  HouseQ:=cmDBUnit.cmDB.GetQuery('select * from House where Street=:Street and Nomer=:Nomer', cmDBUnit.cmDB.WT);
  WorkQ:=cmDBUnit.cmDB.GetQuery('select * from MList where Code1C=:Code', cmDBUnit.cmDB.WT);
  PodrQ:=cmDBUnit.cmDB.GetQuery('select * from Kontragent where Code1C=:Code', cmDBUnit.cmDB.WT);
end;

procedure TSQLData.Progress(ACount, APosition: integer);
begin
  if Assigned(OnProgress) then
    OnProgress(ACount, APosition);
end;

{ TLoadTRFile }

procedure TLoadTRFile.Execute;
var
  List, EList: TStringList;
  IsError: boolean;
  House, Street, Work, Podr: integer;

  procedure ScanProcess;
  var
    i: integer;
    S, S1: string;
  begin
    Msg('Сканирование данных...');
    for i:=0 to List.Count-1 do
    begin
      //дом
      S:=cmGetWord(List[i], 1, #9);
      House:=GetHouseCode(S);
      if (House<0) and (EList.IndexOf(S)<0) then
      begin
        Msg('Не найден дом: '+S);
        EList.Add(S);
        IsError:=true;
      end;
      //подрядчик
      S:=cmGetWord(List[i], 3, #9);
      S1:=cmGetWord(List[i], 2, #9);
      Podr:=GetPodrCode(S1);
      if (Podr<0) and (EList.IndexOf(S1)<0) then
      begin
        Msg('Не найден подрядчик: '+S1+'  '+S);
        EList.Add(S1);
        IsError:=true;
      end;
      //работа
      S:=cmGetWord(List[i], 5, #9);
      S1:=cmGetWord(List[i], 4, #9);
      Work:=GetWorkCode(StrToInt(S1));
      if (Work<0) and (EList.IndexOf(S1)<0) then
      begin
        Msg('Не найдена работа: '+S1+'  '+S);
        EList.Add(S1);
        IsError:=true;
      end;
      Progress(List.Count, i);
    end;
  end;

  procedure LoadProcess;
  var
    i, Days: integer;
    D1,D2: TDateTime;
    Q: TFIBQuery;
    S, TableName: string;
  begin
    if LoadType=0 then
      TableName:='TRWorkBDR'
    else
      TableName:='TRLWorkBDR';
    //чистим таблицу
    Days:=MonthDays[IsLeapYear(Y), M];
    Q:=cmDBUnit.cmDB.GetQuery('delete from '+TableName+' where Data BETWEEN :D1 and :D2', cmDBUnit.cmDB.WT);
    try
      D1:=EncodeDate(Y,M,1);
      D2:=EncodeDate(Y,M,Days);
      Q.ParamByName('D1').AsDate:=D1;
      Q.ParamByName('D2').AsDate:=D2;
      Q.ExecQuery;
    finally
      cmDBUnit.cmDB.FreeQuery(Q);
    end;
    //загрузка данных
    Msg('Загрузка данных...');
    Q:=cmDBUnit.cmDB.GetQuery('INSERT INTO '+TableName+'(Data, DocNomer, House, Street, Kontragent,'+
      'MList, Summa) VALUES(:Data, :DocNomer, :House, :Street, :Kontragent, :MList, :Summa)', cmDBUnit.cmDB.WT);
    try
      for i:=0 to List.Count-1 do
      begin
        S:=cmGetWord(List[i], 1, #9);
        Street:=GetStreetCode(cmGetWord(S,1,','));
        House:=GetHouseCode(S);
        Podr:=GetPodrCode(cmGetWord(List[i], 2, #9));
        Work:=GetWorkCode(StrToInt(cmGetWord(List[i], 4, #9)));
        Q.ParamByName('Data').AsDate:=D2;
        Q.ParamByName('DocNomer').AsString:='';
        Q.ParamByName('House').AsInteger:=House;
        Q.ParamByName('Street').AsInteger:=Street;
        Q.ParamByName('Kontragent').AsInteger:=Podr;
        Q.ParamByName('MList').AsInteger:=Work;
        Q.ParamByName('Summa').AsString:=cmGetWord(List[i], 6, #9);
        Q.ExecQuery;
        Progress(List.Count, i);
      end;
    finally
      cmDBUnit.cmDB.FreeQuery(Q);
    end;
  end;

begin
  Msg('Загрузка данных: '+IntToStr(M)+'.'+IntToStr(Y));
  if LoadType=0 then
    Msg('ТР общестрой')
  else
    Msg('ТР лифт');

  List:=TStringList.Create;
  EList:=TStringList.Create;
  try
    List.LoadFromFile(FileName);
    IsError:=false;
    ScanProcess;
    if not IsError then LoadProcess;
  finally
    List.Free;
    EList.Free;
  end;

  if IsError then
    Msg('Найдены ошибки в файле загрузки - загрузка данных отменена.')
  else
    Msg('Загрузка данных успешно завершена.');

  cmDBUnit.cmDB.WT.Commit;
end;

procedure TLoadTRFile.ExecuteODS;
var
  List: TStringList;
  i, ODSCode: integer;
  QRec: TFIBQuery;

  function GetODSCode: integer;
  var
    Q: TFIBQuery;
  begin
    Result:=-1;
    //получаем код документа
    Q:=cmDBUnit.cmDB.GetQuery('select * from ODSDoc where Y=:Y and M=:M', cmDBUnit.cmDB.WT);
    try
      Q.ParamByName('Y').AsInteger:=Y;
      Q.ParamByName('M').AsInteger:=M;
      Q.ExecQuery;
      if not Q.Eof then
        Result:=Q.FN('Code').AsInteger;
    finally
      cmDBUnit.cmDB.FreeQuery(Q);
    end;
  end;

  procedure CreateODSDoc;
  var
    Q: TFIBQuery;
  begin
    Q:=cmDB.GetQuery('insert into ODSDoc(Y,M) values(:Y, :M)', cmDB.WT);
    try
      Q.ParamByName('Y').AsInteger:=Y;
      Q.ParamByName('M').AsInteger:=M;
      Q.ExecQuery;
    finally
      Q.Free;
    end;
  end;

  procedure ClearDoc;
  var
    Q: TFIBQuery;
  begin
    Q:=cmDB.GetQuery('delete from ODSDocList where ODSDoc=:ODSCode', cmDB.WT);
    try
      Q.ParamByName('ODSCode').AsInteger:=ODSCode;
      Q.ExecQuery;
    finally
      Q.Free;
    end;
  end;

  procedure PrepareDoc;
  begin
    ODSCode:=GetODSCode;
    if ODSCode<0 then
      CreateODSDoc
    else
      ClearDoc;
    ODSCode:=GetODSCode;
  end;

  procedure AddRec(S: string);
  var
    Street, House: integer;
    S1: string;
  begin
    S1:=cmGetWord(S, 1, #9);
    Street:=GetStreetCode(cmGetWord(S1,1,','));
    House:=GetHouseCode(S1);
    if House<0 then
    begin
      Msg('Не найден дом: '+cmGetWord(S, 1, #9));
      Exit;
    end;
    QRec.ParamByName('ODSDoc').AsInteger:=ODSCode;
    QRec.ParamByName('House').AsInteger:=House;
    QRec.ParamByName('Street').AsInteger:=Street;
    QRec.ParamByName('Num').AsInteger:=StrToInt(cmGetWord(S,2,#9));
    QRec.ExecQuery;
  end;

begin
  Msg('Создание документа регистрации заявок ОДС.');
  QRec:=cmDB.GetQuery('insert into ODSDocList(ODSDoc, House, Street, Num) values('+
    ':ODSDoc, :House, :Street, :Num)', cmDB.WT);

  List:=TStringList.Create;
  try
    List.LoadFromFile(FileName);
    PrepareDoc;
    for i:=0 to List.Count-1 do
    begin
      AddRec(List[i]);
      Progress(List.Count, i);
    end;
  finally
    List.Free;
  end;

  Msg('Загрузка данных завершена');

  cmDB.FreeQuery(QRec);
  cmDB.WT.Commit;
end;

procedure TLoadTRFile.Prepare;
begin
  inherited;
end;

{--------------------------------------------------------}
procedure TLoadFrom1CForm.cxButton1Click(Sender: TObject);
var
  Obj: TLoadTRFile;
begin
  Obj:=TLoadTRFile.Create;
  try
    Obj.Y:=Year.Value;
    Obj.M:=Month.ItemIndex+1;
    Obj.FileName:=FileName.Text;
    Obj.LoadType:=0;
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadFrom1CForm.cxButton2Click(Sender: TObject);
var
  Obj: TLoadTRFile;
begin
  Obj:=TLoadTRFile.Create;
  try
    Obj.Y:=Year.Value;
    Obj.M:=Month.ItemIndex+1;
    Obj.FileName:=FileName.Text;
    Obj.LoadType:=1 ;
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadFrom1CForm.cxButton3Click(Sender: TObject);
var
  Obj: TLoadTRFile;
begin
  Obj:=TLoadTRFile.Create;
  try
    Obj.Y:=Year.Value;
    Obj.M:=Month.ItemIndex+1;
    Obj.FileName:=FileName.Text;
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    Obj.ExecuteODS;
  finally
    Obj.Free;
  end;
end;

procedure TLoadFrom1CForm.cxButton4Click(Sender: TObject);
var
  Obj: TLoadHouseOI;
begin
  Obj:=TLoadHouseOI.Create;
  try
    Obj.DogCode:=Code.EditingValue;
    Obj.FileName:=FileName.Text;
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    Obj.Execute;
  finally
    Obj.Free;
  end;
end;

procedure TLoadFrom1CForm.cxButton5Click(Sender: TObject);
var
  Obj: ToiProcess;
  D1,D2: TDateTime;
  Y,M: word;
begin
  Obj:=ToiProcess.Create;
  try
    //расчет периода
    Y:=Year.Value;
    M:=Month.ItemIndex+1;
    D1:=EncodeDate(Y, M, 1);
    if M=12 then
    begin
      M:=1;
      Inc(Y);
    end
    else
    begin
      Inc(M);
    end;
    D2:=EncodeDate(Y,M,1);
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

procedure TLoadFrom1CForm.FileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog.Execute then
    FileName.Text:=OpenDialog.FileName;
end;

procedure TLoadFrom1CForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLoadFrom1CForm.Msg(AText: string);
begin
  Memo.Lines.Add(AText);
  Application.ProcessMessages;
end;

procedure TLoadFrom1CForm.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

{ TLoadHouseOI }

procedure TLoadHouseOI.Prepare;
begin
  inherited;
  ClearSQL:=cmDB.GetQuery('delete from HouseImMKD where DogImMkd=:Code', cmDB.WT);
  AddSQL:=cmDB.GetQuery('insert into HouseImMKD(DogImMkd, House, Tarif, Addr, D1, D2) '+
    'VALUES(:DogImMkd, :House, :Tarif, :Addr, :D1, :D2)', cmDB.WT);
  EntSQL:=cmDB.GetQuery('update House set Entrance_CNT=:Code where Code=:House', cmDB.WT);
end;

destructor TLoadHouseOI.Destroy;
begin
  cmDB.FreeQuery(ClearSQL);
  cmDB.FreeQuery(AddSQL);
  cmDB.FreeQuery(EntSQL);
  inherited;
end;

procedure TLoadHouseOI.Execute;
var
  i: integer;
  List: TStringList;
  S: string;

  procedure LoadData;
  var
    Street, House: string;
    StreetCode: integer;
    HouseCode, EntCode: integer;
  begin
    //получаем улицу
    Street:=AnsiUpperCase(cmGetWord(S,2, ';'));
    House:=Trim(cmGetWord(Street,2,','));
    Street:=Trim(cmGetWord(Street,1,','));
    StreetCode:=GetStreetCode(Street);
    if StreetCode<0 then
    begin
      Msg('Улица: '+Street+' не найдена');
      Exit;
    end;
    //получаем дом
    HouseCode:=Self.GetHouseCodeByStreet(StreetCode, House);
    if HouseCode<0 then
    begin
      Msg(Street+' '+House+' дом не найден.');
      Exit;
    end;
    //вставка записи в базу
    AddSQL.ParamByName('DogImMKD').AsInteger:=DogCode;
    AddSQL.ParamByName('House').AsInteger:=HouseCode;
    AddSQL.ParamByName('Tarif').AsCurrency:=StrToFloat(cmCorrectFloat(cmGetWord(S,4,';')));
    AddSQL.ParamByName('Addr').AsInteger:=0;
    AddSQL.ParamByName('D1').AsDate:=StrToDate('1.1.2011');
    AddSQL.ParamByName('D2').AsDate:=StrToDate('1.1.2020');
    AddSQL.ExecQuery;
    //коррекция числа подъездов в доме
    EntCode:=StrToIntDef(cmGetWord(S, 9, ';'), 0);
    if EntCode<>0 then
    begin
      EntSQL.ParamByName('Code').AsInteger:=EntCode;
      EntSQL.ParamByName('House').AsInteger:=HouseCode;
      EntSQL.ExecQuery;
    end;
  end;

begin
  if not FileExists(FileName) then
    raise EMyException.Create('Не найден файл - '+FileName);
  Msg('Загрузка списка домов к договору ('+IntToStr(DogCode)+')');
  //чистка таблицы в базе
  ClearSQL.ParamByName('Code').AsInteger:=DogCode;
  ClearSQL.ExecQuery;

  List:=TStringList.Create;
  List.LoadFromFile(FileName);
  try
    for i:=0 to List.Count-1 do
    begin
      S:=List[i];
      LoadData;
    end;
  finally
    List.Free;
  end;
  cmDB.WT.Commit;
  Msg('Загрузка данных завершена');
end;

initialization
  RegisterClass(TLoadFrom1CForm);

end.
