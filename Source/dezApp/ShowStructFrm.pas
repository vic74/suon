unit ShowStructFrm;

interface

uses
  dxRibbonForm,FIBQuery,pFIBCacheQueries,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutControl, cxClasses, dxRibbon, dxLayoutLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxmdaset,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxPropertiesStore,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxGridCustomView, cxGrid, cmDBUnit, AppUtils, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, BaseForm, dxRibbonSkins, dxLayoutContainer,
  dxSkinDevExpressStyle, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TShowStructForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm1: TdxLayoutItem;
    ds_struct: TpFIBDataSet;
    src_struct: TDataSource;
    prop1: TcxPropertiesStore;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1STYPE: TcxGridDBColumn;
    mt_type: TdxMemData;
    src_mttype: TDataSource;
    ds_defect: TpFIBDataSet;
    src_defect: TDataSource;
    clvStructNum: TcxGridDBColumn;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    clv2CODE: TcxGridDBColumn;
    clv2SHOWSTRUCT: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2NUM: TcxGridDBColumn;
    clv2ED: TcxGridDBColumn;
    cbb_mtype: TcxLookupComboBox;
    itm_mtype: TdxLayoutItem;
    grp_mtype: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_structBeforePost(DataSet: TDataSet);
    procedure ds_defectBeforePost(DataSet: TDataSet);
    procedure v1DataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure ds_defectAfterPost(DataSet: TDataSet);
    procedure cbb_mtypePropertiesChange(Sender: TObject);
    procedure ds_structNewRecord(DataSet: TDataSet);
    procedure ds_defectNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CreateTypeTable;
    procedure OpenDs;
    function GetNum :Variant;
    function GetDefNum :Variant;
  public
    { Public declarations }
  end;

var
  ShowStructForm: TShowStructForm;

implementation

{$R *.dfm}


procedure TShowStructForm.ds_defectAfterPost(DataSet: TDataSet);
begin
 // TcxGridDBTableView(grd1.Levels.Items[0].Items[0].GridView).NewItemRow.Visible:=ds_defect.Eof;
end;

procedure TShowStructForm.ds_defectBeforePost(DataSet: TDataSet);
begin
  ds_defect.FN('ShowStruct').AsInteger:=ds_struct.FN('Code').AsInteger;
end;

procedure TShowStructForm.ds_defectNewRecord(DataSet: TDataSet);
begin
  ds_defect.FN('NUM').AsVariant:=GetDefNum;
  v2.GetColumnByFieldName('Name').Focused:=True;
end;

function TShowStructForm.GetNum :Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,
                     'select max(NUM)+1 nm from SHOWSTRUCT where STYPE=:STYPE');
  Q.ParamByName('STYPE').AsVariant:=cbb_mtype.EditValue;
  Q.ExecQuery;
  if Q.FN('nm').AsVariant=null then
  Result:=1 else
  Result:=Q.FN('nm').AsVariant;
  FreeQueryForUse(Q);
end;

function TShowStructForm.GetDefNum :Variant;
var
  Q :TFIBQuery;
begin
  if v1.GetColumnByFieldName('CODE').EditValue=null then
  begin
    Result:=1;
    Exit;
  end;
  Q:=GetQueryForUse(cmDB.RT,
                 'select max(NUM)+1 nm from STRUCTDEFECT where SHOWSTRUCT=:st');
  Q.ParamByName('st').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
  Q.ExecQuery;
  if Q.FN('nm').AsVariant=null then
  Result:=1 else
  Result:=Q.FN('nm').AsVariant;
  FreeQueryForUse(Q);
end;

procedure TShowStructForm.ds_structBeforePost(DataSet: TDataSet);
var
  i :Integer;
begin
  ds_struct.FN('STYPE').AsVariant:=cbb_mtype.EditValue;
  for i := 0 to ds_struct.FieldCount - 1 do
  if ds_struct.Fields[i].AsVariant=null then
  begin
    ShowMessage('Не заполнены обязательные параметры!');
    Abort;
  end;
end;

procedure TShowStructForm.ds_structNewRecord(DataSet: TDataSet);
begin
  ds_struct.FN('NUM').AsVariant:=GetNum;
  v1.GetColumnByFieldName('Name').Focused:=True;
end;

procedure TShowStructForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShowStructForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateTypeTable;
  //ds_struct.Open;
  //ds_defect.Open;
  OpenDs;
end;

procedure TShowStructForm.OpenDs;
begin
  DSOptoins(ds_struct,'','SHOWSTRUCT','Code','SHOWSTRUCT_GEN',false);
  if cbb_mtype.EditValue<>null then
  with ds_struct do
  begin
    Close;
    MainWhereClause:='STYPE=:STYPE';
    ParamByName('STYPE').AsVariant:=cbb_mtype.EditValue;
    Open;
  end;
  DSOptoins(ds_defect,'','STRUCTDEFECT','CODE','STRUCTDEFECT_GEN');
end;

procedure TShowStructForm.v1DataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  ds_defect.Close;
  if not ds_struct.Eof then
  begin
    ds_defect.ParamByName('Code').AsString:=ds_struct.FN('Code').AsString;
    ds_defect.Open;
  end;
  //строка для ввода данных
  TcxGridDBTableView(grd1.Levels.Items[0].Items[0].GridView).NewItemRow.Visible:=ds_defect.Eof;
end;

{-------------------------------------------------------------------------------
  CreateTypeTable|Создаем временную таблицу с типами конструкций
-------------------------------------------------------------------------------}
procedure TShowStructForm.cbb_mtypePropertiesChange(Sender: TObject);
begin
  OpenDs;
end;

procedure TShowStructForm.CreateTypeTable;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with mt_type do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(mt_type,'Code',ftInteger);
  CreateField(mt_type,'Name',ftString,64);
  mt_type.Open;
  //
  AddType(0,'строения');
  AddType(1,'электричество');
  AddType(2,'лифты');
  AddType(3,'вдго');
end;

initialization
 RegisterClass(TShowStructForm);
end.
