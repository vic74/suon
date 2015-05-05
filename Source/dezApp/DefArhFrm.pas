unit DefArhFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxBar, cxBarEditItem, FIBDataSet, pFIBDataSet, dezInfo,
  FIBQuery, pFIBCacheQueries, pFIBProps,
  cxImageComboBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxSkinDevExpressStyle;

type
  TDefArhForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    bm1: TdxBarManager;
    br1: TdxBar;
    itm_dt1: TcxBarEditItem;
    itm_dt2: TcxBarEditItem;
    btn_exec: TdxBarButton;
    grouplc1Group1: TdxLayoutGroup;
    grouplc1Group2: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item11: TdxLayoutItem;
    ds_TRFACT: TpFIBDataSet;
    src_TRFACT: TDataSource;
    ds_TRDEFECTVED: TpFIBDataSet;
    src_TRDEFECTVED: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1MLIST: TcxGridDBColumn;
    clv1MNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1MANAGER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NCALC: TcxGridDBColumn;
    clv1NCALCDATE: TcxGridDBColumn;
    clv1NSUMMA: TcxGridDBColumn;
    clv1NDOP: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1PLANCODE: TcxGridDBColumn;
    clv1STATE: TcxGridDBColumn;
    clv1DPLACE: TcxGridDBColumn;
    clv1DNUM: TcxGridDBColumn;
    clv1DDATE: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2TRFACT: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2MNAME: TcxGridDBColumn;
    clv2MLIST: TcxGridDBColumn;
    clv2WNOTE: TcxGridDBColumn;
    clv2ED: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2NUM: TcxGridDBColumn;
    btn_Print: TdxBarButton;
    clv1SMETA: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    btn_Save: TcxButton;
    LItemlc1Item1: TdxLayoutItem;
    fds_smeta: TpFIBDataSet;
    cbb_type: TdxBarCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_execClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDefect;
    procedure OpenTrFact;
    function CheckParams: Boolean;
    procedure PrintVed;
    procedure SaveFileToHDD;
  public
    { Public declarations }
  end;

var
  DefArhForm: TDefArhForm;

implementation

uses cmDBUnit, SQLList;

{$R *.dfm}


procedure TDefArhForm.btn_execClick(Sender: TObject);
begin
  v1.BeginUpdate(lsimImmediate);
  try
    OpenTrFact;
    OpenDefect;
  finally
    v1.EndUpdate;
  end;
end;

procedure TDefArhForm.btn_PrintClick(Sender: TObject);
begin
  PrintVed;
end;

procedure TDefArhForm.btn_SaveClick(Sender: TObject);
begin
  SaveFileToHDD;
end;

function TDefArhForm.CheckParams: Boolean;
begin
  Result:= False;
  if (itm_dt1.EditValue = null) or (itm_dt2.EditValue = null) then
     raise dezException.Create('”кажите период!');
  Result:= True;
end;

procedure TDefArhForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TDefArhForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TDefArhForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDefect;
end;

procedure TDefArhForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP: OpenDefect;
    VK_DOWN: OpenDefect;
  end;
end;

procedure TDefArhForm.OpenDefect;

  procedure OpenLift;
  begin
    with ds_TRDEFECTVED do begin
      close;
      SelectSQL.Text:= DefArhForm_TRLDEFECTVED;
      if gFN(v1,'CODE')=null then Exit;
      MainWhereClause:='TRLFACT=:FACT';
      ParamByName('FACT').AsVariant:=gFN(v1,'CODE');
      OrderClause:='NUM';
      Open;
    end;
  end;

  procedure OpenObjS;
  begin
    with ds_TRDEFECTVED do begin
      close;
      SelectSQL.Text:= DefArhForm_TRDEFECTVED;
      if gFN(v1,'CODE')=null then Exit;
      MainWhereClause:='TRFACT=:FACT';
      ParamByName('FACT').AsVariant:=gFN(v1,'CODE');
      OrderClause:='NUM';
      Open;
    end;
  end;

begin
  LItemlc1Item1.Visible:= v1.FN('SMETA')=1;
  v2.BeginUpdate(lsimImmediate);
  try
    case cbb_type.ItemIndex of
      0: OpenObjS;
      1: OpenLift;
    end;
  finally
    v2.EndUpdate;
  end;
end;

procedure TDefArhForm.OpenTrFact;
begin
  if not CheckParams then Exit;
  with ds_TRFACT do begin
    Close;
    case cbb_type.ItemIndex of
      0: Params[0].AsVariant:= 'TRFACT';
      1: Params[0].AsVariant:= 'TRLFACT';
    end;
      ParamByName('D1').AsVariant:= itm_dt1.EditValue;
      ParamByName('D2').AsVariant:= itm_dt2.EditValue;
    Open;
  end;
end;

procedure TDefArhForm.PrintVed;
begin
  if v1.FN('CODE') = null then
     raise dezException.Create('”кажите дефектную ведомость дл€ печати!');
  try
    RepTR.PrintDefVed(v1.FN('CODE'), cbb_type.ItemIndex);
  finally

  end;
end;

procedure TDefArhForm.SaveFileToHDD;
begin
  fds_smeta.ParamByName('CODE').AsVariant:= v1.FN('CODE');
  v1.BeginUpdate(lsimImmediate);
  try
    fds_smeta.Open;
    if fds_smeta.FN('SMETA').AsVariant = null then
       raise dezException.Create('ќшибка при сохранении файла!');
    dlgSave1.FileName:= fds_smeta.FN('FNAME').AsString;
    if dlgSave1.Execute then
       TBlobField(fds_smeta.FN('SMETA')).SaveToFile(dlgSave1.FileName);
  finally
    v1.EndUpdate;
  end;
end;

initialization
 RegisterClass(TDefArhForm);
end.
