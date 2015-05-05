unit AddWorkInPlanFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl,FIBQuery,pFIBCacheQueries,
  pFIBProps,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, dxmdaset,
  cxImageComboBox, cxCheckBox, cxProgressBar, dxLayoutControlAdapters,
  dxLayoutContainer, KontragentRepository, dxSkinDevExpressStyle;

type
  TAddWorkInPlanForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    grlc1Group3: TdxLayoutGroup;
    cbb_mlist: TcxLookupComboBox;
    btn_mlistAdd: TcxButton;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_Kontragent: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    btn_set: TcxButton;
    itm_set: TdxLayoutItem;
    ds_mat: TpFIBDataSet;
    src_mat: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1TP: TcxGridDBColumn;
    clv1FLAG: TcxGridDBColumn;
    m1: TdxMemData;
    src_m1: TDataSource;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    clv1worker: TcxGridDBColumn;
    prb1: TcxProgressBar;
    itm_prb1: TdxLayoutItem;
    src_Kontr: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure btn_mlistAddClick(Sender: TObject);
    procedure btn_setClick(Sender: TObject);
    procedure cbb_KontragentPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure ShowSpr;
    procedure MemCreate;
    procedure OpenDS;
    procedure ReopenHouse;
    function CheckParams :Boolean;
    procedure SetWork;
    procedure SetFlag;
  public
    { Public declarations }
  end;

var
  AddWorkInPlanForm: TAddWorkInPlanForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, AddMatFrm, CommonDm, LoadingSplash;

{$R *.dfm}

procedure TAddWorkInPlanForm.btn_execClick(Sender: TObject);
begin
  ReopenHouse;
end;

procedure TAddWorkInPlanForm.btn_mlistAddClick(Sender: TObject);
begin
  ShowSpr;
end;

procedure TAddWorkInPlanForm.btn_setClick(Sender: TObject);
begin
  SetWork;
end;

procedure TAddWorkInPlanForm.cbb_KontragentPropertiesEditValueChanged(
  Sender: TObject);
begin
  cbb_Kontragent.PostEditValue;
  SetFlag;
end;

function TAddWorkInPlanForm.CheckParams: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_mlist.EditValue=null then
  begin
    Rez('Укажите работу.',cbb_mlist);
    Exit;
  end;
  if msk_Y.EditText='' then begin
    Rez('Укажите год',msk_Y);
    Exit;
  end;
  if cbb_Kontragent.EditValue=null then begin
    Rez('Укажите организацию',cbb_Kontragent);
    Exit;
  end;
end;

procedure TAddWorkInPlanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TAddWorkInPlanForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  MemCreate;
  OpenDS;
end;


procedure TAddWorkInPlanForm.MemCreate;
begin
  CreateField(m1,'CODE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'STREET',ftInteger);
  CreateField(m1,'SNAME',ftString,128);
  CreateField(m1,'TP',ftInteger);
  CreateField(m1,'FLAG',ftInteger);
  CreateField(m1,'worker',ftInteger);
  m1.Indexes.Add.FieldName:='CODE';
  m1.Open;
end;

procedure TAddWorkInPlanForm.OpenDS;
begin
  ds_mat.Open;
  src_Kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents();
  //com_dm.ds_KONTRAGENT.CloseOpen(false);
end;

procedure TAddWorkInPlanForm.ReopenHouse;
begin
  prb1.Properties.Text:='';
  prb1.Position:=0;
  if not CheckParams then Exit;
  with ds_house do begin
    close;
    ParamByName('y').AsVariant:=msk_Y.EditValue;
    ParamByName('mlist').AsVariant:=cbb_mlist.EditValue;
    Open;
  end;
  m1.close; m1.open;
  m1.LoadFromDataSet(ds_house);
  SetFlag;
end;

procedure TAddWorkInPlanForm.SetFlag;
var
  Q: TFibQuery;
  procedure UnSetFlag;
  begin
    m1.First;
    while not m1.eof do begin
      m1.Edit;
      m1.FieldByName('FLAG').AsVariant:=0;
      m1.Post;
      m1.next;
    end;
  end;
begin
  if cbb_Kontragent.EditValue=null then exit;
  if m1.IsEmpty then exit;
  Q:=GetQueryForUse(cmDB.RT,
      'select sh.house' + #13#10 +
      'from SRVDOG SD' + #13#10 +
      'left outer join srvdoghouse sh on sh.srvdog=sd.code' + #13#10 +
      'where SD.KONTRAGENT=:kontr and SD."ACTIVE"=1');
  Q.ParamByName('kontr').AsVariant:=cbb_Kontragent.EditValue;
  try
    SplashVisibility(true,'Получаем данные.');
    Q.ExecQuery;
    v1.BeginUpdate;
    UnSetFlag;
    while not Q.eof do begin
      if m1.Locate('CODE',Q.FN('HOUSE').AsVariant,[]) then
      begin
        m1.Edit;
        m1.FieldByName('FLAG').AsVariant:=1;
        m1.Post;
      end;
      Q.Next;
    end;
  finally
    FreeQueryForUse(Q);
    v1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure TAddWorkInPlanForm.SetWork;
var
  AIndex :integer;
  Q :TFIBQuery;

  procedure Exec;
  begin
    Q.ParamByName('Y').AsVariant:=msk_Y.EditValue;
    Q.ParamByName('HOUSE').AsVariant:=m1.FieldByName('CODE').AsVariant;
    Q.ParamByName('MLIST').AsVariant:=cbb_mlist.EditValue;
    Q.ParamByName('KONTRAGENT').AsVariant:=cbb_Kontragent.EditValue;
    Q.ParamByName('MANAGER').AsVariant:=m1.FieldByName('worker').AsVariant;
    Q.ExecQuery;
  end;
begin
  if not CheckParams then exit;
  if Application.MessageBox('Вы действительно хотите установить работу по указанным домам?',
    'Внимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST) = IDNO
    then
  begin
    Exit;
  end;

  Q:=GetQueryForUse(cmDB.WT,
      'insert into TRPLAN (Y, HOUSE, MLIST, KONTRAGENT, MANAGER)' + #13#10 +
      'values (:Y, :HOUSE, :MLIST, :KONTRAGENT, :MANAGER)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  v1.BeginUpdate;
  with prb1 do begin
    Properties.Min:=0;
    Properties.Max:=m1.RecordCount;
  end;
  try
    AIndex:=v1.Controller.FocusedRowIndex;
    with m1 do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant=1 then Exec;
        prb1.Position:=RecNo;
        prb1.Update;
        Next;
      end;
    end;
    prb1.Properties.Text:='Установка завершена.';
    v1.Controller.FocusRecord(AIndex,true);
  finally
    v1.EndUpdate;
    FreeQueryForUse(Q);
  end;
end;
{ -------------------------------------------------------------------------------
  btn_mlistAddClick|Добавить материал
  ------------------------------------------------------------------------------- }
procedure TAddWorkInPlanForm.ShowSpr;
var
  F: TAddMatForm;
  m: Integer;
begin
  m := 0;
  F := TAddMatForm.CreateModal(self);
  F.ShowModal;
  if F.ModalResult = mrOk then
  begin
    ds_mat.CloseOpen(true);
    if F.v1.GetColumnByFieldName('Code').EditValue <> null then
      cbb_mlist.EditValue := F.v1.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

 initialization
 RegisterClass(TAddWorkInPlanForm);
end.


