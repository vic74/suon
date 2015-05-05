unit RepGraphFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxmdaset, FIBDataSet, pFIBDataSet, cxEditRepositoryItems;

type
  TRepGraphForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    cbb_Y: TcxComboBox;
    litm_lc1Item11: TdxLayoutItem;
    cbb_RType: TcxComboBox;
    litm_lc1Item12: TdxLayoutItem;
    sp_Tarif: TcxSpinEdit;
    litm_lc1Item13: TdxLayoutItem;
    btn_Load: TcxButton;
    litm_lc1Item14: TdxLayoutItem;
    btn_Excel: TcxButton;
    litm_lc1Item15: TdxLayoutItem;
    ds_Rep: TpFIBDataSet;
    md: TdxMemData;
    src_md: TDataSource;
    clv1STNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1M1: TcxGridDBColumn;
    clv1M2: TcxGridDBColumn;
    clv1M3: TcxGridDBColumn;
    clv1M4: TcxGridDBColumn;
    clv1M5: TcxGridDBColumn;
    clv1M6: TcxGridDBColumn;
    clv1M7: TcxGridDBColumn;
    clv1M8: TcxGridDBColumn;
    clv1M9: TcxGridDBColumn;
    clv1M10: TcxGridDBColumn;
    clv1M11: TcxGridDBColumn;
    clv1M12: TcxGridDBColumn;
    clv1SUM: TcxGridDBColumn;
    rep1: TcxEditRepository;
    CalcItem: TcxEditRepositoryCalcItem;
    CurrencyItem: TcxEditRepositoryCurrencyItem;
    btn_MakeYearPlan: TcxButton;
    lc1Item1: TdxLayoutItem;
    clvAvg: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LoadClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_MakeYearPlanClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMem;
    procedure LoadData;
    procedure FillTable;
  public
    { Public declarations }
  end;

var
  RepGraphForm: TRepGraphForm;

implementation

uses cmDBUnit, FIBQuery;

{$R *.dfm}


procedure TRepGraphForm.btn_ExcelClick(Sender: TObject);
var
  list: TStringList;
  s: string;
begin
  list:= TStringList.Create;
  try
    list.Add(Caption);
    s:= VarToStr(cbb_RType.EditValue)+' на '+ VarToStr(cbb_Y.EditValue) + ' [тариф = '+VarToStr(sp_Tarif.EditValue)+']';
    list.Add(s);
    AppUtils.ExportInExcel(grd1, list, true);
  finally
    FreeAndNil(list);
  end;
end;

procedure TRepGraphForm.btn_LoadClick(Sender: TObject);
begin
  LoadData;
end;

procedure TRepGraphForm.btn_MakeYearPlanClick(Sender: TObject);
var
  Q: TFIBQuery;
begin
  if cbb_RType.ItemIndex<>0 then Exit;

  //чистим план за текущий год
  Q:=cmDB.GetQuery('delete from vent_year_plan where Y=:Y', cmDB.WT);
  Q.ParamByName('Y').AsString:=cbb_Y.Text;
  Q.ExecQuery;
  cmDB.FreeQuery(Q);
  //вносим план на год
  Q:=cmDB.GetQuery('insert into vent_year_plan(Y,House,Summa) values(:Y,:House,:Summa)', cmDB.WT);
  Q.ParamByName('Y').AsString:=cbb_Y.Text;
  md.First;
  while not md.Eof do
  begin
    Q.ParamByName('House').AsInteger:=md.FieldByName('House').AsInteger;
    Q.ParamByName('Summa').AsFloat:=md.FieldByName('sum').AsFloat/12;
    Q.ExecQuery;
    md.Next;
  end;
  cmDB.WT.Commit;
  cmDB.FreeQuery(Q);
end;

procedure TRepGraphForm.CreateMem;
begin
  md.AddField('STREET',ftInteger,'StreetCode',0,false);
  md.AddField('STNAME',ftString,'Улица',128);
  md.AddField('HOUSE',ftInteger,'HOUSECode',0,false);
  md.AddField('NOMER',ftString,'Дом',32);
  md.AddField('M1',ftBCD,'Январь');
  md.AddField('M2',ftBCD,'Февраль');
  md.AddField('M3',ftBCD,'Март');
  md.AddField('M4',ftBCD,'Апрель');
  md.AddField('M5',ftBCD,'Май');
  md.AddField('M6',ftBCD,'Июнь');
  md.AddField('M7',ftBCD,'Июль');
  md.AddField('M8',ftBCD,'Август');
  md.AddField('M9',ftBCD,'Сентябрь');
  md.AddField('M10',ftBCD,'Октябрь');
  md.AddField('M11',ftBCD,'Ноябрь');
  md.AddField('M12',ftBCD,'Декабь');
  md.AddField('SUM',ftBCD,'Итого');
  md.AddField('AVG',ftBCD,'План месяц');
  md.Open;
end;

procedure TRepGraphForm.FillTable;
var
  i: Integer;
  fName: string;
  fSum: currency;
begin
  md.Close; md.Open;
  md.LoadFromDataSet(ds_Rep);
  md.First;
  while not md.Eof do begin
    fSum:=0;
    for I := 1 to 12 do begin
      fName:='M'+ IntToStr(I);
       fSum:= fSum + md.FN(fName).AsCurrency;
    end;

    md.Edit;
    md.FN('SUM').AsVariant:= fSum;
    md.FN('AVG').AsCurrency:= fSum/12;
    md.Post;

    md.Next;
  end;
  md.First;
end;

procedure TRepGraphForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TRepGraphForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
  //v1.DataController.CreateAllItems();
end;

procedure TRepGraphForm.LoadData;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_Rep do begin
      Close;
      ParamByName('Y').AsVariant:= cbb_Y.EditValue;
      ParamByName('TARIF').AsVariant:= sp_Tarif.EditValue;
      ParamByName('RTYPE').AsVariant:= cbb_RType.ItemIndex;
      Open;
    end;
    FillTable;
  finally
    v1.EndUpdate;
    v1.ApplyBestFit();
  end;
end;

initialization
 RegisterClass(TRepGraphForm);
end.
