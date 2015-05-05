unit MoveMatFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery,pFIBCacheQueries,pFIBProps,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutLookAndFeels, cxMemo,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TMoveMatForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_top: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    spl: TdxLayoutSplitterItem;
    ds_ksg1: TpFIBDataSet;
    ds_ksg2: TpFIBDataSet;
    src_ksg1: TDataSource;
    src_ksg2: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1KSERVISMATERIAL: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    edt_m1: TcxMaskEdit;
    itm_m1: TdxLayoutItem;
    edt_m2: TcxMaskEdit;
    itm_m2: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    mmo: TcxMemo;
    itm_mmo: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    mmo2: TcxMemo;
    itm_mmo2: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    clv2KSERVISMATERIAL: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure MoveMat;
    function GetTreeUp(cod :variant; m :TcxMemo) :Variant;
  public
    mat :Variant;
    { Public declarations }
  end;

var
  MoveMatForm: TMoveMatForm;

implementation

uses AppUtils, cmDBUnit,cmUtils;

{$R *.dfm}

procedure TMoveMatForm.btn_okClick(Sender: TObject);
begin
  if cmMessageBox('Материал, с которого переносим будет удален!'+#13#10+
  'Продолжить?') then
  MoveMat;
end;

procedure TMoveMatForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMoveMatForm.FormCreate(Sender: TObject);
begin
  //
end;

procedure TMoveMatForm.FormShow(Sender: TObject);
begin
  OpenDS;
end;

function TMoveMatForm.GetTreeUp(cod: variant; m :TcxMemo): Variant;
var
  Q :TFIBQuery;
  list :TStringList;
  i,n, j :Integer;
  s :string;
begin
  m.Clear;
  list :=TStringList.Create;
  Q:=GetQueryForUse(cmDB.RT,'select CODE, NAME, OWN' + #13#10 +
                            'from KSERVISMATERIAL' + #13#10 +
                            'where CODE = :COD ');
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

procedure TMoveMatForm.MoveMat;
var
  MatOut, MatIn :Variant;
  Q,Q1,Q2 :TFIBQuery;
  AIndex,AIndex1 :Integer;
begin
  AIndex:=v2.Controller.FocusedRowIndex; //запоминаем позицию
  AIndex1:=v1.Controller.FocusedRowIndex;
  MatOut:=v1.GetColumnByFieldName('Code').EditValue;
  MatIn:=v2.GetColumnByFieldName('CODE').EditValue;
  Q:=GetQueryForUse(cmDB.WT,'update WORKSPECMATERIAL' + #13#10 +
                         ' set SERVISMATERIAL = :MatIn' + #13#10 +
                         ' where (SERVISMATERIAL = :MatOut)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('MatIn').AsVariant:=MatIn;
  Q.ParamByName('MatOut').AsVariant:=MatOut;
  try
    Q.ExecQuery;
    //
    Q1:=GetQueryForUse(cmDB.WT,'delete from SERVISMATERIAL' + #13#10 +
                               ' where (CODE = :CODE)');
    Q1.Options:=[qoStartTransaction,qoAutoCommit];
    Q1.ParamByName('CODE').AsVariant:=MatOut;
    Q1.ExecQuery;
    //
    Q2:=GetQueryForUse(cmDB.WT,'insert into DELSERVISMATERIAL (DELCODE, ' +
                              'REPCODE)' + #13#10 +
                              'values (:DELCODE, :REPCODE)');
    Q2.Options:=[qoStartTransaction,qoAutoCommit];
    Q2.ParamByName('DELCODE').AsVariant:=MatOut;
    Q2.ParamByName('REPCODE').AsVariant:=MatIn;
    Q2.ExecQuery;

    ShowMessage('Материал заменен по всем нарядам.');
  finally
    FreeQueryForUse(Q);
    FreeQueryForUse(Q1);
    FreeQueryForUse(Q2);
  end;
  OpenDS; //переоткрываем запросы
  v2.Controller.FocusRecord(AIndex,true); //возвращаемся на позицию
  v1.Controller.FocusRecord(AIndex1,true);
end;

procedure TMoveMatForm.OpenDS;
begin
  ds_ksg1.CloseOpen(false);
  ds_ksg2.CloseOpen(false);
  if mat<>null then
  if ds_ksg1.Locate('CODE',mat,[]) then
  begin
    edt_m1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
    GetTreeUp(v1.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo);
    mat:=null;
  end;
end;

procedure TMoveMatForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v1.Controller.IsFilterRowFocused then exit;
  edt_m1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
  GetTreeUp(v1.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo);
end;

procedure TMoveMatForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :
        begin
          edt_m1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
          GetTreeUp(v1.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo);
        end;
    VK_DOWN :
        begin
          edt_m1.EditValue:=v1.GetColumnByFieldName('NAME').EditValue;
          GetTreeUp(v1.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo);
        end;
  end;
end;

procedure TMoveMatForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if v2.Controller.IsFilterRowFocused then exit;
  edt_m2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
  GetTreeUp(v2.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo2);
end;

procedure TMoveMatForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :
        begin
          if v2.Controller.IsFilterRowFocused then exit;
          edt_m2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
          GetTreeUp(v2.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo2);
        end;
    VK_DOWN :
        begin
          if v2.Controller.IsFilterRowFocused then exit;
          edt_m2.EditValue:=v2.GetColumnByFieldName('NAME').EditValue;
          GetTreeUp(v2.GetColumnByFieldName('KSERVISMATERIAL').EditValue,mmo2);
        end;
  end;
end;

end.




