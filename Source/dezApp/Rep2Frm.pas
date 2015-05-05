unit Rep2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, dxmdaset, cxGridLevel, cxClasses,
  Winapi.ShellAPI,
  FIBQuery, pFIBCacheQueries, pFIBProps,  cxGridExportLink, cxExport,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSpinEdit, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle, frxClass,
  frxDBSet, frxExportRTF, frxExportXLS, cxEditRepositoryItems, dxSkinVS2010;

type
  TRep2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    gr1: TdxLayoutGroup;
    gr2: TdxLayoutGroup;
    cbb_m1: TcxComboBox;
    itm_m1: TdxLayoutItem;
    itm_y1: TdxLayoutItem;
    itm_m2: TdxLayoutItem;
    itm_y2: TdxLayoutItem;
    msk_y1: TcxMaskEdit;
    cbb_m2: TcxComboBox;
    msk_y2: TcxMaskEdit;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    m1: TdxMemData;
    src_m1: TDataSource;
    vb1: TcxGridDBBandedTableView;
    clvb1Num: TcxGridDBBandedColumn;
    clvb1NAME: TcxGridDBBandedColumn;
    clvb1PLAN: TcxGridDBBandedColumn;
    clvb1FACT: TcxGridDBBandedColumn;
    clvb1RB: TcxGridDBBandedColumn;
    clvb1PROC: TcxGridDBBandedColumn;
    btn_print: TcxButton;
    itmlc1Item1: TdxLayoutItem;
    frep1: TfrxReport;
    frds1: TfrxDBDataset;
    xlsexp1: TfrxXLSExport;
    rtfexp1: TfrxRTFExport;
    btn_Excel: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    dlgSave1: TSaveDialog;
    Repository1: TcxEditRepository;
    ritm1: TcxEditRepositoryCalcItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    sumPlanH,sumFactH,sumPlanUn,sumFactUn,sumRu,sumProc,
    sumRuUn,sumProcUn :Variant;
    procedure CreateMem;
		{$REGION 'doc'}
		///<summary>получаем заголовки документов за указанный период</summary>
		{$ENDREGION}
    function GetPBDRHead(srv :Variant) :Variant;
    function GetFBDRHead(srv :Variant) :Variant;
		{$REGION 'doc'}
		///<summary>преобразуем период в даты</summary>
		{$ENDREGION}
    procedure GetPeriod(var d1, d2 :Variant);
    procedure GetData;
    function GetFName(num :Variant) :Variant;
    procedure AddHousing(num :Variant);
    procedure AddUninhabited(num :variant);
    function GetSrv(num :Variant) :Variant;
    procedure ClearSum;
    procedure Itog;
    procedure SumByRec;
  public
    { Public declarations }
  end;

var
  Rep2Form: TRep2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TRep2Form.AddHousing(num: Variant);
var
  Q :TFIBQuery;
  srv :Variant;
  doc :string;
  procedure AddPlan;
  var
    Q :TFIBQuery;
  begin
    Doc:=VarToStr(GetPBDRHead(srv));
    if doc='' then Exit;
    Q:=GetQueryForUse(cmdb.RT,
              'select ' + #13#10 +
              'from  @@table_clause@');
    case num of
      1 : begin
            Q.FieldsClause:='sum(F8) pl';
            Q.Params[0].AsString:='pbdr2';
            Q.MainWhereClause:='pbdr in('+doc+')';
          end;
      5 : begin
            Q.FieldsClause:='sum(F11) pl';
            Q.Params[0].AsString:='pbdr3';
            Q.MainWhereClause:='pbdr in('+doc+')';
          end;
      else  begin
             Q.FieldsClause:='sum(F8) pl';
             Q.Params[0].AsString:='pbdr1';
             Q.MainWhereClause:='pbdr in('+doc+')';
            end;
    end;
    try
      Q.ExecQuery;
      m1.Append;
      m1.FieldByName('Num').AsVariant:=' ';
      m1.FieldByName('NAME').AsVariant:='жилой фонд';
      m1.FieldByName('PLAN').AsCurrency:=Q.FN('pl').AsCurrency;
      sumPlanH:=sumPlanH+Q.FN('pl').AsCurrency;
      m1.Post;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  //
  procedure AddFact;
  var
    Q :TFIBQuery;
  begin
    Doc:=VarToStr(GetFBDRHead(srv));
    if doc='' then Exit;

    Q:=GetQueryForUse(cmdb.RT,
              'select ' + #13#10 +
              'from  @@table_clause@');
    case num of
      1 : begin
            Q.FieldsClause:='sum(F19) pl';
            Q.Params[0].AsString:='fbdr2';
            Q.MainWhereClause:='fbdr in('+doc+')';
          end;
      5 : begin
            Q.FieldsClause:='sum(F18) pl';
            Q.Params[0].AsString:='fbdr3';
            Q.MainWhereClause:='fbdr in('+doc+')';
          end;
      else  begin
            Q.FieldsClause:='sum(F14) pl';
            Q.Params[0].AsString:='fbdr1';
            Q.MainWhereClause:='fbdr in('+doc+')';
            end;
    end;
    try
      Q.ExecQuery;
      m1.Edit;
      m1.FieldByName('FACT').AsCurrency:=Q.FN('pl').AsCurrency;
      sumFactH:=sumFactH+Q.FN('pl').AsCurrency;
      m1.Post;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  procedure Correct;
  begin
    with m1 do begin
      Edit;
      FieldByName('RB').AsCurrency:=FieldByName('FACT').AsCurrency -
                                    FieldByName('PLAN').AsCurrency;
      if FieldByName('PLAN').AsCurrency=0 then
      FieldByName('PROC').AsVariant:=0 else
      FieldByName('PROC').AsVariant:=
       ((m1.FieldByName('FACT').AsCurrency - m1.FieldByName('PLAN').AsCurrency) /
          m1.FieldByName('PLAN').AsCurrency) * 100;
      Post;
      sumRu:=sumRu+FieldByName('RB').AsCurrency;
      sumProc:=sumProc+FieldByName('PROC').AsVariant;
    end;
  end;
begin
  srv:=GetSrv(num);
  AddPlan;
  AddFact;
  Correct;
end;

procedure TRep2Form.AddUninhabited(num: variant);
var
  Q :TFIBQuery;
  srv :Variant;
  doc :string;
  procedure AddPlan;
  var
    Q :TFIBQuery;
  begin
    Doc:=VarToStr(GetPBDRHead(srv));
    if doc='' then Exit;

    Q:=GetQueryForUse(cmdb.RT,
              'select ' + #13#10 +
              'from  @@table_clause@');
    case num of
      1 : begin
              Q.FieldsClause:='sum(F18) pl';
              Q.Params[0].AsString:='pbdr2';
              Q.MainWhereClause:='pbdr in('+doc+')';
          end;
      5 : begin
            Q.FieldsClause:='sum(F20) pl';
            Q.Params[0].AsString:='pbdr3';
            Q.MainWhereClause:='pbdr in('+doc+')';
          end;
      else  begin
            Q.FieldsClause:='sum(F13) pl';
            Q.Params[0].AsString:='pbdr1';
            Q.MainWhereClause:='pbdr in('+doc+')';
            end;
    end;
    try
      if Num<>7 then
      begin
        Q.ExecQuery;
        m1.Append;
        m1.FieldByName('Num').AsVariant:=' ';
        m1.FieldByName('NAME').AsVariant:='нежилой фонд';
        m1.FieldByName('PLAN').AsCurrency:=Q.FN('pl').AsCurrency;
        m1.Post;
        sumPlanUn:=sumPlanUn+ m1.FieldByName('PLAN').AsCurrency;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  //
  procedure AddFact;
  var
    Q :TFIBQuery;
  begin
    Doc:=VarToStr(GetFBDRHead(srv));
    if doc='' then Exit;
    Q:=GetQueryForUse(cmdb.RT,
              'select ' + #13#10 +
              'from  @@table_clause@');
    case num of
      1 : begin
            Q.FieldsClause:='sum(F15) pl';
            Q.Params[0].AsString:='fbdr2';
            Q.MainWhereClause:='fbdr in('+doc+')';
          end;
      5 : begin
            Q.FieldsClause:='sum(F19) pl';
            Q.Params[0].AsString:='fbdr3';
            Q.MainWhereClause:='fbdr in('+doc+')';
          end;
      else  begin
            Q.FieldsClause:='sum(F23) pl';
            Q.Params[0].AsString:='fbdr1';
            Q.MainWhereClause:='fbdr in('+doc+')';
            end;
    end;
    try
      if Num<>7 then
      begin
        Q.ExecQuery;
        m1.Edit;
        m1.FieldByName('FACT').AsCurrency:=Q.FN('pl').AsCurrency;
        m1.Post;
        sumFactUn:=sumFactUn+m1.FieldByName('FACT').AsCurrency;
      end;
    finally
      FreeQueryForUse(Q);
    end;
  end;

  procedure Correct;
  begin
    with m1 do begin
      Edit;
      FieldByName('RB').AsCurrency:=FieldByName('FACT').AsCurrency -
                                    FieldByName('PLAN').AsCurrency;

      if FieldByName('PLAN').AsCurrency=0 then
      FieldByName('PROC').AsVariant:=0 else
      FieldByName('PROC').AsVariant:=
       ((FieldByName('FACT').AsCurrency - FieldByName('PLAN').AsCurrency) /
          FieldByName('PLAN').AsCurrency) * 100;
      Post;
      sumRuUn:=sumRuUn+FieldByName('RB').AsCurrency;
      sumProcUn:=sumProcUn+FieldByName('PROC').AsVariant;
    end;
  end;
begin
  srv:=GetSrv(num);
  AddPlan;
  AddFact;
  Correct;
end;

procedure TRep2Form.btn_ExcelClick(Sender: TObject);
begin
  if dlgSave1.Execute then begin
     ExportGridToExcel(dlgSave1.FileName, grd1);
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(dlgSave1.FileName), nil, nil, SW_SHOWMAXIMIZED);
        end;
  end;
end;

procedure TRep2Form.btn_execClick(Sender: TObject);
begin
  GetData;
end;

procedure TRep2Form.btn_printClick(Sender: TObject);
var
  procH, ProcUn: Currency;
begin
  with frep1 do begin
    LoadFromFile(ExtractFilePath(Application.ExeName)+'rep/rep2.fr3',true);
  //variables
    Variables['M1']:= #39+cbb_m1.Text+#39;
    Variables['Y1']:= #39+msk_y1.Text+#39;
    Variables['M2']:= #39+cbb_m2.Text+#39;
    Variables['Y2']:= #39+msk_y2.Text+#39;

    Variables['sumPlan']:= sumPlanH+sumPlanUn;
    Variables['sumFact']:= sumFactH+sumFactUn;
    Variables['sumRuAll']:= sumRu+sumRuUn;
    Variables['sumProcAll']:=
      (((sumFactH+sumFactUn)-(sumPlanH+sumPlanUn))/(sumPlanH+sumPlanUn))*100;

    Variables['sumPlanH']:= sumPlanH;
    Variables['sumPlanUn']:= sumPlanUn;
    Variables['sumFactH']:= sumFactH;
    Variables['sumFactUn']:= sumFactUn;
    Variables['sumRu']:= sumRu;
    Variables['sumRuUn']:= sumRuUn;
    procH:= ((sumFactH -sumPlanH)/sumPlanH)*100;
    Variables['sumProc']:= procH;
    ProcUn:= ((sumFactUn - sumPlanUn)/sumPlanUn)*100;
    Variables['sumProcUn']:= ProcUn;
  //
    ShowReport();
  end;
  Itog;
end;

procedure TRep2Form.ClearSum;
begin
  sumPlanH:=0;
  sumFactH:=0;
  sumPlanUn:=0;
  sumFactUn:=0;
  sumRu:=0;
  sumRuUn:= 0;
  sumProc:=0;
  sumProcUn:= 0;
end;

procedure TRep2Form.CreateMem;
begin
  CreateField(m1,'Num',ftString,6);
  CreateField(m1,'NAME',ftString,256);
  CreateField(m1,'PLAN',ftBCD);
  CreateField(m1,'FACT',ftBCD);
  CreateField(m1,'RB',ftBCD);
  CreateField(m1,'PROC',ftBCD);
  m1.Open;
end;

procedure TRep2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TRep2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;


procedure TRep2Form.GetData;
var
  i :integer;
begin
  m1.close;
  m1.Open;
  ClearSum;
  vb1.BeginUpdate(lsimImmediate);
  try
    with m1 do begin
      for i :=1 to 8 do begin
        Append;
        FieldByName('Num').AsVariant:=IntToSTr(i);
        FieldByName('NAME').AsVariant:=GetFName(i);
        Post;
        AddHousing(i); //жилой фонд
        AddUninhabited(i); //нежилой фонд
      end;
    end;

  finally
    vb1.EndUpdate;
    Itog;
    //vb1.ApplyBestFit();
  end;
end;

function TRep2Form.GetFBDRHead(srv :Variant): Variant;
var
  D1, D2 :Variant;
  Q :TFIBQuery;
begin
  GetPeriod(d1,d2);
  Q:=GetQueryForUse(cmDB.RT,
      'select list(code,'','') code from fbdr' + #13#10 +
      'where cast((''01.''||m||''.''||Y) as date) between :d1 and :d2' + #13 +
      #10 + 'and housesrv = :srv');
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  Q.ParamByName('srv').AsVariant:=srv;
  try
    Q.ExecQuery;
    Result:=Q.FN('code').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

function TRep2Form.GetFName(num: Variant): Variant;
begin
  case num of
    1 : Result:='Содержание и ремонт';
    2 : Result:='Уборка двора';
    3 : Result:='Уборка МОП';
    4 : Result:='Уборка мусоропровода';
    5 : Result:='Лифт';
    6 : Result:='ВДГО';
    7 : Result:='Вывоз ТБО';
    8 : Result:= 'Обслуживание и поверка ОПУ';
  end;
end;

function TRep2Form.GetPBDRHead(srv :Variant): Variant;
var
  D1, D2 :Variant;
  Q :TFIBQuery;
begin
  GetPeriod(d1,d2);
  Q:=GetQueryForUse(cmDB.RT,
      'select list(code,'','') code from pbdr' + #13#10 +
      'where cast((''01.''||m||''.''||Y) as date) between :d1 and :d2' + #13 +
      #10 + 'and housesrv = :srv');
  Q.ParamByName('d1').AsVariant:=d1;
  Q.ParamByName('d2').AsVariant:=d2;
  Q.ParamByName('srv').AsVariant:=srv;
  try
    Q.ExecQuery;
    Result:=Q.FN('code').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRep2Form.GetPeriod(var d1, d2: Variant);
begin
  d1:=StrToDate('01.'+VarToStr(cbb_m1.ItemIndex)+'.'+msk_y1.Text);
  d2:=StrToDate('01.'+VarToStr(cbb_m2.ItemIndex)+'.'+msk_y2.Text);
end;

function TRep2Form.GetSrv(num: Variant): Variant;
begin
  case num of
    1: Result:=6;
    4: Result:=9;
    5: Result:=8;
    6: Result:=5;
    7: Result:=1;
    8: Result:= 14;
    else Result:=num;
  end;
end;

procedure TRep2Form.Itog;
var
  proc, procH, ProcUn: Currency;
begin
  SumByRec;
  with vb1.DataController.Summary do begin
    FooterSummaryValues[0]:='Итого:';
    FooterSummaryValues[1]:='жилой фонд';
    FooterSummaryValues[2]:='нежилой фонд';
    FooterSummaryValues[3]:=FormatFloat(',0.00', sumPlanH+sumPlanUn);
    FooterSummaryValues[6]:=FormatFloat(',0.00', sumFactH+sumFactUn);
    FooterSummaryValues[7]:=FormatFloat(',0.00', sumRu+sumRuUn);
    if (sumPlanH+sumPlanUn)>0 then
      proc:= (((sumFactH+sumFactUn)-(sumPlanH+sumPlanUn))/(sumPlanH+sumPlanUn))*100;
    FooterSummaryValues[8]:=FormatFloat(',0.00', proc);
    FooterSummaryValues[4]:=FormatFloat(',0.00', sumPlanH);
    FooterSummaryValues[5]:=FormatFloat(',0.00', sumPlanUn);
    FooterSummaryValues[9]:=FormatFloat(',0.00', sumFactH);
    FooterSummaryValues[10]:=FormatFloat(',0.00', sumFactUn);
    FooterSummaryValues[11]:=FormatFloat(',0.00', sumRu);
    FooterSummaryValues[12]:=FormatFloat(',0.00', sumRuUn);
    if (sumPlanH > 0) then
      procH:= ((sumFactH -sumPlanH)/sumPlanH)*100;
    FooterSummaryValues[13]:=FormatFloat(',0.00', procH);
    if (sumPlanUn > 0) then
      ProcUn:= ((sumFactUn - sumPlanUn)/sumPlanUn)*100;
    FooterSummaryValues[14]:=FormatFloat(',0.00', ProcUn);
  end;
end;

procedure TRep2Form.SumByRec;
var
  plan, fact, rub, proc: Variant;
  //
  procedure ClearVariables;
  begin
    plan:= 0; fact:=0; rub:=0; proc:=0;
  end;

  procedure SetSum;
  begin
    // устанавливаем суммы
    m1.Edit;
    m1.FieldByName('PLAN').AsVariant:= plan;
    m1.FieldByName('FACT').AsVariant:= fact;
    m1.FieldByName('RB').AsVariant:= rub;
    if plan <> 0 then
    m1.FieldByName('PROC').AsVariant:= ((fact-plan)/plan)*100 else
    m1.FieldByName('PROC').AsVariant:= 0;
    m1.Post;
    // очищаем переменные
    ClearVariables;
  end;

begin
  m1.DisableControls;
  try
    with m1 do begin
      Last;
      ClearVariables;
      repeat
        if Trim(m1.FieldByName('NUM').AsString)<> '' then
           SetSum else
        begin
          plan:=plan+ m1.FieldByName('PLAN').AsCurrency;
          fact:= fact+ m1.FieldByName('FACT').AsCurrency;
          rub:= rub+ m1.FieldByName('RB').AsCurrency;
          proc:= proc + m1.FieldByName('PROC').AsInteger;
        end;
        Prior;
      until (m1.RecNo = 1);
      SetSum; //последний проход
    end;
  finally
    m1.EnableControls;
  end;
end;

procedure TRep2Form.vb1StylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  out AStyle: TcxStyle);
begin
 //if not VarIsNULL(ARecord.Values[clvb1Num.Index]) then
 //  AStyle := cmDb.stl_blue;
end;

initialization
 RegisterClass(TRep2Form);
end.


