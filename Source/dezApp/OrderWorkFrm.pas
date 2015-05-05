unit OrderWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, Data.DB,
  FIBDataSet, pFIBDataSet, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ImgList, cxImageComboBox,
  dxSkinsdxBarPainter, dxBar, dxSkinsdxDockControlPainter, cxPC, dxDockControl,
  dxDockPanel, cxDBExtLookupComboBox, cxCurrencyEdit, cxMemo, cxSpinEdit,
  cxButtonEdit;

type
  TOrderWorkForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    src_kontr: TDataSource;
    ds_kontr: TpFIBDataSet;
    ds_work: TpFIBDataSet;
    src_work: TDataSource;
    il1: TcxImageList;
    StyleRepository1: TcxStyleRepository;
    Style1: TcxStyle;
    StyleSheetGridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    Style2: TcxStyle;
    Style3: TcxStyle;
    Style4: TcxStyle;
    Style5: TcxStyle;
    Style6: TcxStyle;
    Style7: TcxStyle;
    Style8: TcxStyle;
    Style9: TcxStyle;
    Style10: TcxStyle;
    Style11: TcxStyle;
    Style12: TcxStyle;
    Style13: TcxStyle;
    Style14: TcxStyle;
    Style15: TcxStyle;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_AddWork: TdxBarButton;
    btn_EditWork: TdxBarButton;
    btnDeleteWork: TdxBarButton;
    btn_PrintOrder: TdxBarButton;
    DockingManager1: TdxDockingManager;
    DockSite1: TdxDockSite;
    DockPanel1: TdxDockPanel;
    DockPanel2: TdxDockPanel;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1WDATA: TcxGridDBColumn;
    clv1WCODE: TcxGridDBColumn;
    clv1PERIOD: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1SERVISWORK: TcxGridDBColumn;
    clv1SWNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1WORKLIST: TcxGridDBColumn;
    clv1JWORK: TcxGridDBColumn;
    clv1FDATA: TcxGridDBColumn;
    clv1JWORK1: TcxGridDBColumn;
    clv1REQUESTID: TcxGridDBColumn;
    clv1DISP_BASE: TcxGridDBColumn;
    l1: TcxGridLevel;
    docDoc1: TdxBarDockControl;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    dt2: TcxDateEdit;
    cbb_kontr: TcxLookupComboBox;
    btn_LoadData: TcxButton;
    grp1: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    lItmlitlc1Item1: TdxLayoutItem;
    lItmlitlc1Item11: TdxLayoutItem;
    lItmlitlc1Item12: TdxLayoutItem;
    lItmlitlc1Item13: TdxLayoutItem;
    lDockSite2: TdxLayoutDockSite;
    DockPanel3: TdxDockPanel;
    lDockSite1: TdxLayoutDockSite;
    grp2: TdxLayoutGroup;
    lc2: TdxLayoutControl;
    grplc2Group1: TdxLayoutGroup;
    grplc2Group2: TdxLayoutGroup;
    lItmlc2Item1: TdxLayoutItem;
    lItmlc2Item2: TdxLayoutItem;
    grplc2Group3: TdxLayoutGroup;
    src_smat: TDataSource;
    ds_CLASSMAT: TpFIBDataSet;
    cbb_mat: TcxLookupComboBox;
    btn_mat: TcxButton;
    lItmlc2Item3: TdxLayoutItem;
    spn_kol: TcxSpinEdit;
    lItmlc2Item4: TdxLayoutItem;
    lItmlc2Item5: TdxLayoutItem;
    txt_ed: TcxTextEdit;
    curEd_price: TcxCurrencyEdit;
    grplc2Group4: TdxLayoutGroup;
    grplc2Group5: TdxLayoutGroup;
    lItmlc2Item6: TdxLayoutItem;
    mmo_note: TcxMemo;
    grplc2Group6: TdxLayoutGroup;
    lItmlc2Item7: TdxLayoutItem;
    lItmlc2Item8: TdxLayoutItem;
    lItmlc2Item9: TdxLayoutItem;
    btn_post: TcxButton;
    btn_edit_m: TcxButton;
    btn_del_m: TcxButton;
    lDockSite3: TdxLayoutDockSite;
    lItmlc2Item10: TdxLayoutItem;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv3CODE: TcxGridDBColumn;
    clv3WORKSPECLIST: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3KONTRAGENT: TcxGridDBColumn;
    clv3SERVISWORK: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3ADDR: TcxGridDBColumn;
    clv3SERVISMATERIAL: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3QUANTITY: TcxGridDBColumn;
    clv3PRICE: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3CLASSMAT: TcxGridDBColumn;
    l3: TcxGridLevel;
    ds_WorkSpecMaterial: TpFIBDataSet;
    src_WorkSpecMaterial: TDataSource;
    clv3Edit: TcxGridDBColumn;
    grplc1Group2: TdxLayoutGroup;
    btn_ClosePeriod: TdxBarButton;
    btn_material: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LoadDataClick(Sender: TObject);
    procedure btn_AddWorkClick(Sender: TObject);
    procedure clv3EditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure v3DblClick(Sender: TObject);
    procedure btn_ClosePeriodClick(Sender: TObject);
    procedure btn_EditWorkClick(Sender: TObject);
    procedure btn_materialClick(Sender: TObject);
  private
    { Private declarations }
    minDatePeriod: TDateTime; // конечна€ дата закрытого периода
    procedure SetMinPeriodData;
    procedure PrepareDS;
    procedure MakeData;
    procedure OpenEditWork(isEdit: Boolean = False);
    procedure FillMatControls(clear: Boolean = false);
    procedure MaterialDellete;
    procedure MaterialGetPrice;
  public
    { Public declarations }

  end;

var
  OrderWorkForm: TOrderWorkForm;

implementation

uses cmDBUnit, OrderWorkEditFrm, OrderClosePeriodFrm;

{$R *.dfm}

procedure TOrderWorkForm.btn_AddWorkClick(Sender: TObject);
begin
  OpenEditWork;
end;

procedure TOrderWorkForm.btn_ClosePeriodClick(Sender: TObject);
var
  F: TOrderClosePeriodForm;
begin
  F:= TOrderClosePeriodForm.Create(self);
  F.ShowModal;
end;

procedure TOrderWorkForm.btn_EditWorkClick(Sender: TObject);
begin
  OpenEditWork(True);
end;

procedure TOrderWorkForm.btn_LoadDataClick(Sender: TObject);
begin
  MakeData;
end;

procedure TOrderWorkForm.btn_materialClick(Sender: TObject);
begin
  if btn_material.Down then begin
     ds_WorkSpecMaterial.DataSource:= src_work;
     DockPanel3.Show;
  end else begin
     ds_WorkSpecMaterial.DataSource:= nil;
     DockPanel3.Hide;
  end;
end;

procedure TOrderWorkForm.cbb_matPropertiesEditValueChanged(Sender: TObject);
begin
  MaterialGetPrice;
end;

procedure TOrderWorkForm.clv3EditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: FillMatControls(true);
    1: FillMatControls; // edit
    2: MaterialDellete; //delete
  end;
end;

procedure TOrderWorkForm.FillMatControls(clear: Boolean);
begin
  if clear then begin
    cbb_mat.EditValue := null;
    spn_kol.EditValue := null;
    curEd_price.EditValue := null;
    mmo_note.EditValue := null;
  end else begin
    cbb_mat.EditValue := v3.FN('CLASSMAT');
    spn_kol.EditValue := v3.FN('QUANTITY');
    curEd_price.EditValue := v3.FN('PRICE');
    mmo_note.EditValue := v3.FN('NOTE');
  end;
  btn_del_m.Enabled := cbb_mat.EditValue <> null;
  btn_edit_m.Enabled := not clear;
end;

procedure TOrderWorkForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrderWorkForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  PrepareDS;
end;

procedure TOrderWorkForm.MakeData;
var
  i: Integer;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_work do
    begin
      Close;
      MainWhereClause := 'wl.DATA BETWEEN :d1 and :d2';
      if cbb_kontr.EditValue > 0 then
        MainWhereClause := MainWhereClause + ' and wl.KONTRAGENT=:kontr';
      ParamByName('d1').AsVariant := dt1.EditValue;
      ParamByName('d2').AsVariant := dt2.EditValue;
      if ParamExist('kontr', i) then
        ParamByName('kontr').AsVariant := cbb_kontr.EditValue;
      Open;
    end;
    //получаем дату закрытого периода
    SetMinPeriodData;
    //
  finally
    v1.EndUpdate;
  end;
end;

procedure TOrderWorkForm.MaterialDellete;
begin
  if Application.MessageBox('¬ы действительно хотите удалить запись?',
    '¬нимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_WorkSpecMaterial.Delete;
    btn_del_m.Enabled:=False;
  end;
end;

procedure TOrderWorkForm.MaterialGetPrice;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select ED, PRICE from classmat where Code=:cod');
  try
    Q.ParamByName('Cod').AsVariant:=cbb_mat.EditValue;
    Q.ExecQuery;
    txt_ed.EditValue:=Q.FN('ED').AsVariant;
    curEd_price.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
  btn_del_m.Enabled:=False;
end;

procedure TOrderWorkForm.OpenEditWork(isEdit: Boolean);
var
  F: TOrderWorkEditForm;
  kontr: integer;
begin
  if cbb_kontr.EditValue = null then
  raise dezException.Create('Ќе указана организаци€!');
  F := TOrderWorkEditForm.Create(Self, cbb_kontr.EditValue, minDatePeriod, ds_work, isEdit);
  F.ShowModal;
end;

procedure TOrderWorkForm.PrepareDS;
begin
     ds_WorkSpecMaterial.DataSource:= nil;
     DockPanel3.Hide;
  ds_kontr.CloseOpen(false);
  ds_CLASSMAT.CloseOpen(false);
end;

procedure TOrderWorkForm.SetMinPeriodData;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT,'select DATA from ORDER$CLOSEPERIOD where KONTRAGENT = :kontr');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('kontr').AsVariant:= cbb_kontr.EditValue;
    Q.ExecQuery;
    if Q.FN('DATA').AsVariant = null then
    minDatePeriod:= StrToDate('01.01.2000') else
    minDatePeriod:= Q.FN('DATA').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TOrderWorkForm.v3DblClick(Sender: TObject);
begin
  FillMatControls;
end;

procedure TOrderWorkForm.v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  FillMatControls(true);
end;

initialization

RegisterClass(TOrderWorkForm);

end.
