unit UnionDispFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxBar, dxLayoutControl, FIBDataSet, pFIBDataSet,
  FIBQuery, pFIBCacheQueries, pFIBProps, BaseForm,
  dxmdaset, cxDBEdit, uADCompClient, dxSkinsDefaultPainters;

type
  TUnlinkState = (usLink, usUnLink);
  TUnlinkPOState = (upLink, upUnLink);
  TUnionDispForm = class(TDezForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    lgrpLControl1Group1: TdxLayoutGroup;
    lgrpLControl1Group2: TdxLayoutGroup;
    lgrpLControl1Group3: TdxLayoutGroup;
    lgrpLControl1Group4: TdxLayoutGroup;
    lgrpLControl1Group5: TdxLayoutGroup;
    lgrpLControl1Group6: TdxLayoutGroup;
    lgrpLControl1Group7: TdxLayoutGroup;
    lgrpLControl1Group8: TdxLayoutGroup;
    lgrpLControl1Group9: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    btn_Load: TdxBarButton;
    btn_Union: TcxButton;
    LItemLControl1Item1: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItemLControl1Item13: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    LItemLControl1Item14: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    LItemLControl1Item15: TdxLayoutItem;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    LItemLControl1Item16: TdxLayoutItem;
    md_RQ: TdxMemData;
    md_SUON: TdxMemData;
    md_RQ1: TdxMemData;
    md_SUON1: TdxMemData;
    src_RQ: TDataSource;
    src_SUON: TDataSource;
    src_RQ1: TDataSource;
    src_SUON1: TDataSource;
    ds_SUON: TpFIBDataSet;
    ds_SUON1: TpFIBDataSet;
    txt_SuonHouse: TcxDBTextEdit;
    LItemLControl1Item12: TdxLayoutItem;
    txt_RqHouse: TcxDBTextEdit;
    LItemLControl1Item11: TdxLayoutItem;
    lgrpLControl1Group10: TdxLayoutGroup;
    lgrpLControl1Group11: TdxLayoutGroup;
    lgrpLControl1Group12: TdxLayoutGroup;
    lgrpLControl1Group13: TdxLayoutGroup;
    lgrpLControl1Group14: TdxLayoutGroup;
    lgrpLControl1Group15: TdxLayoutGroup;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    LItemLControl1Item17: TdxLayoutItem;
    v6: TcxGridDBTableView;
    l6: TcxGridLevel;
    grd6: TcxGrid;
    LItemLControl1Item18: TdxLayoutItem;
    v7: TcxGridDBTableView;
    l7: TcxGridLevel;
    grd7: TcxGrid;
    LItemLControl1Item19: TdxLayoutItem;
    v8: TcxGridDBTableView;
    l8: TcxGridLevel;
    grd8: TcxGrid;
    LItemLControl1Item110: TdxLayoutItem;
    txt_disp_PO: TcxDBTextEdit;
    LItemLControl1Item111: TdxLayoutItem;
    btn_PO_Union: TcxButton;
    LItemLControl1Item2: TdxLayoutItem;
    txt_suon_PO: TcxDBTextEdit;
    LItemLControl1Item112: TdxLayoutItem;
    src_RQ_PO: TDataSource;
    md_RQ_PO: TdxMemData;
    src_RQ1_PO: TDataSource;
    md_RQ1_PO: TdxMemData;
    src_SUON_PO: TDataSource;
    md_SUON_PO: TdxMemData;
    src_SUON1_PO: TDataSource;
    md_SUON1_PO: TdxMemData;
    ds_SUON_PO: TpFIBDataSet;
    ds_SUON1_PO: TpFIBDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btn_LoadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_UnionClick(Sender: TObject);
    procedure v4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v5CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v7CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v6CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v8CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_PO_UnionClick(Sender: TObject);
  private
    { Private declarations }
    UnLinkState: TUnlinkState;
    UnLinkPOState: TUnlinkPOState;
    procedure PrepareMemDataset;
    procedure LoadData;
    procedure GetSUON_DATA;
    procedure GetDisp_DATA;
    procedure UnionRec;
    procedure UnLinkRec;
    // PO
    procedure Union_PORec;
    procedure UnLink_PORec;
    //
    procedure SetBtnCaption(untie: Boolean = false);
    procedure SetBtnPOCaption(untie: Boolean = false);
    procedure SetRQUnLinkMode(isUnlink: Boolean = true);
    procedure SetRQ_POUnLinkMode(isUnlink: Boolean = true);
    procedure SetSUONUnLinkMode(isUnlink: Boolean = true);
    procedure SetSUON_POUnLinkMode(isUnlink: Boolean = true);
  public
    { Public declarations }
  end;

var
  UnionDispForm: TUnionDispForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils, common;

{ TUnionDispForm }

procedure TUnionDispForm.btn_LoadClick(Sender: TObject);
begin
  try
    if RQ.con.Connected = false then
    RQ.Connect;
    //
    LoadData;
  finally

  end;
end;

procedure TUnionDispForm.btn_PO_UnionClick(Sender: TObject);
begin
  case UnLinkPOState of
    upLink: Union_PORec;
    upUnLink: UnLink_PORec;
  end;
end;

procedure TUnionDispForm.btn_UnionClick(Sender: TObject);
begin
  case UnLinkState of
    usLink: UnionRec;
    usUnLink: UnLinkRec;
  end;
end;

procedure TUnionDispForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  RQ.Free;
  Action:= caFree;
end;

procedure TUnionDispForm.FormCreate(Sender: TObject);
begin
  PrepareMemDataset;
end;

procedure TUnionDispForm.GetDisp_DATA;
var
  Q, Q_PO: TADQuery;
  i: Integer;

  procedure AppendRec(md, md1: TdxMemData; ds: TpFIBDataSet);
  var
    i: Integer;
  begin
    with md1 do begin
      Append;
      for I := 0 to md.FieldCount -1 do
      FN(md.Fields[i].FieldName).AsVariant:= md.FN(md.Fields[i].FieldName).AsVariant;
      FN('SUON_ID').AsVariant:= ds.FN('CODE').AsVariant;
      md1.Post;
    end;
  end;
begin
  Q:= RQ.Get_HouseToUnion;
  Q.First;
  while not Q.Eof do begin
    md_RQ.Append;
    md_RQ.FN('CODE').AsVariant:= Q.FieldByName('CODE').AsVariant;
    md_RQ.FN('NAME').AsString:= Q.FieldByName('NAME').AsString;
    md_RQ.FN('NOMER').AsString:= Q.FieldByName('NOMER').AsString;
    md_RQ.FN('FULLNAME').AsString:= Q.FieldByName('FULLNAME').AsString;
    md_RQ.Post;
    Q.Next;
  end;

  //md_RQ.LoadFromDataSet(Q);
  if md_RQ.IsEmpty then
     raise dezException.Create('Ошибка получения данных из диспетчера!');
  with ds_SUON1 do begin
    First;
    while not EOF do begin
      if md_RQ.Locate('CODE',FN('DISP_ID').AsVariant,[]) then begin
        AppendRec(md_RQ, md_RQ1, ds_SUON1);
        md_RQ.Delete;
      end;
      Next;
    end;
  end;
  md_RQ.First;
  // PO
  Q_PO:= RQ.Get_PO;
  Q_PO.First;
  while not Q_PO.Eof do begin
    md_RQ_PO.Append;
    md_RQ_PO.FN('CODE').AsVariant:= Q_PO.FieldByName('CODE').AsVariant;
    md_RQ_PO.FN('NAME').AsString:= Q_PO.FieldByName('NAME').AsString;
    md_RQ_PO.Post;
    Q_PO.Next;
  end;

  if md_RQ_PO.IsEmpty then
     raise dezException.Create('Ошибка получения данных по контрагентам из диспетчера!');
  with ds_SUON1_PO do begin
    First;
    while not EOF do begin
      if md_RQ_PO.Locate('CODE',FN('DISP_ID').AsVariant,[]) then begin
        AppendRec(md_RQ_PO, md_RQ1_PO, ds_SUON1_PO);
        //md_RQ_PO.Delete;
      end;
      Next;
    end;
  end;
  md_RQ_PO.First;
end;

procedure TUnionDispForm.GetSUON_DATA;
begin
  ds_SUON.CloseOpen(false);
  md_SUON.LoadFromDataSet(ds_SUON);
  md_SUON.First;
  ds_SUON1.CloseOpen(false);
  md_SUON1.LoadFromDataSet(ds_SUON1);
  md_SUON1.First;
  // PO
  ds_SUON_PO.CloseOpen(false);
  md_SUON_PO.LoadFromDataSet(ds_SUON_PO);
  md_SUON_PO.First;
  ds_SUON1_PO.CloseOpen(false);
  md_SUON1_PO.LoadFromDataSet(ds_SUON1_PO);
  md_SUON1_PO.First;
end;

procedure TUnionDispForm.LoadData;
var
  i: Integer;
begin
  for I := 0 to ComponentCount -1 do
    if Components[i].ClassType = TdxMemData then begin
       TdxMemData(Components[i]).DisableControls;
       TdxMemData(Components[i]).Close;
       TdxMemData(Components[i]).Open;
    end;
  try
    GetSUON_DATA;
    GetDisp_DATA;
  finally
    for I := 0 to ComponentCount -1 do
      if Components[i].ClassType = TdxMemData then
         TdxMemData(Components[i]).EnableControls;
  end;
end;

procedure TUnionDispForm.PrepareMemDataset;
  procedure MakeDataSet(ds: TdxMemData; isHouse: Boolean = true);
  begin
    with ds do begin
      ClearField;
      if isHouse = true then begin
        AddField('CODE', ftInteger,'Код',0,False);
        AddField('NAME', ftString,'Улица',128);
        AddField('FULLNAME', ftString,'Адрес',128, False);
        AddField('NOMER', ftString, 'Дом', 12);
      end else begin
        AddField('CODE', ftInteger,'Код',0,False);
        AddField('NAME', ftString,'Подрядная организация',128);
      end;
      Indexes.Add.FieldName:='CODE';
    end;
  end;
begin
  // суон дома
  MakeDataSet(md_SUON);
  md_SUON.Open;
  MakeDataSet(md_SUON1);
  md_SUON1.AddField('DISP_ID', ftInteger,'Диспетчер_Код',0,False);
  md_SUON1.Open;
  // диспетчер дома
  MakeDataSet(md_RQ);
  md_RQ.Open;
  MakeDataSet(md_RQ1);
  md_RQ1.AddField('SUON_ID', ftInteger,'СУОН_Код',0,False);
  md_RQ1.Open;
  // суон ПО
  MakeDataSet(md_SUON_PO, false);
  md_SUON_PO.Open;
  MakeDataSet(md_SUON1_PO, false);
  md_SUON1_PO.AddField('DISP_ID', ftInteger,'Диспетчер_Код',0,False);
  md_SUON1_PO.Open;
  // диспетчер ПО
  MakeDataSet(md_RQ_PO, False);
  md_RQ_PO.Open;
  MakeDataSet(md_RQ1_PO, false);
  md_RQ1_PO.AddField('SUON_ID', ftInteger,'СУОН_Код',0,False);
  md_RQ1_PO.Open;
  //
  v1.DataController.CreateAllItems;
  v2.DataController.CreateAllItems;
  v3.DataController.CreateAllItems;
  v4.DataController.CreateAllItems;
  v5.DataController.CreateAllItems;
  v6.DataController.CreateAllItems;
  v7.DataController.CreateAllItems;
  v8.DataController.CreateAllItems;
end;

procedure TUnionDispForm.SetBtnCaption(untie: Boolean);
begin
  if untie = true then begin
    btn_Union.Caption:='Отвязать';
    btn_Union.Tag:= 1;
  end else begin
    btn_Union.Caption:='Связать';
    btn_Union.Tag:= 0;
  end;
end;

procedure TUnionDispForm.SetBtnPOCaption(untie: Boolean);
begin
  if untie = true then begin
    btn_PO_Union.Caption:='Отвязать';
    btn_PO_Union.Tag:= 1;
  end else begin
    btn_PO_Union.Caption:='Связать';
    btn_PO_Union.Tag:= 0;
  end;
end;

procedure TUnionDispForm.SetRQUnLinkMode(isUnlink: Boolean);
begin
  if isUnlink = true then begin
    md_SUON1.Locate('CODE',md_RQ1.FN('SUON_ID').AsVariant,[]);
    if UnLinkState = usUnLink then Exit;
    SetBtnCaption(True);
    txt_RqHouse.DataBinding.DataSource:= src_RQ1;
    txt_SuonHouse.DataBinding.DataSource:= src_SUON1;
    UnLinkState:= usUnLink;
  end else begin
    if UnLinkState = usLink then Exit;
    SetBtnCaption(false);
    txt_RqHouse.DataBinding.DataSource:= src_RQ;
    txt_SuonHouse.DataBinding.DataSource:= src_SUON;
    UnLinkState:= usLink;
  end;
end;

procedure TUnionDispForm.SetRQ_POUnLinkMode(isUnlink: Boolean);
begin
  if isUnlink = true then begin
    //md_RQ1_PO.Locate('SUON_ID',md_SUON1_PO.FN('CODE').AsVariant,[]);
    md_SUON1_PO.Locate('CODE',md_RQ1_PO.FN('SUON_ID').AsVariant,[]);
    if UnLinkPOState = upUnLink then Exit;
    SetBtnPOCaption(True);
    txt_suon_PO.DataBinding.DataSource:= src_SUON1_PO;
    txt_disp_PO.DataBinding.DataSource:= src_RQ1_PO;
    UnLinkPOState:= upUnLink;
  end else begin
    if UnLinkPOState = upLink then Exit;
    SetBtnPOCaption(false);
    txt_disp_PO.DataBinding.DataSource:= src_RQ_PO;
    txt_suon_PO.DataBinding.DataSource:= src_SUON_PO;
    UnLinkPOState:= upLink;
  end;
end;

procedure TUnionDispForm.SetSUONUnLinkMode(isUnlink: Boolean);
begin
  if isUnlink = true then begin
    md_RQ1.Locate('CODE',md_SUON1.FN('DISP_ID').AsVariant,[]);
    if UnLinkState = usUnLink then Exit;
    SetBtnCaption(True);
    txt_SuonHouse.DataBinding.DataSource:= src_SUON1;
    txt_RqHouse.DataBinding.DataSource:= src_RQ1;
    UnLinkState:= usUnLink;
  end else begin
    if UnLinkState = usLink then Exit;
    SetBtnCaption(false);
    txt_RqHouse.DataBinding.DataSource:= src_RQ;
    txt_SuonHouse.DataBinding.DataSource:= src_SUON;
    UnLinkState:= usLink;
  end;
end;

procedure TUnionDispForm.SetSUON_POUnLinkMode(isUnlink: Boolean);
begin
  if isUnlink = true then begin
    md_RQ1_PO.Locate('SUON_ID',md_SUON1_PO.FN('CODE').AsVariant,[]);
    if UnLinkPOState = upUnLink then Exit;
    SetBtnPOCaption(True);
    txt_suon_PO.DataBinding.DataSource:= src_SUON1_PO;
    txt_disp_PO.DataBinding.DataSource:= src_RQ1_PO;
    UnLinkPOState:= upUnLink;
  end else begin
    if UnLinkPOState = upLink then Exit;
    SetBtnPOCaption(false);
    txt_disp_PO.DataBinding.DataSource:= src_RQ_PO;
    txt_suon_PO.DataBinding.DataSource:= src_SUON_PO;
    UnLinkPOState:= upLink;
  end;
end;

procedure TUnionDispForm.UnionRec;
var
  Q: TFIBQuery;
  i: Integer;
begin
  if txt_RqHouse.EditValue = null then
     raise dezException.Create('Выберите запись по диспетчеру!');
  if txt_SuonHouse.EditValue = null then
     raise dezException.Create('Выберите запись по СУОН!');
  // add record
    //RQ
  with md_RQ1 do begin
    Append;
    for I := 0 to md_RQ.FieldCount -1 do
    FN(md_RQ.Fields[i].FieldName).AsVariant:= md_RQ.FN(md_RQ.Fields[i].FieldName).AsVariant;
    FN('SUON_ID').AsVariant:= md_SUON.FN('CODE').AsVariant;
    Post;
  end;
  //SUON
  with md_SUON1 do begin
    Append;
    for I := 0 to md_SUON.FieldCount -1 do
    FN(md_SUON.Fields[i].FieldName).AsVariant:= md_SUON.FN(md_SUON.Fields[i].FieldName).AsVariant;
    FN('DISP_ID').AsVariant:= md_RQ.FN('CODE').AsVariant;
    Post;
  end;
  //Query
  Q:= GetQueryForUse(cmDb.WT, 'update HOUSE set DISP_ID = :DISP_ID where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= md_SUON.FN('CODE').AsVariant;
    Q.ParamByName('DISP_ID').AsVariant:= md_RQ.FN('CODE').AsVariant;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  //delete record
    //RQ
    md_RQ.Delete;
    //SUON
    md_SUON.Delete;
end;

procedure TUnionDispForm.Union_PORec;
var
  Q: TFIBQuery;
  i: Integer;
begin
  if txt_disp_PO.EditValue = null then
     raise dezException.Create('Выберите запись по диспетчеру!');
  if txt_suon_PO.EditValue = null then
     raise dezException.Create('Выберите запись по СУОН!');
  // add record
    //RQ
  with md_RQ1_PO do begin
    Append;
    for I := 0 to md_RQ_PO.FieldCount -1 do
    FN(md_RQ_PO.Fields[i].FieldName).AsVariant:= md_RQ_PO.FN(md_RQ_PO.Fields[i].FieldName).AsVariant;
    FN('SUON_ID').AsVariant:= md_SUON_PO.FN('CODE').AsVariant;
    Post;
  end;
  //SUON
  with md_SUON1_PO do begin
    Append;
    for I := 0 to md_SUON_PO.FieldCount -1 do
    FN(md_SUON_PO.Fields[i].FieldName).AsVariant:= md_SUON_PO.FN(md_SUON_PO.Fields[i].FieldName).AsVariant;
    FN('DISP_ID').AsVariant:= md_RQ_PO.FN('CODE').AsVariant;
    Post;
  end;
  //Query
  Q:= GetQueryForUse(cmDb.WT, 'update KONTRAGENT set DISP_ID = :DISP_ID where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('CODE').AsVariant:= md_SUON_PO.FN('CODE').AsVariant;
    Q.ParamByName('DISP_ID').AsVariant:= md_RQ_PO.FN('CODE').AsVariant;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  //delete record
    //RQ
    //md_RQ_PO.Delete;  не удаляем т.к. связь идет "один ко многим"  !!!
    //SUON
    md_SUON_PO.Delete;
end;

procedure TUnionDispForm.UnLinkRec;
var
  Q: TFIBQuery;
begin
  //RQ
  with md_RQ do begin
    Append;
    FN('CODE').AsVariant:= md_RQ1.FN('CODE').AsVariant;
    FN('NAME').AsVariant:= md_RQ1.FN('NAME').AsVariant;
    FN('NOMER').AsVariant:= md_RQ1.FN('NOMER').AsVariant;
    FN('FULLNAME').AsVariant:= md_RQ1.FN('FULLNAME').AsVariant;
    Post;
  end;
  md_RQ1.Delete;
  //SUON
  with md_SUON do begin
    Append;
    FN('CODE').AsVariant:= md_SUON1.FN('CODE').AsVariant;
    FN('NAME').AsVariant:= md_SUON1.FN('NAME').AsVariant;
    FN('NOMER').AsVariant:= md_SUON1.FN('NOMER').AsVariant;
    FN('FULLNAME').AsVariant:= md_SUON1.FN('FULLNAME').AsVariant;
    Post;
  end;
  Q:= GetQueryForUse(cmDb.WT,'update HOUSE set DISP_ID = null where (CODE = :CODE)');
  Q.Options:=[qoAutoCommit, qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= md_SUON1.FN('CODE').AsVariant;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  md_SUON1.Delete;
end;

procedure TUnionDispForm.UnLink_PORec;
var
  Q: TFIBQuery;
begin
  //RQ
  {with md_RQ_PO do begin
    Append;
    FN('CODE').AsVariant:= md_RQ1_PO.FN('CODE').AsVariant;
    FN('NAME').AsVariant:= md_RQ1_PO.FN('NAME').AsVariant;
    Post;
  end;}
  md_RQ1_PO.Delete;
  //SUON
  with md_SUON_PO do begin
    Append;
    FN('CODE').AsVariant:= md_SUON1_PO.FN('CODE').AsVariant;
    FN('NAME').AsVariant:= md_SUON1_PO.FN('NAME').AsVariant;
    Post;
  end;
  Q:= GetQueryForUse(cmDb.WT,'update KONTRAGENT set DISP_ID = null where (CODE = :CODE)');
  Q.Options:=[qoAutoCommit, qoStartTransaction];
  try
    Q.ParamByName('CODE').AsVariant:= md_SUON1_PO.FieldByName('CODE').AsVariant;
    Q.ExecQuery;
  finally
    FreeQueryForUse(Q);
  end;
  md_SUON1_PO.Delete;
end;

procedure TUnionDispForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetRQUnLinkMode(False);
end;

procedure TUnionDispForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetSUONUnLinkMode(false);
end;

procedure TUnionDispForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetRQUnLinkMode;
end;

procedure TUnionDispForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: SetRQUnLinkMode;
    VK_DOWN: SetRQUnLinkMode;
  end;
end;

procedure TUnionDispForm.v4CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetSUONUnLinkMode;
end;

procedure TUnionDispForm.v4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: SetSUONUnLinkMode;
    VK_DOWN: SetSUONUnLinkMode;
  end;
end;

procedure TUnionDispForm.v5CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetRQ_POUnLinkMode(False);
end;

procedure TUnionDispForm.v6CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetSUON_POUnLinkMode(false);
end;

procedure TUnionDispForm.v7CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetRQ_POUnLinkMode;
end;

procedure TUnionDispForm.v8CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetSUON_POUnLinkMode;
end;

initialization
 RegisterClass(TUnionDispForm);
end.
