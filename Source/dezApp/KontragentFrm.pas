unit KontragentFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery, pFIBCacheQueries, pFIBProps,
  System.Generics.Collections,
  Dialogs, AppUtils, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsdxRibbonPainter, cxClasses, dxRibbon, dxSkinscxPCPainter, cxSplitter,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cmDBUnit, dxLayoutLookAndFeels,
  FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet, cxDropDownEdit,
  cxDBLookupComboBox, dxmdaset, cxGridCustomPopupMenu, cxGridPopupMenu, ImgList,
  BaseForm, cxCheckBox, dxRibbonSkins, dxLayoutContainer, dxSkinDevExpressStyle,
  Kontragent, dxSkinsdxBarPainter, dxBar, cxBarEditItem, Aurelius.Bind.Dataset
  , KontragentRepository, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dezCommon;

type
  TKontragentForm = class(TDezForm)
    prop1: TcxPropertiesStore;
    grp_left: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    spl1: TcxSplitter;
    grp_right: TdxLayoutGroup;
    lcntr2: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Item_grd1: TdxLayoutItem;
    splt2: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    Item_grd2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    Item_grd3: TdxLayoutItem;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    clCODE: TcxGridDBColumn;
    clNAME: TcxGridDBColumn;
    clFULLNAME: TcxGridDBColumn;
    clINN: TcxGridDBColumn;
    clKPP: TcxGridDBColumn;
    clOGRN: TcxGridDBColumn;
    clPOSTADDR: TcxGridDBColumn;
    clURADDR: TcxGridDBColumn;
    clPHONE: TcxGridDBColumn;
    clEMAIL: TcxGridDBColumn;
    clKTYPE: TcxGridDBColumn;
    src_kontr: TDataSource;
    mt_ktype: TdxMemData;
    src_ktype: TDataSource;
    ppm1: TcxGridPopupMenu;
    ds_bschet: TpFIBDataSet;
    src_bschet: TDataSource;
    mt_bschet: TdxMemData;
    src_mtschet: TDataSource;
    clSCHET: TcxGridDBColumn;
    clKSCHET: TcxGridDBColumn;
    clKONTRAGENT: TcxGridDBColumn;
    clBANK: TcxGridDBColumn;
    ds_bank: TpFIBDataSet;
    src_bank: TDataSource;
    cl3CODE: TcxGridDBColumn;
    cl3NAME: TcxGridDBColumn;
    cl3BIK: TcxGridDBColumn;
    il1: TcxImageList;
    v1Column1: TcxGridDBColumn;
    grp2: TdxLayoutGroup;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
    m_ksrv: TdxMemData;
    src_ksrv: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    clv4KSSRV: TcxGridDBColumn;
    clv4RTYPE: TcxGridDBColumn;
    clv4KSCODE: TcxGridDBColumn;
    clv1DIRECTOR: TcxGridDBColumn;
    ds_WORKER: TpFIBDataSet;
    src_WORKER: TDataSource;
    clv1ISACTIVE: TcxGridDBColumn;
    StyleRepository1: TcxStyleRepository;
    Style1: TcxStyle;
    barM1: TdxBarManager;
    brM1Bar1: TdxBar;
    btn_New: TdxBarButton;
    btn_Edit: TdxBarButton;
    btn_Delete: TdxBarButton;
    btn_Refresh: TdxBarButton;
    arDS_kontr: TAureliusDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ds_bschetAfterInsert(DataSet: TDataSet);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_bschetBeforePost(DataSet: TDataSet);
    procedure ds_bankBeforePost(DataSet: TDataSet);
    procedure clv4KSSRVPropertiesEditValueChanged(Sender: TObject);
    procedure v1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
    procedure clv1ISACTIVEPropertiesChange(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
  private
    { Private declarations }
    fDS_Kontragent: TpFIBDataSet;
    fkontr: TKontragent;
    repo: TKontragentController;
    isActiveRecord: Boolean;
    procedure OpenDs;
    procedure LoadKontragentList;
    procedure GetSchet;
    procedure SaveKsSrv;
    procedure DeleteKsSrv;
    procedure GetKSrv;
    procedure CreateKSrvMem;
    procedure GetDir;
    procedure RefreshData;
    procedure SetRight;
  public
    { Public declarations }
  end;

var
  KontragentForm: TKontragentForm;

implementation

{$R *.dfm}

uses KontragentEditFrm;

procedure TKontragentForm.ds_bschetAfterInsert(DataSet: TDataSet);
begin
  ds_bschet.FN('KONTRAGENT').AsInteger:=
                                      v1.GetColumnByFieldName('Code').EditValue;
  ds_bschet.FN('BANK').AsInteger:=
                                      v3.GetColumnByFieldName('Code').EditValue;
end;

procedure TKontragentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fKontr) then FreeAndNil(fKontr);
  if Assigned(repo) then FreeAndNil(repo);
  Action:= caFree;
end;

procedure TKontragentForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
  SetRight;
  //fkontr:= TKontragent.Create;
  repo:= TKontragentController.Create;
  isActiveRecord:= False; //только активные записи
  //
  CreateAType(mt_ktype,'ktype');
  //
  OpenDs;
  GetKSrv;
end;

procedure TKontragentForm.OpenDs;
begin
  //LoadKontragentList;
  src_kontr.DataSet:= repo.DS;
  repo.LoadKontragents();
  //
  CreateKSrvMem;
  //src_kontr.DataSet:= fkontr.LoadKontragents(isActiveRecord,False);
  ds_Worker.Open;
  //DSOptoins(TFIBDataSet(src_kontr.DataSet),'','KONTRAGENT','CODE','KONTRAGENT_GEN');
  DSOptoins(ds_bschet,'','BANKSCHET','SCHET','',false);
  DSOptoins(ds_bank,'','BANK','CODE','BANK_GEN');
end;

procedure TKontragentForm.RefreshData;
var
  AIndex: Integer;
begin
  AIndex:= v1.Controller.FocusedRecordIndex;
  try
    repo.DS.CloseOpen(false);
  finally
    v1.Controller.FocusRecord(AIndex, True);
  end;
end;

procedure TKontragentForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetSchet;
  GetKSrv;
end;

procedure TKontragentForm.btn_DeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    repo.Delete(v1.GetColumnByFieldName('CODE').EditValue);
    RefreshData;
  end;
end;

procedure TKontragentForm.btn_EditClick(Sender: TObject);
var
  repos: TKontragentController;
begin
  repos:= TKontragentController.Create;
  try
    if repos.ShowEditForm(v1.GetColumnByFieldName('CODE').EditValue) then
      RefreshData;
  finally
    repos.Free;
  end;
end;

procedure TKontragentForm.btn_NewClick(Sender: TObject);
var
  repos: TKontragentController;
begin
  repos:= TKontragentController.Create;
  try
    if repos.ShowEditForm(null) then
      RefreshData;
  finally
    repos.Free;
  end;
end;

procedure TKontragentForm.btn_RefreshClick(Sender: TObject);
begin
  RefreshData;
end;

procedure TKontragentForm.clv1ISACTIVEPropertiesChange(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TKontragentForm.clv4KSSRVPropertiesEditValueChanged(Sender: TObject);
begin
  v4.DataController.Post();
  if v4.GetColumnByFieldName('KSSRV').EditValue=1 then SaveKsSrv else
                                                       DeleteKsSrv;
end;

procedure TKontragentForm.SaveKsSrv;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
      'insert into KONTRAGENTSRV (KONTRAGENT, RTYPE, SRV)' + #13#10 +
      'values (:KONTRAGENT, :RTYPE, :SRV)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('KONTRAGENT').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
  Q.ParamByName('RTYPE').AsVariant:=v4.GetColumnByFieldName('RTYPE').EditValue;
  Q.ParamByName('SRV').AsVariant:=v4.GetColumnByFieldName('CODE').EditValue;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  //
  GetKSrv;
end;

procedure TKontragentForm.SetRight;
  procedure ShowMenu(isFull: SmallInt);
  begin
    case isFull of
      0: begin
           btn_New.Visible:= ivAlways;
           btn_Edit.Visible:= ivAlways;
           btn_Delete.Visible:= ivAlways;
         end;
      1: begin
           btn_New.Visible:= ivNever;
           btn_Edit.Visible:= ivNever;
           btn_Delete.Visible:= ivNever;
         end;
    end;
    v1.OptionsData.Editing:= isFull = 0;
  end;
begin
  case ActiveWorker of
    35: ShowMenu(0);//зам. начальника СЭ Колеговой Т.Г.
    5: ShowMenu(0);
    6: ShowMenu(0);
    else ShowMenu(1);
  end;
end;

procedure TKontragentForm.DeleteKsSrv;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,'delete from KONTRAGENTSRV where (CODE = :KSCODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('KSCODE').AsVariant:=v4.GetColumnByFieldName('KSCODE').EditValue;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  //
  GetKSrv;
end;

procedure TKontragentForm.CreateKSrvMem;
begin
  CreateField(m_ksrv,'CODE',ftInteger);
  CreateField(m_ksrv,'NAME',ftString,256);
  CreateField(m_ksrv,'KSSRV',ftInteger); //признак
  CreateField(m_ksrv,'RTYPE',ftinteger);
  CreateField(m_ksrv,'KSCODE',ftinteger);
  m_ksrv.Open;
end;

procedure TKontragentForm.GetDir;
begin
  with ds_WORKER do begin
    Close;
    if (v1.Controller.IsNewItemRowFocused) or (v1.Controller.IsFilterRowFocused)
            then Exit;
    MainWhereClause:='w.code<>9 and w.kontragent=:kontr';
    ParamByName('kontr').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Open;
  end;
end;

procedure TKontragentForm.GetKSrv;
var
  Q :TFIBQuery;
  AIndex: Integer;
begin
  Q:=GetQueryForUse(cmDB.RT,
      'SELECT hs.CODE,ks.code KSCODE,' + #13#10 +
      '       hs.NAME,' + #13#10 +
      '       iif(ks.code is null,0,1) ksSrv,' + #13#10 +
      '       iif(ks.rtype is null, 0,ks.rtype)rtype' + #13#10 +
      'FROM HOUSESRV hs' + #13#10 +
      'left outer join KONTRAGENTSRV ks on ks.srv=hs.code' + #13#10 +
      '            and ks.rtype=0 and ks.kontragent=:kontr' + #13#10 +
      'union all' + #13#10 +
      'SELECT f1d.CODE,ks.code KSCODE,' + #13#10 +
      '       f1d.NAME,' + #13#10 +
      '       iif(ks.code is null,0,1) ksSrv,' + #13#10 +
      '       iif(ks.rtype is null, 1,ks.rtype)rtype' + #13#10 +
      'FROM FACT1DOCSRV f1d' + #13#10 +
      'left outer join KONTRAGENTSRV ks on ks.srv=f1d.code' + #13#10 +
      '            and ks.rtype=1 and ks.kontragent=:kontr');
   Q.ParamByName('kontr').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
   Q.ExecQuery;
   AIndex := v4.Controller.FocusedRowIndex; // запоминаем позицию
   v4.BeginUpdate;
   m_ksrv.DisableControls;
   m_ksrv.Close; m_ksrv.Open;
   //
   while not Q.Eof do begin
     with m_ksrv do begin
       Append;
       FieldByName('CODE').AsVariant:=Q.FN('CODE').AsVariant;
       FieldByName('NAME').AsVariant:=Q.FN('NAME').AsVariant;
       FieldByName('KSSRV').AsVariant:=Q.FN('KSSRV').AsVariant;
       FieldByName('RTYPE').AsVariant:=Q.FN('RTYPE').AsVariant;
       FieldByName('KSCODE').AsVariant:=Q.FN('KSCODE').AsVariant;
       Post;
     end;
     Q.Next;
   end;
   m_ksrv.EnableControls;
   v4.EndUpdate;
   v4.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
   FreeQueryForUse(Q);
end;

procedure TKontragentForm.GetSchet;
begin
  {if v1.GetColumnByFieldName('Code').EditValue=null then Exit;
  with ds_bschet do
  begin
    Close;
    MainWhereClause:='Kontragent=:Kontr';
    ParamByName('Kontr').AsInteger:=v1.GetColumnByFieldName('Code').EditValue;
    Open;
  end; }
end;

procedure TKontragentForm.LoadKontragentList;
var
  controler: TKontragentController;
begin
  {controler:= TKontragentController.Create;
  try
    with arDS_kontr do begin
      Close;
      SetSourceList(controler.GetActiveKontragentsAU);
      Open;
    end;
  finally
    controler.Free;
  end;}
end;

procedure TKontragentForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_up) or (key=vk_down) then
  begin
    //GetDir;
    GetSchet;
    GetKSrv;
  end;
end;
procedure TKontragentForm.v1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[clv1ISACTIVE.Index] = 0 then begin
    AStyle:= Style1;
  end;
end;

{-------------------------Events-----------------------------------------------}
//Лицевые счета
procedure TKontragentForm.ds_bschetBeforePost(DataSet: TDataSet);
begin
  if (ds_bschet.FN('SCHET').AsString='') or
     (ds_bschet.FN('KSCHET').AsString='') then
  begin
    ShowMessage('Не заполнены обязательные поля!');
    Abort;
  end;
end;
//Банки
procedure TKontragentForm.ds_bankBeforePost(DataSet: TDataSet);
begin
  if (ds_bank.FN('Name').AsString='') or
     (ds_bank.FN('BIK').AsString='')  then
  begin
    ShowMessage('Не заполнены обязательные поля!');
    Abort;
  end;
end;

initialization
 RegisterClass(TKontragentForm);
end.





