unit MatRepDetailFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  dxSkinsdxBarPainter, cxCalendar, cxDBLookupComboBox, dxBar, cxBarEditItem,
  cxCurrencyEdit, dxmdaset, cxCheckBox, KontragentRepository,
  dxSkinDevExpressStyle;

type
  TMatRepDetailForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    glc1Group1: TdxLayoutGroup;
    glc1Group2: TdxLayoutGroup;
    glc1Group3: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item11: TdxLayoutItem;
    ds_WS: TpFIBDataSet;
    src_WS: TDataSource;
    clv1CLASSMAT: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1QUANTITY: TcxGridDBColumn;
    clv1SUMMA: TcxGridDBColumn;
    bm1: TdxBarManager;
    docm1: TdxBarDockControl;
    itmlc1Item12: TdxLayoutItem;
    br1: TdxBar;
    itm_D1: TcxBarEditItem;
    itm_D2: TcxBarEditItem;
    itm_kontr: TcxBarEditItem;
    src_kontr: TDataSource;
    btn_Exec: TdxBarButton;
    ds_detail: TpFIBDataSet;
    src_detail: TDataSource;
    clv2KNAME: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2CLASSMAT: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    md_WS: TdxMemData;
    clv1Flag: TcxGridDBColumn;
    btn_Analiz: TdxBarButton;
    btn_CheckAll: TdxBarButton;
    btn_Unchek: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure clv1FlagPropertiesEditValueChanged(Sender: TObject);
    procedure btn_AnalizClick(Sender: TObject);
    procedure btn_CheckAllClick(Sender: TObject);
    procedure btn_UnchekClick(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure OpenDS;
    procedure MakeReport;
    procedure OpenDetail;
    function CheckParams: boolean;
    procedure CreateMem;
    procedure MatAnaliz;
    procedure Check(isCheck: boolean = true);
  public
    { Public declarations }
  end;

var
  MatRepDetailForm: TMatRepDetailForm;

implementation

uses cmDBUnit, PriceanalysFrm;

{$R *.dfm}


procedure TMatRepDetailForm.btn_AnalizClick(Sender: TObject);
begin
  MatAnaliz;
end;

procedure TMatRepDetailForm.btn_CheckAllClick(Sender: TObject);
begin
  Check;
end;

procedure TMatRepDetailForm.btn_ExecClick(Sender: TObject);
begin
  MakeReport;
end;

procedure TMatRepDetailForm.btn_UnchekClick(Sender: TObject);
begin
  Check(false);
end;

procedure TMatRepDetailForm.Check(isCheck: boolean);
var
  AIndex: Integer;
begin
  with md_WS do begin
    AIndex := v1.Controller.FocusedRowIndex; // запоминаем позицию
    DisableControls;
    try
      First;
      while not EOF do begin
        if FieldByName('FLAG').AsBoolean <> isCheck then begin
          Edit;
          FieldByName('FLAG').AsBoolean:= isCheck;
          Post;
        end;
        Next;
      end;
    finally
      EnableControls;
      v1.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
    end;
  end;
end;

function TMatRepDetailForm.CheckParams: boolean;
begin
  Result:= false;
  if itm_D1.EditValue = null then
     raise dezException.Create('Укажите дату начала периода!');
  if itm_D1.EditValue = null then
     raise dezException.Create('Укажите дату окончания периода!');
  Result:= true;
end;

procedure TMatRepDetailForm.clv1FlagPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TMatRepDetailForm.CreateMem;
begin
  CreateField(md_WS, 'FLAG', ftBoolean);
  CreateField(md_WS, 'CLASSMAT', ftInteger);
  CreateField(md_WS, 'NAME', ftString, 256);
  CreateField(md_WS, 'ED', ftString, 12);
  CreateField(md_WS, 'KNAME', ftString, 128);
  CreateField(md_WS, 'QUANTITY', ftBCD);
  CreateField(md_WS, 'SUMMA', ftFloat);
  md_WS.Open;
end;

procedure TMatRepDetailForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:= caFree;
end;

procedure TMatRepDetailForm.FormCreate(Sender: TObject);
begin
  fController:= TKontragentController.Create;
  LoadForm(prop1,Self.Name);
  CreateMem;
  OpenDS;
end;

procedure TMatRepDetailForm.MakeReport;
var
  i: integer;
begin
  if not CheckParams then Exit;
  md_WS.Close; md_WS.Open;
  v1.BeginUpdate(lsimImmediate);
  try
    with ds_WS do begin
      Close;
      MainWhereClause:='WS.DATA between :D1 and :D2';
       if itm_kontr.EditValue <> null then
          MainWhereClause:= MainWhereClause+ ' and  WS.KONTRAGENT = :KONTR';
       ParamByName('D1').AsVariant:= itm_D1.EditValue;
       ParamByName('D2').AsVariant:= itm_D2.EditValue;
       if ParamExist('KONTR', i) then
          ParamByName('KONTR').AsVariant:= itm_kontr.EditValue;
       GroupByClause:='1,k.NAME, WS.CLASSMAT, C.FULLNAME, C.ED';
      Open;
      //First;
    end;
    md_WS.LoadFromDataSet(ds_WS);
  finally
    v1.EndUpdate;
  end;
  OpenDetail;
end;

procedure TMatRepDetailForm.MatAnaliz;
var
  F: TPriceanalysForm;
  CodeMat: string;

  procedure GetMatCode;
  begin
    v1.BeginUpdate(lsimImmediate);
    try
      with md_WS do begin
        DisableControls;
        try
          First;
          while not Eof do begin
            if FieldByName('FLAG').AsBoolean = true then
            if CodeMat = '' then
               CodeMat:= FieldByName('CLASSMAT').AsString else
               CodeMat:= CodeMat + ',' + FieldByName('CLASSMAT').AsString;
            Next;
          end;
        finally
          EnableControls;
        end;
      end;
    finally
      v1.EndUpdate;
    end;
  end;
begin
  CodeMat:='';
  //формируем список материалов
  GetMatCode;
  if CodeMat = '' then
     raise dezException.Create('Не указаны материалы для анализа!');
  //если есть отмеченные показываем форму
  F:= TPriceanalysForm.Create(self);
  try
    F.fCodeMat:= CodeMat;
    F.fD1:= itm_D1.EditValue;
    F.fD2:= itm_D2.EditValue;
    F.ShowModal;
  finally
    FreeAndNil(F);
  end;
end;

procedure TMatRepDetailForm.OpenDetail;
var
  i: integer;
begin
  if ds_WS.IsEmpty then Exit;
  v2.BeginUpdate(lsimImmediate);
  try
    with ds_detail do begin
      Close;
        MainWhereClause:= 'WS.DATA between :D1 and :D2 and ws.CLASSMAT = :mat';
        if itm_kontr.EditValue <> null then
          MainWhereClause:= MainWhereClause+ ' and  WS.KONTRAGENT = :KONTR';
        ParamByName('D1').AsVariant:= itm_D1.EditValue;
        ParamByName('D2').AsVariant:= itm_D2.EditValue;
        ParamByName('mat').AsVariant:= v1.FN('CLASSMAT');
        if ParamExist('KONTR', i) then
          ParamByName('KONTR').AsVariant:= itm_kontr.EditValue;
        OrderClause:='ws.KONTRAGENT, wl.DATA, s.NAME, h.NOMER';
      Open;
    end;
  finally
    v2.EndUpdate
  end;
end;

procedure TMatRepDetailForm.OpenDS;
begin
  src_kontr.DataSet:= fController.DS;
  fController.GetActiveKontragents(True, True);
end;

procedure TMatRepDetailForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDetail;
end;

procedure TMatRepDetailForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP : OpenDetail;
    VK_DOWN : OpenDetail;
  end;
end;

initialization
 RegisterClass(TMatRepDetailForm);
end.
