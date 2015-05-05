unit ZTOShablonFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTL, cxMaskEdit,
  cxDBLookupComboBox, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL,
  FIBDataSet, pFIBDataSet, FIBQuery, pFIBProps,pFIBCacheQueries,
  cxTLData, dxLayoutcxEditAdapters, cxContainer, Menus,
  StdCtrls, cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, dxmdaset, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxLayoutContainer, dxLayoutControlAdapters;

type
  TZTOShablonForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    gr1: TdxLayoutGroup;
    gr_zatr: TdxLayoutGroup;
    gr_shablon: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    grlc1Group1: TdxLayoutGroup;
    gr_shedt: TdxLayoutGroup;
    gr_tree: TdxLayoutGroup;
    spl2: TdxLayoutSplitterItem;
    gr_house: TdxLayoutGroup;
    spl3: TdxLayoutSplitterItem;
    grlc1Group3: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    gr_aviable: TdxLayoutGroup;
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
    lst1: TcxDBTreeList;
    itm_lst1: TdxLayoutItem;
    ds_ZTOTree: TpFIBDataSet;
    src_ZTOTree: TDataSource;
    clCODE: TcxDBTreeListColumn;
    clNAME: TcxDBTreeListColumn;
    clZTOSHABLON: TcxDBTreeListColumn;
    clOWNER: TcxDBTreeListColumn;
    clZTOTYPE: TcxDBTreeListColumn;
    clSUMMA: TcxDBTreeListColumn;
    ds_ZTOSHABLON: TpFIBDataSet;
    src_ZTOSHABLON: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1SDATE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    txt_Name: TcxTextEdit;
    itm_Name: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_sdate: TdxLayoutItem;
    cbb_dog: TcxLookupComboBox;
    itm_dog: TdxLayoutItem;
    btn_Add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_shEdit: TcxButton;
    itm_shEdit: TdxLayoutItem;
    grlc1Group4: TdxLayoutGroup;
    btn_shDel: TcxButton;
    itm_shDel: TdxLayoutItem;
    mt_house: TdxMemData;
    src_memhouse: TDataSource;
    ds_house: TpFIBDataSet;
    src_house: TDataSource;
    ds_ZTOHOUSE: TpFIBDataSet;
    src_ZTOHOUSE: TDataSource;
    prop1: TcxPropertiesStore;
    mType: TdxMemData;
    src_mType: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2ZTOTREE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    btn_copy: TcxButton;
    itm_copy: TdxLayoutItem;
    clv2ZPNAME: TcxGridDBColumn;
    clv3SRVDOG: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lst1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btn_AddClick(Sender: TObject);
    procedure ds_ZTOTreeBeforePost(DataSet: TDataSet);
    procedure lst1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lst1Click(Sender: TObject);
    procedure v3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_shEditClick(Sender: TObject);
    procedure btn_shDelClick(Sender: TObject);
    procedure lst1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ds_ZTOTreeBeforeInsert(DataSet: TDataSet);
    procedure btn_copyClick(Sender: TObject);
    procedure lst1CustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    HouseNext :Integer;
    procedure PrepareDS;
    procedure reOpenSRVDOG;
    procedure reOpenZTOTREE(splash :boolean=true);
    procedure reOpenZTOHOUSE;
    procedure reOpenZTOSHABLON;
    procedure HouseOpen;
    procedure FillHouseTable;
    procedure HouseAdd;
    procedure AddHouse(house :integer);
    procedure AddShoablon(isEdit :boolean);
    procedure CreateMType;
    procedure MemHouseCreate;
    procedure HouseDel;
    function CheckParams :Boolean;
    procedure FillControls;
    procedure CopyShablon;
  public
    { Public declarations }
  end;

var
  ZTOShablonForm: TZTOShablonForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, CommonDm, LoadingSplash, dezCommon;

{$R *.dfm}

procedure TZTOShablonForm.MemHouseCreate;
  procedure AddType(ACode :integer; AName :string);
  begin
    with mType do
    begin
      Append;
      FieldByName('CODE').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  with mt_house.FieldDefs do
  begin
    CreateField(mt_house,'CODE',ftInteger);
    CreateField(mt_house,'SRVDOG',ftInteger);
    CreateField(mt_house,'NAME',ftString,256);
  end;
  mt_house.Open;

    CreateField(mType,'CODE',ftInteger);
    CreateField(mType,'NAME',ftString,64);
    mType.Open;
    AddType(0,'Группа');
    AddType(1,'Статья затрат');
    AddType(2,'Ставка');
end;

procedure TZTOShablonForm.AddShoablon(isEdit: boolean);
begin
  if not CheckParams then Exit;
  with ds_ZTOSHABLON do begin
    if isEdit then Edit else
       Append;
     FN('NAME').AsVariant:=txt_Name.EditValue;
     FN('SDATE').AsVariant:=dt1.EditValue;
     FN('KONTRAGENT').AsVariant:=cbb_kontr.EditValue;
     FN('SRVDOG').AsVariant:=cbb_dog.EditValue;
    Post;
  end;
end;

procedure TZTOShablonForm.btn_AddClick(Sender: TObject);
begin
  AddShoablon(false);
end;

procedure TZTOShablonForm.btn_copyClick(Sender: TObject);
begin
  if gFN(v1,'CODE')=null then Exit;
  if Application.MessageBox('Вы дествительно хотите скопировать данный шаблон?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) =
    IDYES then
  begin
    CopyShablon;
  end;
end;

procedure TZTOShablonForm.btn_shDelClick(Sender: TObject);
begin
  if gFN(v1,'CODE')=null then Exit;
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDOK then
  begin
    ds_ZTOSHABLON.Delete;
  end;
end;

procedure TZTOShablonForm.btn_shEditClick(Sender: TObject);
begin
  AddShoablon(true);
end;

procedure TZTOShablonForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
  reOpenSRVDOG;
end;

function TZTOShablonForm.CheckParams: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_kontr.EditValue=null then
  begin
    Rez('Не указана организация!',cbb_kontr);
    Exit;
  end;
  if txt_Name.EditValue=null then
  begin
    Rez('Не указано наименование!',txt_Name);
    Exit;
  end;
  if dt1.EditValue=null then
  begin
    Rez('Не указана дата!',dt1);
    Exit;
  end;
  if cbb_dog.EditValue=null then
  begin
    Rez('Не указан договор!',cbb_dog);
    Exit;
  end;
end;

procedure TZTOShablonForm.CopyShablon;
var
  sName :string;
  sCode, sNewCode, sDate, sKontr, sDog :Variant;
  Q :TFIBQuery;
begin
  sCode:=gFN(v1,'CODE');                    // код
  sName:=VarToStr(gFN(v1,'NAME'))+'(копия)';// наименование
  sDate:=Date;                              // дата
  sKontr:=gFN(v1,'KONTRAGENT');             // контрагент
  sDog:=gFN(v1,'SRVDOG');                   // договор
  with ds_ZTOSHABLON do begin
    Append;
     FN('NAME').AsVariant:=sName;
     FN('SDATE').AsVariant:=sDate;
     FN('KONTRAGENT').AsVariant:=sKontr;
     FN('SRVDOG').AsVariant:=sDog;
    Post;
    sNewCode :=FN('CODE').AsVariant;        // новый код для вставки
  end;
  Q:=GetQueryForUse(cmDB.WT,'execute procedure COPYSHABLON(:SH, :NEWSH)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('SH').AsVariant:=sCode;
  Q.ParamByName('NEWSH').AsVariant:=sNewCode;
  SplashVisibility(true,'Копируем шаблон...');
  try
    Q.ExecQuery;
    reOpenZTOSHABLON;
  finally
    FreeQueryForUse(Q);
    SplashVisibility(false);
  end;
end;

procedure TZTOShablonForm.CreateMType;
begin
 //
end;

procedure TZTOShablonForm.ds_ZTOTreeBeforeInsert(DataSet: TDataSet);
begin
  if DataSet.FieldValues['ZTOTYPE']>0 then begin
    Application.MessageBox('Статья затрат или ставка не могут иметь подуровни!'
    + #13#10 +
    'Установите курсор на строку с типом "Группа" для добавления записи.',
    'Ошибка', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 + MB_TOPMOST);
    Abort;
    Exit;
  end;
end;

procedure TZTOShablonForm.ds_ZTOTreeBeforePost(DataSet: TDataSet);
begin
  if ds_ztotree.FN('OWNER').AsVariant=null then
     ds_ztotree.FN('OWNER').AsVariant:=0;
  ds_ztotree.FN('ZTOSHABLON').AsVariant:=gFN(v1,'CODE');
end;

procedure TZTOShablonForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TZTOShablonForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TZTOShablonForm.PrepareDS;
begin
  if ActiveUserType=1 then
  with com_dm.ds_KONTRAGENT do begin
    Close;
    MainWhereClause:='CODE = :cod';
    ParamByName('cod').AsVariant:=ActiveKontragent;
    Open;
  end else com_dm.ds_KONTRAGENT.Open;
  MemHouseCreate;
  if ActiveUserType=1 then begin
    DSOptoins(ds_ZTOSHABLON,'','ZTOSHABLON','CODE','ZTOSHABLON_GEN',false);
    with ds_ZTOSHABLON do begin
      Close;
      MainWhereClause:='zt.KONTRAGENT = :cod';
      ParamByName('cod').AsVariant:=ActiveKontragent;
      Open;
    end;
  end else
    DSOptoins(ds_ZTOSHABLON,'','ZTOSHABLON','CODE','ZTOSHABLON_GEN');
  DSOptoins(ds_ZTOTREE,'','ZTOTREE','CODE','ZTOTREE_GEN',false);
  DSOptoins(ds_ZTOHOUSE,'','ZTOHOUSE','CODE','ZTOHOUSE_GEN',false);
  reOpenZTOTREE;
end;

procedure TZTOShablonForm.HouseOpen;
var
  clause :string;
  function ExtHouse :string;
  var
    s :string;
  begin
    s :='';
    with ds_ZTOHOUSE do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        s:=s+FN('HOUSE').AsString+',';
        Next;
      end;
      EnableControls;
    end;
    if s<>'' then Delete(s,length(s),1);
    Result:=s;
  end;
begin
  clause:=ExtHouse;
  if clause<>'' then
  begin
    ds_house.Close;
    ds_house.MainWhereClause:='SRVDOG=:sd and CODE not in('+clause+')';
    ds_house.ParamByName('sd').AsVariant:=gFN(v1,'SRVDOG');
    ds_house.Open;
    FillHouseTable;
  end else
  begin
    ds_house.Close;
    ds_house.MainWhereClause:='';
    ds_house.Open;
    FillHouseTable;
  end;
end;

procedure TZTOShablonForm.lst1Click(Sender: TObject);
var
  AttachNode: TcxTreeListNode;
begin
  AttachNode :=lst1.FocusedNode;
  //SplashVisibility(true,'Загрузка данных...');
  try
  if AttachNode<>nil then
  if AttachNode.Values[4]>0 then
  reOpenZTOHOUSE else
  begin
    mt_house.Close;
    ds_ZTOHOUSE.close;
  end;
  finally
    //SplashVisibility(false);
  end;
end;

procedure TZTOShablonForm.lst1CustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  with AViewInfo do begin
      if Node.Values[clZTOTYPE.ItemIndex]=1 then ACanvas.Brush.Color := clWhite;
      if Node.Values[clZTOTYPE.ItemIndex]=2 then ACanvas.Brush.Color := clWhite;
  end;
end;

procedure TZTOShablonForm.lst1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  AttachNode: TcxTreeListNode;
begin
  if (Source <> Sender) and (not ds_ZTOTree.IsEmpty) then
  begin
    AttachNode := lst1.GetNodeAt(X, Y);
    if AttachNode <> nil then
      with ds_ZTOTree do
      begin
        Edit;
        FN('OWNER').AsVariant := AttachNode.Values[0];
        Post;
        CloseOpen(false);
      end;
  end;
end;

procedure TZTOShablonForm.lst1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  AttachNode: TcxTreeListNode;
begin
  AttachNode:=lst1.GetNodeAt(X, Y);
  if AttachNode <> nil then
  Accept:= AttachNode.Values[4]=0 else
  Accept:=false;
  //Accept:=AttachNode.Values[TcxDBTreeList(Sender).ColumnByName('ZTOTYPE').ItemIndex] =0;
end;

procedure TZTOShablonForm.lst1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :reOpenZTOHOUSE;
    VK_DOWN :reOpenZTOHOUSE;
  end;
end;

procedure TZTOShablonForm.FillControls;
begin
  with ds_ZTOSHABLON do begin
    txt_Name.EditValue:=FN('NAME').AsVariant;
    dt1.EditValue:=FN('SDATE').AsVariant;
    cbb_kontr.EditValue:=gFN(v1,'KONTRAGENT');
    cbb_dog.EditValue:=gFN(v1,'SRVDOG');
  end;
end;

procedure TZTOShablonForm.FillHouseTable;
begin
  mt_house.Close;
  mt_house.Open;
  mt_house.LoadFromDataSet(ds_house);
  //mt_house.Locate('HOUSE',HouseNext,[]);
end;

procedure TZTOShablonForm.reOpenSRVDOG;
begin
  with com_dm.ds_SRVDOG do begin
    Close;
    if cbb_kontr.EditValue=null then exit;
    MainWhereClause:='sd.KONTRAGENT=:kontr and sd."ACTIVE"=1';
    ParamByName('kontr').asVariant:=cbb_kontr.EditValue;
    Open;
    cbb_dog.EditValue:=FN('CODE').AsVariant;
  end;
end;

procedure TZTOShablonForm.reOpenZTOHOUSE;
var
  AttachNode: TcxTreeListNode;
begin
  with ds_ZTOHOUSE do begin
    Close;
    AttachNode :=lst1.FocusedNode;
    if AttachNode<>nil then
    if AttachNode.Values[4]>0 then
    begin
      MainWhereClause:='zt.ZTOTREE=:zt';
      ParamByName('zt').AsVariant:=AttachNode.Values[0];
      Open;
      HouseOpen;
    end;
  end;
end;

procedure TZTOShablonForm.reOpenZTOSHABLON;
begin
  if ActiveUserType=1 then
  with ds_ZTOSHABLON do begin
    Close;
      MainWhereClause:='zt.KONTRAGENT = :cod';
      ParamByName('cod').AsVariant:=ActiveKontragent;
    Open;
  end else ds_ZTOSHABLON.CloseOpen(true);
  reOpenZTOTREE(false);
end;

procedure TZTOShablonForm.reOpenZTOTREE(splash :boolean=true);
begin
  with ds_ZTOTree do begin
    Close;
    FillControls;
    if gFN(v1,'CODE')= null then Exit;
    ///if splash then SplashVisibility(true,'загрузка данных...');
    try
      MainWhereClause:='zt.ZTOSHABLON=:shablon';
      ParamByName('shablon').AsVariant:= gFN(v1,'CODE');
      Open;
      reOpenZTOHOUSE;
      lst1.FullExpand;
      lst1.ApplyBestFit;
    finally
     // if splash then   SplashVisibility(false);
    end;
  end;
end;

procedure TZTOShablonForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  reOpenZTOTREE;
end;

procedure TZTOShablonForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :reOpenZTOTREE;
    VK_DOWN :reOpenZTOTREE;
  end;
end;

procedure TZTOShablonForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  HouseDel;
end;

procedure TZTOShablonForm.v3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  HouseAdd;
end;

procedure TZTOShablonForm.HouseAdd;
var
  dog,house :Integer;
  function GetNextRec :Integer;
  begin
    with mt_house do
    begin
      DisableControls;
      if Eof then Result:=0 else
      begin
        v3.DataController.GotoNext;
        Result:=FieldByName('CODE').AsInteger;
      end;
      EnableControls;
    end;
  end;
begin
  //if ActiveUserType =1 then exit;
  if not cmMessageBox('Вы действительно хотите добавить участок к статье затрат?') then Exit;

    v2.BeginUpdate;
      house:=v3.GetColumnByFieldName('CODE').EditValue;
      //HouseNext:=GetNextRec;
      if (house<>null) then
      AddHouse(house);
    v2.EndUpdate;
end;

procedure TZTOShablonForm.AddHouse(house :integer);
begin
  if ds_ZTOTree.FN('CODE').AsVariant=null then Exit;
  with ds_ZTOHOUSE do
  begin
    Append;
    FN('ZTOTREE').AsVariant:=ds_ZTOTree.FN('CODE').AsVariant;
    FN('House').AsInteger:=house;
    Post;
    CloseOpen(True);
    HouseOpen;
  end;
end;

procedure TZTOShablonForm.HouseDel;
var
  AIndex :Integer;
begin
  //if ActiveUserType =1 then exit;
  if not cmMessageBox('Вы действительно хотите удалить участок из статьи затрат?') then Exit;
  AIndex:=v2.DataController.FocusedRecordIndex;
  if v2.GetColumnByFieldName('CODE').EditValue<>null then
  begin
    ds_ZTOHOUSE.Delete;
    HouseOpen;
  end;
end;

initialization
 RegisterClass(TZTOShablonForm);
end.
