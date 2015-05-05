unit hrenfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, Data.DB, dxmdaset, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxGrid, frxClass;

type
  TherForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    md: TdxMemData;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    src1: TDataSource;
    STREETNAME: TcxGridDBColumn;
    NOMER: TcxGridDBColumn;
    clSUM: TcxGridDBColumn;
    clHOUSE: TcxGridDBColumn;
    Report1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure CreateMem;
    procedure Insert(house, sum: Variant; Q: TFIBQuery);
    procedure Load;
  public
    { Public declarations }
  end;

var
  herForm: TherForm;

implementation

uses cmDBUnit, dezLoadData;

{$R *.dfm}


procedure TherForm.CreateMem;
begin
  CreateField(md,'STREETNAME',ftString,256);
  CreateField(md,'NOMER',ftString,32);
  CreateField(md,'SUM',ftCurrency);
  CreateField(md,'HOUSE',ftBCD);
  md.Open;
  md.LoadFromTextFile('tmp1.txt');

  Load;
  //md.SaveToTextFile('tmp1.txt');
end;

procedure TherForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TherForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMem;
end;

procedure TherForm.Insert(house, sum: Variant; Q: TFIBQuery);
begin
  try
    Q.ParamByName('HOUSE').AsVariant:= house;
    Q.ParamByName('F25').AsVariant:= sum;
    Q.ExecQuery;
  finally

  end;
end;

procedure TherForm.Load;
var
  Q: TFIBQuery;
  sql: string;
  dez : TdezLoad;
  street: Variant;
begin
  sql:= 'insert into FBDR1 (FBDR, HOUSE, F3, F25) values (1538, :HOUSE, 0, :F25)';
  Q:= GetQueryForUse(cmDb.WT, sql);
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    dez:= TdezLoad.Create;
    dez.prepare;
    md.First;
    while not md.Eof do
    begin
      //street:= dez.getstreetcode(md.FN('STREETNAME').AsString);
     // md.Edit;
     // md.FN('HOUSE').AsVariant:= dez.gethousecode(street, md.FN('NOMER').AsString);
     // md.Post;
      Insert(md.FN('HOUSE').AsVariant, md.FN('SUM').AsVariant, Q);
      md.Next;
    end;
  finally
     FreeQueryForUse(Q);
  end;
end;

initialization
 RegisterClass(TherForm);
end.
