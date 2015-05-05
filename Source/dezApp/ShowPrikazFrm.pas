unit ShowPrikazFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, Menus,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  frxFIBComponents,
  dxLayoutLookAndFeels, cxPropertiesStore, frxClass, dxmdaset,
  dxSkinsdxBarPainter, dxBar, frxExportXLS, frxExportRTF, frxExportPDF,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  EMyException = class(Exception);
  TShowPrikaz = class(TDezForm)
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
    ds_SHOWPRIKAZ: TpFIBDataSet;
    src_SHOWPRIKAZ: TDataSource;
    edt_NUM: TcxMaskEdit;
    itm_NUM: TdxLayoutItem;
    dt_Data: TcxDateEdit;
    itm_Data: TdxLayoutItem;
    cbb_ShowType: TcxComboBox;
    itm_ShowType: TdxLayoutItem;
    edt_GenDir: TcxMaskEdit;
    itm_GenDir: TdxLayoutItem;
    edt_ChiefOE: TcxMaskEdit;
    itm_ChiefOE: TdxLayoutItem;
    edt_ChiefTO: TcxMaskEdit;
    itm_ChiefTO: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1NUM: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1SHOWTYPE: TcxGridDBColumn;
    clv1GENDIR: TcxGridDBColumn;
    clv1CHIEFOE: TcxGridDBColumn;
    clv1CHIEFTO: TcxGridDBColumn;
    clv1SHNAME: TcxGridDBColumn;
    prop1: TcxPropertiesStore;
    fr: TfrxReport;
    grp_bottom: TdxLayoutGroup;
    spl2: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    spl4: TdxLayoutSplitterItem;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    ds_SHOWPRIKAZLIST: TpFIBDataSet;
    src_SHOWPRIKAZLIST: TDataSource;
    m_SRVDOG: TdxMemData;
    clv3CODE: TcxGridDBColumn;
    clv3SHOWPRIKAZ: TcxGridDBColumn;
    clv3SPNUM: TcxGridDBColumn;
    clv3SRVDOG: TcxGridDBColumn;
    clv3SDNOMER: TcxGridDBColumn;
    clv3kontragent: TcxGridDBColumn;
    clv3KName: TcxGridDBColumn;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    doc_br1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    btn_print: TdxBarButton;
    wExp1: TfrxRTFExport;
    clv1stnum: TcxGridDBColumn;
    clv1stdate: TcxGridDBColumn;
    txt1: TcxTextEdit;
    itmlc1Item1: TdxLayoutItem;
    dt1: TcxDateEdit;
    itmlc1Item11: TdxLayoutItem;
    clv1CHIEF_FIN: TcxGridDBColumn;
    clv1CHIEF_UO: TcxGridDBColumn;
    btn_NewRec: TdxBarButton;
    btn_EditRec: TdxBarButton;
    btn_DeleteRec: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_printClick(Sender: TObject);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_NewRecClick(Sender: TObject);
    procedure btn_EditRecClick(Sender: TObject);
    procedure btn_DeleteRecClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    function CheckParam :Boolean;
    procedure AddRec(isEdit :Boolean=false);
    procedure SetEdit;
    procedure Extract;
    procedure Added;
    function IsNotNull (AField :Variant) :Boolean;
    procedure CreateMem;
    procedure OpenSrvDog;
    function GetCodList :Variant;
    procedure PrintRep;
    procedure RightForEdit;
    procedure RecNew;
    procedure RecEdit(Id: Variant);
    procedure RecDelete(Id: Variant);
    procedure ReopenPrikaz;
  public
    { Public declarations }
  end;

var
  ShowPrikaz: TShowPrikaz;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, ShowPricazEditFrm;

{$R *.dfm}

procedure TShowPrikaz.AddRec(isEdit: Boolean);
begin
  if not CheckParam then Exit;
  with ds_SHOWPRIKAZ do
  begin
    if isEdit then Edit else
    Append;
    FN('NUM').AsVariant:=edt_NUM.EditValue;
    FN('DATA').AsVariant:=dt_Data.EditValue;
    FN('SHOWTYPE').AsVariant:=cbb_ShowType.ItemIndex;
    FN('GENDIR').AsVariant:= edt_GenDir.EditValue;
    FN('CHIEFOE').AsVariant:= edt_ChiefOE.EditValue;
    FN('CHIEFTO').AsVariant:= edt_ChiefTO.EditValue;
    FN('stnum').AsVariant:= txt1.EditValue;
    FN('stdate').AsVariant:= dt1.EditValue;
    Post;
  end;
end;

procedure TShowPrikaz.btn_delClick(Sender: TObject);
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
     (v1.GetColumnByFieldName('CODE').EditValue=Unassigned)
   then  Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_SHOWPRIKAZ.Delete;
end;

procedure TShowPrikaz.btn_DeleteRecClick(Sender: TObject);
begin
  RecDelete(v1.GetColumnByFieldName('CODE').EditValue);
end;

procedure TShowPrikaz.btn_editClick(Sender: TObject);
begin
  //AddRec(true);
end;

procedure TShowPrikaz.btn_EditRecClick(Sender: TObject);
begin
  RecEdit(v1.GetColumnByFieldName('CODE').EditValue);
end;

procedure TShowPrikaz.btn_NewRecClick(Sender: TObject);
begin
  RecNew;
end;

procedure TShowPrikaz.btn_okClick(Sender: TObject);
begin
  AddRec(false);
end;

procedure TShowPrikaz.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

function TShowPrikaz.CheckParam: Boolean;
begin
  Result:=True;
  if edt_NUM.EditValue=null then
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
  if cbb_ShowType.EditValue=null then
  begin
    cmShowMessage('Не указан тип',true);
    Result:=False;
    Exit;
  end;
  if edt_GenDir.EditValue=null then
  begin
    cmShowMessage('Не указан гендиректор',true);
    Result:=False;
    Exit;
  end;
  if edt_ChiefOE.EditValue=null then
  begin
    cmShowMessage('Не указан глава отдела эксплуатации',true);
    Result:=False;
    Exit;
  end;
  if edt_ChiefTO.EditValue=null then
  begin
    cmShowMessage('Не указан технический директор',true);
    Result:=False;
    Exit;
  end;
end;

procedure TShowPrikaz.CreateMem;
begin
  CreateField(m_SRVDOG,'CODE',ftInteger);
  CreateField(m_SRVDOG,'KONTRAGENT',ftInteger);
  CreateField(m_SRVDOG,'KNAME',ftString,128);
  CreateField(m_SRVDOG,'NOMER',ftString,16);
  CreateField(m_SRVDOG,'D1',ftDate);
  CreateField(m_SRVDOG,'D2',ftDate);
  m_SRVDOG.Open;
end;

procedure TShowPrikaz.Extract;
var
  Code :Variant;
begin
  Code := v3.GetColumnByFieldName('CODE').EditValue;
  if not IsNotNull(Code) then Exit;
  //удаляем из списка закрепленных договоров
  ds_SHOWPRIKAZLIST.Delete;
  //добавляем в список договоров
  OpenSrvDog;
end;

procedure TShowPrikaz.Added;
var
  SHOWPRIKAZ, SRVDOG, CurCod :Variant;
begin
  //if ds_SHOWPRIKAZLIST.Locate then
  SHOWPRIKAZ :=v1.GetColumnByFieldName('CODE').EditValue;
  SRVDOG := v2.GetColumnByFieldName('CODE').EditValue;
  if (SHOWPRIKAZ=Unassigned) or (SRVDOG=Unassigned) then Exit;
  CurCod:=v2.Controller.FocusedRowIndex;
  with ds_SHOWPRIKAZLIST do
  begin
    Append;
    FN('SHOWPRIKAZ').AsVariant:= SHOWPRIKAZ;
    FN('SRVDOG').AsVariant:= SRVDOG;
    Post;
  end;

  m_SRVDOG.Delete;
  OpenSrvDog;
  v2.Controller.FocusRecord(CurCod,true);
end;

procedure TShowPrikaz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShowPrikaz.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
  RightForEdit;
end;

procedure TShowPrikaz.RecDelete(Id: Variant);
begin
  if VarIsType(Id,[0,1]) then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_SHOWPRIKAZ.Delete;
  end;
end;

procedure TShowPrikaz.RecEdit(Id: Variant);
var
  F: TShowPricazEditForm;
begin
  F:= TShowPricazEditForm.Create(Self, Id);
  try
    if F.ShowModal = mrOk then
       ReopenPrikaz;
  finally
    FreeAndNil(F);
  end;
end;

procedure TShowPrikaz.RecNew;
begin
  RecEdit(Null);
end;

procedure TShowPrikaz.ReopenPrikaz;
var
  AIndex: Integer;
begin
  AIndex:= v1.Controller.FocusedRowIndex;
  v1.BeginUpdate(lsimImmediate);
  try
    ds_SHOWPRIKAZ.CloseOpen(false);
  finally
    v1.EndUpdate;
    v1.Controller.FocusRecord(AIndex, True);
  end;
end;

procedure TShowPrikaz.RightForEdit;
begin
  if (ActiveRole=3) or      //Шалимова (Начальник СЭ.)
     (ActiveRole=1) or      //Системный администратор
     (ActiveRole=6) or      //Разработчик системы автоматизации
     (ActiveRole=22) then   //Колегова (зам. начальника СЭ)
  begin
     grp_left.Enabled :=True;

  end else
     grp_left.Enabled:=False;
end;

function TShowPrikaz.GetCodList: Variant;
var
  CurCod, List :Variant;
begin
  CurCod:=v3.Controller.FocusedRowIndex;

  with ds_SHOWPRIKAZLIST do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      List:=VarToStr(List)+','+VarToStr(FN('SRVDOG').AsVariant);
      Next;
    end;
    EnableControls;
  end;
  if (not VarIsEmpty(List)) or (not VarIsNull(List))
    then List:=VarToStr(List)+',';
  Result:=List;
  v3.Controller.FocusRecord(CurCod,true);
end;

function TShowPrikaz.IsNotNull(AField: Variant): Boolean;
begin
  if (AField=null) or (AField=Unassigned) then Result:=False else
                                               Result:=True;
end;

procedure TShowPrikaz.OpenDs;
begin
  DSOptoins(ds_SHOWPRIKAZ,'','SHOWPRIKAZ','CODE','SHOWPRIKAZ_GEN');
  DSOptoins(ds_SHOWPRIKAZLIST,'','SHOWPRIKAZLIST','CODE','SHOWPRIKAZLIST_GEN',false);
  ds_SRVDOG.Open;
  CreateMem;
  SetEdit;
end;

procedure TShowPrikaz.OpenSrvDog;
var
  ls :Variant;
begin
  ls:=GetCodList;

  with ds_SRVDOG do
  begin
    Close;
    if IsNotNull(ls) then
    MainWhereClause:=
            '('#39+ls+#39'  not containing '#39','#39'||sd.CODE||'#39','#39')';
    Open;
  end;
  m_SRVDOG.Close; m_SRVDOG.Open;
  m_SRVDOG.LoadFromDataSet(ds_SRVDOG);
end;

procedure TShowPrikaz.PrintRep;
var
  fdb: TfrxFIBDatabase;
  function GetYear :Variant;
  var
    y,m,d :Word;
  begin
    DecodeDate(VarToDateTime(v1.GetColumnByFieldName('DATA').EditValue),y,m,d);
    Result:=y;
  end;
  function GetPO :Variant;
  var
    CurCod, list :Variant;
  begin
    CurCod:=v3.Controller.FocusedRowIndex;
    with ds_SHOWPRIKAZLIST do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        List:=VarToStr(List)+VarToStr(FN('KName').AsVariant)+', ';
        Next;
      end;
      EnableControls;
    end;
    Result:=List;
    v3.Controller.FocusRecord(CurCod,true);
  end;
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
begin
  if not IsNotNull(v1.GetColumnByFieldName('Code').EditValue) then Exit;

  fr.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\ShowPrikaz.fr3');
  fr.Variables['varStNum'] := #39+gFN(v1,'STNUM')+#39;
  fr.Variables['varStDate'] := #39+VarToSTrDef(gFN(v1,'STDATE'),'')+#39;
  fr.Variables['varGenDir'] := #39+v1.GetColumnByFieldName('GENDIR').EditValue+#39;
  fr.Variables['varDataPricaz'] :=v1.GetColumnByFieldName('DATA').EditValue;
  fr.Variables['varNumPricaz'] :=#39+v1.GetColumnByFieldName('NUM').EditValue+#39;
  fr.Variables['varType'] :=#39+
        GetType(v1.GetColumnByFieldName('SHOWTYPE').EditValue,1)+#39;
  fr.Variables['varType1'] :=#39+
        GetType(v1.GetColumnByFieldName('SHOWTYPE').EditValue,0)+#39;
  fr.Variables['varYear'] :=GetYear;
  fr.Variables['varChifOE'] :=#39+v1.GetColumnByFieldName('CHIEFOE').EditValue+#39;
  fr.Variables['varPO'] :=#39+GetPO+#39;
  fr.Variables['varChiefTO'] :=#39+v1.GetColumnByFieldName('CHIEFTO').EditValue+#39;
  fr.Variables['varChiefFIN'] :=#39+v1.GetColumnByFieldName('CHIEF_FIN').EditValue+#39;
  fr.Variables['varChiefOU'] :=#39+v1.GetColumnByFieldName('CHIEF_UO').EditValue+#39;
  fr.ShowReport();
end;

procedure TShowPrikaz.SetEdit;
var
  Code :Variant;
begin
  Code := v1.GetColumnByFieldName('CODE').EditValue;
  ds_SHOWPRIKAZLIST.Close;
  if (Code=null) or (Code=Unassigned) then Exit;

  with ds_SHOWPRIKAZ do
  begin
    edt_NUM.EditValue := FN('NUM').AsVariant;
    dt_Data.EditValue := FN('DATA').AsVariant;
    cbb_ShowType.ItemIndex := FN('SHOWTYPE').AsVariant;
    edt_GenDir.EditValue := FN('GENDIR').AsVariant;
    edt_ChiefOE.EditValue := FN('CHIEFOE').AsVariant;
    edt_ChiefTO.EditValue := FN('CHIEFTO').AsVariant;
    txt1.EditValue := FN('stnum').AsVariant;
    dt1.EditValue := FN('stdate').AsVariant;
  end;

  with ds_SHOWPRIKAZLIST do
  begin
    MainWhereClause:='sp.SHOWPRIKAZ = :sp';
    ParamByName('sp').AsVariant:=Code;
    Open;
  end;

  OpenSrvDog;
end;

procedure TShowPrikaz.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetEdit;
end;

procedure TShowPrikaz.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //raise Exception.Create('Ошибка для EurekaLog');
end;

procedure TShowPrikaz.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :SetEdit;
    VK_DOWN :SetEdit;
  end;
end;

procedure TShowPrikaz.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Added;
end;

procedure TShowPrikaz.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN : Added;
  end;
end;

procedure TShowPrikaz.v3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  Extract;
end;

procedure TShowPrikaz.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN : Extract;
  end;
end;

initialization
RegisterClass(TShowPrikaz);
end.
