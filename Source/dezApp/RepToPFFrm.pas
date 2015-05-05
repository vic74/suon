unit RepToPFFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels, math,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FIBQuery, pFIBCacheQueries, pFIBProps, DateUtils, IniFiles,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxEditRepositoryItems, cxDropDownEdit, cxCalendar,
  cxSpinEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle,
  dxSkinVS2010;

type
  TRepToPFForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    cnt1: TdxLayoutControl;
    laf1: TdxLayoutLookAndFeelList;
    lcaf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp2: TdxLayoutGroup;
    grpcnt1Group1: TdxLayoutGroup;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmcnt1Item1: TdxLayoutItem;
    ds_TRPLAN: TpFIBDataSet;
    src_md1: TDataSource;
    md1: TdxMemData;
    msk_Y: TcxMaskEdit;
    itmcnt1Item2: TdxLayoutItem;
    btn_exec: TcxButton;
    itmcnt1Item11: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    rps1: TcxEditRepository;
    cred1: TcxEditRepositoryCurrencyItem;
    cred2: TcxEditRepositoryCurrencyItem;
    strp1: TcxStyleRepository;
    stl1: TcxStyle;
    stl2: TcxStyle;
    grpcnt1Group2: TdxLayoutGroup;
    grpcnt1Group3: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itmcnt1Item12: TdxLayoutItem;
    dt2: TcxDateEdit;
    itmcnt1Item3: TdxLayoutItem;
    btn_ExecFact: TcxButton;
    itmcnt1Item13: TdxLayoutItem;
    ds_TRFact: TpFIBDataSet;
    msk1: TcxEditRepositoryMaskItem;
    clvb1Column1: TcxGridDBBandedColumn;
    spn1: TcxEditRepositorySpinItem;
    clc1: TcxEditRepositoryCalcItem;
    btn_Excel: TcxButton;
    LItemcnt1Item1: TdxLayoutItem;
    btn_Excel1: TcxButton;
    LItemcnt1Item11: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_execClick(Sender: TObject);
    procedure btn_ExecFactClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_Excel1Click(Sender: TObject);
  private
    { Private declarations }
    isPlan: Boolean;
    //получаем список контрагентов для формирования бандов
    procedure GetPO(var Q: TFIBQuery; const Y: Variant);
    procedure GetPOFact(var Q: TFIBQuery);
    //получаем данные за год
    procedure GetSum(var Q: TFIBQuery; const Y: Variant);
    procedure GetSumFact(var Q: TFIBQuery);
    //создаем временную таблицу
    procedure CreateMem;
    //создаем грид
    procedure CreateGrid(var Q: TFIBQuery);
    //
    procedure AddColumn(aFieldName, aCaption: string; aWidth, aPosition: Integer;
           aFooterFormat: string = ''; aFooterKind :TcxSummaryKind = skNone;
           Repository: TcxEditRepositoryItem=nil;
           aStyle: TcxStyle=nil;  aVisible: Boolean = true);
    //добавляем банд
    procedure AddBand(Index: Integer; aCaption: string;
                      aFixedKind: TcxGridBandFixedKind= fkNone;
                      Move: Boolean = false; Hold: Boolean = true);
    // exec
    procedure MakeReport;
    procedure MakeReportFact;
    // заполняем данными
    procedure AddWork;
    procedure AddData;
    //расчитываем итоги
    procedure GetItog;
    procedure GetItogFact;
    procedure GetSumByPO(var Q: TFIBQuery);
    procedure GetSumByPOFact(var Q: TFIBQuery);
    procedure GetSumByWork(var Q: TFIBQuery);
    procedure GetSumByWorkFact(var Q: TFIBQuery);
    function GetItogSum: Currency;
    function GetItogSumFact: Currency;
    //непредвиденные расходы
    function GetUnSum: Currency;
    //получаем начальную / конечную дату периода
    procedure GetDateFact(var D1: TDateTime; var D2: TDateTime);
    // формат данных
    procedure GetNativeFormat;
  public
    { Public declarations }
  end;

var
  RepToPFForm: TRepToPFForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}


procedure TRepToPFForm.AddBand(Index: Integer; aCaption: string;
  aFixedKind: TcxGridBandFixedKind; Move, Hold: Boolean);
begin
  vb1.Bands.Add;
  vb1.Bands[Index].Caption := aCaption;
  vb1.Bands[Index].FixedKind:=aFixedKind;
  vb1.Bands[Index].Options.HoldOwnColumnsOnly:=Hold;
  vb1.Bands[Index].Options.Moving:=Move;
end;
//создаем временную таблицу
procedure TRepToPFForm.AddColumn(aFieldName, aCaption: string; aWidth,
  aPosition: Integer; aFooterFormat: string; aFooterKind: TcxSummaryKind;
  Repository: TcxEditRepositoryItem; aStyle: TcxStyle; aVisible: Boolean);
var
  C :TcxGridDBBandedColumn;
begin
  C := vb1.CreateColumn;
  C.DataBinding.FieldName := aFieldName;
  C.Name := 'cl'+aFieldName;
  C.Caption:=aCaption;
  C.Width:=aWidth;
  C.Position.BandIndex := aPosition;
  C.Summary.FooterKind:=aFooterKind;
  C.Summary.FooterFormat:= aFooterFormat;
  C.RepositoryItem:=Repository;
  C.Styles.Content:=aStyle;
  C.Styles.Footer:=aStyle;
  C.Styles.Header:=aStyle;
  C.Visible:=aVisible;
end;

procedure TRepToPFForm.AddData;
var
  Q: TFIBQuery;
  sum, sumAll: Currency;
  aFSumName: string;     //сумма
  aFShareName: string;   //доля в ПО
  aFShareAllName: string;//доля от общего объема
  i: integer;
begin
  if isPlan = true then
  GetSum(Q, msk_Y.EditingValue) else
  GetSumFact(Q);
  try
    AddWork;
    // format table
    for I := 2 to md1.FieldCount - 1 do begin
      md1.First;
      while not md1.Eof do begin
        md1.Edit;
        md1.Fields[i].AsVariant:=0;
        md1.Post;
        md1.Next;
      end;
    end;
    //
    while not Q.Eof do begin
      aFSumName:='FSUM'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareName:='FS'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareAllName:='FSA'+VarToStr(Q.FN('kontragent').AsVariant);
      //
      if md1.Locate('WORKCODE',Q.FN('CODE').AsVariant,[]) then begin
        md1.Edit;
        if isPlan = true then
        md1.FieldByName(aFSumName).AsVariant:=Q.FN('SUMY').AsVariant else
        md1.FieldByName(aFSumName).AsVariant:=Q.FN('SUMMA').AsVariant;
        md1.FieldByName(aFShareName).AsVariant:=0;
        md1.FieldByName(aFShareAllName).AsVariant:=0;
        md1.Post;
      end;
      Q.Next;
    end;
    if isPlan = true then
    GetItog else
    GetItogFact;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRepToPFForm.AddWork;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE, NAME from MATGROUPTO');
  try
    Q.ExecQuery;
    while not Q.Eof do begin
      md1.Append;
      md1.FieldByName('WORKCODE').AsVariant:=Q.FN('CODE').AsVariant;
      md1.FieldByName('WORK').AsVariant:=Q.FN('NAME').AsVariant;
      md1.Post;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRepToPFForm.btn_Excel1Click(Sender: TObject);
var
  s: TStrings;
begin
  s:= TStringList.Create;
  try
    s.Add(Self.Caption);
    //ExportInExcel(grd1,s,True);
    AppUtils.SimpleExportInExcel(grd1);
  finally
    FreeAndNil(s);
  end;


end;

procedure TRepToPFForm.btn_ExcelClick(Sender: TObject);
begin
  AppUtils.SimpleExportInExcel(grd1);
end;

procedure TRepToPFForm.btn_execClick(Sender: TObject);
begin
  MakeReport;
end;

procedure TRepToPFForm.btn_ExecFactClick(Sender: TObject);
begin
  if dt1.EditValue = null then
     raise EMyException.Create('Укажите дату начала периода!');
  if dt2.EditValue = null then
     raise EMyException.Create('Укажите дату окончания периода!');
  MakeReportFact;
end;

procedure TRepToPFForm.CreateGrid(var Q: TFIBQuery);
var
  C :TcxGridDBBandedColumn;
  i: Integer;
  aFSumName: string;     //сумма
  aFShareName: string;   //доля в ПО
  aFShareAllName: string;//доля от общего объема
begin
  vb1.ClearItems;
  vb1.Bands.Clear;
  i:=0;
  // работы
  AddBand(i,'Виды работ',fkLeft);
    AddColumn('WORKCODE','CODE',60,i,'',skNone,nil,nil,False);
    AddColumn('WORK','Виды работ',120,i);
  // контрагенты
  while not Q.Eof do begin
    aFSumName:='FSUM'+VarToStr(Q.FN('kontragent').AsVariant);
    aFShareName:='FS'+VarToStr(Q.FN('kontragent').AsVariant);
    aFShareAllName:='FSA'+VarToStr(Q.FN('kontragent').AsVariant);
    Inc(i);
    AddBand(i,Q.FN('NAME').AsString);
      AddColumn(aFSumName,'сумма, руб.',80,i,',0.000',skSum);
      AddColumn(aFShareName,'Доля в ПО',80,i,',0.000',skSum);
      AddColumn(aFShareAllName,'Доля от общего объема',80,i,',0.000',skSum);
    Q.Next;
  end;
  vb1.DataController.DataSource:=src_md1;
end;

procedure TRepToPFForm.CreateMem;
var
  Q: TFIBQuery; // запрос для получения контрагентов
  aFSumName: string;     //сумма
  aFShareName: string;   //доля в ПО
  aFShareAllName: string;//доля от общего объема
  i: Integer;
  C :TcxGridDBBandedColumn;
begin
  ClearField(md1);
  try
    if isPlan = true then
    GetPO(Q,msk_Y.EditingValue) else
    GetPOFact(Q);
    //
    vb1.ClearItems;
    vb1.Bands.Clear;
    i:=0;
    // работы
    AddBand(i,'Виды работ',fkLeft);
      AddColumn('WORKCODE','CODE',60,i,'',skNone,nil,nil,False);
      AddColumn('WORK','Виды работ',210,i);
    //
    CreateField(md1,'WORKCODE',ftInteger); //код работы
    CreateField(md1,'WORK',ftString,128);  //наименование работы
    while not Q.Eof do begin
      aFSumName:='FSUM'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareName:='FS'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareAllName:='FSA'+VarToStr(Q.FN('kontragent').AsVariant);
      //
      CreateField(md1,aFSumName,ftBCD);
      CreateField(md1,aFShareName,ftBCD);
      CreateField(md1,aFShareAllName,ftBCD);
      //CreateField(md1,'kontragent',ftInteger);
      // -----------------------------------------------------------------------
      aFSumName:='FSUM'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareName:='FS'+VarToStr(Q.FN('kontragent').AsVariant);
      aFShareAllName:='FSA'+VarToStr(Q.FN('kontragent').AsVariant);
      Inc(i);
      AddBand(i,Q.FN('NAME').AsString);
        //AddColumn(aFSumName,'сумма, руб.',80,i,',0.00',skSum,cred2);
        //AddColumn(aFShareName,'% в ПО',80,i,',0.000',skSum,cred1,stl1);
        //AddColumn(aFShareAllName,'% от общего объема',80,i,',0.000',skSum,cred1,stl2);
        AddColumn(aFSumName,'сумма, руб.',80,i,',0.00;-,0.00',skSum,spn1);
        AddColumn(aFShareName,'% в ПО',80,i,',0.00;-,0.00',skSum,spn1,stl1);
        AddColumn(aFShareAllName,'% от общего объема',80,i,',0.00;-,0.00',skSum,spn1,stl2);
      // -----------------------------------------------------------------------
      Q.Next;
    end;
    CreateField(md1,'SumItog',ftBCD);
    CreateField(md1,'ShareItog',ftBCD);
    //--------------------------------------------------------------------------
    Inc(i);
    AddBand(i,'Итого');
      AddColumn('SumItog','сумма, руб.',80,i,',0.00;-,0.00',skSum,spn1);
      AddColumn('ShareItog','% от итога',80,i,',0.00',skSum,spn1,stl1);
    //--------------------------------------------------------------------------
    md1.Indexes.Add.FieldName:='WORKCODE';
    md1.Open;
    vb1.DataController.DataSource:=src_md1;
    //CreateGrid(Q);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRepToPFForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
  NativeFormat:= True;
end;

procedure TRepToPFForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  GetNativeFormat;
end;
// получаем список контрагентов для формирования бандов
procedure TRepToPFForm.GetPO(var Q: TFIBQuery; const Y: Variant);
begin
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT distinct(tp.kontragent), k.name' + #13#10 +
      'FROM TRPLAN tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'left outer join kontragent k on k.code = tp.kontragent' + #13#10 +
      'where m.matgroupto is not null and tp.y=:y');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('Y').AsVariant:=Y;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetPOFact(var Q: TFIBQuery);
var
  D1, D2: TDateTime;
begin
  GetDateFact(D1,D2);
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT distinct(tp.kontragent), k.name' + #13#10 +
      'FROM TRFACT tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'left outer join kontragent k on k.code = tp.kontragent' + #13#10 +
      'where m.matgroupto is not null and tp.zd between :d1 and :d2');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('d1').AsDate:=D1;
  Q.ParamByName('d2').AsDate:=D2;
  try
    Q.ExecQuery;
  finally

  end;
end;

//получаем данные за год
procedure TRepToPFForm.GetSum(var Q: TFIBQuery; const Y: Variant);
begin
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMY) SUMY' + #13#10 +
      '      ,mg.code, mg.name' + #13#10 +
      '      ,tp.kontragent' + #13#10 +
      'FROM TRPLAN tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'left outer join matgroupto mg on mg.code = m.matgroupto' + #13#10 +
      'where m.matgroupto is not null and tp.y=:y' + #13#10 +
      'group by tp.kontragent, mg.code, mg.name');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('Y').AsVariant:=Y;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetDateFact(var D1, D2: TDateTime);
begin
  D1:= dt1.Date;
  //if dt1.Date = dt2.Date then
     D2:= EndOfTheMonth(dt2.Date);
end;

procedure TRepToPFForm.GetItog;
var
  QPO, QW: TFIBQuery;
  sumW: TStringList;
  sum, sumItog, UnSum: Currency;
  aFSumName: string;     //сумма
  aFShareName: string;   //доля в ПО
  aFShareAllName: string;//доля от общего объема
  i: Integer;
begin
  sumW:=TStringList.Create;
  try
    sumItog:=GetItogSum;
    GetSumByPO(QPO);
    GetSumByWork(QW);
    //непредвиденные
    UnSum:= GetUnSum;
    while not QW.Eof do begin
      sumW.Values[QW.FN('matgroupto').AsString]:=QW.FN('SUMY').AsString;
      if md1.Locate('WORKCODE',QW.FN('matgroupto').AsVariant,[]) then begin
         md1.Edit;
         md1.FieldByName('SumItog').AsFloat:=QW.FN('SUMY').AsFloat;
         if sumItog>0 then
         md1.FieldByName('ShareItog').AsFloat:=(QW.FN('SUMY').AsFloat/sumItog * 100) else
         md1.FieldByName('ShareItog').AsFloat:=0;
         md1.Post;
      end;
      QW.Next;
    end;
    while not QPO.Eof do begin
      aFSumName:='FSUM'+VarToStr(QPO.FN('kontragent').AsVariant);
      aFShareName:='FS'+VarToStr(QPO.FN('kontragent').AsVariant);
      aFShareAllName:='FSA'+VarToStr(QPO.FN('kontragent').AsVariant);
      with md1 do begin
        First;
        while not Eof do begin
          sum:=StrToCurrDef(sumW.Values[FieldByName('WORKCODE').AsString],0);
          //доля в проц. отнош = FieldByName(aFSumName).AsCurrency/ QPO.FN('SUMY').AsCurrency * 100
          Edit;
          if FieldByName(aFSumName).AsFloat>0 then begin
            FieldByName(aFShareName).AsFloat:=
                    (FieldByName(aFSumName).AsFloat/ QPO.FN('SUMY').AsFloat * 100);
            if sum>0 then
            FieldByName(aFShareAllName).AsFloat:=
                                          (FieldByName(aFSumName).AsFloat/(sumItog) * 100);
                                          //FieldByName(aFSumName).AsFloat/sum * 100;
          end else begin
            FieldByName(aFShareName).AsFloat:=0;
            FieldByName(aFShareAllName).AsFloat:=0;
          end;
          Post;
          Next;
        end;
      end;
      QPO.Next;
    end;
    //непредвиденные
    //UnSum:= GetUnSum;
    with md1 do begin
      Append;
      for I := 2 to FieldCount - 1 do
        Fields[i].Value:=0;  //форматирование для нормальной выгрузки в excel
      FieldByName('WORK').AsString:='Непредвиденные работы';
      FieldByName('SumItog').AsVariant:=UnSum;
      Post;
    end;
  finally
    if Assigned(QPO) then
       FreeQueryForUse(QPO);
    if Assigned(QW) then
       FreeQueryForUse(QW);
    sumW.Free;
  end;
end;

procedure TRepToPFForm.GetItogFact;
var
  QPO, QW: TFIBQuery;
  sumW: TStringList;
  sum, sumItog, UnSum: Currency;
  aFSumName: string;     //сумма
  aFShareName: string;   //доля в ПО
  aFShareAllName: string;//доля от общего объема
begin
  sumW:=TStringList.Create;
  try
    sumItog:=GetItogSumFact;
    GetSumByPOFact(QPO);
    GetSumByWorkFact(QW);
    while not QW.Eof do begin
      sumW.Values[QW.FN('matgroupto').AsString]:=QW.FN('SUMMA').AsString;
      if md1.Locate('WORKCODE',QW.FN('matgroupto').AsVariant,[]) then begin
         md1.Edit;
         md1.FieldByName('SumItog').AsVariant:=QW.FN('SUMMA').AsVariant;
         if sumItog>0 then
         md1.FieldByName('ShareItog').AsVariant:=(QW.FN('SUMMA').AsVariant/sumItog * 100) else
         md1.FieldByName('ShareItog').AsVariant:=0;
         md1.Post;
      end;
      QW.Next;
    end;
    while not QPO.Eof do begin
      aFSumName:='FSUM'+VarToStr(QPO.FN('kontragent').AsVariant);
      aFShareName:='FS'+VarToStr(QPO.FN('kontragent').AsVariant);
      aFShareAllName:='FSA'+VarToStr(QPO.FN('kontragent').AsVariant);
      with md1 do begin
        First;
        while not Eof do begin
          sum:=StrToCurrDef(sumW.Values[FieldByName('WORKCODE').AsString],0);
          //доля в проц. отнош = FieldByName(aFSumName).AsCurrency/ QPO.FN('SUMY').AsCurrency * 100
          Edit;
          if FieldByName(aFSumName).AsVariant>0 then begin
            FieldByName(aFShareName).AsVariant:=
                    (FieldByName(aFSumName).AsVariant/ QPO.FN('SUMMA').AsVariant * 100);
            if sum>0 then
            FieldByName(aFShareAllName).AsVariant:=
                                          (FieldByName(aFSumName).AsVariant/sumItog * 100);
          end else begin
            FieldByName(aFShareName).AsVariant:=0;
            FieldByName(aFShareAllName).AsVariant:=0;
          end;
          Post;
          Next;
        end;
      end;
      QPO.Next;
    end;
    //непредвиденные
    //UnSum:= GetUnSum;
   // with md1 do begin
   //   Append;
   //   FieldByName('WORK').AsString:='Непредвиденные работы';
   //   FieldByName('SumItog').AsCurrency:=UnSum;
   //   Post;
   // end;
  finally
    if Assigned(QPO) then
       FreeQueryForUse(QPO);
    if Assigned(QW) then
       FreeQueryForUse(QW);
    sumW.Free;
  end;
end;

function TRepToPFForm.GetItogSum: Currency;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMY) SUMY' + #13#10 +
      'FROM TRPLAN tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.y=:y');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('Y').AsVariant:=msk_Y.EditingValue;
  try
    Q.ExecQuery;
    Result:=Q.FN('SUMY').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TRepToPFForm.GetItogSumFact: Currency;
var
  Q: TFIBQuery;
  D1, D2: TDateTime;
begin
  GetDateFact(D1, D2);
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMMA) SUMMA' + #13#10 +
      'FROM TRFACT tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.zd between :d1 and :d2' + #13 +
      #10 + '      and tp.state =5');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  try
    Q.ExecQuery;
    Result:=Q.FN('SUMMA').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRepToPFForm.GetNativeFormat;
var
  ini :TIniFile;
  FileName: string;
begin
  FileName:=ExtractFilePath(Application.ExeName)+'config\conf.ini';
  if FileExists(FileName) then
  begin
    Ini := TIniFile.Create(FileName);
    try
      if ini.ReadInteger('FormOptions','NativeFormat',0)=1 then
      NativeFormat:=true else
      NativeFormat:=false;
    finally
      ini.Free;
    end;
  end;
end;

procedure TRepToPFForm.GetSumByPO(var Q: TFIBQuery);
begin
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMY) SUMY ,tp.kontragent' + #13#10 +
      'FROM TRPLAN tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.y=:y' + #13#10 +
      'group by tp.kontragent');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('Y').AsVariant:=msk_Y.EditingValue;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetSumByPOFact(var Q: TFIBQuery);
var
  D1, D2: TDateTime;
begin
  GetDateFact(D1, D2);
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.Summa) Summa ,tp.kontragent' + #13#10 +
      'FROM TRFACT tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.zd between :d1 and :d2' + #13 +
      #10 + '      and tp.state=5' + #13#10 +
      'group by tp.kontragent');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetSumByWork(var Q: TFIBQuery);
begin
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMY) SUMY, m.matgroupto' + #13#10 +
      'FROM TRPLAN tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.y=:y' + #13#10 +
      'group by m.matgroupto');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('Y').AsVariant:=msk_Y.EditingValue;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetSumByWorkFact(var Q: TFIBQuery);
var
  D1, D2: TDateTime;
begin
  GetDateFact(D1, D2);
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.SUMMA) SUMMA, m.matgroupto' + #13#10 +
      'FROM TRFACT tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'where m.matgroupto is not null and tp.ZD between :d1 and :d2' + #13 +
      #10 + '      and tp.state=5  ' + #13#10 +
      'group by m.matgroupto');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  try
    Q.ExecQuery;
  finally

  end;
end;

procedure TRepToPFForm.GetSumFact(var Q: TFIBQuery);
var
  D1, D2: TDateTime;
begin
  GetDateFact(D1, D2);
  Q:= GetQueryForUse(cmDB.RT,
      'SELECT sum(tp.Summa) Summa' + #13#10 +
      '      ,mg.code, mg.name' + #13#10 +
      '      ,tp.kontragent' + #13#10 +
      'FROM TRFACT tp' + #13#10 +
      'left outer join mlist m on m.code=tp.mlist' + #13#10 +
      'left outer join matgroupto mg on mg.code = m.matgroupto' + #13#10 +
      'where m.matgroupto is not null and tp.zd between :d1 and :d2' + #13 +
      #10 + 'group by tp.kontragent, mg.code, mg.name');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('D1').AsDate:=D1;
  Q.ParamByName('D2').AsDate:=D2;
  try
    Q.ExecQuery;
  finally

  end;
end;

function TRepToPFForm.GetUnSum: Currency;
var
  Q: TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
     'SELECT sum(tp.SUMY) SUMY' + #13#10 +
    'FROM TRPLAN tp  where tp.mlist=1 and tp.y=:y');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Y').AsVariant:=msk_Y.EditingValue;
    Q.ExecQuery;
    if VarIsType(Q.FN('SUMY').AsVariant,[0,1]) then
      Result:=0 else
      Result:=Q.FN('SUMY').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRepToPFForm.MakeReport;
begin
  vb1.BeginUpdate(lsimImmediate);
  try
    isPlan:=True; //формируется план
    CreateMem;
    AddData;
  finally
    vb1.EndUpdate;
  end;
end;

procedure TRepToPFForm.MakeReportFact;
begin
  vb1.BeginUpdate(lsimImmediate);
  try
    isPlan:=false; //формируется факт
    CreateMem;
    AddData;
  finally
    vb1.EndUpdate;
  end;
end;

initialization
 RegisterClass(TRepToPFForm);
end.













