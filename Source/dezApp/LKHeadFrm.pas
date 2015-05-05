unit LKHeadFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery, pFIBCacheQueries,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxTextEdit, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, FIBDataSet, pFIBDataSet,
  cxCheckBox, dxmdaset, frxClass, frxDBSet, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TLKHeadForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group7: TdxLayoutGroup;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    cbb_dog: TcxLookupComboBox;
    itm_dog: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    brm1: TdxBarManager;
    doc1: TdxBarDockControl;
    itm_doc1: TdxLayoutItem;
    bar1: TdxBar;
    btn_add_h: TdxBarButton;
    btn_del_h: TdxBarButton;
    btn_edit_h: TdxBarButton;
    txt_street: TcxTextEdit;
    itm_street: TdxLayoutItem;
    btn_Add_sh: TdxBarButton;
    btn_edit_sh: TdxBarButton;
    btn_del_sh: TdxBarButton;
    ds_dog: TpFIBDataSet;
    src_dog: TDataSource;
    ds_LKHEAD: TpFIBDataSet;
    src_LKHEAD: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1DOG: TcxGridDBColumn;
    clv1ALOCK: TcxGridDBColumn;
    lcl2: TdxLayoutCxLookAndFeel;
    btn_HPrint: TdxBarButton;
    clv1M: TcxGridDBColumn;
    cbb_M: TcxComboBox;
    itmlc1Item1: TdxLayoutItem;
    clv1MNAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
    procedure btn_add_hClick(Sender: TObject);
    procedure btn_edit_hClick(Sender: TObject);
    procedure btn_del_hClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_HPrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure SetRight;
    function CheckHead :boolean;
    procedure AddHead(isEdit :boolean=false);
    procedure FillHead;
    procedure ShowSpecForm;
    procedure ReOpenLKHEAD;
    procedure ReopenDog;
    function CheckUnique(Y,SRVDOG,M :variant) :boolean;
  public
    { Public declarations }
  end;

var
  LKHeadForm: TLKHeadForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, LoadingSplash, dezInfo,
  GetGraphPeriodFrm, LKSPECFrm;

{$R *.dfm}

procedure TLKHeadForm.AddHead(isEdit: boolean);
begin
  if not CheckHead then exit;
  if CheckUnique(Trim(msk_Y.Text),cbb_dog.EditValue,cbb_M.ItemIndex+1) then
    raise EMyException.Create('Данная запись уже присутсвует в спсике графиков!');
  //
  if isEdit then
    if gFN(v1,'SRVDOG')<>cbb_dog.EditValue then
    raise EmyException.Create('Запрещено менять договор у созданого графика!');
  //
  with ds_LKHEAD do begin
    if isEdit then Edit else
    Append;
      FN('Y').AsVariant:=Trim(msk_Y.Text);
      FN('M').AsVariant:=cbb_M.ItemIndex+1;
      FN('SRVDOG').AsVariant:=cbb_dog.EditValue;
      if not isEdit then
      FN('ALOCK').AsVariant:=0;
    Post;
  end;
end;

procedure TLKHeadForm.btn_add_hClick(Sender: TObject);
begin
  AddHead;
end;

procedure TLKHeadForm.btn_del_hClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить график?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_LKHEAD.Delete;
  end;
end;

procedure TLKHeadForm.btn_edit_hClick(Sender: TObject);
begin
  AddHead(true);
end;

procedure TLKHeadForm.btn_HPrintClick(Sender: TObject);
begin
  if gFN(v1,'CODE')=null then Exit;
  ShowSpecForm;
end;

function TLKHeadForm.CheckHead: boolean;
begin
  Result:=true;
  if (Trim(msk_Y.Text)='') or (cbb_dog.EditValue=null) then
  begin
    Application.MessageBox('Не верно указаны данные!', 'Ошибка', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
end;

function TLKHeadForm.CheckUnique(Y, SRVDOG, M: variant): boolean;
var
  Q :TFIBQuery;
begin
  Result:=true;
  try
    Q:=GetQueryForUse(cmDB.RT,'select CODE' + #13#10 +
                              'from LKHEAD' + #13#10 +
                              'where Y=:Y and SRVDOG=:DOG and M=:M');
    Q.ParamByName('Y').AsVariant:=Y;
    Q.ParamByName('DOG').AsVariant:=SRVDOG;
    Q.ParamByName('M').AsVariant:=M;
    Q.ExecQuery;
    Result:=Q.FN('CODE').AsVariant<>null;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TLKHeadForm.clv1ALOCKPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TLKHeadForm.FillHead;
begin
  //ReOpen_SRVDOGHOUSE;
  //ReOpen_LKSPEC;
  msk_Y.EditValue:=ds_LKHEAD.FN('Y').AsVariant;
  cbb_dog.EditValue:=ds_LKHEAD.FN('SRVDOG').AsVariant;
  if ds_LKHEAD.FN('M').AsVariant = null then
  cbb_M.ItemIndex := 0 else
  cbb_M.ItemIndex := ds_LKHEAD.FN('M').AsVariant-1;
end;

procedure TLKHeadForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TLKHeadForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  SetRight;
  PrepareDS;
end;

procedure TLKHeadForm.PrepareDS;
begin
  ReopenDog;
  DSOptoins(ds_LKHEAD,'','LKHEAD','CODE','LKHEAD_GEN',false);
  ReOpenLKHEAD;
  ds_LKHEAD.First;
end;

procedure TLKHeadForm.ReopenDog;
begin
  with ds_dog do begin
    Close;
     if ActiveUserType = 1 then begin
      MainWhereClause := 'kontragent = :kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
     end else
       MainWhereClause:='';
    Open;
  end;
end;

procedure TLKHeadForm.ReOpenLKHEAD;
begin
  with ds_LKHEAD do begin
    Close;
     if ActiveUserType = 1 then begin
      MainWhereClause := 'kontragent = :kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
     end else
       MainWhereClause:='';
    Open;
  end;
  FillHead;
end;

procedure TLKHeadForm.SetRight;
begin
  clv1ALOCK.Options.Editing := ActiveUserType=0;
end;

procedure TLKHeadForm.ShowSpecForm;
var
  F :TLKSPECForm;
begin
  try
    SplashVisibility(true,'Загружаем данные');
    try
      F := TLKSPECForm.Create(Application);
      F.WindowState := wsNormal;
      F.BorderStyle := bsDialog;
      F.Position := poMainFormCenter;
      // Y,M,head
      F.Y := gFN(v1,'Y');
      F.M := gFN(v1,'M');
      F.head := gFN(v1,'CODE');
      F.OpenSrvDog(gFN(v1,'SRVDOG'));
    finally
      SplashVisibility(false);
    end;
    f.ShowModal;
  finally
    //f.Free;
  end;
end;

procedure TLKHeadForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillHead;
end;

procedure TLKHeadForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowSpecForm;
end;

procedure TLKHeadForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : FillHead;
    VK_DOWN : FillHead;
    VK_RETURN : ShowSpecForm;
  end;
end;

procedure TLKHeadForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 // grlc1Group2.Caption:='Редактировать дома в графике.';
end;

procedure TLKHeadForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 // grlc1Group2.Caption:='Добавить дома из договора.';
end;

initialization
 RegisterClass(TLKHeadForm);
end.

