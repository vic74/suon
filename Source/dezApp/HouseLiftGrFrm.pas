unit HouseLiftGrFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, BaseForm, dxSkinsdxBarPainter, cxDBLookupComboBox,
  cxMaskEdit, dxBar, cxBarEditItem, cxClasses, DB, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries,pFIBProps,
  dxmdaset, cxPropertiesStore, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCheckBox,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxRadioGroup, dxLayoutContainer, dxLayoutControlAdapters;

type
  THouseLiftGrForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    ds_HOUSELIFTGR: TpFIBDataSet;
    src_History: TDataSource;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    lb_month: TcxBarEditItem;
    lb_year: TcxBarEditItem;
    btn_exec: TdxBarButton;
    m_month: TdxMemData;
    prop1: TcxPropertiesStore;
    btn_fill: TdxBarButton;
    m_HOUSELIFTGR: TdxMemData;
    src_m_HOUSELIFTGR: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clvLIFTLIST: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1TEXOS: TcxGridDBColumn;
    clv1EXP: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    src_month: TDataSource;
    grp_left: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    ds_history: TpFIBDataSet;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    clv2LIFTLIST: TcxGridDBColumn;
    clv2M: TcxGridDBColumn;
    clv2Y: TcxGridDBColumn;
    clv2TEXOS: TcxGridDBColumn;
    clv2EXP: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STNAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv1ENTRANCE: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    msk_Y1: TcxMaskEdit;
    itm_Y1: TdxLayoutItem;
    msk_Y2: TcxMaskEdit;
    itm_Y2: TdxLayoutItem;
    btn_copy: TcxButton;
    itm_copy: TdxLayoutItem;
    rb_EXP: TcxRadioButton;
    itm_abs: TdxLayoutItem;
    rb_TEXOS: TcxRadioButton;
    itm_ldss: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_fillClick(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure ds_historyBeforeDelete(DataSet: TDataSet);
    procedure ds_historyAfterDelete(DataSet: TDataSet);
    procedure clv1TEXOSPropertiesEditValueChanged(Sender: TObject);
    procedure clv1EXPPropertiesEditValueChanged(Sender: TObject);
    procedure btn_copyClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMonth;
    procedure OpenDs;
    procedure FillHouse;
    function GetLiftList: Variant;
    procedure CreateMem;
    procedure FillMem;
    procedure EditRec(TEXOS, EXP :Variant);
    procedure CopyGraph;
  public
    { Public declarations }
  end;

var
  HouseLiftGrForm: THouseLiftGrForm;

implementation

uses AppUtils, cmDBUnit, LoadingSplash, cmUtils;

{$R *.dfm}


procedure THouseLiftGrForm.btn_copyClick(Sender: TObject);
var
  msg :string;
begin
  if (msk_Y1.EditValue = null) or (msk_Y2.EditValue = null) then Exit;
  msg:='График, в который производится копирование, будет очищен.' + #13#10 +
      #9 + 'Вы действительно хотите скопировать данные ' + #13#10 +
      #9#9 + 'из '+msk_Y1.Text+'г. в '+msk_Y2.Text+'г.?';
  if Application.MessageBox(PChar(msg), 'Внимание!', MB_YESNO + MB_ICONWARNING 
    + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  begin
    CopyGraph;
  end;
end;

procedure THouseLiftGrForm.btn_execClick(Sender: TObject);
begin
  FillMem;
end;

procedure THouseLiftGrForm.btn_fillClick(Sender: TObject);
begin
  if ds_HOUSELIFTGR.State in [dsInactive] then Exit;
  FillHouse;
end;

procedure THouseLiftGrForm.clv1EXPPropertiesEditValueChanged(Sender: TObject);
var
  Edit : TcxCustomEdit;
  EXP, TEXOS: Variant;
  NewValue: Variant;
begin
  Edit := Sender as TcxCustomEdit;
  NewValue := Edit.EditingValue;
  v1.DataController.Post;
  EXP := m_HOUSELIFTGR.FieldByName('EXP').AsVariant;
  TEXOS := m_HOUSELIFTGR.FieldByName('TEXOS').AsVariant;
  EditRec(TEXOS,EXP);
end;

procedure THouseLiftGrForm.clv1TEXOSPropertiesEditValueChanged(Sender: TObject);
var
  Edit: TcxCustomEdit;
  EXP, TEXOS: Variant;
  NewValue: Variant;
begin
  Edit := Sender as TcxCustomEdit;
  NewValue := Edit.EditingValue;
  v1.DataController.Post;
  EXP := m_HOUSELIFTGR.FieldByName('EXP').AsVariant;
  TEXOS := m_HOUSELIFTGR.FieldByName('TEXOS').AsVariant;
  EditRec(TEXOS,EXP);
end;

procedure THouseLiftGrForm.FillHouse;
var
  Q :TFIBQuery;
  code :Variant;
  hlist :string;
  isAppend :Boolean;
begin
  isAppend:=False;
  hlist:=VarToStr(GetLiftList);
  //if hlist='' then Exit;
  Q:=GetQueryForUse(cmDB.RT,
        'select h.code,h.house,h.street,hs.nomer,h.entrance,s.name StName'+
        ' from LIFTLIST h'+
        ' left outer join house hs on hs.code=h.house'+
        ' left outer join street s on s.code=h.street'+
  ' where ('#39+hlist+#39' not containing '#39','#39'||h.code||'#39','#39')');
  Q.ExecQuery;
  try
    //SplashVisibility(True,'Заполняем данные...');
    //заполняем таблицу
    while not Q.Eof do
    begin
      isAppend:=True;
      with m_HOUSELIFTGR do begin   // m_HOUSELIFTGR<-ds_HOUSELIFTGR
        Append;
        FieldByName('LIFTLIST').AsVariant:=Q.FN('CODE').AsVariant;
        FieldByName('STREET').AsVariant:=Q.FN('STREET').AsVariant;
        FieldByName('HOUSE').AsVariant:=Q.FN('HOUSE').AsVariant;
        FieldByName('NOMER').AsVariant:=Q.FN('NOMER').AsVariant;
        FieldByName('StName').AsVariant:=Q.FN('StName').AsVariant;
        FieldByName('entrance').AsVariant:=Q.FN('entrance').AsVariant;
        FieldByName('TEXOS').AsVariant:=0;
        FieldByName('EXP').AsVariant:=0;
        FieldByName('Y').AsVariant:=lb_year.EditValue;
        FieldByName('M').AsVariant:=lb_month.EditValue;
        Post;
      end;
      Q.Next;
      Application.ProcessMessages;
    end;
  finally
    //SplashVisibility(false);
  end;
  //if isAppend then
  //FillMem;
end;


function THouseLiftGrForm.GetLiftList: Variant;
var
  CurCode: Variant;
begin
  Result:='';
  with m_HOUSELIFTGR do
  begin
    DisableControls;
    CurCode:=FieldByName('CODE').AsVariant;
    First;
    while not Eof do begin
      Result:=Result+','+VarToStr(FieldByName('LIFTLIST').AsVariant);
      Next;
    end;
    if Result<>'' then Result:=Result+',';
    Locate('CODE',CurCode,[]);
    EnableControls;
  end;
end;

procedure THouseLiftGrForm.FillMem;
var
  house :Variant;
begin
  house:=null;
  with ds_HOUSELIFTGR do
  begin
    Close;
    if lb_month.EditValue=null then Exit;
    if lb_year.EditValue=null then Exit;
    SplashVisibility(True,'Обрабатываем данные ...');
    try
      MainWhereClause:='HL.M=:M and HL.Y=:Y';
      ParamByName('M').AsVariant:=lb_month.EditValue;
      ParamByName('Y').AsVariant:=lb_year.EditValue;
      Open;
      m_HOUSELIFTGR.Close;
      m_HOUSELIFTGR.Open;
      m_HOUSELIFTGR.DisableControls;
      while not Eof do
      begin
          m_HOUSELIFTGR.Append;
          m_HOUSELIFTGR.FieldByName('CODE').AsVariant:=FN('CODE').AsVariant;

          m_HOUSELIFTGR.FieldByName('LIFTLIST').AsVariant:=FN('LIFTLIST').AsVariant;
          m_HOUSELIFTGR.FieldByName('M').AsVariant:=FN('M').AsVariant;
          m_HOUSELIFTGR.FieldByName('Y').AsVariant:=FN('Y').AsVariant;
          m_HOUSELIFTGR.FieldByName('TEXOS').AsVariant:=FN('TEXOS').AsVariant;
          m_HOUSELIFTGR.FieldByName('EXP').AsVariant:=FN('EXP').AsVariant;

          m_HOUSELIFTGR.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
          m_HOUSELIFTGR.FieldByName('NOMER').AsVariant:=FN('NOMER').AsVariant;

          m_HOUSELIFTGR.FieldByName('STREET').AsVariant:=FN('STREET').AsVariant;
          m_HOUSELIFTGR.FieldByName('StName').AsVariant:=FN('StName').AsVariant;
          m_HOUSELIFTGR.FieldByName('ENTRANCE').AsVariant:=FN('ENTRANCE').AsVariant;
          m_HOUSELIFTGR.Post;
        Next;
        Application.ProcessMessages;
      end;
      FillHouse;
      m_HOUSELIFTGR.EnableControls;
    finally
      SplashVisibility(false);
    end;
  end;
  //m_HouseUK.LoadFromDataSet(ds_HOUSEUK);
end;

procedure THouseLiftGrForm.CopyGraph;
var
  Q :TFibQuery;
  EXP,TEXOS  :string;

  function ClearGraph :boolean;
  var
    Q1 :TFibQuery;
  begin
    Result :=false;
    Q1:=GetQueryForUse(cmDB.WT,'DELETE FROM HOUSELIFTGR WHERE (Y = :Y)');
    Q1.ParamByName('Y').AsVariant:=msk_Y2.EditValue;
    Q1.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q1.ExecQuery;
      Result :=true;
    finally
      FreeQueryForUse(Q1);
    end;  
  end;
begin
  if not ClearGraph then Exit;
  if rb_EXP.Checked then EXP:='EXP' else EXP:='0';
  if rb_TEXOS.Checked then TEXOS:='TEXOS' else TEXOS:='0';
  Q:=GetQueryForUse(cmdb.WT,
    'insert into HOUSELIFTGR (LIFTLIST, M, Y, TEXOS, EXP, STREET, HOUSE)' +
    #13#10 + 'select  LIFTLIST, M, :Y2, '+TEXOS+', '+EXP+', STREET, HOUSE' + #13#10 +
    'from HOUSELIFTGR  where Y=:Y1');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try  
    Q.ParamByName('Y2').AsVariant:=msk_Y2.EditValue;
    Q.ParamByName('Y1').AsVariant:=msk_Y1.EditValue;
    Q.ExecQuery;
    Application.MessageBox('Копирование завершено.', 'Caption', MB_OK + 
      MB_ICONINFORMATION + MB_DEFBUTTON2 + MB_TOPMOST);
      
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure THouseLiftGrForm.CreateMem;
begin
  CreateField(m_HOUSELIFTGR,'CODE',ftInteger);
  CreateField(m_HOUSELIFTGR,'LIFTLIST',ftString,32);
  CreateField(m_HOUSELIFTGR,'M',ftSmallint);
  CreateField(m_HOUSELIFTGR,'Y',ftSmallint);
  CreateField(m_HOUSELIFTGR,'TEXOS',ftSmallint);
  CreateField(m_HOUSELIFTGR,'EXP',ftSmallint);
  CreateField(m_HOUSELIFTGR,'STREET',ftInteger);
  CreateField(m_HOUSELIFTGR,'StName',ftString,256);
  CreateField(m_HOUSELIFTGR,'HOUSE',ftInteger);
  CreateField(m_HOUSELIFTGR,'NOMER',ftString,32);
  CreateField(m_HOUSELIFTGR,'ENTRANCE',ftInteger);
  m_HOUSELIFTGR.Open;
end;

procedure THouseLiftGrForm.CreateMonth;
var
  i :Integer;
  procedure AddRec(ACode: Integer; AName: string);
  begin
    with m_month do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_month,'Code',ftInteger);
  CreateField(m_month,'Name',ftString,64);
  m_month.Open;
  for I := 1 to 12 do
  AddRec(i,LongMonthNames[i]);
end;

procedure THouseLiftGrForm.ds_historyAfterDelete(DataSet: TDataSet);
begin
  FillMem;
end;

procedure THouseLiftGrForm.ds_historyBeforeDelete(DataSet: TDataSet);
begin
  if not cmMessageBox('Вы действительно хотите удалить запись?') then
  Abort;
end;

procedure THouseLiftGrForm.EditRec(TEXOS, EXP :Variant);
var
  CurCode :Variant;
  Y, M , LIFTLIST :Variant;
begin
  Y :=lb_year.EditValue;
  M :=lb_month.EditValue;
  LIFTLIST :=v1.GetColumnByFieldName('LIFTLIST').EditValue;
  with ds_HOUSELIFTGR do begin
    if not Locate('LIFTLIST;Y;M',VarArrayOf([LIFTLIST,Y,M]),[]) then
    begin
      Append;
      FieldByName('LIFTLIST').AsVariant:= LIFTLIST;
      FieldByName('STREET').AsVariant:=
                                    v1.GetColumnByFieldName('STREET').EditValue;
      FieldByName('HOUSE').AsVariant:=
                                     v1.GetColumnByFieldName('HOUSE').EditValue;
      FieldByName('TEXOS').AsVariant:=TEXOS;
      FieldByName('EXP').AsVariant:=EXP;
      FieldByName('Y').AsVariant:=Y;
      FieldByName('M').AsVariant:=M;
      Post;
    end else
    begin
      if (TEXOS=0) and (EXP=0) then
      Delete else
      begin
        Edit;
        FN('TEXOS').AsVariant:=TEXOS;
        FN('EXP').AsVariant:=EXP;
        Post;
      end;
    end;
    CurCode:=v1.GetColumnByFieldName('CODE').EditValue;

  end;
  //FillMem;
  //m_HOUSELIFTGR.Locate('CODE',CurCode,[]);
  ds_history.CloseOpen(False);
end;

procedure THouseLiftGrForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseLiftGrForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  CreateMonth;
  CreateMem;
  OpenDs;
end;


procedure THouseLiftGrForm.OpenDs;
begin
  DSOptoins(ds_HOUSELIFTGR,'','HOUSELIFTGR','CODE','HOUSELIFTGR_GEN',false);
  DSOptoins(ds_History,'','HOUSELIFTGR','CODE','HOUSELIFTGR_GEN',false);
end;

initialization
RegisterClass(THouseLiftGrForm);
end.


