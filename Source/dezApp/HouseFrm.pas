unit HouseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm, cxDataUtils,
  FIBQuery, pFIBCacheQueries,pFIBProps,cxGridExportLink, cxExport, ShellApi,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxGridCustomView, cxGrid, cxPropertiesStore, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxLayoutLookAndFeels, cxCheckBox, ImgList,
  cxDBExtLookupComboBox, BaseForm, dxmdaset, cxCalc, dxRibbonSkins,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  THouseForm = class(Tdezform)
    grp_root: TdxLayoutGroup;
    lcntr_root: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    ds_house: TpFIBDataSet;
    SourceHouse: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1TOTAL_SQ: TcxGridDBColumn;
    clv1LIVING_SQ: TcxGridDBColumn;
    clv1LODGER_CNT: TcxGridDBColumn;
    clv1CELLAR_SQ: TcxGridDBColumn;
    clv1FLAT_CNT: TcxGridDBColumn;
    clv1ACCCODE_CNT: TcxGridDBColumn;
    clv1FLOOR_CNT: TcxGridDBColumn;
    clv1LIFT_CNT: TcxGridDBColumn;
    clv1ENTRANCE_CNT: TcxGridDBColumn;
    clv1GARBAGE_CNT: TcxGridDBColumn;
    clv1COMMERCE_SQ: TcxGridDBColumn;
    clv1BUILDYEAR: TcxGridDBColumn;
    clv1ACTIVE: TcxGridDBColumn;
    clv1BUDGET: TcxGridDBColumn;
    clv1BUDGETName: TcxGridDBColumn;
    cbb_bdg: TcxLookupComboBox;
    Itm_cbb: TdxLayoutItem;
    btn_set: TcxButton;
    Itm_btnset: TdxLayoutItem;
    grp1: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    ppm1: TcxGridPopupMenu;
    ds_bdg: TpFIBDataSet;
    SourceBdg: TDataSource;
    il1: TcxImageList;
    clv1MSE: TcxGridDBColumn;
    clv1Last_KR: TcxGridDBColumn;
    clv1Wall: TcxGridDBColumn;
    mem_wall: TdxMemData;
    src_wall: TDataSource;
    clv1GAZ: TcxGridDBColumn;
    clv1FASAD: TcxGridDBColumn;
    clv1KROV: TcxGridDBColumn;
    clv1VODA: TcxGridDBColumn;
    clv1HAT: TcxGridDBColumn;
    mem_GAZ: TdxMemData;
    mem_Fasad: TdxMemData;
    mem_Krov: TdxMemData;
    mem_Voda: TdxMemData;
    mem_Hat: TdxMemData;
    src_GAZ: TDataSource;
    src_Fasad: TDataSource;
    src_Krov: TDataSource;
    src_Voda: TDataSource;
    src_Hat: TDataSource;
    clv1PSE: TcxGridDBColumn;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    m_wtype: TdxMemData;
    src_m_wtype: TDataSource;
    ds_MHOUSE: TpFIBDataSet;
    src_MHOUSE: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2WORKER: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2KONTRNAME: TcxGridDBColumn;
    clv2WTYPE: TcxGridDBColumn;
    grp_wtype: TdxLayoutGroup;
    grp_ed_wtype: TdxLayoutGroup;
    cbb_WTYPE: TcxLookupComboBox;
    itm_WTYPE: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grp_btn_wtype: TdxLayoutGroup;
    btn_delete: TcxButton;
    itm_delete: TdxLayoutItem;
    clv1A: TcxGridDBColumn;
    cbb_kontr: TcxLookupComboBox;
    itm_cbb_kontr: TdxLayoutItem;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    cbb_worker: TcxLookupComboBox;
    itm_cbb_worker: TdxLayoutItem;
    grp4: TdxLayoutGroup;
    grp_struct: TdxLayoutGroup;
    cbb_mtype: TcxLookupComboBox;
    itm_type: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    grp5: TdxLayoutGroup;
    v4: TcxGridDBTableView;
    l4: TcxGridLevel;
    grd4: TcxGrid;
    itm_grd4: TdxLayoutItem;
    spl4: TdxLayoutSplitterItem;
    mt_type: TdxMemData;
    src_mttype: TDataSource;
    ds_struct: TpFIBDataSet;
    src_struct: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3Num: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3STYPE: TcxGridDBColumn;
    src_defect: TDataSource;
    ds_defect: TpFIBDataSet;
    m_def: TdxMemData;
    clv4FLAG: TcxGridDBColumn;
    clv4Code: TcxGridDBColumn;
    clv4Name: TcxGridDBColumn;
    clv4SHOWSTRUCT: TcxGridDBColumn;
    clv4NUM: TcxGridDBColumn;
    clv4ED: TcxGridDBColumn;
    src_def: TDataSource;
    clv4hstruct: TcxGridDBColumn;
    clv1DRTZ_SQ: TcxGridDBColumn;
    btn_AddHouse: TcxButton;
    itm_AddHouse: TdxLayoutItem;
    clv2kontragent: TcxGridDBColumn;
    gr_rootGroup1: TdxLayoutGroup;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;
    itm_gdr5: TdxLayoutItem;
    ds_HouseReg: TpFIBDataSet;
    src_HouseReg: TDataSource;
    clv5CODE: TcxGridDBColumn;
    clv5USERNAME: TcxGridDBColumn;
    clv5FIO: TcxGridDBColumn;
    clv5LASTTIME: TcxGridDBColumn;
    clv5HOUSE: TcxGridDBColumn;
    clv5ISREG: TcxGridDBColumn;
    clv5STATUS: TcxGridDBColumn;
    btn_Excel: TcxButton;
    LItem_rootItem1: TdxLayoutItem;
    dlgSave1: TSaveDialog;
    clv1NGP_CNT: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_setClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_saveClick(Sender: TObject);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
    procedure cbb_kontrPropertiesChange(Sender: TObject);
    procedure cbb_mtypePropertiesEditValueChanged(Sender: TObject);
    procedure ds_defectAfterOpen(DataSet: TDataSet);
    procedure v3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv4FLAGPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AddHouseClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    isPO :Variant;
    procedure OpenDs;
    procedure UpdateSelected;
    procedure SetPORight;
    procedure CreateWType(mt: TDataSet);
    procedure ShowManager;
    function ChekParam(isEdit :Boolean=false) :Boolean;
    procedure SaveManager;
    procedure EditManager;
    procedure DeleteManager;
    function GetWorkerPo(worker :variant) :Variant;
    procedure FilEditor;
    procedure OpenHouse;
    procedure CreateTypeTable;
    procedure CreateM_Def;
    procedure LoadM_DEF;
    procedure SaveStruct;
    procedure DelStruct;
    procedure AddHouse;
    procedure OpenHouseReg;
  public
    { Public declarations }
  end;

var
  HouseForm: THouseForm;

implementation

uses AppUtils, cmUtils, cmDBUnit, SQLList, CommonDm, dezCommon, AddHouseFrm;

{$R *.dfm}

procedure THouseForm.AddHouse;
var
  F :TAddHouseForm;
begin
  F :=TAddHouseForm.Create(nil);
  F.Fds:=ds_house;
  F.ShowModal;
  F.Free;
end;

procedure THouseForm.btn_AddHouseClick(Sender: TObject);
begin
  AddHouse;
end;

procedure THouseForm.btn_deleteClick(Sender: TObject);
begin
  if ChekParam(true) then
  DeleteManager;
end;

procedure THouseForm.btn_editClick(Sender: TObject);
begin
  if ChekParam(true) then
  EditManager;
end;

procedure THouseForm.btn_ExcelClick(Sender: TObject);
var
  Fname: string;
begin
  if dlgSave1.Execute then begin
    ExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd1, true, True, false,
                       '', '', '', 'xls');
    FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
    if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
      '        Открыть файл?      ', 'Внимание', MB_YESNO +
     MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
    end;
  end;
end;

procedure THouseForm.btn_saveClick(Sender: TObject);
begin
  if ChekParam then
  SaveManager;
end;

procedure THouseForm.btn_setClick(Sender: TObject);
begin
  UpdateSelected;
end;

procedure THouseForm.cbb_kontrPropertiesChange(Sender: TObject);
begin
  OpenHouse;
end;

procedure THouseForm.cbb_mtypePropertiesEditValueChanged(Sender: TObject);
begin
  with ds_struct do
  begin
    Close;
    MainWhereClause:='STYPE=:STYPE';
    ParamByName('STYPE').AsVariant:=cbb_mtype.EditValue;
    Open;
  end;
end;

procedure THouseForm.UpdateSelected;
var
  i :Integer;
  v : Variant;
begin
   v1.BeginUpdate;
  try
      with v1.Controller do
      for I := 0 to SelectedRowCount - 1 do
       begin
         if SelectedRows[I].IsData then
         begin
           if cbb_bdg.Text='' then
              v:=0 else
              v:=cbb_bdg.EditValue;
           SelectedRows[I].Focused := True;
           v1.DataController.SetEditValue
                    (v1.GetColumnByFieldName('BUDGET').Index,
                    v,
                    evsValue);
           v1.DataController.Post;
         end;
       end;
  finally
   v1.EndUpdate;
  end;
end;

procedure THouseForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowManager;
  LoadM_DEF;
  OpenHouseReg;
end;


procedure THouseForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : begin
              ShowManager;
              LoadM_DEF;
              OpenHouseReg;
            end;
    VK_DOWN :begin
               ShowManager;
               LoadM_DEF;
               OpenHouseReg;
             end;
  end;
end;

procedure THouseForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FilEditor;
end;

procedure THouseForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : FilEditor;
    VK_DOWN :FilEditor;
  end;
end;

procedure THouseForm.v3CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadM_DEF;
end;

procedure THouseForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :LoadM_DEF;
    vk_down :LoadM_DEF;
  end;
end;

procedure THouseForm.LoadM_DEF;
var
  AIndex: Integer;
begin
  AIndex := v4.Controller.FocusedRowIndex; // запоминаем позицию
  m_def.DisableControls;
  with ds_defect do
  begin
    Close;
    if not ds_struct.Eof then
    begin
      MainWhereClause:='sd.SHOWSTRUCT=:sh';
      ParamByName('house').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
      ParamByName('sh').AsVariant:=ds_struct.FN('Code').AsVariant;
      Open;
    end;
    //заполняем таблицу
    m_def.Close;m_def.Open;
    m_def.LoadFromDataSet(ds_defect);
  end;
  m_def.EnableControls;
  v4.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
end;

procedure THouseForm.FilEditor;
begin
 with ds_MHOUSE do
 begin
  cbb_kontr.EditValue:=FN('KONTRAGENT').AsVariant;
  cbb_worker.EditValue:=FN('WORKER').AsVariant;
  cbb_WTYPE.EditValue:=FN('WTYPE').AsVariant;
 end;
end;

procedure THouseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THouseForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
  SetPORight;
  CreateTypeTable;
  CreateM_Def;
end;

function THouseForm.GetWorkerPo(worker: variant): Variant;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select kontragent from worker where code=:code');
  try
    Q.ParamByName('code').AsVariant:=worker;
    Q.ExecQuery;
    Result:=Q.FN('kontragent').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure THouseForm.SaveManager;
begin
  with ds_MHOUSE do
  begin
    Append;
    FN('HOUSE').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    FN('WORKER').AsVariant:=cbb_worker.EditValue;
    FN('WTYPE').AsVariant:=cbb_WTYPE.EditValue;
    FN('KONTRAGENT').AsVariant:=cbb_kontr.EditValue;
    Post;
  end;
end;

procedure THouseForm.EditManager;
begin
  with ds_MHOUSE do
  begin
    Edit;
    FN('KONTRAGENT').AsVariant:=cbb_kontr.EditValue;
    FN('WORKER').AsVariant:=cbb_worker.EditValue;
    FN('WTYPE').AsVariant:=cbb_WTYPE.EditValue;
    Post;
  end;
end;

procedure THouseForm.DeleteManager;
begin
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_MHOUSE.Delete;
end;
procedure THouseForm.ds_defectAfterOpen(DataSet: TDataSet);
begin
  //LoadM_DEF;
end;

{ TODO : Переделать SetPORight}
procedure THouseForm.SetPORight;
var
  i :Integer;
  Q :TFIBQuery;
begin
  if ActiveUserType=1 then
  begin
    for I := 0 to v1.ColumnCount - 1 do
    begin
      if v1.Columns[i].DataBinding.FieldName='PSE' then
        v1.Columns[i].Options.Editing:=True
      else
        v1.Columns[i].Options.Editing:=False;
    end;
    isPO:=ActiveKontragent;
    btn_AddHouse.Visible:=False;
  end else
  isPO:=null;
  case ActiveRole of
    3 :btn_AddHouse.Visible:=True;
    7 :btn_AddHouse.Visible:=True;
    22 :btn_AddHouse.Visible:=True;
    else btn_AddHouse.Visible:=false;
  end;

  //статус дома
  Q:=GetQueryForUse(cmDB.RT,'select * from Rights where ARole='+IntToStr(ActiveRole)+
    ' and ARight=7');
  Q.Options:=[qoStartTransaction];
  Q.ExecQuery;
  clv1A.Options.Editing:=not Q.Eof;
  FreeQueryForUse(Q);
end;

procedure THouseForm.ShowManager;
begin
  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
     (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then Exit;

  with ds_MHOUSE do
  begin
    Close;
    MainWhereClause:='mh.house=:house';
    ParamByName('house').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
    Open;
  end;
end;

procedure THouseForm.CreateM_Def;
begin
  CreateField(m_def,'FLAG',ftInteger);
  CreateField(m_def,'Code',ftInteger);
  CreateField(m_def,'Name',ftString,256);
  CreateField(m_def,'SHOWSTRUCT',ftInteger);
  CreateField(m_def,'NUM',ftInteger);
  CreateField(m_def,'ED',ftString,8);
  CreateField(m_def,'hstruct',ftinteger);
  m_def.Open;
end;

procedure THouseForm.CreateTypeTable;
  procedure AddType(ACode :Integer; AName :string);
  begin
    with mt_type do
    begin
      Append;
      FieldByName('Code').AsInteger:=ACode;
      FieldByName('Name').AsString:=AName;
      Post;
    end;
  end;
begin
  CreateField(mt_type,'Code',ftInteger);
  CreateField(mt_type,'Name',ftString,64);
  mt_type.Open;
  //
  AddType(0,'строения');
  AddType(1,'электричество');
end;

procedure THouseForm.OpenDs;
begin
  //ds_house.Open;
  if ActiveUserType=1 then
  begin
    with com_dm.ds_KONTRAGENT do begin
      Close;
      MainWhereClause:='code=:kontr';
      ParamByName('kontr').AsVariant:=ActiveKontragent;
      Open;
      cbb_kontr.EditValue:=FN('CODE').AsVariant;
    end;
  end else
      com_dm.ds_KONTRAGENT.CloseOpen(false);
  CreateWall(mem_wall);
  DSOptoins(ds_house,'','HOUSE','CODE','HOUSE_GEN',false);
  with ds_house do begin
    Close;
    MainWhereClause:='d.avisible=1';
    Open;
  end;
  DSOptoins(ds_bdg,BUDGETSHABLON,'BUDGETSHABLON','CODE','BUDGETSHABLON_GEN');
  com_dm.ds_worker.Open;
  HouseFieldEx(mem_GAZ,'GAZ');
  HouseFieldEx(mem_Fasad,'Fasad');
  HouseFieldEx(mem_Krov,'Krov');
  HouseFieldEx(mem_Voda,'Voda');
  HouseFieldEx(mem_Hat,'Hat');
  CreateWType(m_wtype);
  DSOptoins(ds_MHOUSE,'','MHOUSE','CODE','MHOUSE_GEN',false);
end;

procedure THouseForm.OpenHouse;
begin
  with ds_worker do
  begin
    Close;
    if cbb_kontr.EditValue=null then Exit;
    MainWhereClause:='w.KONTRAGENT=:kontr';
    ParamByName('kontr').AsVariant:=cbb_kontr.EditValue;
    Open;
  end;
end;

procedure THouseForm.OpenHouseReg;
begin
  with ds_HouseReg do begin
    Close;
    MainWhereClause:='hr.HOUSE=:house';
    ParamByName('house').AsVariant:=gFN(v1,'CODE');
    OrderClause:='hr.LASTTIME';
    Open;
  end;
end;

function THouseForm.ChekParam(isEdit :Boolean=false): Boolean;
begin
  Result:=True;
  if isPO<>null then
  if isEdit=true then begin
    if gFN(v2,'kontragent')<> ActiveKontragent then  begin
      Result:=false;
      raise EMyException.Create(
                  'Вы можете создавать/редактировать записи сотрудников'+#10#13
                                                  +' только своей организации!');
    end;
  end;

  if isPO<>null then
  begin
   // if GetWorkerPo(cbb_worker.EditValue)<>ActiveKontragent then
    if cbb_kontr.EditValue<>ActiveKontragent then
    begin
      ShowMessage(
      'Вы можете создавать/редактировать записи сотрудников'+#10#13
      +' только своей организации!');
      Result:=False;
      Exit;
    end;
  end;
  if ds_MHOUSE.State in [dsInactive] then begin
      ShowMessage('Укажите дом'+#10#13
      +'    (Установите курсор на требуемую запись.)');
      Result:=False;
      Exit;
  end;
  //
  if not isEdit then
  if ds_MHOUSE.Locate('HOUSE;KONTRAGENT',
       VarArrayOf([v1.GetColumnByFieldName('CODE').EditValue,
                   cbb_kontr.EditValue]),[]) then
  begin
    cmShowMessage('Данная организация уже закреплена за этим домом!',true);
    Result:=False;
    Exit;
  end;

  {if not isEdit then
  if ds_MHOUSE.Locate('HOUSE;WORKER',
       VarArrayOf([v1.GetColumnByFieldName('CODE').EditValue,
                   cbb_worker.EditValue]),[]) then
  begin
    cmShowMessage('Данный сотрудник уже закреплен за этим домом!',true);
    Result:=False;
    Exit;
  end;}

  if (v1.GetColumnByFieldName('CODE').EditValue=null) or
     (v1.GetColumnByFieldName('CODE').EditValue=Unassigned) then
  begin
    cmShowMessage('Не выбран дом!',true);
    Result:=False;
    Exit;
  end;
  if (cbb_kontr.EditValue=null) or
     (cbb_kontr.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите организацию!',true);
    Result:=False;
    Exit;
  end;
  if (cbb_worker.EditValue=null) or
     (cbb_worker.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите сотрудника!',true);
    Result:=False;
    Exit;
  end;
  {if (cbb_WTYPE.EditValue=null) or
     (cbb_WTYPE.EditValue=Unassigned) then
  begin
    cmShowMessage('Укажите тип!',true);
    Result:=False;
  end;}
end;


procedure THouseForm.clv4FLAGPropertiesEditValueChanged(Sender: TObject);
begin
  v4.DataController.Post();
  if v4.GetColumnByFieldName('FLAG').EditValue=1 then SaveStruct;
  if v4.GetColumnByFieldName('FLAG').EditValue=0 then DelStruct;
end;

procedure THouseForm.DelStruct;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,'delete from HOUSESTRUCT' + #13#10 +
                            'where (CODE = :CODE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('CODE').AsVariant:=v4.GetColumnByFieldName('hstruct').EditValue;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  LoadM_DEF;
end;

procedure THouseForm.SaveStruct;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.WT,'insert into HOUSESTRUCT (HOUSE, STRUCTDEFECT, ED)'
                            + #13#10 +
                            'values (:HOUSE, :STRUCTDEFECT, :ED)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('HOUSE').AsVariant:=v1.GetColumnByFieldName('CODE').EditValue;
  Q.ParamByName('STRUCTDEFECT').AsVariant:=
                                v4.GetColumnByFieldName('CODE').EditValue;
  Q.ParamByName('ED').AsVariant:=v4.GetColumnByFieldName('ED').EditValue;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  LoadM_DEF;
end;

{------------------------------------------------------------------------------
 Создаем таблицу типов менеджеров
-------------------------------------------------------------------------------}
procedure THouseForm.CreateWType(mt: TDataSet);

  procedure AddWallType(ACode: Integer; AName: string);
  begin
    with mt do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;

begin
  CreateField(mt, 'Code', ftInteger);
  CreateField(mt, 'Name', ftString, 128);
  mt.Open;
    AddWallType(0, 'Общий');
    AddWallType(1, 'Электрика');
    AddWallType(2, 'Сантехника');
    AddWallType(3, 'Общестрой');
    AddWallType(4, 'Лифт');
end;



initialization
 RegisterClass(THouseForm);
end.


