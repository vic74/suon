unit BdrRep;

interface

uses
  SysUtils, Classes, Dialogs, cmDBUnit, FIBQuery, pFIBCacheQueries, pFIBProps, System.Variants,
  dxmdaset, AppUtils, DB;

  type
{ TBdrReport }

  TBdrReport = class(TObject)
  private
    fSrvList: TStringList;
    fBeginData: TDateTime;
    fEndData: TDateTime;
    fSrvCode: Variant;
    MemTable: TdxMemData;
  protected
    procedure CreateMem(mt: TdxMemData; Index: Integer =1);
    procedure GetBdrCodeList(isPlan: Boolean = false);
    procedure MakeData;
    procedure MakeDataBDR2;
    procedure MakeDataBDR3;
    procedure MakeDataPBDR1;
    procedure MakeDataPBDR2;
    procedure MakeDataPBDR3;
    procedure AddFirstMonth(Q: TFIBQuery);
    procedure AddMainData(Q: TFIBQuery);
    procedure AddLastMonth(Q: TFIBQuery);
  public
    constructor Create(var mt: TdxMemData);
    destructor Destroy; override;
  published
    procedure MakeBdr1Report;
    procedure MakeBDR2Report;
    procedure MakeBDR3Report;
    procedure MakeBDR1PlanReport;
    procedure MakeBDR2PlanReport;
    procedure MakeBDR3PlanReport;
    property BeginData: TDateTime read fBeginData write fBeginData;
    property EndData: TDateTime read fEndData write fEndData;
    property SrvCode: Variant read fSrvCode write fSrvCode;
  end;


implementation

{ TBdrReport }

procedure TBdrReport.AddFirstMonth(Q: TFIBQuery);
var
  FieldName: string;
  I: Integer;
begin
  with MemTable do begin
    Append;
    FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
    FN('F1').AsVariant:= Q.FN('F1').AsVariant;
    FN('F2').AsVariant:= Q.FN('F2').AsVariant;
    for I:=3 to 27 do
    begin
      FieldName:='F'+IntToStr(I);
      FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
    end;
    Post;
  end;
end;

procedure TBdrReport.AddLastMonth(Q: TFIBQuery);
var
  FieldName: string;
  I: Integer;
begin
  with MemTable do begin
    if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
      Edit;
        FieldName:='F3'; //площадь
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        //
        for I:=7 to 27 do
        begin
          FieldName:='F'+IntToStr(I);
          case I of
                // задолжность на конец периода
            12: ;
            20: ;
            9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //населения
            10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //льготы
            11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //ИТОГО
            19: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //площадь
            24: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Задолженость на конец периода
            25: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Баланс_2
            else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
        end;
      Post;
    end else begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 27 do
      begin
        FieldName:='F'+IntToStr(I);
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
      end;
      Post;
    end;
  end;
end;

procedure TBdrReport.AddMainData(Q: TFIBQuery);
var
  FieldName: string;
  I: Integer;
begin
  with MemTable do begin
    if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
      Edit;
      for I:=7 to 27 do
      begin
        FieldName:='F'+IntToStr(I);
        case i of
          12: ;
          20: ;
          else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
        end;
      end;
      Post;
    end else begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 27 do
      begin
        FieldName:='F'+IntToStr(I);
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
      end;
      Post;
    end;
  end;
end;

constructor TBdrReport.Create(var mt: TdxMemData);
begin
  fSrvList:= TStringList.Create;
  MemTable:= mt;
end;

procedure TBdrReport.CreateMem(mt: TdxMemData; Index: Integer);

  procedure CreateBDR1;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House',ftInteger);    //код дома
    CreateField(mt,'F1',ftString,256);    //Адрес
    CreateField(mt,'F2',ftString,32);     //№ ДУ
    CreateField(mt,'F3',ftFloat);         //Площадь
    for I := 4 to 27 do begin             //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
    begin
      FieldName := 'House';
    end;
  end;

  procedure CreateBDR2;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House',ftInteger);    //код дома
    CreateField(mt,'F1',ftString,256);    //Адрес
    CreateField(mt,'F2',ftString,32);     //ДУ
    CreateField(mt,'F3',ftFloat);         //Площадь
    CreateField(mt,'DRTZ',ftFloat);       //Площадь дератизации
    CreateField(mt,'DZI',ftFloat);       //Площадь дезинсекции
    for I := 4 to 39 do begin             //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
    begin
      FieldName := 'House';
    end;
  end;

  procedure CreateBDR3;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House', ftInteger);  //код дома
    CreateField(mt,'F1', ftString,256);  //Адрес
    CreateField(mt,'F2', ftString,32);   //№ ДУ
    CreateField(mt,'F3', ftFloat);       //Площадь
    for I := 4 to 32 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
    begin
      FieldName := 'House';
    end;
  end;

  procedure CreateBDR1Plan;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House',ftInteger);    //код дома
    CreateField(mt,'F1',ftString,256);  //Адрес
    CreateField(mt,'F2',ftString,32);   //№ ДУ
    CreateField(mt,'F3',ftString,32);   //Тариф
    for I := 4 to 22 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
    begin
      FieldName := 'House';
    end;
  end;

  procedure CreateBDR2Plan;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House',ftInteger);    //код дома
    CreateField(mt,'AccCount', ftInteger); //число лицевых счетов
    CreateField(mt,'DRTZ', ftCurrency); //площадь дератизации
    CreateField(mt,'DZI', ftCurrency); //площадь дезинсекции
    CreateField(mt,'F1',ftString,256);  //Адрес
    CreateField(mt,'F2',ftString,32);   //№ ДУ
    CreateField(mt,'F3',ftString,32);   //Тариф
    for I := 4 to 40 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
      FieldName := 'House';
  end;

  procedure CreateBDR3Plan;
  var
    i :Integer;
    FName :string;
  begin
    CreateField(mt,'House',ftInteger);    //код дома
    CreateField(mt,'F1',ftString,256);  //Адрес
    CreateField(mt,'F2',ftString,32);   //№ ДУ
    CreateField(mt,'F3',ftString,32);   //Тариф
    for I := 4 to 28 do begin            //остальные
      FName:='F'+IntToSTr(i);
      CreateField(mt,FName,ftCurrency);
    end;
    //добавляем индекс
    with mt.Indexes.Add do
      FieldName := 'House';
  end;

begin
  mt.Close;
  mt.ClearField;
  case Index of
    1: CreateBDR1;
    2: CreateBDR2;
    3: CreateBDR3;
    4: CreateBDR1Plan;
    5: CreateBDR2Plan;
    6: CreateBDR3Plan;
  end;
  mt.Open;
end;

destructor TBdrReport.Destroy;
begin
  FreeAndNil(fSrvList);
  inherited;
end;

procedure TBdrReport.GetBdrCodeList(isPlan: Boolean);
var
  Q: TFIBQuery;

  procedure GetFActBdr;
  begin
    Q:= GetQueryForUse(cmDb.RT,
       'SELECT CODE' +#13#10+
       'FROM FBDR' +#13#10+
       'where CAST((''01.''||M||''.''||Y) as DATE) between :d1 and :d2' +#13#10+
       'and  HOUSESRV = :srv'#13#10+
       'ORDER BY Y,M');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('d1').AsVariant:= fBeginData;
      Q.ParamByName('d2').AsVariant:= fEndData;
      Q.ParamByName('srv').AsVariant:= fSrvCode;
      Q.ExecQuery;
      while not Q.Eof do begin
        fSrvList.Add(Q.FN('CODE').AsVariant);
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure GetPlanBDR;
  begin
    Q:= GetQueryForUse(cmDb.RT,
       'SELECT CODE FROM PBDR ' +#13#10+
       'where CAST((''01.''||M||''.''||Y) as DATE) between :d1 and :d2' +#13#10+
       'and  HOUSESRV = :srv'#13#10+
       'ORDER BY Y,M');
    Q.Options:=[qoStartTransaction];
    try
      Q.ParamByName('d1').AsVariant:= fBeginData;
      Q.ParamByName('d2').AsVariant:= fEndData;
      Q.ParamByName('srv').AsVariant:= fSrvCode;
      Q.ExecQuery;
      while not Q.Eof do begin
        fSrvList.Add(Q.FN('CODE').AsVariant);
        Q.Next;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  fSrvList.Clear;
  //
  if isPlan then
     GetPlanBDR else
     GetFActBdr;
end;

procedure TBdrReport.MakeBDR1PlanReport;
begin
  if MemTable.FieldCount<2 then
  CreateMem(MemTable, 4);
  GetBdrCodeList(true); //получаем список документов
  if fSrvList.Count>0 then
  MakeDataPBDR1;
end;

procedure TBdrReport.MakeBdr1Report;
begin
  if MemTable.FieldCount<2 then
  CreateMem(MemTable);
  GetBdrCodeList; //получаем список документов
  if fSrvList.Count>0 then
    MakeData;     //получаем данные по документам
end;

procedure TBdrReport.MakeBDR2PlanReport;
begin
  //формируем структуру таблицы для хранения данных
  if MemTable.FieldCount<2 then CreateMem(MemTable, 5);
  //получаем список планов
  GetBdrCodeList(true);
  if fSrvList.Count>0 then MakeDataPBDR2;
end;

procedure TBdrReport.MakeBDR2Report;
begin
  if MemTable.FieldCount<2 then
  CreateMem(MemTable, 2);
  GetBdrCodeList; //получаем список документов
  if fSrvList.Count>0 then
  MakeDataBDR2;
end;

procedure TBdrReport.MakeBDR3PlanReport;
begin
  if MemTable.FieldCount<2 then
  CreateMem(MemTable, 6);
  GetBdrCodeList(true); //получаем список документов
  if fSrvList.Count>0 then
  MakeDataPBDR3;
end;

procedure TBdrReport.MakeBDR3Report;
begin
  if MemTable.FieldCount<2 then
  CreateMem(MemTable, 3);
  GetBdrCodeList; //получаем список документов
  if fSrvList.Count>0 then
  MakeDataBDR3;
end;

procedure TBdrReport.MakeData;
var
  Q: TFIBQuery;
  I: Integer;

  //Начислено (скорректировано)
  procedure SetSum;
  begin
    with MemTable do begin
      First;
      while not Eof do begin
        Edit;
        FN('F13').AsVariant:= FN('F12').AsVariant+  //Баланс_1
                              FN('F7').AsVariant+   //Начислено 100%
                              FN('F21').AsVariant;  //Начислено
        Post;
        Next;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    'SELECT FB1.HOUSE, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '       DU.NAME F2, FB1.F3, FB1.F4, FB1.F5,' +#13#10+
    '       FB1.F6, FB1.F7, FB1.F8, FB1.F9,' +#13#10+
    '       FB1.F10, FB1.F11, FB1.F12, FB1.F13,' +#13#10+
    '       FB1.F14, FB1.F15, FB1.F16, FB1.F17,' +#13#10+
    '       FB1.F18, FB1.F19, FB1.F20, FB1.F21,' +#13#10+
    '       FB1.F22, FB1.F23, FB1.F24, FB1.F25,' +#13#10+
    '       FB1.F26, FB1.F27' +#13#10+
    'FROM FBDR1 FB1' +#13#10+
    'LEFT outer join fbdr fb on fb.CODE = fb1.FBDR' +#13#10+
    'left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    'left outer join street s on s.CODE = h.STREET' +#13#10+
    'left outer JOIN du on du.CODE = h.DU' +#13#10+
    'where FB.CODE =:code order by FB1.HOUSE');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
        while not Q.Eof do begin
          if I = 0 then AddFirstMonth(Q) else
          if I = fSrvList.Count -1 then  AddLastMonth(Q) else
          AddMainData(Q);
          Q.Next;
        end;
    end;
    //
    SetSum;
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

procedure TBdrReport.MakeDataBDR2;
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddFirstMonth;
  var
    FieldName: string;
    I: Integer;
    AValue: Variant;
  begin
    with MemTable do begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 39 do
      begin
        FieldName:='F'+IntToStr(I);
        AValue:= Q.FN(FieldName).AsCurrency;
        if varIsType(AValue,[varNull, varEmpty]) then AValue:=0;
        FN(FieldName).AsCurrency:=AValue;
      end;
      Post;
    end;
  end;

  procedure AddMainData;
  var
    FieldName: string;
    I: Integer;
    AValue: Variant;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
        for I:=7 to 39 do
        begin
          FieldName:='F'+IntToStr(I);
          case i of
            12: ;
            17: ;
            else begin
                   if varIsType(FN(FieldName).AsVariant,[varNull, varEmpty]) then
                      FN(FieldName).AsVariant:=0;
                   AValue:= Q.FN(FieldName).AsCurrency;
                   if varIsType(AValue,[varNull, varEmpty]) then
                      AValue:=0;
                   FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+AValue;
                 end;
          end;
        end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 39 do
        begin
          FieldName:='F'+IntToStr(I);
          AValue:= Q.FN(FieldName).AsCurrency;
          if varIsType(AValue,[varNull, varEmpty]) then
                      AValue:=0;
          FN(FieldName).AsCurrency:=AValue;
        end;
        Post;
      end;
    end;
  end;

  procedure AddLastMonth;
  var
    FieldName: string;
    I: Integer;
    AValue: Variant;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
          FieldName:='F3'; //площадь
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          //
          for I:=7 to 39 do
          begin
            FieldName:='F'+IntToStr(I);
            case I of
                  // задолжность на конец периода
              12: ;
              17: ;
              9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //населения
              10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //льготы
              11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //ИТОГО
              16: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Задолжн. на конец
              31: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Баланс_2
              else begin
                     if varIsType(FN(FieldName).AsVariant,[varNull, varEmpty]) then
                        FN(FieldName).AsVariant:=0;
                     AValue:= Q.FN(FieldName).AsCurrency;
                     if varIsType(AValue,[varNull, varEmpty]) then
                        AValue:=0;
                     FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+AValue;
                   end;
            end;
          end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 39 do
        begin
          FieldName:='F'+IntToStr(I);
          AValue:= Q.FN(FieldName).AsCurrency;
          if varIsType(AValue,[varNull, varEmpty]) then
                      AValue:=0;
          FN(FieldName).AsCurrency:=AValue;
        end;
        Post;
      end;
    end;
  end;

  //Начислено (скорректировано)
  procedure SetF18;
  begin
    with MemTable do begin
      First;
      while not Eof do begin
        Edit;
        FN('F18').AsVariant:= FN('F17').AsVariant+  //Баланс_1
                              FN('F7').AsVariant+   //Начислено 100%
                              FN('F13').AsVariant;  //Начислено
        Post;
        Next;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    '  SELECT FB1.*, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '          DU.NAME F2' +#13#10+
    '   FROM FBDR2 FB1' +#13#10+
    '   LEFT outer join fbdr fb on fb.CODE = fb1.FBDR' +#13#10+
    '   left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    '   left outer join street s on s.CODE = h.STREET' +#13#10+
    '   left outer JOIN du on du.CODE = h.DU' +#13#10+
    '   where FB.CODE =:code order by FB1.HOUSE');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do
    begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
      while not Q.Eof do
      begin
        if I = 0 then
          AddFirstMonth
        else if I = fSrvList.Count -1 then
          AddLastMonth
        else
          AddMainData;
        Q.Next;
      end;
    end;
    SetF18; //Начислено (скорректировано)
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

procedure TBdrReport.MakeDataBDR3;
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddFirstMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 32 do
      begin
        FieldName:='F'+IntToStr(I);
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
      end;
      Post;
    end;
  end;

  procedure AddMainData;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
        for I:=7 to 32 do
        begin
          FieldName:='F'+IntToStr(I);
          case i of
            12: ;
            16: ;
            else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
        end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 32 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        end;
        Post;
      end;
    end;
  end;

  procedure AddLastMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
          FieldName:='F3'; //площадь
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          //
          for I:=7 to 32 do
          begin
            FieldName:='F'+IntToStr(I);
            case I of
                  // задолжность на конец периода
              12: ;
              16: ;
              9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //населения
              10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //льготы
              11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //ИТОГО
              15: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Задолжн. на конец
              30: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Баланс_2
              else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
            end;
          end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 32 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        end;
        Post;
      end;
    end;
  end;

    //Начислено (скорректировано)
  procedure SetSum;
  begin
    with MemTable do begin
      First;
      while not Eof do begin
        Edit;
        FN('F17').AsVariant:= FN('F16').AsVariant+  //Баланс_1
                              FN('F7').AsVariant+   //Начислено 100%
                              FN('F13').AsVariant;  //Начислено
        Post;
        Next;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    '  SELECT FB1.*, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '          DU.NAME F2' +#13#10+
    '   FROM FBDR3 FB1' +#13#10+
    '   LEFT outer join fbdr fb on fb.CODE = fb1.FBDR' +#13#10+
    '   left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    '   left outer join street s on s.CODE = h.STREET' +#13#10+
    '   left outer JOIN du on du.CODE = h.DU' +#13#10+
    '   where FB.CODE =:code order by FB1.HOUSE');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
        while not Q.Eof do begin
          if I = 0 then AddFirstMonth else
          if I = fSrvList.Count -1 then  AddLastMonth else
          AddMainData;
          Q.Next;
        end;
    end;
    SetSum;
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

procedure TBdrReport.MakeDataPBDR1;
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddFirstMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 22 do
      begin
        FieldName:='F'+IntToStr(I);
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
      end;
      Post;
    end;
  end;

  procedure AddMainData;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
        FieldName:='F3'; //тариф
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        FieldName:='F4'; //площадь
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        for I:=7 to 22 do
        begin
          FieldName:='F'+IntToStr(I);
          case i of
            11: FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
            16: FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
            else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
        end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 22 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        end;
        Post;
      end;
    end;
  end;

  procedure AddLastMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
          FieldName:='F3'; //тариф
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          FieldName:='F4'; //площадь
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          //
          for I:=7 to 22 do
          begin
            FieldName:='F'+IntToStr(I);
            case I of
                  // задолжность на конец периода
              9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //населения
              10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //льготы
              11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //ИТОГО
              15: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Задолжн. на конец
              30: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Баланс_2
              else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
            end;
          end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 22 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        end;
        Post;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    '  SELECT FB1.*, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '          DU.NAME F2' +#13#10+
    '   FROM PBDR1 FB1' +#13#10+
    '   LEFT outer join pbdr fb on fb.CODE = fb1.PBDR' +#13#10+
    '   left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    '   left outer join street s on s.CODE = h.STREET' +#13#10+
    '   left outer JOIN du on du.CODE = h.DU' +#13#10+
    '   where FB.CODE =:code'+#13#10+
    '   order by DU.NAME, S.NAME, H.NOMER');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
        while not Q.Eof do begin
          //if I = 0 then AddFirstMonth else
          //if I = fSrvList.Count -1 then  AddLastMonth else
          AddMainData;
          Q.Next;
        end;
    end;
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

procedure TBdrReport.MakeDataPBDR2;
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddFirstMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      Append;
      FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
      FN('F1').AsVariant:= Q.FN('F1').AsVariant;
      FN('F2').AsVariant:= Q.FN('F2').AsVariant;
      for I:=3 to 22 do
      begin
        FieldName:='F'+IntToStr(I);
        FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
      end;
      Post;
    end;
  end;

  procedure AddMainData;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
        FieldName:='F3'; //тариф
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        FieldName:='F4'; //площадь
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        FieldName:='F5'; //начисленно
        FN(FieldName).AsVariant:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
        FN('DRTZ').AsVariant:= Q.FN('DRTZ').AsVariant;
        FN('DZI').AsVariant:= Q.FN('DZI').AsVariant;
        for I:=7 to 40 do
        begin
          FieldName:='F'+IntToStr(I);
          case i of
            16: FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
            22: FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
            else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
        end;
        //PO
        for I := 1 to 4 do
        begin
          FieldName:='K'+IntToStr(i);
          FN(FieldName).AsInteger:=Q.FN(FieldName).AsInteger;
        end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        FN('DRTZ').AsVariant:= Q.FN('DRTZ').AsVariant;
        FN('DZI').AsVariant:= Q.FN('DZI').AsVariant;
        for I:=3 to 40 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        end;
        Post;
      end;
    end;
  end;

  procedure AddLastMonth;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
          FieldName:='F3'; //тариф
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          FieldName:='F4'; //площадь
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
          //
          for I:=7 to 22 do
          begin
            FieldName:='F'+IntToStr(I);
            case I of
                  // задолжность на конец периода
              9 : FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //населения
              10: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //льготы
              11: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //ИТОГО
              15: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Задолжн. на конец
              30: FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;  //Баланс_2
              else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
            end;
          end;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 22 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsCurrency:=Q.FN(FieldName).AsCurrency;
        end;
        Post;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    '  SELECT FB1.*, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '          DU.NAME F2' +#13#10+
    '   FROM PBDR2 FB1' +#13#10+
    '   LEFT outer join pbdr fb on fb.CODE = fb1.PBDR' +#13#10+
    '   left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    '   left outer join street s on s.CODE = h.STREET' +#13#10+
    '   left outer JOIN du on du.CODE = h.DU' +#13#10+
    '   where FB.CODE =:code'+#13#10+
    '   order by DU.NAME, S.NAME, H.NOMER');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
        while not Q.Eof do begin
          //if I = 0 then AddFirstMonth else
          //if I = fSrvList.Count -1 then  AddLastMonth else
          AddMainData;
          Q.Next;
        end;
    end;
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

procedure TBdrReport.MakeDataPBDR3;
var
  Q: TFIBQuery;
  I: Integer;

  procedure AddMainData;
  var
    FieldName: string;
    I: Integer;
  begin
    with MemTable do begin
      if Locate('HOUSE',Q.FN('HOUSE').AsVariant,[]) then begin
        Edit;
        FieldName:='F3'; //тариф
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        FieldName:='F4'; //площадь
        FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        //данные
        for I:=7 to 28 do
        begin
          FieldName:='F'+IntToStr(I);
          case i of
            18: FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
            else FN(FieldName).AsCurrency:=FN(FieldName).AsCurrency+Q.FN(FieldName).AsCurrency;
          end;
        end;
        //контрагенты
        for I := 1 to 4 do
          FN('K'+IntToStr(i)).AsInteger:=Q.FN('K'+IntToStr(i)).AsInteger;
        Post;
      end else begin
        Append;
        FN('HOUSE').AsVariant:= Q.FN('HOUSE').AsVariant;
        FN('F1').AsVariant:= Q.FN('F1').AsVariant;
        FN('F2').AsVariant:= Q.FN('F2').AsVariant;
        for I:=3 to 28 do
        begin
          FieldName:='F'+IntToStr(I);
          FN(FieldName).AsVariant:=Q.FN(FieldName).AsVariant;
        end;
        Post;
      end;
    end;
  end;

begin
  MemTable.ClearData; //ClearData
  MemTable.DisableControls;
  Q:= GetQueryForUse(cmDb.RT,
    '  SELECT FB1.*, S.NAME||'' ''||H.NOMER F1,' +#13#10+
    '          DU.NAME F2' +#13#10+
    '   FROM PBDR3 FB1' +#13#10+
    '   LEFT outer join pbdr fb on fb.CODE = fb1.PBDR' +#13#10+
    '   left outer join house h on h.CODE = fb1.HOUSE' +#13#10+
    '   left outer join street s on s.CODE = h.STREET' +#13#10+
    '   left outer JOIN du on du.CODE = h.DU' +#13#10+
    '   where FB.CODE =:code'+#13#10+
    '   order by DU.NAME, S.NAME, H.NOMER');
  Q.Options:= [qoStartTransaction];
  try
    for I := 0 to fSrvList.Count -1 do begin
      Q.ParamByName('code').AsVariant:= fSrvList[i];
      Q.ExecQuery;
        while not Q.Eof do begin
          //if I = 0 then AddFirstMonth else
          //if I = fSrvList.Count -1 then  AddLastMonth else
          AddMainData;
          Q.Next;
        end;
    end;
  finally
    FreeQueryForUse(Q);
    MemTable.EnableControls;
  end;
end;

end.
