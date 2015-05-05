unit TRLProcess6Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Menus, DB, FIBDataSet, pFIBDataSet, StdCtrls,
  FIBQuery,pFIBCacheQueries, pFIBProps,
  cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, dxmdaset, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCalc,
  cxImageComboBox, ImgList, frxClass, frxFIBComponents, dezCommon,
  dxSkinsdxBarPainter, dxBar, dxLayoutControlAdapters, dxLayoutContainer,
  dxScreenTip, KontragentRepository, dxSkinDevExpressStyle, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TTRLProcess6Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_state: TcxComboBox;
    itm_state: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    src_kontr: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_TRFACT: TpFIBDataSet;
    src_TRFACT: TDataSource;
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
    clv1TRDOPSOG: TcxGridDBColumn;
    m_state: TdxMemData;
    src_state: TDataSource;
    clv1TRDOP: TcxGridDBColumn;
    clv1TRDOPSTATE: TcxGridDBColumn;
    iml1: TcxImageList;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    grlc1Group3: TdxLayoutGroup;
    ds_TRPREDP: TpFIBDataSet;
    src_TRPREDP: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2TRFACT: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2DTYPENAME: TcxGridDBColumn;
    clv2DTYPE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    fr: TfrxReport;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    doc1: TdxBarDockControl;
    itm_doc: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_del_fact: TdxBarButton;
    btn_AddNewWork: TdxBarButton;
    stip1: TdxBarScreenTipRepository;
    tip_del_fact: TdxBarScreenTip;
    tip_new_Work: TdxBarScreenTip;
    clv1DPLACE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure clv1DATAPropertiesEditValueChanged(Sender: TObject);
    procedure clv1STATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv1SUMMAPropertiesEditValueChanged(Sender: TObject);
    procedure v1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clv1STATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clv1DATACustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure clv1SUMMACustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_printClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_del_factClick(Sender: TObject);
    procedure btn_AddNewWorkClick(Sender: TObject);
    procedure clv1DPLACEPropertiesEditValueChanged(Sender: TObject);
    procedure clv1NOTEPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure PrepareDS;
    procedure CreateMState;
    procedure ReopenTRFACT;
    function CheckParams :Boolean;
    function CheckTRdopState :Boolean;
    procedure ReopenTRPREDP;
    procedure PrintRep;
    procedure Del_Fact;
    procedure SetRight;
    procedure AddNewWork;
  public
    { Public declarations }
  end;

var
  TRLProcess6Form: TTRLProcess6Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash, FactAddFrm;

{$R *.dfm}

procedure TTRLProcess6Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TTRLProcess6Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  PrepareDS;
  SetRight;
end;

procedure TTRLProcess6Form.PrepareDS;
begin
  CreateMState;
  {$REGION 'Kontragent'}
  src_kontr.DataSet:= fController.DS;
  if ActiveUserType =1 then begin
    fController.GetById(ActiveKontragent);
    cbb_kontr.EditValue:=ActiveKontragent;
  end else
    fController.GetActiveKontrShort();
  {$ENDREGION}
  DSOptoins(ds_TRFACT,'','TRLFACT','CODE','TRLFACT_GEN',false);
end;

procedure TTRLProcess6Form.PrintRep;
var
  Q1: TfrxFIBQuery;
  fdb: TfrxFIBDatabase;
begin
    if gFN(v1,'KONTRAGENT') = null then Exit;
    fr.LoadFromFile('rep\objtrdop.fr3');

    Q1 :=fr.FindObject('Q1') as TfrxFIBQuery;
    if cbb_state.ItemIndex<6 then begin
      Q1.Close;
      Q1.SQL.Add('where TF.kontragent = :kontr and tf.data between :d1 and :d2 and tf.state = :st');
      Q1.ParamByName('kontr').Value:=gFN(v1,'KONTRAGENT');
      Q1.ParamByName('d1').Value:=dt1.EditValue;
      Q1.ParamByName('d2').Value:=dt2.EditValue;
      Q1.ParamByName('st').Value:=cbb_state.ItemIndex;
    end else begin
      Q1.Close;
      Q1.SQL.Add('where TF.kontragent = :kontr and tf.data between :d1 and :d2');
      Q1.ParamByName('kontr').Value:=gFN(v1,'KONTRAGENT');
      Q1.ParamByName('d1').Value:=dt1.EditValue;
      Q1.ParamByName('d2').Value:=dt2.EditValue;
    end;
    fr.Variables['varKontr'] :=#39+ gFN(v1,'KNAME') +#39;
    fdb := fr.FindObject('fdb') as TfrxFIBDatabase;
    with fdb do
    begin
      if Connected then Exit;
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
     end;
    fr.ShowReport();
end;

procedure TTRLProcess6Form.ReopenTRFACT;
begin
  if not CheckParams then exit;
  SplashVisibility(true,'Получаем данные.');
  try
    with ds_TRFACT do begin
      Close;
      MainWhereClause:='TF.DATA BETWEEN :D1 and :D2';
      if cbb_kontr.EditValue <> null then begin
        MainWhereClause:= MainWhereClause + ' AND TF.KONTRAGENT=:Kontr ';
        ParamByName('Kontr').AsVariant:=cbb_kontr.EditValue;
      end;
      if cbb_state.ItemIndex < 6 then begin
        MainWhereClause:=MainWhereClause+' AND TF.STATE=:st';
        ParamByName('st').AsVariant:=cbb_state.ItemIndex;
      end;
      ParamByName('D1').AsVariant:=dt1.EditValue;
      ParamByName('D2').AsVariant:=dt2.EditValue;
      Open;
    end;
    ReopenTRPREDP;
  finally
    SplashVisibility(false);
  end;
end;

procedure TTRLProcess6Form.ReopenTRPREDP;
begin
  with ds_TRPREDP do begin
    Close;
      if gFN(v1,'CODE') = null then exit;
      MainWhereClause:='tp.TRLFACT = :tf';
      ParamByName('tf').AsVariant:=gFN(v1,'CODE');
    Open;
  end;
end;

procedure TTRLProcess6Form.AddNewWork;
var
  F :TFactAddForm;
begin
  if gFN(v1,'CODE')=null then Exit;
  F:=TFactAddForm.Create(Application);
  try
    F.lDS:=ds_TRFACT;
    F.lift:=true;
    if F.ShowModal=mrOk then
    ReopenTRFACT;
    ds_TRFACT.Last;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess6Form.SetRight;
begin
  case ActiveRole of
    1 : itm_doc.Visible:=true;   //Системный администратор
    7 : begin
          itm_doc.Visible:=true;     //Ст. Менеджер СЭ.
          clv1DPLACE.Options.Editing:= True;  // место проведение ремонта
          clv1NOTE.Options.Editing:= True;    // дополнительная информация
        end;
    4 : begin
          itm_doc.Visible:=true;     //Менеджер СЭ.
          clv1DPLACE.Options.Editing:= True;  // место проведение ремонта
          clv1NOTE.Options.Editing:= True;    // дополнительная информация
        end;
    else begin
           itm_doc.Visible:=false;
           clv1DPLACE.Options.Editing:= false; // место проведение ремонта
           clv1NOTE.Options.Editing:= false;   // дополнительная информация
         end;
  end;
end;

procedure TTRLProcess6Form.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReopenTRPREDP;
end;

procedure TTRLProcess6Form.v1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  {if AViewInfo.GridRecord.Values[clv1TRDOPSTATE.Index] = 1 then begin
    clv1STATE.Options.Editing:=false;
    clv1DATA.Options.Editing:=false;
    clv1SUMMA.Options.Editing:=false;
    //ACanvas.Brush.Color := clBtnShadow;
  end;}
end;

procedure TTRLProcess6Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : ReopenTRPREDP;
    VK_DOWN : ReopenTRPREDP;
  end;
end;

procedure TTRLProcess6Form.btn_AddNewWorkClick(Sender: TObject);
begin
  if ds_TRFACT.State in [dsInactive] then Exit;
  AddNewWork;
end;

procedure TTRLProcess6Form.btn_del_factClick(Sender: TObject);
begin
  Del_Fact;
end;

procedure TTRLProcess6Form.btn_execClick(Sender: TObject);
begin
  ReopenTRFACT;
end;

procedure TTRLProcess6Form.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

function TTRLProcess6Form.CheckParams: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if dt1.EditValue=null then
  begin
    Rez('Укажите начало периода!', dt1);
    Exit;
  end;
  if dt2.EditValue=null then
  begin
    Rez('Укажите конец периода!', dt2);
    Exit;
  end;
end;

function TTRLProcess6Form.CheckTRdopState: Boolean;
var
  TRDOPSOG :Variant;
  Q :TFIBQuery;
begin
  TRDOPSOG:=gFN(v1,'TRDOPSOG');
  if TRDOPSOG = null Then begin
    Result :=false;
    Exit;
  end;
  Q:=GetQueryForUse(cmdb.RT,'select td.state' + #13#10 +
                            'from trldopsog ts' + #13#10 +
                            'left outer join trldop td on td.code = ts.trldop' +
                            #13#10 +
                            'where ts.code=:trds');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('trds').AsVariant:=TRDOPSOG;
  try
    Q.ExecQuery;
    Result:=Q.FN('state').AsVariant=1;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TTRLProcess6Form.clv1DATACustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
   //clv1DATA.Options.Editing:= not AViewInfo.GridRecord.Values[clv1TRDOPSTATE.Index] = 1;
end;

procedure TTRLProcess6Form.clv1DATAPropertiesEditValueChanged(Sender: TObject);
begin
  if gFN(v1,'TRDOPSTATE')=1 then begin
     Application.MessageBox('Дополнительное соглашение заблокировано для редактирования.',
       'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
     V1.DataController.Cancel;
  end else
  v1.DataController.Post();
end;

procedure TTRLProcess6Form.clv1DPLACEPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TTRLProcess6Form.clv1NOTEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TTRLProcess6Form.clv1STATECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  //clv1STATE.Options.Editing:= AViewInfo.GridRecord.Values[clv1TRDOPSTATE.Index] <> 1;
end;

procedure TTRLProcess6Form.clv1STATEPropertiesEditValueChanged(Sender: TObject);
begin
  if gFN(v1,'TRDOPSTATE')=1 then begin
     Application.MessageBox('Дополнительное соглашение заблокировано для редактирования.',
       'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
     V1.DataController.Cancel;
  end else
  v1.DataController.Post();
end;

procedure TTRLProcess6Form.clv1SUMMACustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  //clv1SUMMA.Options.Editing:= not AViewInfo.GridRecord.Values[clv1TRDOPSTATE.Index] = 1;
end;

procedure TTRLProcess6Form.clv1SUMMAPropertiesEditValueChanged(Sender: TObject);
begin
  if gFN(v1,'TRDOPSTATE')=1 then begin
     Application.MessageBox('Дополнительное соглашение заблокировано для редактирования.',
       'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
     V1.DataController.Cancel;
  end else
  v1.DataController.Post();
end;

procedure TTRLProcess6Form.CreateMState;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with m_state do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(m_state,'CODE',ftInteger);
  CreateField(m_state,'NAME',ftString,128);
  m_state.Open;
  AddType(0,'предремонтная встреча');
  AddType(1,'дефектная ведомость');
  AddType(2,'калькуляция');
  AddType(3,'доп. соглашение');
  AddType(4,'в работе');
  AddType(5,'завершено');
end;

procedure TTRLProcess6Form.Del_Fact;
begin
  if gFN(v1,'CODE') = null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDYES then
  begin
    ds_TRFACT.Delete;
  end;
end;

initialization
 RegisterClass(TTRLProcess6Form);
end.

