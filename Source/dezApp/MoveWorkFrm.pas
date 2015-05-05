unit MoveWorkFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMemo,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, cxPropertiesStore, BaseForm,
  FIBDataSet, pFIBDataSet, Menus, StdCtrls, cxButtons, cxMaskEdit,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TMoveWorkForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    bar1: TdxBarManager;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    mmo1: TcxMemo;
    itm_mmo1: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    mmo2: TcxMemo;
    itm_mmo2: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    ds_WS1: TpFIBDataSet;
    src_WS1: TDataSource;
    ds_WS2: TpFIBDataSet;
    src_WS2: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1KSERVISWORK: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2KSERVISWORK: TcxGridDBColumn;
    msk1: TcxMaskEdit;
    itm_msk1: TdxLayoutItem;
    msk2: TcxMaskEdit;
    itm_msk2: TdxLayoutItem;
    btn_move: TcxButton;
    itm_move: TdxLayoutItem;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_moveClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    function GetTreeUp(cod: variant; m :TcxMemo): Variant;
    procedure MoveWork;
  public
    { Public declarations }
    work :Variant;
  end;

var
  MoveWorkForm: TMoveWorkForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TMoveWorkForm.btn_moveClick(Sender: TObject);
begin
  if cmMessageBox('Работа,которую заменяем, будет удалена!'+#13#10+
  'Продолжить?') then
  MoveWork;
end;

procedure TMoveWorkForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;


procedure TMoveWorkForm.OpenDS;
begin
  ds_WS1.CloseOpen(false);
  ds_WS2.CloseOpen(false);
  if work<>null then
  if ds_WS1.Locate('CODE',work,[]) then
  begin
    msk1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
    GetTreeUp(v1.GetColumnByFieldName('KSERVISWORK').EditValue,mmo1);
    work:=null;
  end;
end;

procedure TMoveWorkForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  msk1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
  GetTreeUp(v1.GetColumnByFieldName('KSERVISWORK').EditValue,mmo1);
end;

procedure TMoveWorkForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP:
      begin
        msk1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
        GetTreeUp(v1.GetColumnByFieldName('KSERVISWORK').EditValue,mmo1);
      end;
    VK_DOWN:
      begin
        msk1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
        GetTreeUp(v1.GetColumnByFieldName('KSERVISWORK').EditValue,mmo1);
      end;
  end;
end;

procedure TMoveWorkForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  msk2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
  GetTreeUp(v2.GetColumnByFieldName('KSERVISWORK').EditValue,mmo2);
end;

procedure TMoveWorkForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP:
      begin
        msk2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
        GetTreeUp(v2.GetColumnByFieldName('KSERVISWORK').EditValue,mmo2);
      end;
    VK_DOWN:
      begin
        msk2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
        GetTreeUp(v2.GetColumnByFieldName('KSERVISWORK').EditValue,mmo2);
      end;
  end;
end;

procedure TMoveWorkForm.FormShow(Sender: TObject);
begin
  OpenDS;
end;

function TMoveWorkForm.GetTreeUp(cod: variant; m :TcxMemo): Variant;
var
  Q :TFIBQuery;
  list :TStringList;
  i,n, j :Integer;
  s :string;
begin
  m.Clear;
  list :=TStringList.Create;
  Q:=GetQueryForUse(cmDB.RT,'SELECT kw.CODE,kw.NAME,kw.OWN' + #13#10 +
                            'FROM KSERVISWORK kw' + #13#10 +
                            'where kw.CODE=:COD');
  Q.Options:=[qoStartTransaction];
  repeat
    Q.ParamByName('COD').AsVariant:=cod;
    Q.ExecQuery;
    List.Add(Q.FN('NAME').AsString);
    cod:=Q.FN('OWN').AsVariant;
  until Q.FN('OWN').AsVariant=0;

  n:=0;
  for I := List.Count-1  downto 0 do
  begin
    s:='';
    for j := 0 to n do
    s:=s+'-';
    m.Lines.Add(s+list[i]);
    inc(n);
  end;
  FreeQueryForUse(Q);
  list.Free;
end;

procedure TMoveWorkForm.MoveWork;
var
  SW_OUT, SW_IN :Variant;
  Q,Q1,Q2 :TFIBQuery;
  AIndex,AIndex1 :Integer;
  procedure UpdateTable(TableName :string);
  begin
    Q:=GetQueryForUse(cmDB.WT,'update '+TableName + #13#10 +
                              'set SERVISWORK = :SW_IN' + #13#10 +
                              'where (SERVISWORK = :SW_OUT)');
    Q.Options:=[qoStartTransaction,qoAutoCommit];
    Q.ParamByName('SW_IN').AsVariant:=SW_IN;
    Q.ParamByName('SW_OUT').AsVariant:=SW_OUT;
    Q.ExecQuery;
  end;
begin
  AIndex:=v2.Controller.FocusedRowIndex; //запоминаем позицию
  AIndex1:=v1.Controller.FocusedRowIndex;
  SW_OUT:=v1.GetColumnByFieldName('Code').EditValue;
  SW_IN:=v2.GetColumnByFieldName('CODE').EditValue;
  // /*обновляем работу*/
  UpdateTable('WORKSPECLIST');
  UpdateTable('WORKSPECMATERIAL');
  UpdateTable('TRWORKBDR');
  UpdateTable('TRLWORKBDR');
  //
  try
    // /*удаляем работу*/
    Q1:=GetQueryForUse(cmDB.WT,'delete from SERVISWORK' + #13#10 +
                                'where (CODE = :SW_OUT)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('SW_OUT').AsVariant:=SW_OUT;
    Q1.ExecQuery;
    //
    Q2:=GetQueryForUse(cmDB.WT,'insert into DELSERVISWORK (DELCODE, ' +
                              'REPCODE)' + #13#10 +
                              'values (:DELCODE, :REPCODE)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
    Q2.ParamByName('DELCODE').AsVariant:=SW_OUT;
    Q2.ParamByName('REPCODE').AsVariant:=SW_IN;
    Q2.ExecQuery;

    ShowMessage('Работа заменена по всем нарядам.');
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
  end;
  OpenDS; //переоткрываем запросы
  v2.Controller.FocusRecord(AIndex,true); //возвращаемся на позицию
  v1.Controller.FocusRecord(AIndex1,true);
end;

end.




