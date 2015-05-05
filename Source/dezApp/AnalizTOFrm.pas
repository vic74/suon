unit AnalizTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons, FIBDataSet,
  pFIBDataSet, dxmdaset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxMaskEdit, cxTextEdit, cxDropDownEdit, cxCalc, cxCurrencyEdit, FIBDataBase,
  cxDBLookupComboBox, cxRadioGroup, cxProgressBar, cxMemo, cxSplitter,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TAnalizTOForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    SmetaGroup: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item14: TdxLayoutItem;
    src_m1: TDataSource;
    ds1: TpFIBDataSet;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item15: TdxLayoutItem;
    clv2SDNOMER: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    ds_HouseYear: TpFIBDataSet;
    src_HouseYear: TDataSource;
    ScaleProcPanel: TdxLayoutGroup;
    ScaleGroup: TdxLayoutGroup;
    ced1: TcxCalcEdit;
    lc1Item1: TdxLayoutItem;
    ced2: TcxCalcEdit;
    lc1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    lc1Item3: TdxLayoutItem;
    v1Column1: TcxGridDBColumn;
    v1Column2: TcxGridDBColumn;
    v1Column3: TcxGridDBColumn;
    v1Column4: TcxGridDBColumn;
    ds_dog: TpFIBDataSet;
    SrcDog: TDataSource;
    ds_Srv: TpFIBDataSet;
    srcSrv: TDataSource;
    ExecuteGroup: TdxLayoutGroup;
    Memo: TcxMemo;
    MemoItem: TdxLayoutItem;
    ProgressBar: TcxProgressBar;
    ProgressItem: TdxLayoutItem;
    lc1Group4: TdxLayoutGroup;
    lc1Group5: TdxLayoutGroup;
    cxSplitter1: TcxSplitter;
    lc1SplitterItem2: TdxLayoutSplitterItem;
    MonthEdit: TcxComboBox;
    lc1Item4: TdxLayoutItem;
    YearEdit: TcxCalcEdit;
    lc1Item5: TdxLayoutItem;
    BDR1: TcxCheckBox;
    lc1Item6: TdxLayoutItem;
    BDR2: TcxCheckBox;
    lc1Item7: TdxLayoutItem;
    BDR3: TcxCheckBox;
    lc1Item8: TdxLayoutItem;
    cxButton2: TcxButton;
    lc1Item9: TdxLayoutItem;
    T: TdxMemData;
    TabGroup: TdxLayoutGroup;
    SumSmetaBtn: TcxButton;
    lc1Item10: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    ds_HOUSESRV: TpFIBDataSet;
    src__HOUSESRV: TDataSource;
    clv2HouseSrv: TcxGridDBColumn;
    DataTab: TdxLayoutGroup;
    v2Column1: TcxGridDBColumn;
    lc1Group1: TdxLayoutGroup;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    Grid3: TcxGrid;
    lc1Item11: TdxLayoutItem;
    src_Smeta: TDataSource;
    SmetaBtn: TcxButton;
    lc1Item12: TdxLayoutItem;
    v3_StreetName: TcxGridDBColumn;
    v3_Nomer: TcxGridDBColumn;
    v3_DU: TcxGridDBColumn;
    v3GP: TcxGridDBColumn;
    v3NGP: TcxGridDBColumn;
    v3AllP: TcxGridDBColumn;
    v3AllSum: TcxGridDBColumn;
    cxButton3: TcxButton;
    lc1Item13: TdxLayoutItem;
    cxButton4: TcxButton;
    lc1Item14: TdxLayoutItem;
    ds_Smeta: TpFIBDataSet;
    v2Column2: TcxGridDBColumn;
    v2Column3: TcxGridDBColumn;
    v2Column4: TcxGridDBColumn;
    lc1Group2: TdxLayoutGroup;
    cxButton5: TcxButton;
    lc1Item15: TdxLayoutItem;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    Grid4: TcxGrid;
    lc1Item16: TdxLayoutItem;
    ds_BDRScan1: TpFIBDataSet;
    src_BDRScan1: TDataSource;
    v4IsDog: TcxGridDBColumn;
    v4StreetName: TcxGridDBColumn;
    v4HouseNomer: TcxGridDBColumn;
    v4DUName: TcxGridDBColumn;
    v4Balans1: TcxGridDBColumn;
    v4Nach: TcxGridDBColumn;
    v4Rash: TcxGridDBColumn;
    v4Balans2: TcxGridDBColumn;
    Proc: TcxCurrencyEdit;
    lc1Item17: TdxLayoutItem;
    v4Smeta: TcxGridDBColumn;
    lc1Group3: TdxLayoutGroup;
    lc1Item18: TdxLayoutItem;
    Grid5: TcxGrid;
    v5: TcxGridDBTableView;
    v5IsDog: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    v5HouseNomer: TcxGridDBColumn;
    v5DUName: TcxGridDBColumn;
    v5Balans1: TcxGridDBColumn;
    v5Nach: TcxGridDBColumn;
    v5Rash: TcxGridDBColumn;
    v5Balans2: TcxGridDBColumn;
    l5: TcxGridLevel;
    ds_BDRScan2: TpFIBDataSet;
    src_BDRScan2: TDataSource;
    src_BDRScan3: TDataSource;
    ds_BDRScan3: TpFIBDataSet;
    v5TO1: TcxGridDBColumn;
    v5TO2: TcxGridDBColumn;
    v5TR: TcxGridDBColumn;
    lc1Group6: TdxLayoutGroup;
    lc1Item19: TdxLayoutItem;
    Grid6: TcxGrid;
    v6: TcxGridDBTableView;
    v6IsDog: TcxGridDBColumn;
    v6StreetName: TcxGridDBColumn;
    v6HouseNomer: TcxGridDBColumn;
    v6DUName: TcxGridDBColumn;
    v6Balans1: TcxGridDBColumn;
    v6Nach: TcxGridDBColumn;
    v6Rash: TcxGridDBColumn;
    v6Balans2: TcxGridDBColumn;
    v6TOb_: TcxGridDBColumn;
    v6TR_: TcxGridDBColumn;
    l6: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ScaleProcPanelCollapsed(Sender: TObject);
    procedure ScaleProcPanelExpanded(Sender: TObject);
    procedure SmetaGroupCollapsed(Sender: TObject);
    procedure SmetaGroupExpanded(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure SumSmetaBtnClick(Sender: TObject);
    procedure ds1NewRecord(DataSet: TDataSet);
    procedure SmetaBtnClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure clv2HouseSrvPropertiesEditValueChanged(Sender: TObject);
  private
    procedure OpenShablonDataSet;
    procedure Msg(S: string);
    procedure Progress(Count, Poz: integer);
  public
    { Public declarations }
  end;

var
  AnalizTOForm: TAnalizTOForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, dezMakeBDR, cmLoadDataSet,
     FIBQuery, BkpDoc, Bkp1Doc;

{$R *.dfm}

procedure TAnalizTOForm.clv2HouseSrvPropertiesEditValueChanged(Sender: TObject);
begin
  //v2.DataController.Post;
end;

procedure TAnalizTOForm.cxButton1Click(Sender: TObject);
begin
  SplashVisibility(true,'Подождите');
  v1.BeginUpdate;
  try
    with ds_HouseYear do
    begin
      First;
      while not Eof do begin
        Edit;
        FN('SR').AsVariant:=FN('SR').AsVariant+ced1.EditValue;
        FN('ER').AsVariant:=FN('ER').AsVariant+ced2.EditValue;
        Post;
        Next;
      end;
      CloseOpen(false);
    end;
  finally
    v1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure TAnalizTOForm.cxButton2Click(Sender: TObject);
var
  Obj: TbdrBuilder;
  Obj1: TbdrLoader;

  procedure MakeBDR(Srv: string);
  begin
    //формирование
    Obj:=TbdrBuilder.Create(MonthEdit.ItemIndex+1, YearEdit.EditValue, Srv);
    Obj.OnMessage:=Msg;
    Obj.OnProgress:=Progress;
    try
      Obj.Execute(T);
    finally
      Obj.Free;
    end;
    //сохранение
    Obj1:=TbdrLoader.Create(MonthEdit.ItemIndex+1, YearEdit.EditValue, 0, StrToInt(Srv));
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
  TabGroup.ItemIndex:=0; //переходим на закладку информации
  Memo.Clear;
  if BDR1.Checked then
  begin
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
  end;

  if BDR2.Checked then
  begin
    Msg(' ');
    Msg('БДР2. Обслуживание и ремонт.');
    MakeBDR('6');
  end;

  if BDR3.Checked then
  begin
    Msg(' ');
    Msg('БДР3. Лифт.');
    MakeBDR('8');
  end;
end;


procedure TAnalizTOForm.cxButton3Click(Sender: TObject);
begin
  v2.OptionsSelection.CellSelect:=not v2.OptionsSelection.CellSelect;
end;

procedure TAnalizTOForm.cxButton4Click(Sender: TObject);
var
  smeta :TBkpObj;
  SrvDog, HouseSrv, ASrv: integer;
begin
  SrvDog:=gFN(v2, 'SrvDog');
  if SrvDog=0 then Exit;
  HouseSrv:=gFN(v2, 'HouseSrv');
  ASrv:=gFN(v2, 'Srv');

  smeta:=TBkpObj.Create;
  try
      smeta.Y:= YearEdit.EditValue;
      smeta.M:= MonthEdit.ItemIndex+1;
      if HouseSrv>0 then
      begin
        smeta.SRV:= HouseSrv;
        smeta.srvName:= gFN(v2, 'HouseSrvName');;
      end
      else
      begin
        smeta.SRV:=ASrv;
        smeta.srvName:= gFN(v2, 'SrvName');;
      end;
      smeta.kontr:= gFN(v2, 'KontragentName');
      smeta.Dog:= SrvDog;
    if HouseSrv>0 then
    begin
      smeta.PrintSmetaBDR1;
    end else
    begin
      case ASrv of
        0 :  smeta.PrintSmetaBDR2;
        1 :  smeta.PrintSmetaBDR2;
        5 :  smeta.PrintSmetaBDR2;
        6 :  smeta.PrintSmetaBDR2;
        //
        2 :  smeta.PrintSmetaBDR3;
        7 :  smeta.PrintSmetaBDR3;
        12 : smeta.PrintSmetaBDR3;
      end;
    end;
  finally
    smeta.Free;
  end;
end;

procedure TAnalizTOForm.cxButton5Click(Sender: TObject);
var
  SrvDog, HouseSrv,Srv: integer;
  S: string;
  DS: TpFIBDataSet;
begin
  //получаем код сметы и тип сметы по шаблону
  SrvDog:=gFN(v2, 'SrvDog');
  if SrvDog=0 then Exit;
  HouseSrv:=gFN(v2, 'HouseSrv');
  Srv:=gFN(v2, 'Srv');
  //формируем SQL запрос
  S:='';
  if HouseSrv>0 then
  begin
    S:='select * from SmetaBDR1Test('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(HouseSrv)+','+FormatFloat('0.##', Proc.Value)+
      ') order by DUName,StreetName,HouseNomer';
    DS:=ds_BDRScan1;
   TabGroup.ItemIndex:=2;
  end;
  if Srv in [5,6] then
  begin
    S:='select * from SmetaBDR2Test('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(Srv)+') order by DUName,StreetName,HouseNomer';
    DS:=ds_BDRScan2;
    TabGroup.ItemIndex:=3;
  end;
  if Srv in [2,7,12] then
  begin
    S:='select * from SmetaBDR3Test('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(Srv)+') order by DUName,StreetName,HouseNomer';
    DS:=ds_BDRScan3;
    TabGroup.ItemIndex:=4;
  end;
  if S='' then Exit;
  DS.Close;
  DS.SQLs.SelectSQL.Text:=S;
  Screen.Cursor:=crSQLWait;
  DS.Open;
  Screen.Cursor:=crDefault;
end;

procedure TAnalizTOForm.ds1NewRecord(DataSet: TDataSet);
begin
   ds1.FN('Code').AsString:=cmDB.GetSQLValue('select gen_id(MakeSmetaShablon_gen, 1) from rdb$Database');
   ds1.FN('HouseSrv').AsInteger:=-1;
   ds1.FN('Srv').AsInteger:=-1;
   v2.GetColumnByFieldName('SrvDog').Focused:=true;
end;

procedure TAnalizTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TAnalizTOForm.FormCreate(Sender: TObject);
var
  D,M,Y: word;
begin
  DecodeDate(Date,Y,M,D);
  YearEdit.EditValue:=Y;
  ds_HouseYear.Open;
  ds_dog.Open;
  ds_Srv.Open;
  ds_HouseSrv.Open;
  OpenShablonDataSet;
  LoadForm(prop1,Self.Name);
end;


procedure TAnalizTOForm.ScaleProcPanelCollapsed(Sender: TObject);
begin
  ScaleProcPanel.CaptionOptions.Text:='';
end;

procedure TAnalizTOForm.ScaleProcPanelExpanded(Sender: TObject);
begin
  ScaleProcPanel.CaptionOptions.Text:='Редактирование шкалы';
end;

procedure TAnalizTOForm.SmetaBtnClick(Sender: TObject);
var
  SrvDog, HouseSrv,Srv: integer;
  S: string;
begin
  TabGroup.ItemIndex:=1;
  //получаем код сметы и тип сметы по шаблону
  SrvDog:=gFN(v2, 'SrvDog');
  if SrvDog=0 then Exit;
  HouseSrv:=gFN(v2, 'HouseSrv');
  Srv:=gFN(v2, 'Srv');
  //формируем SQL запрос
  S:='';
  if HouseSrv>0 then
    S:='select * from SmetaBDR1('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(HouseSrv)+','+FormatFloat('0.##', Proc.Value)+
      ') order by DUName,StreetName,HouseNomer';
  if Srv in [0,1,5,6] then
    S:='select * from SmetaBDR2('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(Srv)+') order by DUName,StreetName,HouseNomer';
  if Srv in [2,7,12] then
    S:='select * from SmetaBDR3('+IntToStr(SrvDog)+','+IntToStr(MonthEdit.ItemIndex+1)+
      ','+IntToStr(YearEdit.EditValue)+','+IntToStr(Srv)+') order by DUName,StreetName,HouseNomer';
  if S='' then Exit;
  ds_Smeta.Close;
  ds_Smeta.SQLs.SelectSQL.Text:=S;
  Screen.Cursor:=crSQLWait;
  ds_Smeta.Open;
  Screen.Cursor:=crDefault;
end;

procedure TAnalizTOForm.SmetaGroupCollapsed(Sender: TObject);
begin
  SmetaGroup.CaptionOptions.Text:='Сметы';
end;

procedure TAnalizTOForm.SmetaGroupExpanded(Sender: TObject);
begin
  SmetaGroup.CaptionOptions.Text:='Список смет ПО';
end;

procedure TAnalizTOForm.SumSmetaBtnClick(Sender: TObject);
var
  Q: TFIBQuery;
begin
  DataTab.ItemIndex:=0;
  Q:=cmDB.GetQuery('execute procedure CalcSmetaSum(:M, :Y)', cmDB.WT);
  Q.ParamByName('M').AsInteger:=MonthEdit.ItemIndex+1;
  Q.ParamByName('Y').AsInteger:=YearEdit.EditValue;
  Screen.Cursor:=crSQLWait;
  Q.ExecQuery;
  Screen.Cursor:=crDefault;
  cmDB.WT.Commit;
  OpenShablonDataSet;
  cmDB.FreeQuery(Q);
end;

procedure TAnalizTOForm.Msg(S: string);
begin
  Memo.Lines.Add(S);
  Application.ProcessMessages;
end;

procedure TAnalizTOForm.OpenShablonDataSet;
begin
  ds1.Close;
  ds1.Open;
end;

procedure TAnalizTOForm.Progress(Count, Poz: integer);
begin
  ProgressBar.Properties.Max:=Count;
  ProgressBar.Position:=Poz;
  Application.ProcessMessages;
end;

initialization
 RegisterClass(TAnalizTOForm);
end.
