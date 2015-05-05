unit MakeSmetaSablonFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FIBDataSet, pFIBDataSet, Menus, StdCtrls, cxButtons,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TMakeSmetaSablonForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    gr1: TdxLayoutGroup;
    gr2: TdxLayoutGroup;
    ds_MS: TpFIBDataSet;
    src_MS: TDataSource;
    ds_HOUSESRV: TpFIBDataSet;
    src_HOUSESRV: TDataSource;
    ds_SRV: TpFIBDataSet;
    src_SRV: TDataSource;
    ds_SRVDOG: TpFIBDataSet;
    src_SRVDOG: TDataSource;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    cbb_housesrv: TcxLookupComboBox;
    itm_housesrv: TdxLayoutItem;
    cbb_srv: TcxLookupComboBox;
    itm_srv: TdxLayoutItem;
    cbb_dog: TcxLookupComboBox;
    itm_dog: TdxLayoutItem;
    btn_add: TcxButton;
    itm_add: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1SDNPMER: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1HSNAME: TcxGridDBColumn;
    clv1SRV: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    gr_print: TdxLayoutGroup;
    cbb_month: TcxComboBox;
    itm_m: TdxLayoutItem;
    itm_y: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    btn_smeta: TcxButton;
    itm_smeta: TdxLayoutItem;
    itm_akt: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    btn_akt: TcxButton;
    clv1kontragent: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_smetaClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_aktClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    function CheckParams :Boolean;
    procedure AddReCord(isEdit :Boolean=false);
    procedure FillControll;
    procedure PrintSmeta;
    procedure PrintAkt;
    function CheckParam: Boolean;
  public
    { Public declarations }
  end;

var
  MakeSmetaSablonForm: TMakeSmetaSablonForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, BkpDoc, Bkp1Doc;

{$R *.dfm}

procedure TMakeSmetaSablonForm.AddReCord(isEdit: Boolean);
begin
  if not CheckParams then Exit;
  with ds_MS do begin
    if isEdit then Edit else
    Append;
     FN('SRVDOG').AsVariant:= cbb_dog.EditValue;
     FN('HOUSESRV').AsVariant:= cbb_housesrv.EditValue;
     FN('SRV').AsVariant:= cbb_srv.EditValue;
    Post;
  end;
end;

procedure TMakeSmetaSablonForm.btn_addClick(Sender: TObject);
begin
  AddReCord();
end;

procedure TMakeSmetaSablonForm.btn_aktClick(Sender: TObject);
begin
  PrintAkt;
end;

procedure TMakeSmetaSablonForm.btn_delClick(Sender: TObject);
begin
  if gFN(v1,'CODE')<>null then
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    ds_MS.Delete;
  end;
end;

procedure TMakeSmetaSablonForm.btn_editClick(Sender: TObject);
begin
  AddReCord(true);
end;

procedure TMakeSmetaSablonForm.btn_smetaClick(Sender: TObject);
begin
  PrintSmeta;
end;

function TMakeSmetaSablonForm.CheckParams: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_dog.EditValue=null then begin
    Rez('Не указан договор!',cbb_dog);
    Exit;
  end;
  if (cbb_srv.EditValue=null) and (cbb_housesrv.EditValue=null) then begin
    Rez('Укажите услугу',cbb_srv);
    Exit;
  end;
end;

procedure TMakeSmetaSablonForm.FillControll;
begin
  with ds_MS do begin
    cbb_dog.EditValue:= FN('SRVDOG').AsVariant;
    cbb_housesrv.EditValue:= FN('HOUSESRV').AsVariant;
    cbb_srv.EditValue:= FN('SRV').AsVariant;
  end;
end;

procedure TMakeSmetaSablonForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMakeSmetaSablonForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDS;
end;


procedure TMakeSmetaSablonForm.OpenDS;
begin
  ds_SRV.Open;
  ds_HOUSESRV.open;
  ds_SRVDOG.Open;
  DSOptoins(ds_MS,'','MAKESMETASHABLON','CODE','MAKESMETASHABLON_GEN');
end;

procedure TMakeSmetaSablonForm.PrintAkt;
var
  akt :TBkpObj;
  akt1 :TBkp1Obj;
  kontr,rType,dog,srv,housesrv :Variant;
  procedure PrintA;
  begin
    akt:=TBkpObj.Create;
    akt.PrintAkt(msk_Y.EditValue,cbb_month.ItemIndex,srv,dog,kontr);
    akt.Free;
  end;
  procedure printA1;
  begin
    akt1:=TBkp1Obj.Create;
    akt1.PrintAkt(msk_Y.EditValue,cbb_month.ItemIndex,housesrv,dog,kontr);
    akt1.Free;
  end;
begin
  if not CheckParam then Exit;
  srv:=gFN(v1,'SRV');
  housesrv:=gFN(v1,'HOUSESRV');
  kontr:=gFN(v1,'KNAME');
  dog:=gFN(v1,'SRVDOG');
  if srv<>null then PrintA;
  if housesrv<>null then printA1;
end;

procedure TMakeSmetaSablonForm.PrintSmeta;
var
  smeta :TBkpObj;
  smeta1 :TBkp1Obj;
  kontr,rType,dog,srv, housesrv :Variant;
  procedure PrintS;
  begin
    smeta:=TBkpObj.Create;
    smeta.PrintSmeta(msk_Y.EditValue,cbb_month.ItemIndex,srv,dog,kontr);
    smeta.Free;
  end;
  procedure PrintS1;
  begin
    smeta1:=TBkp1Obj.Create;
    smeta1.PrintSmeta(msk_Y.EditValue,cbb_month.ItemIndex,housesrv,dog,kontr);
    smeta1.Free;
  end;
begin
  if not CheckParam then Exit;
  srv:=gFN(v1,'SRV');
  housesrv:=gFN(v1,'HOUSESRV');
  kontr:=gFN(v1,'KNAME');
  dog:=gFN(v1,'SRVDOG');
  if srv<>null then PrintS;
  if housesrv<>null then PrintS1;
end;

procedure TMakeSmetaSablonForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillControll;
end;

procedure TMakeSmetaSablonForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :FillControll;
    VK_DOWN :FillControll;
  end;
end;

function TMakeSmetaSablonForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    ShowMessage(mes);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=True;
  if cbb_month.ItemIndex=0 then begin
    Rez('Укажите месяц.',cbb_month);
    Exit;
  end;
  if (msk_Y.EditValue=null) or (msk_Y.EditValue='') then begin
    Rez('Укажите год.',msk_Y);
    Exit;
  end;
end;

initialization
 RegisterClass(TMakeSmetaSablonForm);
end.
