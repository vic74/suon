unit TRProcess5Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries,  pFIBProps, Fib, System.DateUtils,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxMemo, cxCheckBox, cxCalc,
  dezInfo, dxLayoutControlAdapters, dxLayoutContainer, dxSkinsdxBarPainter,
  dxBar, cxImageComboBox, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TTRProcess5Form = class(TDezForm)
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
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_2: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    spl2: TdxLayoutSplitterItem;
    spl3: TdxLayoutSplitterItem;
    ds_TRDOP: TpFIBDataSet;
    src_TRDOP: TDataSource;
    ds_TRDOPSOG: TpFIBDataSet;
    src_TRDOPSOG: TDataSource;
    ds_TRPREDP: TpFIBDataSet;
    src_TRPREDP: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3TRFACT: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3DTYPE: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2TRFACT: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2MNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    clv2TRDOP: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DOPDATE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1DOG: TcxGridDBColumn;
    clv1D1: TcxGridDBColumn;
    clv1D2: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    grlc1Group5: TdxLayoutGroup;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    cbb_state: TcxComboBox;
    itm_state: TdxLayoutItem;
    btn_apply: TcxButton;
    itm_apply: TdxLayoutItem;
    msk_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    cbb_type: TcxComboBox;
    itm_type: TdxLayoutItem;
    m_note: TcxMemo;
    itm_note: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group8: TdxLayoutGroup;
    btn_delete: TcxButton;
    itm_delete: TdxLayoutItem;
    dt3: TcxDateEdit;
    itm_dt3: TdxLayoutItem;
    clv2NSumma: TcxGridDBColumn;
    clv3DTYPENAME: TcxGridDBColumn;
    dt4: TcxDateEdit;
    itm_dt4: TdxLayoutItem;
    clv2DATA: TcxGridDBColumn;
    grlc1Group10: TdxLayoutGroup;
    clv1LSTATE: TcxGridDBColumn;
    clv2ZD: TcxGridDBColumn;
    bar: TdxBarManager;
    br_dop: TdxBar;
    doc_dop: TdxBarDockControl;
    itm_lc1Item1: TdxLayoutItem;
    btn_ReturnDop: TdxBarButton;
    btn_CommitDop: TdxBarButton;
    doc_Work: TdxBarDockControl;
    itm_lc1Item11: TdxLayoutItem;
    br_Work: TdxBar;
    btn_CloseWork: TdxBarButton;
    btn_OpenWork: TdxBarButton;
    btn_ChangeSum: TdxBarButton;
    btn_OpenDop: TdxBarButton;
    clv2Y: TcxGridDBColumn;
    cbb_Firm: TcxLookupComboBox;
    litm_lc1Item1: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_applyClick(Sender: TObject);
    procedure clv1STATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2STATEPropertiesEditValueChanged(Sender: TObject);
    procedure clv2STATEPropertiesChange(Sender: TObject);
    procedure btn_save_sumClick(Sender: TObject);
    procedure btn_returnClick(Sender: TObject);
    procedure btn_ReturnDopClick(Sender: TObject);
    procedure btn_CommitDopClick(Sender: TObject);
    procedure btn_CloseWorkClick(Sender: TObject);
    procedure btn_OpenWorkClick(Sender: TObject);
    procedure btn_OpenDopClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_ChangeSumClick(Sender: TObject);
    procedure grlc1Group2Button0Click(Sender: TObject);
    procedure ds_updUpdateError(DataSet: TDataSet; E: EFIBError;
      UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
    procedure cbb_FirmPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
    fFirm: Variant;
    procedure PrepareDS;
    procedure ReopenTRDOP(st :Variant);
    procedure ReopenTRDOPSOG;
    procedure ReopenTRPREDP;
    procedure FillEdit;
    procedure TRPREDP_Add(isEdit :Boolean = false);
    function CheckParam :Boolean;
    procedure ChangeSum;
    function SetDateZD: boolean;
    procedure ReturnDop;
    function CheckForReturn :Boolean;
    function IfWorkComply :boolean;
    procedure CloseDop;
    procedure CloseWork;
    procedure OpenWork;
    procedure SetWorkBtnRigth;
    procedure SetSum;
    function GetExMes(s: string) : string;
    procedure CloseData;
  public
    { Public declarations }
  end;

var
  TRProcess5Form: TTRProcess5Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, FactDateFrm, Process5FrmSum;

{$R *.dfm}

procedure TTRProcess5Form.btn_applyClick(Sender: TObject);
begin
  ReopenTRDOP(cbb_state.ItemIndex);
end;

procedure TTRProcess5Form.btn_ChangeSumClick(Sender: TObject);
begin
  SetSum;
end;

procedure TTRProcess5Form.btn_CloseWorkClick(Sender: TObject);
begin
  CloseWork;
end;

procedure TTRProcess5Form.btn_CommitDopClick(Sender: TObject);
begin
  if Application.MessageBox('Закрыть доп. соглашение для изменений?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    CloseDop;
  end;
end;

procedure TTRProcess5Form.btn_deleteClick(Sender: TObject);
begin
  if gFN(v3,'CODE') = null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDOK then
  begin
    ds_TRPREDP.Delete;
  end;
end;

procedure TTRProcess5Form.btn_editClick(Sender: TObject);
begin
  TRPREDP_Add(True);
end;


procedure TTRProcess5Form.btn_OpenDopClick(Sender: TObject);
begin
  if Application.MessageBox('Открыть доп. соглашение для изменений?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    with ds_TRDOP do begin
      Edit;
      FN('STATE').AsVariant:=0;
      Post;
    end;
  end;
end;

procedure TTRProcess5Form.btn_OpenWorkClick(Sender: TObject);
begin
  if ds_TRDOP.FN('STATE').AsVariant = 1 then
  raise EMyException.Create('Доп. соглашение закрыто.'+#10#13+
                            'Редактирование запрещено!');
  OpenWork;
end;

procedure TTRProcess5Form.btn_returnClick(Sender: TObject);
begin
  ReturnDop;
end;

procedure TTRProcess5Form.btn_ReturnDopClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите вернуть доп. соглашение на стадию доработки?'
    + #13#10 + 'Доп. соглашение появится на форме "Доп. соглашение"',
    'Внимание!', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    ReturnDop;
  end;
end;

procedure TTRProcess5Form.btn_saveClick(Sender: TObject);
begin
  TRPREDP_Add;
end;

procedure TTRProcess5Form.btn_save_sumClick(Sender: TObject);
begin
  ChangeSum;
end;

procedure TTRProcess5Form.cbb_FirmPropertiesEditValueChanged(Sender: TObject);
begin
  fFirm:= cbb_Firm.EditValue;
  CloseData;
end;

procedure TTRProcess5Form.ChangeSum;
var
  sum, code, data :Variant;
  Q :TFIBQuery;
  AIndex: Integer;
begin
 { //sum:=gFN(v2,'SUMMA');
  sum :=ced_sum.EditValue;
  //data :=dt4.EditValue;
  code:=gFN(v2,'TRFACT');
  if ced_sum.EditValue = null then Exit;
  //if data = null then exit;
  if code=null then exit;
  try
    Q:=GetQueryForUse(cmDB.WT,'update TRFACT' + #13#10 +
                              'set SUMMA = :SUMMA' + #13#10 +
                             // '    ,DATA = :DATA' + #13#10 +
                              'where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('CODE').AsVariant:=code;
    Q.ParamByName('SUMMA').AsVariant:=sum;
  //  Q.ParamByName('DATA').AsVariant := data;
    AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
   ReopenTRDOPSOG;
  v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
       }
end;

function TTRProcess5Form.CheckForReturn: Boolean;
begin
  Result:= false;
  with ds_TRDOPSOG do begin
    First;
    while not eof do begin
      if FN('STATE').AsVariant = 1 then Exit;
      Next;
    end;
  end;
  Result:= true;
end;

function TTRProcess5Form.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if msk_num.EditValue=null then
  begin
    Rez('Не указан номер акта документа',msk_num);
    Exit;
  end;
  if dt2.EditValue=null then
  begin
    Rez('Не указана дата документа',dt2);
    Exit;
  end;
  if gFN(v2,'STATE')=1 then
  begin
    Application.MessageBox('Запись заблокирована.', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
end;

procedure TTRProcess5Form.CloseData;
begin
  ds_TRDOP.Close;
  ds_TRDOPSOG.Close;
  ds_TRPREDP.Close;
end;

procedure TTRProcess5Form.CloseDop;
begin
  if IfWorkComply then begin
    with ds_TRDOP do begin
      Edit;
      FN('STATE').AsVariant:=1;
      FN('LSTATE').AsVariant:=1;
      Post;
    end;
    ReopenTRDOPSOG;
  end else begin
    raise EMyException.Create('Закрыты не все работы!');
  end;
end;

procedure TTRProcess5Form.CloseWork;
begin
  if ds_TRDOP.FN('STATE').AsVariant = 1 then
  raise EMyException.Create('Доп. соглашение закрыто.'+#10#13+
                            'Редактирование запрещено!');
  if SetDateZD then begin
    with ds_TRDOPSOG do begin
      Edit;
      FN('STATE').AsVariant := 1;
      Post;
    end;
    SetWorkBtnRigth;
  end;
end;

procedure TTRProcess5Form.clv1STATEPropertiesEditValueChanged(Sender: TObject);
begin
  //check that all work is comply
 { if IfWorkComply then begin
    v1.DataController.Post();
    ReopenTRDOPSOG;
  end else begin
    Application.MessageBox('Закрыты не все работы!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    v1.DataController.Cancel;
  end; }
end;

procedure TTRProcess5Form.clv2STATEPropertiesChange(Sender: TObject);
begin
  {if gFN(v1,'STATE')=1 then  begin
    Application.MessageBox('Дополнительное соглашение заблокировано для редактирования.',
      'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    v2.DataController.Cancel;
  end;}
end;

procedure TTRProcess5Form.clv2STATEPropertiesEditValueChanged(Sender: TObject);
begin
 { //модальное окно дата фактич. завершения и дата сметная в TRFACT
  if TcxCheckBox(v2.Controller.EditingController.Edit).Checked then begin
    if SetDateZD then
    v2.DataController.Post() else
    v2.DataController.Cancel;
  end else v2.DataController.Post();}
end;

procedure TTRProcess5Form.ds_updUpdateError(DataSet: TDataSet; E: EFIBError;
  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
begin
  //ShowMessage(E.Msg+);
end;

procedure TTRProcess5Form.FillEdit;
begin
 { with ds_TRDOPSOG do begin
    ced_sum.EditValue:=FN('SUMMA').AsVariant;
    dt4.EditValue:=FN('DATA').AsVariant;
  end; }
  with ds_TRPREDP do begin
    if (State in [dsInactive]) or (IsEmpty) then begin
      msk_num.EditValue:=null;
      dt2.EditValue:= null;
      m_note.EditValue:=null;
    end else begin
      msk_num.EditValue:=FN('NOMER').AsVariant;
      dt2.EditValue:= FN('DATA').AsVariant;
      cbb_type.ItemIndex:=FN('DTYPE').AsVariant;
      m_note.EditValue:=FN('NOTE').AsVariant;
    end;
  end;
end;

procedure TTRProcess5Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTRProcess5Form.FormCreate(Sender: TObject);
begin
  PrepareDS;
  LoadForm(prop1,Self.Name);
end;

function TTRProcess5Form.GetExMes(s: string): string;
var
  l: TStringList;
begin
  l:= TStringList.Create;
  try
    l.Text:= s;
    if l.Count>2 then
    Result:= l[2] else
    Result:= s;
  finally
    l.Free;
  end;
end;

procedure TTRProcess5Form.grlc1Group2Button0Click(Sender: TObject);
begin
  v2.OptionsView.Footer := not v2.OptionsView.Footer;
end;

function TTRProcess5Form.IfWorkComply: boolean;
begin
  Result:=true;
  with ds_TRDOPSOG do begin
    DisableControls;
    First;
    while not Eof do begin
      if FN('STATE').AsVariant=0 then Result:=false;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TTRProcess5Form.OpenWork;
var
  Q: TFIBQuery;
  s: string;
begin
  Q:=GetQueryForUse(cmDB.WT,
    'update TRFACT' + #13#10 +
    'set ZD = null,' + #13#10 +
    '    SD = null' + #13#10 +
    //'    ,STATE = 4' + #13#10 +  обрабатывается в тригере
    'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  Q.ParamByName('CODE').AsVariant:=ds_TRDOPSOG.FieldByName('TRFACT').AsVariant;
  try
    try
      Q.ExecQuery;
    except
      on E: EFIBError do begin
        s:= GetExMes(e.IBMessage);
        raise EMyException.Create(s);
      end;
        //ShowMessage( e.IBMessage);
    end;
    with ds_TRDOPSOG do begin
      Edit;
      FN('STATE').AsVariant:= 0;
      Post;
    end;
    SetWorkBtnRigth;
  finally
    FreeQueryForUse(Q);
  end;

end;

procedure TTRProcess5Form.PrepareDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  DSOptoins(ds_TRDOP,'','TRDOP','CODE','TRDOP_GEN',false);
  DSOptoins(ds_TRDOPSOG,'','TRDOPSOG','CODE','TRDOPSOG_GEN',false);
  DSOptoins(ds_TRPREDP,'','TRPREDP','CODE','TRPREDP_GEN',false);
  //ReopenTRDOP(cbb_state.ItemIndex);
end;


procedure TTRProcess5Form.ReopenTRDOP(st :Variant);
  function CheckDate :Boolean;
  begin
    Result :=true;
    if dt1.EditValue=null then Result:=false;
    if dt3.EditValue=null then Result:=false;
  end;
begin
  v1.BeginUpdate(lsimImmediate);
  v2.BeginUpdate(lsimImmediate);
  try
    if (st=null) or (st<0) or (st=2) then st:='0,1';
    with ds_TRDOP do begin
      close;
      if CheckDate then begin
        MainWhereClause:='td.DOPDATE between :dt1 and :dt2 and td.FIRM = :FIRM and td.LSTATE=1 and td.STATE in ('+VarToSTR(st)+')';
        ParamByName('dt1').AsVariant:=dt1.EditValue;
        ParamByName('dt2').AsVariant:=dt3.EditValue;
        ParamByName('FIRM').AsVariant:= fFirm;
      end else begin
        MainWhereClause:='td.LSTATE=1 and td.FIRM = :FIRM and td.STATE in ('+VarToSTR(st)+')';
        ParamByName('FIRM').AsVariant:= fFirm;
      end;
      Open;
      ReopenTRDOPSOG;
    end;
  finally
    v1.EndUpdate;
    v2.EndUpdate;
    v1.ApplyBestFit();
    v2.ApplyBestFit();
  end;
end;

procedure TTRProcess5Form.ReopenTRDOPSOG;
begin
  with ds_TRDOPSOG do begin
    Close;
    MainWhereClause:='td.TRDOP =:td';
    ParamByName('td').AsVariant:=gFN(v1,'CODE');
    Open;
    ReopenTRPREDP;
    btn_CommitDop.Enabled:= (ds_TRDOP.FN('CODE').AsVariant<>null)
                                     and (ds_TRDOP.FN('STATE').AsVariant<>1);
    btn_ReturnDop.Enabled:= (ds_TRDOP.FN('CODE').AsVariant<>null);
    btn_OpenDop.Enabled :=(ds_TRDOP.FN('CODE').AsVariant<>null)
                                     and (ds_TRDOP.FN('STATE').AsVariant=1);
  end;
end;

procedure TTRProcess5Form.ReopenTRPREDP;
begin
  with ds_TRPREDP do begin
    Close;
    if gFN(v2,'TRFACT')=null then Exit;
    MainWhereClause:='tp.TRFACT=:tr';
    ParamByName('tr').AsVariant:=gFN(v2,'TRFACT');
    Open;
    FillEdit;
    //button enable
    SetWorkBtnRigth;
  end;
end;

procedure TTRProcess5Form.ReturnDop;
var
  Q :TfibQuery;
begin
  if not CheckForReturn then
    raise EMyException.Create(
          'Имеются завершенные работы!'+#10#13+
          'Снимите блокировку с работ'+#10#13+
          'и уже после этого можно вернуть доп. соглашение.');
  Q:=GetQueryForUse(cmDB.WT,
        'update TRFACT set STATE = 3' + #13#10 +
        'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  v2.BeginUpdate;
    with ds_TRDOPSOG do begin
      First;
      while not eof do begin
        Q.ParamByName('CODE').AsVariant:=FN('TRFACT').AsVariant;
        Q.ExecQuery;
        Next;
      end;
    end;
  v2.EndUpdate;

  with ds_TRDOP do begin
    Edit;
    FN('LSTATE').AsVariant:=0;
    FN('STATE').AsVariant:=0;
    Post;
  end;

  FreeQueryForUse(Q);
  ReopenTRDOP(cbb_state.ItemIndex);
end;

function TTRProcess5Form.SetDateZD :boolean;
var
  Q :TFIBQuery;
  F: TFactDateForm;
  d1,d2 :Variant;
  P: TPoint;
begin
  Result:=False;
  //CheckPlanData
  F:=TFactDateForm.Create(grd2);
  F.DopY:=YearOf(ds_TRDOP.FN('D2').AsVariant); //передаем год окончания доп соглашения
  GetCursorPos(P); 
  F.Left:=P.X+10;
  F.Top:=P.Y - F.Height -15;   
  if F.ShowModal=mrOk then begin
    d1:=F.dt1.EditValue;
    d2:=F.dt2.EditValue;
    Q:=GetQueryForUse(cmDB.WT,
      'update TRFACT' + #13#10 +
      'set ZD = :ZD,' + #13#10 +
      '    SD = :SD' + #13#10 +
      // '    ,STATE = 5' + #13#10 +   обрабатывается в тригере
      'where (CODE = :CODE)');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    Q.ParamByName('CODE').AsVariant:=gFN(v2,'TRFACT');
    Q.ParamByName('ZD').AsVariant:=d1;
    Q.ParamByName('SD').AsVariant:=d2;
    try
      Q.ExecQuery;
      Result:=true;
    finally
      FreeQueryForUse(Q);
    end;
  end;
  F.Free;
end;

procedure TTRProcess5Form.SetSum;
var
  F: TProcess5FormSum;
  Q: TFIBQuery;
  AIndex: Integer;
  P: TPoint;
begin
  F:= TProcess5FormSum.Create(grlc1Group2);
  GetCursorPos(P); 
  F.Left:=P.X+10;
  F.Top:=P.Y - F.Height -15; 
  Q:=GetQueryForUse(cmDB.WT,'update TRFACT' + #13#10 +
                                'set SUMMA = :SUMMA' + #13#10 +
                                'where (CODE = :CODE)');  
  try
    //NSumma
    if (VarIsType(ds_TRDOPSOG.FN('SUMMA').AsVariant, [varNull, varEmpty]) or (ds_TRDOPSOG.FN('SUMMA').AsVariant = 0)) then
    F.Sum:= ds_TRDOPSOG.FN('NSumma').AsVariant else
    F.Sum:= ds_TRDOPSOG.FN('SUMMA').AsVariant;
    if F.ShowModal = mrOk then begin

      Q.Options:=[qoStartTransaction,qoAutoCommit];
      Q.ParamByName('CODE').AsVariant:=ds_TRDOPSOG.FN('TRFACT').AsVariant;
      Q.ParamByName('SUMMA').AsVariant:=F.clc_SUM.EditingValue;   
      Q.ExecQuery;
      //
      AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию      
      ReopenTRDOPSOG;
      v2.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию 
      SetWorkBtnRigth;                   
    end;
  finally
    F.Free;
    FreeQueryForUse(Q);    
  end;
end;

procedure TTRProcess5Form.SetWorkBtnRigth;
begin
    btn_CloseWork.Enabled:= (ds_TRDOPSOG.FN('STATE').AsVariant <> 1) and
                            (ds_TRDOPSOG.FN('CODE').AsVariant <> null);
    btn_OpenWork.Enabled := (ds_TRDOPSOG.FN('STATE').AsVariant = 1) and
                            (ds_TRDOPSOG.FN('CODE').AsVariant <> null) and
                            (ds_TRDOP.FN('STATE').AsVariant<>1);
    btn_ChangeSum.Enabled:= (ds_TRDOPSOG.FN('STATE').AsVariant <> 1) and
                            (ds_TRDOPSOG.FN('CODE').AsVariant <> null);                        
end;

procedure TTRProcess5Form.TRPREDP_Add(isEdit: Boolean);
begin
  if not CheckParam then Exit;
  if gFN(v2,'TRFACT') = null then Exit;
  with ds_TRPREDP do begin
    if isEdit then Edit else Append;
    FN('TRFACT').AsVariant:= gFN(v2,'TRFACT');
    FN('NOMER').AsVariant:= msk_num.EditValue;
    FN('DATA').AsVariant:= dt2.EditValue;
    FN('DTYPE').AsVariant:= cbb_type.ItemIndex;
    FN('NOTE').AsVariant:=  m_note.EditValue;
    Post;
  end;
end;

procedure TTRProcess5Form.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReopenTRDOPSOG;
end;

procedure TTRProcess5Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : ReopenTRDOPSOG;
    VK_DOWN : ReopenTRDOPSOG;
  end;
end;

procedure TTRProcess5Form.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReopenTRPREDP;
end;

procedure TTRProcess5Form.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : ReopenTRPREDP;
    VK_DOWN : ReopenTRPREDP;
  end;
end;

procedure TTRProcess5Form.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure TTRProcess5Form.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : FillEdit;
    VK_DOWN : FillEdit;
  end;
end;

initialization
 RegisterClass(TTRProcess5Form);
end.

