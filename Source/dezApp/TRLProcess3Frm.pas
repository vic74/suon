unit TRLProcess3Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  frxClass,frxFIBComponents,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  cxTextEdit, cxCalendar, cxCalc, cxImageComboBox, Menus, ImgList, StdCtrls,
  cxButtons, dxSkinsdxBarPainter, dxBar, dxLayoutContainer, dxScreenTip,
  dxSkinDevExpressStyle, cxCheckBox, cxDBLookupComboBox, cxBarEditItem;

type
  TTRLProcess3Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    ds_TRFACT2: TpFIBDataSet;
    src_TRFACT2: TDataSource;
    ds_TRFACT3: TpFIBDataSet;
    src_TRFACT3: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MNAME: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2MANAGER: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2NCALC: TcxGridDBColumn;
    clv2NCALCDATE: TcxGridDBColumn;
    clv2NSUMMA: TcxGridDBColumn;
    clv2NDOP: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2PLANCODE: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NCALC: TcxGridDBColumn;
    clv1NCALCDATE: TcxGridDBColumn;
    clv1NSUMMA: TcxGridDBColumn;
    clv1NDOP: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1PLANCODE: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    grlc1Group3: TdxLayoutGroup;
    clv1SMANAGER: TcxGridDBColumn;
    clv1SFIO: TcxGridDBColumn;
    fr1: TfrxReport;
    iml1: TcxImageList;
    clv2ISPRINT: TcxGridDBColumn;
    clv2DPLACE: TcxGridDBColumn;
    clv2DDate: TcxGridDBColumn;
    clv2DNum: TcxGridDBColumn;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_printS: TdxBarButton;
    btn_edSum: TdxBarButton;
    stip1: TdxBarScreenTipRepository;
    tip1: TdxBarScreenTip;
    tip_sEdt: TdxBarScreenTip;
    btn_refresh: TdxBarButton;
    tip_refresh: TdxBarScreenTip;
    clv2Y: TcxGridDBColumn;
    clv2SMETA: TcxGridDBColumn;
    cbb_Firm: TcxBarEditItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv2NCALCPropertiesEditValueChanged(Sender: TObject);
    procedure clv2NCALCDATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2NSUMMAPropertiesEditValueChanged(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_printSClick(Sender: TObject);
    procedure btn_edSumClick(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fFirm: Variant;
    procedure PrepareDS;
    procedure ReopenTRFACT2;
    procedure ReopenTRFACT3;
    procedure ChangeState(aState :Variant);
    procedure PrintDefVed;
    function isPrint(defved: variant): boolean;
    function ShowCalcForm :boolean;
    procedure LoadData;
    procedure CloseDS;
  public
    { Public declarations }
  end;

var
  TRLProcess3Form: TTRLProcess3Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, CalcSumFrm, LoadingSplash;

{$R *.dfm}

function TTRLProcess3Form.isPrint(defved: variant): boolean;
begin
  Result:=false;
  with ds_TRFACT2 do begin
    if Locate('CODE',defved,[]) then
    if FN('ISPRINT').AsVariant=1 then Result:=true;
  end;
end;

procedure TTRLProcess3Form.LoadData;
begin
  ReopenTRFACT2;
  ReopenTRFACT3;
end;

procedure TTRLProcess3Form.PrintDefVed;
var
  fdb: TfrxFIBDatabase;
  Q :TfrxFIBQuery;
  cod :Variant;
begin
  if gFN(v2,'CODE') = null then Exit;
  fr1.LoadFromFile('rep\defved1.fr3');
  cod := gFN(v2,'CODE');
  Q := fr1.FindObject('Q1') as TfrxFIBQuery;
  Q.Close;
  Q.ParamByName('cod').Value:=cod;
  //
  //fr1.Variables['varKontr'] :=#39 + gFN(v1,'KName')+ #39;
  fr1.Variables['varIsp'] :=#39 + gFN(v2,'FIO')+ #39;
  fr1.Variables['varAddr'] :=#39 + VarToStr(gFN(v2,'SNAME'))+
                                    ' д.'+VarToStr(gFN(v2,'NOMER'))+' '+
                                    VarToStrDef(gFN(v2,'DPLACE'),' ')+ #39;
  fr1.Variables['varPrich'] :=#39 + gFN(v2,'MNAME')+ #39;
  fr1.Variables['varDate'] :=#39 + VarToStrDef(gFN(v2,'DDate'),' ')+ #39;
  fr1.Variables['varNom'] := #39 + VarToStrDef(gFN(v2,'DNum'),' ')+ #39;
  //
  fdb := fr1.FindObject('fdb') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  if fr1.PrepareReport() then begin
    fr1.Print;
    with ds_TRFACT2 do begin
      Edit;
      FN('ISPRINT').AsVariant:=1;
      Post;
    end;
  end;
  //fr1.ShowReport();
end;

procedure TTRLProcess3Form.btn_edSumClick(Sender: TObject);
begin
  ShowCalcForm;
end;

procedure TTRLProcess3Form.btn_printClick(Sender: TObject);
var
  cod :string;
begin
  if gFN(v2,'CODE')=null then Exit;
  if isPrint(gFN(v2,'CODE'))then begin
    cod:='Вы уже распечатывали данную дефектную ведомость!' + #13#10 +
         'Хотите распечатать повторно?';
    if Application.MessageBox(PChar(cod), PChar(Application.Title), MB_YESNO +
      MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      PrintDefVed;
    end;
  end else begin
    cod:='Вы действительно хотите распечатать ' + #13#10 +
      '  дефектную ведомость №'+VarToStr(gFN(v2,'CODE'));
    if Application.MessageBox(PChar(cod), PChar(Application.Title), MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      PrintDefVed;
    end;
  end;
end;

function TTRLProcess3Form.ShowCalcForm :boolean;
var
  F: TCalcSumForm;
begin
  Result:=false;
  if gFN(v2,'CODE')=null then Exit;
  F:= TCalcSumForm.Create(self);
  F.CODE:= v2.FN('CODE');
  F.PlanY:= v2.FN('Y'); //plan Year
  F.TABLENAME:= 'TRLFACT';
  try
    F.msk_num.EditValue:=ds_TRFACT2.FN('NCALC').AsVariant;
    if ds_TRFACT2.FN('NCALC').AsVariant<>null then begin
       F.msk_num.Enabled:=false;
       F.btn_gen.Enabled:=false;
       F.cbb_worker.Enabled:=false;
    end;
    F.dt1.EditValue:=ds_TRFACT2.FN('NCALCDATE').AsVariant;
    F.ced_sum.EditValue:=ds_TRFACT2.FN('NSUMMA').AsVariant;
    F.cbb_worker.EditValue:=ds_TRFACT2.FN('smanager').AsVariant;
    if F.ShowModal=mrOk then begin
      with ds_TRFACT2 do begin
        Edit;
         FN('NCALC').AsVariant:=F.msk_num.EditValue;
         FN('NCALCDATE').AsVariant := F.dt1.EditValue;
         FN('NSUMMA').AsVariant:=F.ced_sum.EditValue;
         FN('smanager').AsVariant:=F.cbb_worker.EditValue;
        Post;
      end;
      Result :=true;
    end;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess3Form.btn_printSClick(Sender: TObject);
var
  cod :string;
begin
  if gFN(v2,'CODE')=null then Exit;
  if isPrint(gFN(v2,'CODE'))then begin
    cod:='Вы уже распечатывали данную дефектную ведомость!' + #13#10 +
         'Хотите распечатать повторно?';
    if Application.MessageBox(PChar(cod), PChar(Application.Title), MB_YESNO +
      MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      PrintDefVed;
    end;
  end else begin
    cod:='Вы действительно хотите распечатать ' + #13#10 +
      '  дефектную ведомость №'+VarToStr(gFN(v2,'CODE'));
    if Application.MessageBox(PChar(cod), PChar(Application.Title), MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
    begin
      PrintDefVed;
    end;
  end;
end;

procedure TTRLProcess3Form.btn_refreshClick(Sender: TObject);
begin
  //SplashVisibility(true,'Обновляем данные');
  try
    LoadData;
  finally
    //SplashVisibility(false);
  end;
end;

procedure TTRLProcess3Form.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  fFirm:= cbb_Firm.EditValue;
  CloseDS;
end;

procedure TTRLProcess3Form.ChangeState(aState: Variant);
var
  num, data, sum, smanager :Variant;
  //
  function CheckParam :boolean;
  begin
    Result:=true;
    if gFN(v2,'NCALC') = null then Result :=false;
    if gFN(v2,'NCALCDATE') = null then Result :=false;
    if gFN(v2,'NSUMMA') = null then Result :=false;
  end;
begin
  case aState of
    2 : begin
          if gFN(v1,'CODE') = null then Exit;
          with ds_TRFACT3 do begin
            edit;
            FN('STATE').AsVariant:=aState;
            post;
          end;
          ReopenTRFACT2;
          ReopenTRFACT3;
        end;

    3 : begin
          if gFN(v2,'CODE') = null then Exit;
          if not CheckParam then
           begin
             Application.MessageBox('Не заполнены параметры сметы! ' + #13#10
               + '      (номер, дата, сумма)', 'Ошибка', MB_OK + MB_ICONSTOP +
               MB_DEFBUTTON2 + MB_TOPMOST);
             Exit;
           end;
          with ds_TRFACT2 do begin
            edit;
            FN('STATE').AsVariant:=aState;
            post;
          end;
          ReopenTRFACT3;
          ReopenTRFACT2;
        end;
  end;
end;

procedure TTRLProcess3Form.CloseDS;
begin
  ds_TRFACT2.Close;
  ds_TRFACT3.Close;
end;

procedure TTRLProcess3Form.clv2NCALCDATEPropertiesEditValueChanged(
  Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TTRLProcess3Form.clv2NCALCPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TTRLProcess3Form.clv2NSUMMAPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TTRLProcess3Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRLProcess3Form.FormCreate(Sender: TObject);
begin
  PrepareDS;
  LoadForm(prop1,Self.Name);
end;

procedure TTRLProcess3Form.PrepareDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  DSOptoins(ds_TRFACT2,'','TRLFACT','CODE','TRLFACT_GEN',false);
  DSOptoins(ds_TRFACT3,'','TRLFACT','CODE','TRLFACT_GEN',false);
end;

procedure TTRLProcess3Form.ReopenTRFACT2;
begin
  v2.BeginUpdate(lsimImmediate);
  if VarIsType(fFirm,[varNull, varEmpty]) then
     fFirm:= cbb_Firm.EditValue;
  try
    with ds_TRFACT2 do begin
      Close;
        MainWhereClause:='TF.STATE=2 and TF.FIRM=:FIRM';
        ParamByName('FIRM').AsVariant:= fFirm;
      Open;
    end;
  finally
    v2.EndUpdate;
  end;
end;

procedure TTRLProcess3Form.ReopenTRFACT3;
begin
  v1.BeginUpdate(lsimImmediate);
  if VarIsType(fFirm,[varNull, varEmpty]) then
     fFirm:= cbb_Firm.EditValue;
  try
    with ds_TRFACT3 do begin
      Close;
      MainWhereClause:='TF.STATE=3 and TF.FIRM=:FIRM';
      ParamByName('FIRM').AsVariant:= fFirm;
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TTRLProcess3Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : ChangeState(2);  //3->2
  end;
end;

procedure TTRLProcess3Form.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : ChangeState(3);  //2->3
    VK_RETURN :  ShowCalcForm;
  end;
end;

initialization
 RegisterClass(TTRLProcess3Form);
end.
