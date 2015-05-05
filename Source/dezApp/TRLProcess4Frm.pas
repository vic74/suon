unit TRLProcess4Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, Menus,
  FIBQuery, pFIBCacheQueries, pFibProps,
  StdCtrls, cxButtons, cxCheckBox, cxDropDownEdit, cxImageComboBox, ImgList,
  cxCalendar, dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit,
  cxCalc, dezInfo, frxClass, frxFIBComponents, frxExportRTF, dxLayoutContainer,
  dxLayoutControlAdapters, dxSkinDevExpressStyle, dxSkinsdxBarPainter, cxLabel,
  dxBar, cxBarEditItem, cxDBLookupComboBox, dxSkinVS2010;

type
  TTRLProcess4Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    spl2: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    ds_TRFACT: TpFIBDataSet;
    src_TRFACT: TDataSource;
    ds_TRDOP: TpFIBDataSet;
    src_TRDOP: TDataSource;
    ds_TRDOPSOG: TpFIBDataSet;
    src_TRDOPSOG: TDataSource;
    btn_addDop: TcxButton;
    itm_addDop: TdxLayoutItem;
    btn_delDop: TcxButton;
    itm_delDop: TdxLayoutItem;
    grlc1Group5: TdxLayoutGroup;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DOPDATE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1DOG: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3STREET: TcxGridDBColumn;
    clv3SNAME: TcxGridDBColumn;
    clv3HOUSE: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3MLIST: TcxGridDBColumn;
    clv3MNAME: TcxGridDBColumn;
    clv3KONTRAGENT: TcxGridDBColumn;
    clv3KNAME: TcxGridDBColumn;
    clv3MANAGER: TcxGridDBColumn;
    clv3FIO: TcxGridDBColumn;
    clv3NCALC: TcxGridDBColumn;
    clv3NCALCDATE: TcxGridDBColumn;
    clv3NSUMMA: TcxGridDBColumn;
    clv3NDOP: TcxGridDBColumn;
    clv3SUMMA: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3PLANCODE: TcxGridDBColumn;
    clv3STATE: TcxGridDBColumn;
    clv3TRDOPSOG: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2TRFACT: TcxGridDBColumn;
    clv2TRDOP: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    iml1: TcxImageList;
    clv2NSumma: TcxGridDBColumn;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    ced_sum: TcxCalcEdit;
    itm_sum: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    fr: TfrxReport;
    frFib1: TfrxFIBComponents;
    clv2dplace: TcxGridDBColumn;
    wExp1: TfrxRTFExport;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    btn_set: TcxButton;
    itm_set: TdxLayoutItem;
    clv2ISCALC: TcxGridDBColumn;
    clv2CALCNUM: TcxGridDBColumn;
    bm1: TdxBarManager;
    br1: TdxBar;
    btn_addCalc: TdxBarButton;
    btn_editCalc: TdxBarButton;
    btn_DelCalc: TdxBarButton;
    itm1: TcxBarEditItem;
    docm1: TdxBarDockControl;
    itmlc1Item1: TdxLayoutItem;
    clv2MANAGER: TcxGridDBColumn;
    br2: TdxBar;
    cbb_Firm: TcxBarEditItem;
    btn_Refresh: TdxBarButton;
    doc1: TdxBarDockControl;
    litm_lc1Item1: TdxLayoutItem;
    brbm1Bar1: TdxBar;
    sItem1: TdxBarSubItem;
    btn_Prov: TdxBarButton;
    btn_PrintNDS: TdxBarButton;
    btn_PrintNoNDS: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_addDopClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ds_TRDOPSOGBeforeEdit(DataSet: TDataSet);
    procedure btn_delDopClick(Sender: TObject);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv1STATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2STATEPropertiesEditValueChanged(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure grlc1Group6CaptionClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ced_sumPropertiesEditValueChanged(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure grlc1Group1Button0Click(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_setClick(Sender: TObject);
    procedure v2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btn_addCalcClick(Sender: TObject);
    procedure btn_editCalcClick(Sender: TObject);
    procedure btn_DelCalcClick(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);
    procedure btn_PrintNDSClick(Sender: TObject);
    procedure btn_PrintNoNDSClick(Sender: TObject);
    procedure btn_ProvClick(Sender: TObject);
  private
    { Private declarations }
    fFirm: Variant;
    procedure AddDop(isEdit :boolean = false);
    procedure PrepareDS;
    procedure OpenTRDOPSOG;
    procedure LinkData;
    procedure ReopenTRFACT;
    procedure ReopenTRDOP;
    procedure UnLinkData;
    procedure ChangeSum;
    procedure printDop(nds: Boolean = true);
    procedure SetDop;
    procedure ReturnToSmeta(code :variant);
    procedure AddCalc;
    procedure CheckEditCalc;
    procedure EditTrLFact(FactCode ,DopSogCode: Variant);
    procedure EditCalc;
    procedure DeleteCalc;
    procedure LoadData;
    procedure CloseData;
  public
    { Public declarations }
  end;

var
  TRLProcess4Form: TTRLProcess4Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, AddDopFrm, LoadingSplash, FactAddFrm1;

{$R *.dfm}

procedure TTRLProcess4Form.AddCalc;
var
  F: TFactAddForm1;
  FactCode, DopSogCode: Variant;
begin
  if v1.FN('CODE') = null then
     raise dezException.Create('Не выбран документ доп. соглашения!');
  F:=TFactAddForm1.Create(Application);
  try
    F.lift:=true;
    F.lDS:=ds_TRFACT;
    F.calc:= true;
    F.kontr:= v1.FN('KONTRAGENT');
    F.fFirm:= fFirm;
    if F.ShowModal=mrOk then begin
      FactCode:= F.factCode;
      // добавляем в TRDOPSOG
      DopSogCode:= GetGenCode('TRLDOPSOG_GEN');
      with ds_TRDOPSOG do begin
        Append;
        FN('CODE').AsVariant:= DopSogCode;
        FN('TRLFACT').AsVariant:=F.factCode;
        FN('TRLDOP').AsVariant:=v1.FN('CODE');
        FN('D1').AsVariant:=v1.FN('D1');
        FN('D2').AsVariant:=v1.FN('D2');
        FN('STATE').AsVariant:=0;
        Post;
      end;
      // создаем ссылку в TRFACT-е
      EditTrLFact(FactCode,DopSogCode);
      ReopenTRFACT;
    end;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess4Form.AddDop(isEdit :boolean);
var
  F :TAddDopForm;
  procedure FillData;
  begin
    with ds_TRDOP do begin
      F.msk_num.EditValue:=FN('NOMER').AsVariant;
      F.dt1.EditValue :=FN('DOPDATE').AsVariant;
      F.cbb_dog.EditValue := FN('DOG').AsVariant;
      F.dt2.EditValue := FN('D1').AsVariant;
      F.dt3.EditValue := FN('D2').AsVariant;
    end;
  end;
begin
  if ds_TRDOP.State = dsInactive then
    raise dezException.Create('Необходимо загрузить данные!'+#10#13+'Нажмите кнопку "Загрузить".');
  if VarIsType(fFirm,[varNull, varEmpty]) then
    raise dezException.Create('Не указана фирма!');
  F:=TAddDopForm.Create(self);
  if isEdit then FillData;
  try
    if F.ShowModal = mrOk then begin
      with ds_TRDOP do begin
        if isEdit then Edit else
        Append;
        FN('NOMER').AsVariant:= F.msk_num.EditValue;
        FN('DOPDATE').AsVariant:= F.dt1.EditValue;
        FN('KONTRAGENT').AsVariant:= F.kontr;
        FN('DOG').AsVariant:= F.cbb_dog.EditValue;
        FN('D1').AsVariant:= F.dt2.EditValue;
        FN('D2').AsVariant:= F.dt3.EditValue;
        FN('STATE').AsVariant:=0;
        FN('LSTATE').AsVariant:=0;
        FN('FIRM').AsVariant:= fFirm;
        Post;
      end;
      OpenTRDOPSOG;
    end;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess4Form.btn_addCalcClick(Sender: TObject);
begin
  AddCalc;
end;

procedure TTRLProcess4Form.btn_addDopClick(Sender: TObject);
begin
  AddDop;
end;

procedure TTRLProcess4Form.btn_DelCalcClick(Sender: TObject);
begin
  DeleteCalc;
end;

procedure TTRLProcess4Form.btn_delDopClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить доп. соглашение?',
    'Внимание.', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDOK then
  begin
    v2.BeginUpdate;
    try
      with ds_TRDOPSOG do begin
        First;
        while not eof do begin
          ReturnToSmeta(FN('TRLFACT').AsVariant);
          Next;
        end;
      end;
    finally
      v2.EndUpdate;
    end;
    ds_TRDOP.Delete;
  end;
  ReopenTRFACT;
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.btn_editCalcClick(Sender: TObject);
begin
  EditCalc;
end;

procedure TTRLProcess4Form.btn_editClick(Sender: TObject);
begin
  AddDop(true);
end;

procedure TTRLProcess4Form.btn_printClick(Sender: TObject);
begin
  printDop;
end;

procedure TTRLProcess4Form.btn_PrintNDSClick(Sender: TObject);
begin
    printDop;
end;

procedure TTRLProcess4Form.btn_PrintNoNDSClick(Sender: TObject);
begin
  printDop(false);
end;

procedure TTRLProcess4Form.btn_ProvClick(Sender: TObject);
begin
  if Application.MessageBox('Утвердить допсоглашение?', 'Application.Title',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    SetDop;
  end;
end;

procedure TTRLProcess4Form.btn_RefreshClick(Sender: TObject);
begin
  LoadData;
end;

procedure TTRLProcess4Form.btn_saveClick(Sender: TObject);
begin
  ChangeSum;
end;

procedure TTRLProcess4Form.btn_setClick(Sender: TObject);
begin
  if Application.MessageBox('Утвердить допсоглашение?', 'Application.Title',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    SetDop;
  end;
end;

procedure TTRLProcess4Form.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  fFirm:= cbb_Firm.EditValue;
  CloseData;
end;

procedure TTRLProcess4Form.ced_sumPropertiesEditValueChanged(Sender: TObject);
begin
  btn_save.Enabled := ced_sum.EditValue <> null;
end;

procedure TTRLProcess4Form.ChangeSum;
var
  sum, code :Variant;
  Q :TFIBQuery;
  AIndex: Integer;
begin
  //sum:=gFN(v2,'SUMMA');
  sum :=ced_sum.EditValue;
  code:=gFN(v2,'TRFACT');
  if ced_sum.EditValue = null then Exit;
  if code=null then exit;
  try
   // {$MESSAGE WARN 'формируем запрос на обновление.}
    Q:=GetQueryForUse(cmDB.WT,'update TRLFACT' + #13#10 +
                              'set SUMMA = :SUMMA' + #13#10 +
                              '    --,DATA = :DATA' + #13#10 +
                              'where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('CODE').AsVariant:=code;
    Q.ParamByName('SUMMA').AsVariant:=sum;
    AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  OpenTRDOPSOG;
  v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure TTRLProcess4Form.CheckEditCalc;
begin
  btn_editCalc.Enabled:= v2.FN('ISCALC')=1;
  btn_DelCalc.Enabled:= v2.FN('ISCALC')=1;
end;

procedure TTRLProcess4Form.CloseData;
begin
  ds_TRFACT.Close;
  ds_TRDOP.Close;
  ds_TRDOPSOG.Close;
end;

procedure TTRLProcess4Form.clv1STATEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
  ReopenTRDOP;
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.clv2STATEPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
end;

procedure TTRLProcess4Form.DeleteCalc;
var
  FactCode: Variant;
  Q: TFIBQuery;
begin
  if ds_TRDOPSOG.FN('STATE').AsVariant=1 then
    raise dezException.Create('Статус "завершено". Редактировать запрещенo!');
  //удаляем калькуляцию
  if v2.FN('ISCALC')<>1 then
     raise Exception.Create('ISCALC<>1');
  FactCode:= v2.FN('TRLFACT');
  if FactCode = null then
     raise Exception.Create('FactCode = null');
  if Application.MessageBox('Вы действительно хотите удалить калькуляцию?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ds_TRDOPSOG.Delete;
    Q:=GetQueryForUse(cmDb.WT,'delete from TRLFACT where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('CODE').AsVariant:=FactCode;
      Q.ExecQuery;
      CheckEditCalc;
    finally
      FreeQueryForUse(Q);
    end;
  end;
end;

procedure TTRLProcess4Form.ds_TRDOPSOGBeforeEdit(DataSet: TDataSet);
begin
  if ds_TRDOPSOG.FN('STATE').AsVariant=1 then begin
    Application.MessageBox('Статус "завершено".' + #13#10 +
      'Редактировать запрещено.', 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Abort;
  end;
end;

procedure TTRLProcess4Form.EditCalc;
var
  F: TFactAddForm1;
  FactCode, DopSogCode: Variant;
begin
  if v1.FN('CODE') = null then
     raise dezException.Create('Не выбран документ доп. соглашения!');
  F:=TFactAddForm1.Create(Application);
  try
    F.lift:=true;
    F.lDS:=ds_TRFACT;
    F.calc:= true;
    F.isEdit:= True;
    F.factCode:= v2.FN('TRLFACT');
    F.kontr:= v1.FN('KONTRAGENT');
    F.cbb_street.EditValue:= v2.FN('STREET');
    F.cbb_house.EditValue:= v2.FN('HOUSE');
    F.ced_summa.EditValue:= v2.FN('SUMMA');
    F.txt_calc.EditValue:= v2.FN('CALCNUM');
    F.cbb_mlist.EditValue:= v2.FN('MLIST');
    F.manager:= v2.FN('MANAGER');
    if F.ShowModal=mrOk then begin
      OpenTRDOPSOG;
    end;
  finally
    F.Free;
  end;
end;

procedure TTRLProcess4Form.EditTrLFact(FactCode, DopSogCode: Variant);
var
  Q: TFIBQuery;
begin
  if (DopSogCode = null) or (FactCode = null) then
     raise Exception.Create('Код не может быть пустым!');
  Q:= GetQueryForUse(cmDb.WT,
      'update TRLFACT set TRLDOPSOG = :TRLDOPSOG where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= FactCode;
    Q.ParamByName('TRLDOPSOG').AsVariant:= DopSogCode;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TTRLProcess4Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRLProcess4Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;


procedure TTRLProcess4Form.grlc1Group1Button0Click(Sender: TObject);
begin
  printDop;
end;

procedure TTRLProcess4Form.grlc1Group6CaptionClick(Sender: TObject);
begin
  grlc1Group6.Expanded:= not grlc1Group6.Expanded;
end;

procedure TTRLProcess4Form.LinkData;
begin
  SplashVisibility(true,'Дождитесь окончания операции');
  try
    if gFN(v1,'CODE') = null then begin
      Application.MessageBox('Не выбран документ доп. соглашения.', 'Ошибка',
        MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
      Exit;
    end;
    with ds_TRDOPSOG do begin
      Append;
      FN('TRLFACT').AsVariant:=gFN(v3,'CODE');
      FN('TRLDOP').AsVariant:=gFN(v1,'CODE');
      FN('D1').AsVariant:=gFN(v1,'D1');
      FN('D2').AsVariant:=gFN(v1,'D2');
      FN('STATE').AsVariant:=0;
      Post;
    end;
    //
    with ds_TRFACT do begin
      Edit;
      FN('STATE').AsVariant:=3;
      FN('TRLDOPSOG').AsVariant:= ds_TRDOPSOG.FN('CODE').AsVariant;
      FN('KONTRAGENT').AsVariant := gFN(v1,'KONTRAGENT');
      FN('NDOP').AsVariant:= gFN(v1,'NOMER');
      Post;
    end;
    ReopenTRFACT;
  finally
    SplashVisibility(false);
  end;
end;

procedure TTRLProcess4Form.LoadData;
begin
  fFirm:= cbb_Firm.EditValue;
  if VarIsType(fFirm,[varEmpty, varNull]) then Exit;
  ReopenTRFACT;
  ReopenTRDOP;
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.OpenTRDOPSOG;
begin
  v2.BeginUpdate(lsimImmediate);
  try
    with ds_TRDOPSOG do begin
      Close;
      //if gFN(v1,'CODE') = null then Exit;
      MainWhereClause:='TRLDOP=:TRLDOP';
      ParamByName('TRLDOP').AsVariant:=gFN(v1,'CODE');
      Open;
      CheckEditCalc;
    end;
  finally
    v2.EndUpdate;
  end;
end;

procedure TTRLProcess4Form.PrepareDS;
begin
  DSOptoins(ds_TRFACT,'','TRLFACT','CODE','TRLFACT_GEN',false);
  DSOptoins(ds_TRDOP,'','TRLDOP','CODE','TRLDOP_GEN',false);
  DSOptoins(ds_TRDOPSOG,'','TRLDOPSOG','CODE','TRLDOPSOG_GEN',false);
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
end;

procedure TTRLProcess4Form.printDop(nds: Boolean);
var
  fdb: TfrxFIBDatabase;

  function CorrectFIO(fio :string) :string;
  var
    f,i,o :string;
  begin
    f:=cmGetWord(fio,1,#32);
    i:=Copy(cmGetWord(fio,2,#32),1,1)+'.';
    o:=Copy(cmGetWord(fio,3,#32),1,1)+'.';
    Result:=i+o+f;
  end;
  function GetSumSmeta :Variant;
  begin
    v2.BeginUpdate;
    try
      with ds_TRDOPSOG do begin
        First;
        Result:=0;
        while not Eof do begin
          Result:=Result+FN('NSumma').AsCurrency;
          Next;
        end;
      end;
    finally
      v2.EndUpdate;
    end;
  end;
  procedure SetParam;
  var
    //obj :TdzPO;
    s,sn, calc :string;
    sum :variant;
    garant :TDateTime;
  begin
    s:='';
    //obj := TdzPO.Create;
    try
      if dzPO.COD <> v1.FN('KONTRAGENT') then
         dzPO.GetInfo(v1.FN('KONTRAGENT'));
      //obj.GetInfo(gFN(v1,'KONTRAGENT'));
      with dzPO do begin
        fr.Variables['varNumDop'] :=#39+gFN(v1,'NOMER')+#39;
        fr.Variables['varDopDate'] :=#39+VarToStr(gFN(v1,'DOPDATE'))+#39;
        fr.Variables['varKontr'] :=#39+FullName+#39;
        fr.Variables['varDir'] :=#39+CorrectFIO(Dir)+#39;
        fr.Variables['varNDog']:=#39+DogNom+#39;
        fr.Variables['varDDog']:=#39+VarToStr(DogBegin)+#39;
        fr.Variables['varBeginWork']:=#39+VarToStr(gFN(v1,'D1'))+#39;
        fr.Variables['varEndWork']:=#39+VarToStr(gFN(v1,'D2'))+#39;
                garant:=gFN(v1,'D2')+366;
        fr.Variables['varGarant']:=#39+DateTimeToStr(garant)+#39;
        fr.Variables['varPOInfo']:=     FullName+#13#10 +
                                        Addr+#13#10 +
                                        'ИНН '+INN+'   КПП '+KPP +#13#10 +
                                        'Р/с '+Schet+#13#10 +
                                        'К/с '+KSchet+#13#10 +
                                        Bank+#13#10 +
                                        'ОГРН '+OGRN;
        GetInfo(fFirm);  // инфо по дезу
        fr.Variables['varDezInfo']:=    FullName+#13#10 +
                                        Addr+#13#10 +
                                        'ИНН '+INN+'   КПП '+KPP +#13#10 +
                                        'Р/с '+Schet+#13#10 +
                                        'К/с '+KSchet+#13#10 +
                                        Bank+#13#10 +
                                        'ОГРН '+OGRN;
        fr.Variables['varDezDir'] :=#39+ CorrectFIO(Dir) +#39;
        sum:=GetSumSmeta;
        fr.Variables['varSum']:=#39+VarToStr(sum)+#39;
        v2.BeginUpdate;
        ds_TRDOPSOG.First;
        while not ds_TRDOPSOG.Eof do begin
          sn:= sn+ds_TRDOPSOG.FN('NCALC').AsString+', ';
          s:=s+ds_TRDOPSOG.FN('SNAME').AsString+', '+
               ds_TRDOPSOG.FN('NOMER').AsString+' '+
               ds_TRDOPSOG.FN('DPLACE').AsString+' - '+
               ds_TRDOPSOG.FN('MNAME').AsString+', ';
          if ds_TRDOPSOG.FN('CALCNUM').AsVariant<>null then
            calc:= calc+ds_TRDOPSOG.FN('CALCNUM').AsString+', ';
          ds_TRDOPSOG.Next;
        end;
        if s<>'' then s:=Copy(s,1,Length(s)-2)+'.';
        fr.Variables['varAdrWork']:=#39+s+#39;
        if sn<>'' then sn:=Copy(sn,1,Length(sn)-2)+'.';
        fr.Variables['varNCALC'] :=#39 +sn+ #39;
        fr.Variables['varCALC'] :=#39 +calc+ #39;
      end;

    finally
      //Obj.Free;
      v2.EndUpdate;
    end;
  end;
begin
  if nds then
  fr.LoadFromFile(AppPath+'rep\dopsogL.fr3') else
  fr.LoadFromFile('rep\dopsogLNonds.fr3');

  SetParam;
  fdb := fr.FindObject('FIBDatabase1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;

  fr.ShowReport();
end;

procedure TTRLProcess4Form.ReopenTRDOP;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_TRDOP do begin
      Close;
        MainWhereClause:='td.STATE=0 and td.lstate=0 and td.FIRM = :FIRM';
        ParamByName('FIRM').AsVariant:= fFirm;
      Open;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TTRLProcess4Form.ReopenTRFACT;
begin
  v3.BeginUpdate(lsimImmediate);
  try
    with ds_TRFACT do begin
      Close;
        MainWhereClause:='STATE=3 and (TRLDOPSOG is null or TRLDOPSOG=0) and TF.FIRM = :FIRM';
        ParamByName('FIRM').AsVariant:= fFirm;
      Open;
    end;
  finally
    v3.EndUpdate;
  end;
end;

procedure TTRLProcess4Form.ReturnToSmeta(code: variant);
 var
  Q :TFIBQuery;
begin
  //sql update
  Q:=GetQueryForUse(cmDB.WT,'update TRLFACT' + #13#10 +
                            'set STATE = 2,' + #13#10 +
                            '    TRLDOPSOG = 0,' + #13#10 +
                            '    NDOP = null' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:=code;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TTRLProcess4Form.SetDop;
var
  Q :TfibQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,
        'update TRLFACT set STATE = 4' + #13#10 +
        'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  with ds_TRDOP do begin
    Edit;
    FN('LSTATE').AsVariant:=1;
    Post;
  end;
  v2.BeginUpdate;
  with ds_TRDOPSOG do begin
    first;
    while not eof do begin
      Q.ParamByName('CODE').AsVariant:=FN('TRLFACT').AsVariant;
      Q.ExecQuery;
      Next;
    end;
  end;
  v2.EndUpdate;
  FreeQueryForUse(Q);
  ReopenTRDOP;
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.UnLinkData;
begin
  if gFN(v2,'STATE')=1 then begin
    Application.MessageBox('Статус "завершено".' + #13#10 +
      'Редактирование запрещено.', 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Exit;
  end;
  if v2.FN('ISCALC') = 1 then
     raise dezException.Create('Калькуляцию нельзя вернуть на стадию сметы!');
  ReturnToSmeta(gFN(v2,'TRLFACT'));
    ds_TRDOPSOG.Delete;
  ReopenTRFACT;
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenTRDOPSOG;
end;

procedure TTRLProcess4Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : OpenTRDOPSOG;
    VK_DOWN : OpenTRDOPSOG;
  end;
end;

procedure TTRLProcess4Form.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ced_sum.EditValue:=gFN(v2,'SUMMA');
  CheckEditCalc;
end;

procedure TTRLProcess4Form.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : UnLinkData;
    VK_UP : CheckEditCalc;
    VK_DOWN: CheckEditCalc;
  end;
end;

procedure TTRLProcess4Form.v2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
 if ARecord.Values[clv2ISCALC.Index]=1 then
   AStyle := cmDb.stl_blue;
end;

procedure TTRLProcess4Form.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : LinkData;
  end;
end;

initialization
 RegisterClass(TTRLProcess4Form);
end.



