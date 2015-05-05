unit HouseFirmFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels, Data.DB,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  dxSkinDevExpressStyle, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  dxSkinsdxBarPainter, dxBar, dxmdaset, dxLayoutControlAdapters, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCalendar,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  THouseFirmForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    lGrplc1Group4: TdxLayoutGroup;
    lGrplc1Group5: TdxLayoutGroup;
    cbb_Firm: TcxLookupComboBox;
    litm_Firm: TdxLayoutItem;
    lGrplc1Group6: TdxLayoutGroup;
    lGrplc1Group7: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_GridLinkingFirm: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    ds_HOUSEFIRM: TpFIBDataSet;
    src_HFSTATE1: TDataSource;
    clv1STATE: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    barM1: TdxBarManager;
    doc1: TdxBarDockControl;
    litm_lc1Item11: TdxLayoutItem;
    lGrplc1Group8: TdxLayoutGroup;
    lGrplc1Group9: TdxLayoutGroup;
    br1: TdxBar;
    btn_RefreshLik: TdxBarButton;
    md_HFSTATE1: TdxMemData;
    md_HFSTATE0: TdxMemData;
    src_HFSTATE0: TDataSource;
    clv2STATE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    clv2FIRM: TcxGridDBColumn;
    ds_FreeHouse: TpFIBDataSet;
    lGrplc1Group10: TdxLayoutGroup;
    lGrplc1Group11: TdxLayoutGroup;
    dt1: TcxDateEdit;
    litm_lc1Item12: TdxLayoutItem;
    btn_Load: TcxButton;
    litm_lc1Item13: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    litm_lc1Item14: TdxLayoutItem;
    src_HOUSEFIRM: TDataSource;
    ds1: TpFIBDataSet;
    clv3STATE: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3SNAME: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);
    procedure btn_RefreshLikClick(Sender: TObject);
    procedure v1DblClick(Sender: TObject);
    procedure v2DblClick(Sender: TObject);
    procedure btn_LoadClick(Sender: TObject);
  private
    { Private declarations }
    firm: Variant;
    procedure OpenDS;
    procedure ChangeFirmValue;
    procedure ReopenHouseLinking;
    procedure ReopenHouseReport;
    procedure LoadHouseLinking;
    procedure LoadMemData;
    procedure ChangeState(fState, fCode: Variant);
    procedure LoadFreeHouse;
    function GetUseHouse: string;
    procedure LoadReport;
  public
    { Public declarations }
  end;

var
  HouseFirmForm: THouseFirmForm;

implementation

uses cmDBUnit, HouseFirmEditFrm;

{$R *.dfm}


procedure THouseFirmForm.btn_LoadClick(Sender: TObject);
begin
  LoadReport;
end;

procedure THouseFirmForm.btn_RefreshLikClick(Sender: TObject);
begin
  LoadMemData;
end;

procedure THouseFirmForm.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  ChangeFirmValue;
end;

procedure THouseFirmForm.ChangeFirmValue;
begin
  case lGrplc1Group1.ItemIndex of
    0: ReopenHouseLinking;
    1: ReopenHouseReport;
  end;
end;

procedure THouseFirmForm.ChangeState(fState, fCode: Variant);
var
  F: THouseFirmEditForm;
  Q: TFIBQuery;
begin
  if VarIsType(fCode,[varEmpty, varNull]) then Exit;
  F:= THouseFirmEditForm.Create(Self, fState);
  try
    if F.ShowModal = mrOk then
    begin
      Q:= GetQueryForUse(cmDb.WT,'insert into HOUSEFIRM (DATA, HOUSE, FIRM, STATE) values (:DATA, :HOUSE, :FIRM, :STATE);');
      Q.Options:=[qoStartTransaction, qoAutoCommit];
      try
        Q.ParamByName('DATA').AsVariant:= F.dt1.Date;
        Q.ParamByName('HOUSE').AsVariant:= fCode;
        Q.ParamByName('FIRM').AsVariant:= firm;
        Q.ParamByName('STATE').AsVariant:= fState;
        Q.ExecQuery;
        LoadMemData;
      finally
        FreeQueryForUse(Q);
      end;
    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure THouseFirmForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure THouseFirmForm.FormCreate(Sender: TObject);
begin
  OpenDS;
  LoadForm(prop1,Self.Name);
end;

function THouseFirmForm.GetUseHouse: string;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT, 'select LIST(HOUSE, '','') hl from GETHOUSENOTUSE(:Data,1)');
  Q.Options:=[qoStartTransaction];
  try
    Q.ParamByName('Data').AsVariant:= Date;
    Q.ExecQuery;
    Result:= Q.FN('hl').AsString;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure THouseFirmForm.LoadFreeHouse;
var
  Q: TFIBQuery;
  s: string;
begin
  s:= GetUseHouse;
  if s = '' then Exit;

  with ds_FreeHouse do begin
    Close;
    MainWhereClause:='h.CODE not in ('+s+')';
    Open;
  end;
  md_HFSTATE0.ClearData;
  md_HFSTATE0.LoadFromDataSet(ds_FreeHouse);
  md_HFSTATE0.First;
end;

procedure THouseFirmForm.LoadHouseLinking;
begin
  with ds_HOUSEFIRM do begin
    Close;
    ParamByName('FIRM').AsVariant:= firm;
    ParamByName('DATA').AsVariant:= Date;
    Open;
  end;
end;

procedure THouseFirmForm.LoadMemData;
var
  AIndex, AIndex2: Integer;
begin
  firm:= cbb_Firm.EditValue;
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  AIndex2 := v2.Controller.FocusedRowIndex; // запоминаем позицию
  v1.BeginUpdate(lsimImmediate);
  v2.BeginUpdate(lsimImmediate);
  try
    LoadHouseLinking;
    with ds_HOUSEFIRM do begin
      Filtered:= False;
      Filter:='STATE = 1';
      Filtered:= True;
    end;
    md_HFSTATE1.ClearData;
    md_HFSTATE1.LoadFromDataSet(ds_HOUSEFIRM);
    md_HFSTATE1.First;
    LoadFreeHouse;
  finally
    v1.EndUpdate;
    v2.EndUpdate;
    v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
    v2.Controller.FocusRecord(AIndex2, true); // возвращаемся на позицию
  end;
end;

procedure THouseFirmForm.LoadReport;
begin
  v3.BeginUpdate(lsimImmediate);
  firm:= cbb_Firm.EditValue;
  if VarIsType(firm,[varEmpty, varNull]) then
    Exit;
  try
    with ds1 do begin
      Close;
      ParamByName('FIRM').AsVariant:= firm;
      ParamByName('DATA').AsVariant:= dt1.Date;
      Open;
    end;
    with ds1 do begin
      Filtered:= False;
      Filter:='STATE = 1';
      Filtered:= True;
    end;
  finally
    v3.EndUpdate;
  end;
end;

procedure THouseFirmForm.OpenDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
end;

procedure THouseFirmForm.ReopenHouseLinking;
begin

end;

procedure THouseFirmForm.ReopenHouseReport;
begin

end;

procedure THouseFirmForm.v1DblClick(Sender: TObject);
begin
  ChangeState(-1, v1.GetColumnByFieldName('HOUSE').EditValue);
end;

procedure THouseFirmForm.v2DblClick(Sender: TObject);
begin
  ChangeState(1, v2.GetColumnByFieldName('HOUSE').EditValue);
end;

initialization
 RegisterClass(THouseFirmForm);
end.
