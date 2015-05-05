unit TRProcess2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMemo,frxClass,frxFIBComponents,
  FIBQuery, pFIBCacheQueries,pFIBProps,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxSkinsdxBarPainter, dxBar, dxLayoutContainer,
  dxLayoutControlAdapters, cxRichEdit, cxMRUEdit, cxDBEdit,
  dxSkinDevExpressStyle, cxSpinEdit, cxBarEditItem;

type
  TTRProcess2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    group3: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group4: TdxLayoutGroup;
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
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
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
    ds1: TpFIBDataSet;
    src1: TDataSource;
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
    ds_TRDEFECTVED: TpFIBDataSet;
    grlc1Group5: TdxLayoutGroup;
    m_WNote: TcxMemo;
    itm_WNote: TdxLayoutItem;
    txt1: TcxTextEdit;
    itm_txt: TdxLayoutItem;
    ced_Quant: TcxCalcEdit;
    itm_Quant: TdxLayoutItem;
    m_Note: TcxMemo;
    itm_Note: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group6: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    src_TRDEFECTVED: TDataSource;
    clv4CODE: TcxGridDBColumn;
    clv4TRFACT: TcxGridDBColumn;
    clv4WNOTE: TcxGridDBColumn;
    clv4ED: TcxGridDBColumn;
    clv4QUANTITY: TcxGridDBColumn;
    clv4NOTE: TcxGridDBColumn;
    clv4SNAME: TcxGridDBColumn;
    clv4NOMER: TcxGridDBColumn;
    clv4MNAME: TcxGridDBColumn;
    fr1: TfrxReport;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    clv1DPLACE: TcxGridDBColumn;
    grlc1Group7: TdxLayoutGroup;
    clv2genlist: TcxGridDBColumn;
    clv1DNum: TcxGridDBColumn;
    clv1DDate: TcxGridDBColumn;
    grlc1Group8: TdxLayoutGroup;
    cbb_shab: TcxLookupComboBox;
    itm_shab: TdxLayoutItem;
    btn_spr: TcxButton;
    itm_spr: TdxLayoutItem;
    ds_WSHEAD: TpFIBDataSet;
    src_WSHEAD: TDataSource;
    btn_clear: TcxButton;
    itm_clear: TdxLayoutItem;
    grlc1Group10: TdxLayoutGroup;
    grlc1Group11: TdxLayoutGroup;
    btn_fill: TcxButton;
    itm_fill: TdxLayoutItem;
    ppm1: TcxGridPopupMenu;
    ppm2: TcxGridPopupMenu;
    cbb_filter: TcxComboBox;
    lc1Item1: TdxLayoutItem;
    grlc1Group12: TdxLayoutGroup;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_Refresh: TdxBarButton;
    mmo_1: TcxMemo;
    itm_lc1Item2: TdxLayoutItem;
    m_1: TcxDBMemo;
    grp_lc1Group1: TdxLayoutGroup;
    clv4NUM: TcxGridDBColumn;
    spn_num: TcxSpinEdit;
    itmlc1Item2: TdxLayoutItem;
    clv1FIRM: TcxGridDBColumn;
    cbb_Firm: TcxBarEditItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure group3CaptionClick(Sender: TObject);
    procedure grlc1Group3CaptionClick(Sender: TObject);
    procedure grlc1Group4CaptionClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure src_TRFACTDataChange(Sender: TObject; Field: TField);
    procedure btn_printClick(Sender: TObject);
    procedure clv1DPLACEPropertiesEditValueChanged(Sender: TObject);
    procedure btn_sprClick(Sender: TObject);
    procedure btn_fillClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
    procedure cbb_filterPropertiesEditValueChanged(Sender: TObject);
    procedure grlc1Group8CaptionClick(Sender: TObject);
    procedure grlc1Group8Expanded(Sender: TObject);
    procedure grlc1Group5CaptionClick(Sender: TObject);
    procedure grlc1Group5Expanded(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
    procedure v1DataControllerFilterChanged(Sender: TObject);
    procedure clv4NUMPropertiesEditValueChanged(Sender: TObject);
    procedure clv1NOTEPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure SetFilter(v :TcxGridDBTableView);
    procedure PrepareDs;
    procedure OpenDefect;
    procedure AddDefect(isEdit :Boolean);
    function CheckDefectParam :Boolean;
    procedure ChangeState(aState :variant);
    procedure FillDefectEdit;
    procedure PrintDefVed;
    procedure ShowSPR;
    //
    procedure FillFromTemplate(code :Variant);
    procedure ClearZeroRec;
    procedure reOpends_WSHEAD;
    procedure RefreshDS;
  public
    { Public declarations }
  end;

var
  TRProcess2Form: TTRProcess2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, sprWSHEADFrm, dezCommon, LoadingSplash;

{$R *.dfm}

procedure TTRProcess2Form.AddDefect(isEdit: Boolean);
var
  AIndex: Integer;
begin
  if not CheckDefectParam then exit;
  //if isEdit then
  AIndex:= v4.Controller.FocusedRowIndex;
  v4.BeginUpdate(lsimImmediate);
  try
    with ds_TRDEFECTVED do begin
      if isEdit then Edit else
      Append;
        if not isEdit then
        FN('TRFACT').AsVariant:=gFN(v1,'CODE');
        FN('WNOTE').AsVariant:=m_WNote.EditingValue;
        FN('ED').AsVariant:=txt1.EditValue;
        FN('QUANTITY').AsVariant:=ced_Quant.EditValue;
        FN('NOTE').AsVariant:=m_Note.EditValue;
        FN('NUM').AsVariant:= spn_num.EditingValue;
      Post;
    end;
    // reopen
    OpenDefect;
    //fill controls
    FillDefectEdit;
  finally
    v4.EndUpdate;
    v4.Controller.FocusRecord(AIndex,true);
  end;
end;

procedure TTRProcess2Form.btn_addClick(Sender: TObject);
begin
  AddDefect(false);
end;

procedure TTRProcess2Form.btn_clearClick(Sender: TObject);
begin
  if Application.MessageBox('Будут удалены все записи с "кол-во"=0.' + #13#10
    + 'Продолжить?', 'Внимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDYES then
  begin
    ClearZeroRec;
  end;
end;

procedure TTRProcess2Form.btn_delClick(Sender: TObject);
begin
  if ds_TRDEFECTVED.IsEmpty then exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDOK then
  begin
    ds_TRDEFECTVED.Delete;
  end;
end;

procedure TTRProcess2Form.btn_editClick(Sender: TObject);
begin
  AddDefect(true);
end;

procedure TTRProcess2Form.btn_fillClick(Sender: TObject);
begin
  if cbb_shab.EditValue=null then Exit;
  FillFromTemplate(cbb_shab.EditValue);
end;

procedure TTRProcess2Form.btn_printClick(Sender: TObject);
begin
  PrintDefVed;
end;

procedure TTRProcess2Form.btn_RefreshClick(Sender: TObject);
begin
  SplashVisibility(true,'Обновление данных...');
  try
     RefreshDS;
  finally
    SplashVisibility(False);
  end;
end;

procedure TTRProcess2Form.btn_sprClick(Sender: TObject);
begin
  ShowSPR;
end;

procedure TTRProcess2Form.cbb_filterPropertiesEditValueChanged(Sender: TObject);
begin
  reOpends_WSHEAD;
end;

procedure TTRProcess2Form.ChangeState(aState: variant);
var
  dnum :Variant;
  ddate: TDateTime;
  procedure OpenDS1;
  begin

  end;
  procedure OpenTRFact;
  begin

  end;
  procedure InDef(aCode, aGenList: Variant);
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT, 'update TRFACT'+#10#13+
                                'set DNUM = :DNUM,'+#10#13+
                                '    DDATE = :DDATE,'+#10#13+
                                '    STATE = :STATE'+#10#13+
                                'where (CODE = :CODE);');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('DNUM').AsVariant:= GenNumTR(aGenList);
      Q.ParamByName('DDATE').AsVariant:= SysUtils.Now;
      Q.ParamByName('STATE').AsVariant:= aState;
      Q.ParamByName('CODE').AsVariant:=  aCode;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;
  end;
begin
  if ActiveUserType = 1 then Exit;
  case aState of
    0 : begin  //в пр. встречу
          with ds_TRFACT do begin
            edit;
            FN('STATE').AsVariant:=aState;
            post;
          end;
          with ds1 do begin
            Close;
              MainWhereClause:='TF.STATE in(0,1,2) and TF.FIRM = :FIRM';
              ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
            SetFilter(v2);
            Open;
          end;
        end;
    1 : begin  //в деф. ведомость
          ddate:= SysUtils.Now;
          with ds1 do begin
            {$MESSAGE WARN 'Отменили запрет на редактирование созданной сметы!'}
            {if FN('NCALC').AsVariant <> null then
            begin
              Application.MessageBox('Смета создана. Отменять нельзя.',
                'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
              Exit;
            end;}
             if FN('genlist').AsVariant=null then begin
              if Application.MessageBox('Не указан генератор номера!' + #13#10
                + '         Перенести запись?', 'Предупреждение', MB_YESNO +
                MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
              begin
                edit;
                FN('STATE').AsVariant:=aState;
                FN('DNum').AsVariant:=0;
                FN('DDate').AsVariant:=Date;
                post;
              end else Exit;
            end else begin
              {edit;
              FN('STATE').AsVariant:=aState;
              FN('DNum').AsVariant:=GenNumTR(FN('genlist').AsVariant);
              FN('DDate').AsVariant:=ddate;
              //IncGenTR(FN('genlist').AsVariant);
              post;}
              InDef(v2.GetColumnByFieldName('CODE').EditValue, v2.GetColumnByFieldName('genlist').EditValue);
              Refresh;
            end;
          end;
          with ds_TRFACT do begin
            Close;
              MainWhereClause:='TF.STATE=1 and TF.FIRM = :FIRM';
              ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
            Open;
          end;
        end;
    2 : begin  //в калькуляцию
          with ds_TRFACT do begin
            edit;
            FN('STATE').AsVariant:=aState;
            post;
            Close;
              MainWhereClause:='TF.STATE=1 and TF.FIRM = :FIRM';
              ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
            Open;
            OpenDefect;
          end;
          with ds1 do begin
            Close;
              MainWhereClause:='TF.STATE in(0,1,2) and TF.FIRM = :FIRM';
              ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
            SetFilter(v3);
            Open;
          end;
        end;
  end;

end;

function TTRProcess2Form.CheckDefectParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
 {$MESSAGE WARN 'Что из заполняемых полей дефектной ведомости является обязательным?'}
  if gFN(v1,'CODE')=null then
  begin
    Application.MessageBox('Укажите запись дефектной ведомости', 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  if m_WNote.EditingValue=null then
  begin
    Rez('Заполните описание работ',m_WNote);
    Exit;
  end;
  if txt1.EditValue=null then
  begin
    Rez('Заполните единицу измерения',txt1);
    Exit;
  end;
  if ced_Quant.EditValue=null then
  begin
    Rez('Укажите кол-во',ced_Quant);
    Exit;
  end;
end;

procedure TTRProcess2Form.ClearZeroRec;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,'delete from TRDEFECTVED' + #13#10 +
                            'where (TRFACT = :TRFACT and QUANTITY=0)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('TRFACT').AsVariant:=gFN(v1,'CODE');
  try
    Q.ExecQuery;
    OpenDefect;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TTRProcess2Form.clv1DPLACEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TTRProcess2Form.clv1NOTEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TTRProcess2Form.clv4NUMPropertiesEditValueChanged(Sender: TObject);
var
  AIndex: Integer;
begin
  AIndex:= v4.Controller.FocusedRowIndex;
  v4.BeginUpdate(lsimImmediate);
  try
    OpenDefect;
  finally
    v4.EndUpdate;
    v4.Controller.FocusRecord(AIndex,true);
  end;
end;

procedure TTRProcess2Form.FillDefectEdit;
begin
  if ds_TRDEFECTVED.IsEmpty then exit;
  with ds_TRDEFECTVED do begin
    m_WNote.EditValue:=FN('WNote').AsVariant;
    txt1.EditValue:=FN('ED').AsVariant;
    ced_Quant.EditValue:=FN('QUANTITY').AsVariant;
    m_Note.EditValue:=FN('NOTE').AsVariant;
    spn_num.Value:= FN('NUM').AsVariant;
  end;
end;

procedure TTRProcess2Form.FillFromTemplate(code: Variant);
var
  Q :TFIBQuery;
  MaxNum: Integer;

  procedure AddRecord;
  begin
    with ds_TRDEFECTVED do begin
      Append;
        FN('TRFACT').AsVariant:=gFN(v1,'CODE');
        FN('WNOTE').AsVariant:=Q.FN('WNOTE').AsVariant;
        FN('ED').AsVariant:=Q.FN('ED').AsVariant;;
        FN('QUANTITY').AsVariant:=0;
        FN('NOTE').AsVariant:=null;
        FN('NOTE').AsVariant:= spn_num.EditingValue;
        FN('NUM').AsVariant:= MaxNum+Q.FN('NUM').AsVariant;
      Post;
    end;
  end;

  function GetMaxNum: Integer;
  var
    sql: string;
  begin
    sql:=
      'SELECT iif(MAX(NUM) is NULL, 0,MAX(NUM)) NUM' + #13#10 +
      'FROM TRDEFECTVED  where TRFACT = '+v1.FN('CODE');
    Result:= cmDb.DB.QueryValue(sql,0,cmDb.RT);
  end;

begin
  Q:=GetQueryForUse(cmDB.RT,'select CODE, WNOTE, ED, WSHEAD, NUM' + #13#10 +
                            'from WSSPEC' + #13#10 +
                            'where WSHEAD=:ws');
  Q.ParamByName('ws').AsVariant:=code;
  v4.BeginUpdate;
  try
    Q.ExecQuery;
    // получаем максимальный номер
    MaxNum:= GetMaxNum;
    while not Q.Eof do begin
      AddRecord;
      Q.Next;
    end;
    ds_TRDEFECTVED.CloseOpen(false);
  finally
    FreeQueryForUse(Q);
    v4.EndUpdate;
  end;
end;

procedure TTRProcess2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRProcess2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDs;
end;

procedure TTRProcess2Form.grlc1Group3CaptionClick(Sender: TObject);
begin
 // SetFilter(v4);
  FillDefectEdit;
  ppm2.Grid:=grd4;
end;

procedure TTRProcess2Form.grlc1Group4CaptionClick(Sender: TObject);
begin
  SetFilter(v3);
  ppm2.Grid:=grd3;
end;

procedure TTRProcess2Form.grlc1Group5CaptionClick(Sender: TObject);
begin
  grlc1Group5.Expanded := not grlc1Group5.Expanded;
end;

procedure TTRProcess2Form.grlc1Group5Expanded(Sender: TObject);
begin
  grlc1Group8.Expanded :=false;
end;

procedure TTRProcess2Form.grlc1Group8CaptionClick(Sender: TObject);
begin
  grlc1Group8.Expanded := not grlc1Group8.Expanded;
end;

procedure TTRProcess2Form.grlc1Group8Expanded(Sender: TObject);
begin
  grlc1Group5.Expanded := false;
end;

procedure TTRProcess2Form.group3CaptionClick(Sender: TObject);
begin
  SetFilter(v2);
  ppm2.Grid:=grd2;
end;

procedure TTRProcess2Form.OpenDefect;
begin
  with ds_TRDEFECTVED do begin
    close;
    if gFN(v1,'CODE')=null then Exit;
    MainWhereClause:='TRFACT=:FACT';
    ParamByName('FACT').AsVariant:=gFN(v1,'CODE');
    OrderClause:='NUM';
    Open;
  end;
end;

procedure TTRProcess2Form.RefreshDS;
begin
  if VarIsType(cbb_Firm.EditValue,[varNull, varEmpty]) then
     Exit;
  with ds_TRFACT do begin
    Close;
    MainWhereClause:='TF.STATE=1 and TF.FIRM = :FIRM';
    ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
    Open;
    OpenDefect;
  end;
  with ds1 do begin
    Close;
    MainWhereClause:='TF.STATE in(0,1,2) and TF.FIRM = :FIRM';
    ParamByName('FIRM').AsVariant:= cbb_Firm.EditValue;
    Open;
    Filter:='STATE=0';
    Filtered:=true;
  end;
  case grlc1Group2.ItemIndex of
    0: begin
           SetFilter(v2);
           ppm2.Grid:=grd2;
       end;
    2: begin
         SetFilter(v3);
         ppm2.Grid:=grd3;
       end;
  end;
end;

procedure TTRProcess2Form.PrepareDs;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  DSOptoins(ds_TRFACT,'','TRFACT','CODE','TRFACT_GEN',false);
  DSOptoins(ds_TRDEFECTVED,'','TRDEFECTVED','CODE','TRDEFECTVED_GEN',false);
  ds_WSHEAD.Open;
end;

procedure TTRProcess2Form.PrintDefVed;
var
  fdb: TfrxFIBDatabase;
  Q :TfrxFIBQuery;
  cod :Variant;
begin
  if gFN(v1,'CODE') = null then Exit;
  fr1.LoadFromFile(ExtractFilePath(Application.ExeName)+'rep\defved.fr3');
  cod := gFN(v1,'CODE');
  Q := fr1.FindObject('Q1') as TfrxFIBQuery;
  Q.Close;
  Q.ParamByName('cod').Value:=cod;
  //
  //fr1.Variables['varKontr'] :=#39 + gFN(v1,'KName')+ #39;
  fr1.Variables['varIsp'] :=#39 + gFN(v1,'FIO')+ #39;
  fr1.Variables['varAddr'] :=#39 + VarToStr(gFN(v1,'SNAME'))+
                                    ' д.'+VarToStr(gFN(v1,'NOMER'))+' '+
                                    VarToStrDef(gFN(v1,'DPLACE'),' ')+ #39;
  fr1.Variables['varPrich'] :=#39 + gFN(v1,'MNAME')+ #39;
  fr1.Variables['varDate'] :=#39 + VarToStrDef(gFN(v1,'DDate'),' ')+ #39;
  fr1.Variables['varNom'] := #39 + VarToStrDef(gFN(v1,'DNum'),' ')+ #39;
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
  fr1.ShowReport();
end;

procedure TTRProcess2Form.SetFilter(v :TcxGridDBTableView);
begin
  v.DataController.DataSource:=src1;
  with ds1 do begin
    Filtered:=False;
    case grlc1Group2.ItemIndex of
      0 : begin
            Filter:='STATE=0'; //предремонтная встреча
           // ppm2.Grid:=grd2;
          end;
      2 : begin
            Filter:='STATE=2'; //калькуляция
           // ppm2.Grid:=grd3;
          end;
      1 : begin
            Filter:='STATE=1'; //деф. ведомость

          end
      else Exit;
    end;
    Filtered:=true;
  end;
end;

procedure TTRProcess2Form.ShowSPR;
var
  F :TsprWSHEADForm;
begin
  F:=TsprWSHEADForm.Create(Application);
  try
    F.ftype:=cbb_filter.ItemIndex;
    if F.ShowModal=mrOk then begin
      //переоткрыть датасет шаблонов
      ds_WSHEAD.CloseOpen(false);
      cbb_shab.EditValue:=F.code;
    end;
  finally
    F.Free;
  end;
end;

procedure TTRProcess2Form.reOpends_WSHEAD;
begin
  with ds_WSHEAD do begin
    Close;
    if cbb_filter.ItemIndex<>0 then begin
      MainWhereClause:='WTYPE=:wtype';
      ParamByName('wtype').AsVariant:=cbb_filter.ItemIndex;
    end else MainWhereClause:='';
    Open;
  end;
end;

procedure TTRProcess2Form.src_TRFACTDataChange(Sender: TObject; Field: TField);
begin
  OpenDefect;
end;

procedure TTRProcess2Form.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDefect;
end;

procedure TTRProcess2Form.v1DataControllerFilterChanged(Sender: TObject);
begin
  OpenDefect;
end;

procedure TTRProcess2Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : OpenDefect;
    VK_DOWN :OpenDefect;
    VK_F3 : begin
              if grlc1Group2.ItemIndex=0 then ChangeState(0); // в пр. встречу
              if grlc1Group2.ItemIndex=2 then ChangeState(2); // в клькуляцию
            end;
  end;
end;

procedure TTRProcess2Form.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 :ChangeState(1); //из п. встречи в деф. ведомость
  end;
end;

procedure TTRProcess2Form.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 :ChangeState(1); //из калькуляции в деф. ведомость
  end;
end;

procedure TTRProcess2Form.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillDefectEdit;
end;

procedure TTRProcess2Form.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : FillDefectEdit;
    VK_DOWN : FillDefectEdit;
  end;
end;

initialization
 RegisterClass(TTRProcess2Form);
end.



