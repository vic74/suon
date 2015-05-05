unit ShowPrikazPOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxDBLookupComboBox, cxTextEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, BaseForm,
  FIBQuery, pFIBCacheQueries,
  cxPropertiesStore, FIBDataSet, pFIBDataSet, frxClass, dxSkinsdxBarPainter,
  dxBar, cxCheckBox, dxLayoutControlAdapters, dxLayoutContainer, frxExportXLS,
  frxExportRTF, KontragentRepository, dxSkinDevExpressStyle, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinVS2010;

type
  TShowPrikazPO = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_left: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    cbb_ShowPrikaz: TcxExtLookupComboBox;
    itm_ShowPrikaz: TdxLayoutItem;
    cbb_Kontragent: TcxLookupComboBox;
    itm_Kontragent: TdxLayoutItem;
    cbb_SrvDog: TcxLookupComboBox;
    itm_SrvDog: TdxLayoutItem;
    edt_Num: TcxMaskEdit;
    itm_Num: TdxLayoutItem;
    dt_Data: TcxDateEdit;
    itm_Data: TdxLayoutItem;
    cbb_ShowType: TcxComboBox;
    itm_ShowType: TdxLayoutItem;
    edt_GenDir: TcxMaskEdit;
    itm_GenDir: TdxLayoutItem;
    edt_Ipolnit: TcxMaskEdit;
    itm_Ipolnit: TdxLayoutItem;
    edt_Control: TcxMaskEdit;
    itm_Control: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    ds_SHOWPROKAZPO: TpFIBDataSet;
    src_SHOWPROKAZPO: TDataSource;
    prop1: TcxPropertiesStore;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1SHOWPRIKAZ: TcxGridDBColumn;
    clv1SPNUM: TcxGridDBColumn;
    clv1NUM: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1SHOWTYPE: TcxGridDBColumn;
    clv1SHNAME: TcxGridDBColumn;
    clv1GENDIR: TcxGridDBColumn;
    clv1ISPOLNIT: TcxGridDBColumn;
    clv1CONTROL: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1SRNOMER: TcxGridDBColumn;
    fr: TfrxReport;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    btn_print: TdxBarButton;
    doc_br1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    clv1ALOCK: TcxGridDBColumn;
    wexp1: TfrxRTFExport;
    src_kontr: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_KontragentPropertiesChange(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_printClick(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
    procedure SetKontr;
    procedure GetDolg;
    procedure AddRec(isEdit :boolean=false);
    function CheckParam :Boolean;
    procedure SetEdit;
    procedure PrintRep;
    function IsNotNull(AField: Variant): Boolean;
    procedure SetEditRight;
  public
    { Public declarations }
  end;

var
  ShowPrikazPO: TShowPrikazPO;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, CommonDm;

{$R *.dfm}

procedure TShowPrikazPO.AddRec(isEdit :boolean=false);
begin
  if not CheckParam then Exit;
  if (ds_SHOWPROKAZPO.FN('ALOCK').AsVariant=1) and (isEdit) then
  if ActiveUserType=1 then
  begin
    cmShowMessage('Приказ заблокирован. Редактировать запрещено!');
    Exit;
  end;
  with ds_SHOWPROKAZPO do
  begin
    if isEdit then Edit else
    Append;
    FN('SHOWPRIKAZ').AsVariant:=cbb_ShowPrikaz.EditValue;
    FN('NUM').AsVariant:=edt_Num.EditValue;
    FN('DATA').AsVariant:=dt_Data.EditValue;
    FN('SHOWTYPE').AsVariant:=cbb_ShowType.ItemIndex;
    FN('GENDIR').AsVariant:=edt_GenDir.EditValue;
    FN('ISPOLNIT').AsVariant:=edt_Ipolnit.EditValue;
    FN('CONTROL').AsVariant:=edt_Control.EditValue;
    FN('KONTRAGENT').AsVariant:=cbb_Kontragent.EditValue;
    FN('SRVDOG').AsVariant:=cbb_SrvDog.EditValue;
    Post;
  end;
end;

procedure TShowPrikazPO.btn_delClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
     (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then Exit;
  if ds_SHOWPROKAZPO.FN('ALOCK').AsVariant=1 then
  if ActiveUserType=1 then
  begin
    cmShowMessage('Приказ заблокирован. Редактировать запрещено!');
    Exit;
  end;
  if cmMessageBox('Удалить запись?') then
  ds_SHOWPROKAZPO.Delete;
end;

procedure TShowPrikazPO.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TShowPrikazPO.btn_okClick(Sender: TObject);
begin
  AddRec();
end;

procedure TShowPrikazPO.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

procedure TShowPrikazPO.cbb_KontragentPropertiesChange(Sender: TObject);
begin
  GetDolg;
end;

function TShowPrikazPO.CheckParam: Boolean;
begin
  Result:=True;
  if cbb_ShowPrikaz.EditValue=null then
  begin
    cmShowMessage('Не указан приказ ООО ДЕЗ',true);
    Result:=False;
    Exit;
  end;
  if edt_Num.EditValue=null then
  begin
    cmShowMessage('Не указан номер приказа',true);
    Result:=False;
    Exit;
  end;
  if dt_Data.EditValue=null then
  begin
    cmShowMessage('Не указана дата приказа',true);
    Result:=False;
    Exit;
  end;
  if edt_GenDir.EditValue=null then
  begin
    cmShowMessage('Не указан ген.директор',true);
    Result:=False;
    Exit;
  end;
  if edt_Ipolnit.EditValue=null then
  begin
    cmShowMessage('Не указан исполнитель',true);
    Result:=False;
    Exit;
  end;
  if edt_Control.EditValue=null then
  begin
    cmShowMessage('Не указан контролер',true);
    Result:=False;
    Exit;
  end;
  if cbb_Kontragent.EditValue=null then
  begin
    cmShowMessage('Не указан подрядчик',true);
    Result:=False;
    Exit;
  end;
  if cbb_SrvDog.EditValue=null then
  begin
    cmShowMessage('Не указан договор',true);
    Result:=False;
    Exit;
  end;
end;

procedure TShowPrikazPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TShowPrikazPO.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
  SetEditRight;
end;
{------------------------------------------------------------------------------
 Установка доступа для блокировки приказа от редактирования
-------------------------------------------------------------------------------}
procedure TShowPrikazPO.SetEditRight;
begin
  case ActiveRole of
    7  : clv1ALOCK.Options.Editing:=True;  //Ст. Менеджер СЭ.
    3  : clv1ALOCK.Options.Editing:=True;  //Начальник СЭ.
    22 : clv1ALOCK.Options.Editing:=True;  //зам. начальника СЭ
  end;
end;

procedure TShowPrikazPO.GetDolg;
begin
  with ds_SRVDOG do
  begin
    Close;
    if cbb_Kontragent.EditValue=null then Exit;
    ParamByName('kontr').AsVariant:=cbb_Kontragent.EditValue;
    Open;
  end;
end;

procedure TShowPrikazPO.OpenDS;
begin
  cbb_ShowPrikaz.Properties.KeyFieldNames:='CODE';
  cbb_ShowPrikaz.Properties.ListFieldItem:=com_dm.cl_SP_NUM;
  cbb_ShowPrikaz.Properties.View:=com_dm.v_SHOWPRIKAZ;
  DSOptoins(ds_SHOWPROKAZPO,'','SHOWPROKAZPO','CODE','SHOWPRIKAZPO_GEN',false);
  if ActiveUserType=1 then
  with ds_SHOWPROKAZPO do
  begin
    MainWhereClause:='sp.KONTRAGENT=:sp';
    ParamByName('sp').AsVariant:=ActiveKontragent;
    Open;
  end else
    ds_SHOWPROKAZPO.Open;
  {$REGION 'Kontragent'}
    src_kontr.DataSet:= fController.DS;
    fController.GetActiveKontrShort();
  {$ENDREGION}
  com_dm.ds_SHOWPRIKAZ.CloseOpen(true);
  SetKontr;
end;

function TShowPrikazPO.IsNotNull(AField: Variant): Boolean;
begin
  if (AField=null) or (AField=Unassigned) then Result:=False else
                                               Result:=True;
end;

procedure TShowPrikazPO.PrintRep;

  function GetType(AType :integer; AVar :variant) :Variant;
  begin
    if AVar=1 then
    case AType of
      0 :Result :='весеннeго';
      1 :Result :='осеннего';
    end else
    case AType of
      0 :Result :='весенний';
      1 :Result :='осенний';
    end
  end;

  function GetYear :Variant;
  var
    y,m,d :Word;
  begin
    DecodeDate(VarToDateTime(v1.GetColumnByFieldName('DATA').EditValue),y,m,d);
    Result:=y;
  end;

  function GetDataDez :Variant;
  var
    Q :TfibQuery;
  begin
    Q:=GetQueryForUse(cmDB.RT,'SELECT CODE, NUM, DATA, SHOWTYPE,' + #13#10 +
                              ' GENDIR, CHIEFOE, CHIEFTO' + #13#10 +
                              ' FROM SHOWPRIKAZ' + #13#10 +
                              ' where code=:cod');
    Q.ParamByName('cod').AsVariant:=cbb_ShowPrikaz.EditValue;
    Q.ExecQuery;
    Result:=VarToStr(Q.FN('NUM').AsVariant)+' от '+VarToStr(Q.FN('DATA').AsVariant);
  end;

begin

  if not IsNotNull(v1.GetColumnByFieldName('Code').EditValue) then Exit;

  fr.LoadFromFile('rep\ShowPrikazPO.fr3');
  fr.Variables['varDatePricaz'] :=#39+VarToStr(gFN(v1,'DATA'))+#39;
  fr.Variables['varGenDir'] := #39+v1.GetColumnByFieldName('GENDIR').EditValue+#39;
  fr.Variables['varDataPricaz'] :=#39+GetDataDez+#39;
  //v1.GetColumnByFieldName('DATA').EditValue;
  fr.Variables['varNumPricaz'] :=#39+v1.GetColumnByFieldName('NUM').EditValue+#39;
  fr.Variables['varType'] :=#39+
        GetType(v1.GetColumnByFieldName('SHOWTYPE').EditValue,1)+#39;
  fr.Variables['varType1'] :=#39+
        GetType(v1.GetColumnByFieldName('SHOWTYPE').EditValue,0)+#39;
  fr.Variables['varYear'] :=GetYear;
  fr.Variables['varControl'] :=#39+v1.GetColumnByFieldName('CONTROL').EditValue+#39;
  fr.Variables['varIspolnit'] :=#39+v1.GetColumnByFieldName('ISPOLNIT').EditValue+#39;

  fr.Variables['varKName'] :=#39+v1.GetColumnByFieldName('KName').EditValue+#39;

  fr.ShowReport();

end;

procedure TShowPrikazPO.SetEdit;
begin
  with ds_SHOWPROKAZPO do
  begin
    cbb_ShowPrikaz.EditValue := FN('SHOWPRIKAZ').AsVariant;
    edt_Num.EditValue:=FN('NUM').AsVariant;
    dt_Data.EditValue:=FN('DATA').AsVariant;
    cbb_ShowType.ItemIndex:=FN('SHOWTYPE').AsVariant;
    edt_GenDir.EditValue:=FN('GENDIR').AsVariant;
    edt_Ipolnit.EditValue:=FN('ISPOLNIT').AsVariant;
    edt_Control.EditValue:=FN('CONTROL').AsVariant;
    cbb_Kontragent.EditValue:=FN('KONTRAGENT').AsVariant;
    cbb_SrvDog.EditValue:=FN('SRVDOG').AsVariant;
  end;
end;

procedure TShowPrikazPO.SetKontr;
begin
  if ActiveUserType=1 then
  begin
    cbb_Kontragent.EditValue:=ActiveKontragent;
    cbb_Kontragent.Properties.ReadOnly:=True;
  end else
    cbb_Kontragent.Properties.ReadOnly:=False;
end;

procedure TShowPrikazPO.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetEdit;
end;

procedure TShowPrikazPO.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :SetEdit;
    VK_DOWN :SetEdit;
  end;
end;

initialization
RegisterClass(TShowPrikazPO);
end.

