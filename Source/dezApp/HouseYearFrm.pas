unit HouseYearFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, BaseForm, FIBDataSet,
  pFIBDataSet, LoadingSplash, dxLayoutControlAdapters, dxLayoutContainer;

type
  THouseYearForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lkf1: TdxLayoutLookAndFeelList;
    laf1: TdxLayoutCxLookAndFeel;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_set: TdxLayoutGroup;
    ed_Y: TcxSpinEdit;
    itm_Y: TdxLayoutItem;
    clc_SR: TcxCalcEdit;
    itm_SR: TdxLayoutItem;
    clc_ER: TcxCalcEdit;
    itm_ER: TdxLayoutItem;
    clc_TO: TcxCalcEdit;
    itm_TO: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_HouseYear: TpFIBDataSet;
    src_HouseYear: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1SR: TcxGridDBColumn;
    clv1ER: TcxGridDBColumn;
    clv1TO: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    grlc1Group2: TdxLayoutGroup;
    ced1: TcxCalcEdit;
    itmlc1Item11: TdxLayoutItem;
    ced2: TcxCalcEdit;
    itmlc1Item1: TdxLayoutItem;
    btn1: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure ed_YPropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure FillEdit;
    function CheckParam :boolean;
    procedure SeveRec(isEdit :boolean=false);
  public
    { Public declarations }
  end;

var
  HouseYearForm: THouseYearForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;
{$R *.dfm}

procedure THouseYearForm.btn1Click(Sender: TObject);
begin
  SplashVisibility(true,'Подождите');
  v1.BeginUpdate;
  try
    with ds_HouseYear do begin
      First;
      while not Eof do begin
        Edit;
          FN('SR').AsVariant:=FN('SR').AsVariant+ced1.EditValue;
          FN('ER').AsVariant:=FN('ER').AsVariant+ced2.EditValue;
        Post;
        Next;
      end;
      CloseOpen(false);
    end;
  finally
    v1.EndUpdate;
    SplashVisibility(false);
  end;
end;

procedure THouseYearForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue=Unassigned then Exit;
  if cmMessageBox('Вы действительно хотите удалить запись?') then
  ds_HouseYear.Delete;
end;

procedure THouseYearForm.btn_editClick(Sender: TObject);
begin
  SeveRec(true);
end;

procedure THouseYearForm.btn_saveClick(Sender: TObject);
begin
  SeveRec;
end;

function THouseYearForm.CheckParam: boolean;
begin
  Result:=True;
  if (ed_Y.EditValue=null) or (ed_Y.EditValue=0) then
  begin
    cmShowMessage('Укажите кол-во лет!',true);
    Result:=False;
    Exit;
  end;
  if clc_SR.EditValue=null then
  begin
    cmShowMessage('Укажите процент на сантехнические работы.!',true);
    Result:=False;
    Exit;
  end;
  if clc_ER.EditValue=null then
  begin
    cmShowMessage('Укажите процент на электромонтажные работы.!',true);
    Result:=False;
    Exit;
  end;
  if clc_TO.EditValue=null then
  begin
    cmShowMessage('Укажите процент на техобслуживание дома.!',true);
    Result:=False;
    Exit;
  end;
end;

procedure THouseYearForm.ed_YPropertiesChange(Sender: TObject);
begin
  with ds_HouseYear do
  begin
    if Locate('Y', ed_Y.EditingValue, []) then
    begin
      btn_save.Enabled := False;
    end
    else
      btn_save.Enabled := True;
      btn_save.Update;
      Application.ProcessMessages;
  end;
end;

procedure THouseYearForm.FillEdit;
begin
  if v1.GetColumnByFieldName('CODE').EditValue = Unassigned then
    Exit;
  with ds_HouseYear do
  begin
    ed_Y.EditValue := FN('Y').AsVariant;
    clc_SR.EditValue := FN('SR').AsVariant;
    clc_ER.EditValue := FN('ER').AsVariant;
    clc_TO.EditValue := FN('TO').AsVariant;
  end;
end;

procedure THouseYearForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THouseYearForm.FormCreate(Sender: TObject);
begin
  OpenDS;
end;

procedure THouseYearForm.OpenDS;
begin
  DSOptoins(ds_HouseYear, '', 'HOUSEYEAR', 'CODE', 'HOUSEYEAR_GEN');
end;

procedure THouseYearForm.SeveRec(isEdit: boolean=false);
begin
  if not CheckParam then Exit;
  with ds_HouseYear do begin
    if isEdit then Edit else
    Append;
    FN('Y').AsVariant:=ed_Y.EditValue;
    FN('SR').AsVariant:=clc_SR.EditValue;
    FN('ER').AsVariant:=clc_ER.EditValue;
    FN('TO').AsVariant:=clc_SR.EditValue+clc_ER.EditValue;
    Post;
    btn_save.Enabled := False;
  end;
end;

procedure THouseYearForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FillEdit;
end;

procedure THouseYearForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP: FillEdit;
    VK_DOWN: FillEdit;
  end;
end;

initialization

RegisterClass(THouseYearForm);

end.
