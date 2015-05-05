unit OrderHeadFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDBLookupComboBox, dxSkinsdxBarPainter, dxBar, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  dezCommon, frxFIBComponents,
  cxGrid, FIBDataSet, pFIBDataSet, frxClass, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, frxExportRTF, frxExportXLS,
  dxSkinDevExpressStyle, dezInfo, dxSkinsDefaultPainters, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxNavigator;

type
  TOrderHeadForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    src_worklist: TDataSource;
    ds_worklist: TpFIBDataSet;
    itm_grd1: TdxLayoutItem;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1streetname: TcxGridDBColumn;
    clv1nomer: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1Street: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1KontrName: TcxGridDBColumn;
    clv1DU: TcxGridDBColumn;
    clv1PSE: TcxGridDBColumn;
    l1: TcxGridLevel;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    bm1: TdxBarManager;
    bar1: TdxBar;
    doc1: TdxBarDockControl;
    itmlc1Item1: TdxLayoutItem;
    btn_nAdd: TdxBarButton;
    btn_nEdit: TdxBarButton;
    btn_nDelete: TdxBarButton;
    btn_print: TdxBarButton;
    btn_auto: TdxBarButton;
    ds_kontr: TpFIBDataSet;
    src_kontr: TDataSource;
    fr1: TfrxReport;
    dt1: TcxDateEdit;
    itmlc1Item11: TdxLayoutItem;
    dt2: TcxDateEdit;
    itmlc1Item12: TdxLayoutItem;
    btn_Exec: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    Xexp1: TfrxXLSExport;
    wexp1: TfrxRTFExport;
    btn_clear: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_autoClick(Sender: TObject);
    procedure btn_nAddClick(Sender: TObject);
    procedure btn_nEditClick(Sender: TObject);
    procedure btn_nDeleteClick(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure GetOrder;
    function CheckDate: Boolean;
    procedure PrintRep;
    procedure ShowSpecForm;
    procedure AutoCreate;
    procedure SetRight;
    procedure AddAttire(AEdit: Boolean);
    procedure ClearFormSettings;
  public
    { Public declarations }
  end;

var
  OrderHeadForm: TOrderHeadForm;

implementation

uses cmDBUnit, OrderSpecFrm, AutoCreateWorkFrm, AddWorkFrm, cmUtils;

{$R *.dfm}


procedure TOrderHeadForm.AddAttire(AEdit: Boolean);
var
  F: TAddWorkForm;
  procedure EditRec;
  begin
    with ds_worklist do
    begin
      F.cbb_street.EditValue := FN('street').AsVariant;
      F.dt1.EditValue := FN('DATA').AsVariant;
      F.cbb_kontr.EditValue := FN('KONTRAGENT').AsVariant;
      F.cbb_house.EditValue := FN('HOUSE').AsVariant;
      F.mmo_prim.EditValue := FN('NOTE').AsVariant;
    end;
  end;

begin
  F := TAddWorkForm.Create(Application);
  if AEdit then
    EditRec;
  if F.ShowModal = mrOk then
  begin
    with ds_worklist do
    begin
      if AEdit then
        Edit
      else
        Append;
      FN('DATA').AsVariant := F.dt1.EditValue;
      FN('KONTRAGENT').AsVariant := F.cbb_kontr.EditValue;
      FN('HOUSE').AsVariant := F.cbb_house.EditValue;
      FN('NOTE').AsVariant := F.mmo_prim.EditValue;
      Post;
    end;
    if not AEdit then GetOrder;
  end;
  F.Free;
end;

procedure TOrderHeadForm.AutoCreate;
var
  f :TAutoCreateWorkForm;
begin
  f:=TAutoCreateWorkForm.Create(self);
  try
    f.kontr:=ActiveKontragent;
    if f.ShowModal=mrOk then OpenDS;
  finally
    f.Free;
  end;
end;

procedure TOrderHeadForm.btn_autoClick(Sender: TObject);
begin
  AutoCreate;
end;

procedure TOrderHeadForm.btn_clearClick(Sender: TObject);
begin
  ClearFormSettings;
end;

procedure TOrderHeadForm.btn_ExecClick(Sender: TObject);
begin
  GetOrder;
end;

procedure TOrderHeadForm.btn_nAddClick(Sender: TObject);
begin
  AddAttire(false);
end;

procedure TOrderHeadForm.btn_nDeleteClick(Sender: TObject);
begin
  if v1.FN('Code') = null then Exit;
  if cmMessageBox('Вы действительно хотите удалить наряд ?') then
     v1.DataController.DataSet.Delete;
end;

procedure TOrderHeadForm.btn_nEditClick(Sender: TObject);
begin
  AddAttire(true);
end;

procedure TOrderHeadForm.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

function TOrderHeadForm.CheckDate: Boolean;
begin
  Result:= False;
  if (dt1.EditValue = null) or (dt2.EditValue = null) then
    Result:= false else
    Result:= True;
end;

procedure TOrderHeadForm.ClearFormSettings;
var
  iFile: string;
begin
  iFile:= ExtractFilePath(Application.ExeName)+'config\orderspec.ini';
  if FileExists(iFile) then
    if not DeleteFile(iFile) then
    raise dezException.Create('Ошибка удаления файла настроек формы!'+#10#13+iFile);
end;

procedure TOrderHeadForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TOrderHeadForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  SetRight;
  OpenDS;
end;

procedure TOrderHeadForm.GetOrder;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_worklist do begin
      Close;
      if CheckDate then begin
        MainWhereClause:= 'wl.DATA between :d1 and :d2';
        if ActiveUserType = 1 then begin
          MainWhereClause:= MainWhereClause+ ' and wl.KONTRAGENT = :kontr';
          ParamByName('kontr').AsVariant:= ActiveKontragent;
        end;
        ParamByName('d1').AsVariant:= dt1.EditValue;
        ParamByName('d2').AsVariant:= dt2.EditValue;
      end;
      Open;
      //Last;
    end;
  finally
    v1.EndUpdate;
  end;
end;

procedure TOrderHeadForm.OpenDS;
begin
  DSOptoins(ds_worklist, '', 'WORKLIST', 'CODE', 'WORKLIST_GEN', false);
  ds_kontr.Open;
end;

procedure TOrderHeadForm.PrintRep;
var
  fdb: TfrxFIBDatabase;
  dirName,dirCODE :Variant;
  repFName: string;
begin
  dzOrder.PrintOrder(v1.FN('Code'), fr1);
  {repFName:= ExtractFilePath(Application.ExeName)+ 'rep\attire.fr3';
  fr1.LoadFromFile(repFName);
  fr1.Variables['varCode'] := v1.FN('Code');
  fr1.Variables['varManager'] := #39+v1.FN('FIO')+#39;
  GetDir(dirCODE,dirName,v1.FN('KONTRAGENT'));
  fr1.Variables['varDir'] := #39+dirName+#39;
  fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
  with fdb do
  begin
    DatabaseName := cmDB.DB.DBName;
    Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
    Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
    Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
    SQLDialect := 3;
    Connected := true;
  end;
  fr1.ShowReport();}
end;

procedure TOrderHeadForm.SetRight;
begin
  if ActiveUserType = 0 then btn_auto.Visible:=ivNever else
                             btn_auto.Visible:=ivAlways;
  case ActiveRole of
    53 : begin //Инженер СЭ
           btn_auto.Visible := ivNever;
           btn_nAdd.Visible := ivNever;
           btn_nEdit.Visible := ivNever;
           btn_nDelete.Visible := ivNever;
         end;
  end;
end;

procedure TOrderHeadForm.ShowSpecForm;
var
  F: TOrderSpecForm;
begin
  if ActiveRole = 53 then Exit;
  //
  grd1.LockedStateImageOptions.Text:='Загружаем спецификацию...';
  v1.BeginUpdate(lsimImmediate);
  F:=TOrderSpecForm.Create(Self);
  try
    F.fWorkList:=v1.FN('CODE');
    F.fStreetName:= VarToStr(v1.FN('streetname'));
    F.fNomer:= VarToStr(v1.FN('nomer'));
    F.fKontragent:= v1.FN('KONTRAGENT');
    F.fHouse:= v1.FN('HOUSE');
    F.fData:= v1.FN('DATA');
    F.fStreet:= v1.FN('STREET');
    F.ds:= ds_worklist;
    F.ShowModal;
  finally
    FreeAndNil(F);
    v1.EndUpdate;
    grd1.LockedStateImageOptions.Text:='Получаем данные...';
  end;
end;

procedure TOrderHeadForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowSpecForm;
end;

procedure TOrderHeadForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key  of
    VK_RETURN : ShowSpecForm;
  end;
end;

initialization
 RegisterClass(TOrderHeadForm);
end.
