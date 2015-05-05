unit ODSDocFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, dxSkinsdxBarPainter, Menus, FIBDataSet,
  pFIBDataSet, cxDropDownEdit, cxCalc, cxLookupEdit, cxDBLookupEdit,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  cxDBLookupComboBox, StdCtrls, cxButtons, cxMaskEdit, dxBar, cxClasses,
  cxTextEdit, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, dxLayoutControlAdapters,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TODSDocForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    grp2: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btn_fill: TdxBarButton;
    grp3: TdxLayoutGroup;
    msk_Y: TcxMaskEdit;
    itm_Y: TdxLayoutItem;
    btn_add_y: TcxButton;
    itm_add_y: TdxLayoutItem;
    btn_del_y: TcxButton;
    itm_del_y: TdxLayoutItem;
    grp_btn_y: TdxLayoutGroup;
    btn_ed_y: TcxButton;
    itm_ed_y: TdxLayoutItem;
    cbb_street: TcxLookupComboBox;
    itm_street: TdxLayoutItem;
    cbb_house: TcxLookupComboBox;
    itm_house: TdxLayoutItem;
    ced_num: TcxCalcEdit;
    itm_num: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edt: TcxButton;
    itm_edt: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    btn_delete: TdxBarButton;
    src_street: TDataSource;
    ds_street: TpFIBDataSet;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_ODSDOC: TpFIBDataSet;
    src_ODSDOC: TDataSource;
    m_month: TdxMemData;
    src_month: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1_M: TcxGridDBColumn;
    clv1_Y: TcxGridDBColumn;
    cbb_m1: TcxComboBox;
    itm_m: TdxLayoutItem;
    ds_ODSDOCLIST: TpFIBDataSet;
    src_ODSDOCLIST: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2ODSDOC: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NUM: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_streetPropertiesEditValueChanged(Sender: TObject);
    procedure btn_add_yClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_addClick(Sender: TObject);
    procedure btn_edtClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_deleteClick(Sender: TObject);
    procedure btn_fillClick(Sender: TObject);
    procedure btn_del_yClick(Sender: TObject);
    procedure btn_ed_yClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv2NUMPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDs;
    procedure HoseOpen;
    procedure CreateMonth;
    procedure AddMonth(isEdit :boolean);
    procedure FillEdM;
    //
    procedure AddRec(isEdit :boolean);
    procedure Open_ODSDOCLIST;
    function GetExisthouse :WideString;
    procedure FillHouse;
    procedure Clear_ODSDOCLIST;
    function CheckParam(addr :boolean) :Boolean;
    procedure FillAddr;
    function ExistMonth(m,y :variant) :Boolean;
    function ExistHouse(h :variant) :Boolean;
  public
    { Public declarations }
  end;

var
  ODSDocForm: TODSDocForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TODSDocForm.AddMonth(isEdit: boolean);
begin
  if not CheckParam(false) then Exit;
  if (not isEdit) and (ExistMonth(cbb_M1.ItemIndex,msk_Y.EditValue)) then Exit;
  with ds_ODSDOC do begin
    if isEdit then Edit else
    Append;
    FN('Y').AsVariant:=msk_Y.EditValue;
    FN('M').AsVariant:=cbb_M1.ItemIndex;
    Post;
  end;
end;

procedure TODSDocForm.AddRec(isEdit: boolean);
begin
  if not CheckParam(true) then Exit;
  if (not isEdit) and (ExistHouse(cbb_house.EditValue)) then Exit;
  with ds_ODSDOCLIST do begin
    if isEdit then Edit  else
    Append;
    FN('ODSDOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    FN('HOUSE').AsVariant:=cbb_house.EditValue;
    FN('STREET').AsVariant:=cbb_street.EditValue;
    FN('NUM').AsVariant:=ced_num.EditValue;
    Post;
  end;
end;

procedure TODSDocForm.btn_addClick(Sender: TObject);
begin
  AddRec(False);
end;

procedure TODSDocForm.btn_add_yClick(Sender: TObject);
begin
  AddMonth(false);
end;

procedure TODSDocForm.btn_delClick(Sender: TObject);
begin
  if cmMessageBox('¬ы действительно хотите удалить запись?') then
  ds_ODSDOCLIST.Delete;
end;

procedure TODSDocForm.btn_deleteClick(Sender: TObject);
begin
  Clear_ODSDOCLIST;
end;

procedure TODSDocForm.btn_del_yClick(Sender: TObject);
begin
  if cmMessageBox('¬ы действительно хотите удалить данные?') then
  ds_ODSDOC.Delete;
end;

procedure TODSDocForm.btn_edtClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TODSDocForm.btn_fillClick(Sender: TObject);
begin
  FillHouse;
end;

procedure TODSDocForm.cbb_streetPropertiesEditValueChanged(Sender: TObject);
begin
  HoseOpen;
end;

procedure TODSDocForm.FillAddr;
begin
  with ds_ODSDOCLIST do begin
    cbb_house.EditValue:=FN('HOUSE').AsVariant;
    cbb_street.EditValue:=FN('STREET').AsVariant;
    ced_num.EditValue:=FN('NUM').AsVariant;
  end;
end;

procedure TODSDocForm.FillEdM;
begin
  msk_Y.EditValue:=ds_ODSDOC.FN('Y').AsVariant;
  cbb_M1.ItemIndex:=ds_ODSDOC.FN('M').AsVariant;
end;

procedure TODSDocForm.FillHouse;
var
  hs: WideString;
  Q :TFibQuery;
begin
  hs:=GetExisthouse;
  Q:=GetQueryForUse(cmDB.RT,'SELECT h.code,h.street from house h' + #13#10 +
                            'where h.a=1');
  if hs<>'' then Q.SQL.Add(#10#13+' and ('+hs+' not containing ' +
                            #39','#39' ||h.CODE || '#39','#39')');
  try
  SplashVisibility(True,'ѕолучаем данные');
  Q.ExecQuery;
  ds_ODSDOCLIST.DisableControls;
  SetCapt('«аполн€ем.');
  while not Q.Eof do begin
    with ds_ODSDOCLIST do begin
      Append;
      FN('ODSDOC').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      FN('HOUSE').AsVariant:=Q.FN('CODE').AsVariant;
      FN('STREET').AsVariant:=Q.FN('STREET').AsVariant;
      FN('NUM').AsVariant:=0;
      Post;
    end;
    Q.Next;
  end;
  ds_ODSDOCLIST.EnableControls;
  finally
    SplashVisibility(false);
    FreeQueryForUse(Q);
  end;

end;

procedure TODSDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TODSDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;

function TODSDocForm.GetExisthouse: WideString;
var
  hs :WideString;
begin
  Result:='';
  with ds_ODSDOCLIST do begin
    DisableControls;
    First;
    while not EOF do begin
      hs:=hs+FN('HOUSE').AsString+',';
      Next;
    end;
    EnableControls;
  end;
  if hs<>'' then Result:=#39+','+hs+#39;
end;

procedure TODSDocForm.HoseOpen;
begin
  with ds_house do
  begin
    Close;
    if cbb_street.EditValue=null then Exit;
    MainWhereClause:='street =:st';
    ParamByName('st').AsVariant:=cbb_street.EditValue;
    OrderClause:='nomer';
    Open;
  end;
end;

function TODSDocForm.CheckParam(addr :boolean): Boolean;
begin
  Result:=True;
  if addr then begin
    if (cbb_house.EditValue=null) or (ced_num.EditValue=null) then
    begin
      ShowMessage('Ќе заполнены об€зательные параметры!');
      Result:=False;
      Exit;
    end;
  end else begin
    if msk_Y.EditValue=null then
    begin
      ShowMessage('Ќе заполнены об€зательные параметры!');
      Result:=False;
      Exit;
    end;
  end;
end;

procedure TODSDocForm.Clear_ODSDOCLIST;
var
  AIndex: Integer;
begin
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  try
    SplashVisibility(True,'ќчищаем нулевые записи.');
    with ds_ODSDOCLIST do begin
      DisableControls;
      First;
      while not Eof do begin
        if FN('NUM').AsVariant=0 then
        Delete else
        Next;
      end;
      EnableControls;
    end;
  finally
    SplashVisibility(false);
  end;
  v2.Controller.FocusRecord(AIndex, true); // возвращаемс€ на позицию
end;

procedure TODSDocForm.clv2NUMPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post();
  FillAddr;
end;

procedure TODSDocForm.CreateMonth;
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


function TODSDocForm.ExistHouse(h: variant): Boolean;
var
  AIndex: Integer;
  exist :Boolean;
begin
  exist :=False;
  AIndex := v2.Controller.FocusedRowIndex; // запоминаем позицию
  with ds_ODSDOCLIST do begin
    DisableControls;
    if Locate('house',cbb_house.EditValue,[]) then
    begin
      ShowMessage('ƒанный адрес уже присутствует');
      exist:=True;
      Result:=True;
    end;
    EnableControls;
  end;
  if not exist then
  v2.Controller.FocusRecord(AIndex, true); // возвращаемс€ на позицию
end;

function TODSDocForm.ExistMonth(m, y: variant): Boolean;
var
  AIndex: Integer;
  exist :Boolean;
begin
  exist :=False;
  AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
  with ds_ODSDOC do begin
    if Locate('M;Y',VarArrayOf([cbb_M1.ItemIndex, msk_Y.EditValue]),[]) then
    begin
      ShowMessage('ƒанный период уже присутствует');
      exist:=True;
      Result:=True;
    end;
  end;
  if not exist then
  v1.Controller.FocusRecord(AIndex, true); // возвращаемс€ на позицию
end;

procedure TODSDocForm.OpenDs;
begin
  CreateMonth;
  ds_house.Open;
  ds_street.Open;
  DSOptoins(ds_ODSDOC,'','ODSDOC','CODE','ODSDOC_GEN');
  DSOptoins(ds_ODSDOCLIST,'','ODSDOCLIST','CODE','ODSDOCLIST_GEN',False);
  Open_ODSDOCLIST;
end;

procedure TODSDocForm.Open_ODSDOCLIST;
begin
  with ds_ODSDOCLIST do begin
    Close;
    if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
    MainWhereClause:='od.ODSDOC=:cod';
    ParamByName('cod').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Open;
  end;
end;

procedure TODSDocForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdM;
  Open_ODSDOCLIST;
end;

procedure TODSDocForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : begin
              FillEdM;
              Open_ODSDOCLIST;
            end;
    VK_DOWN : begin
                FillEdM;
                Open_ODSDOCLIST;
              end;
  end;
end;

procedure TODSDocForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillAddr;
end;

procedure TODSDocForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillAddr;
    VK_DOWN :FillAddr;
  end;
end;

procedure TODSDocForm.btn_ed_yClick(Sender: TObject);
begin
  AddMonth(true);
end;

initialization
 RegisterClass(TODSDocForm);
end.

