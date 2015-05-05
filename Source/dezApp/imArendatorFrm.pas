unit imArendatorFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutControlAdapters, dxLayoutContainer;

type
  TimArendatorForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grp_bottom: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ds_ARENDATOR: TpFIBDataSet;
    src_ARENDATOR: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1INN: TcxGridDBColumn;
    clv1KPP: TcxGridDBColumn;
    clv1SCHET: TcxGridDBColumn;
    clv1KSCHET: TcxGridDBColumn;
    clv1BANK: TcxGridDBColumn;
    msk_NAME: TcxMaskEdit;
    itm_NAME: TdxLayoutItem;
    msk_INN: TcxMaskEdit;
    itm_INN: TdxLayoutItem;
    msk_KPP: TcxMaskEdit;
    itm_KPP: TdxLayoutItem;
    btn_Add: TcxButton;
    lc1Item1: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    btn_del: TcxButton;
    itm_del: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    Code1C: TcxMaskEdit;
    lc1Item2: TdxLayoutItem;
    v1Column1: TcxGridDBColumn;
    clv1FULLNAME: TcxGridDBColumn;
    clv1AGROUP: TcxGridDBColumn;
    grlc1Group1: TdxLayoutGroup;
    spl2: TdxLayoutSplitterItem;
    ds_AGROUP: TpFIBDataSet;
    src_AGROUP: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl3: TdxLayoutSplitterItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itm_grd3: TdxLayoutItem;
    ds_ARENDATORG: TpFIBDataSet;
    src_ARENDATORG: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2NAME: TcxGridDBColumn;
    clv2INN: TcxGridDBColumn;
    clv2KPP: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3INN: TcxGridDBColumn;
    clv3KPP: TcxGridDBColumn;
    clv3SCHET: TcxGridDBColumn;
    clv3KSCHET: TcxGridDBColumn;
    clv3BANK: TcxGridDBColumn;
    clv3CODE1C: TcxGridDBColumn;
    clv3FULLNAME: TcxGridDBColumn;
    clv3AGROUP: TcxGridDBColumn;
    clv1AGNAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure src_ARENDATORDataChange(Sender: TObject; Field: TField);
    procedure v2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ds_AGROUPAfterOpen(DataSet: TDataSet);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ChangeMode: boolean;
    function CheckParam :Boolean;
    procedure OpenDS;
    procedure AddRec(isEdit :Boolean =false);
    procedure FillEdit;
    procedure ReOpenARENDATORG;
    procedure AddToGroup;
    procedure DelFromGroup;
    procedure ReOpenARENDATOR;
  public
    { Public declarations }
  end;

var
  imArendatorForm: TimArendatorForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TimArendatorForm.AddRec(isEdit: Boolean);
begin
  if not CheckParam then Exit;
  try
    ChangeMode:=false;
    with ds_ARENDATOR do begin
      if isEdit then Edit
      else Append;
      FN('NAME').AsVariant:=msk_NAME.EditValue;
      FN('INN').AsVariant:=msk_INN.EditValue;
      FN('KPP').AsVariant:=msk_KPP.EditValue;
      FN('Code1C').AsVariant:=Code1C.EditValue;
      Post;
    end;
  finally
    ChangeMode:=true;
  end;
end;

procedure TimArendatorForm.AddToGroup;
var
  ArCode :Variant;
begin
  ArCode:=gFN(v1,'CODE');
  if gFN(v2,'CODE')=null then Exit;
  if ArCode=null Then Exit;
  with ds_ARENDATOR do begin
    Edit;
    FN('AGROUP').AsVariant:=gFN(v2,'CODE');
    Post;
    ReOpenARENDATORG;
  end;
end;

procedure TimArendatorForm.btn_AddClick(Sender: TObject);
begin
  AddRec;
end;

procedure TimArendatorForm.btn_delClick(Sender: TObject);
begin
  if v1.GetColumnByFieldName('CODE').EditValue = Unassigned then Exit;
  if cmMessageBox('¬ы действительно хотите удалить запись?') then
  ds_ARENDATOR.Delete;
end;

procedure TimArendatorForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

function TimArendatorForm.CheckParam: Boolean;
begin
  Result:=True;
  if msk_NAME.EditValue=null then
  begin
    cmMessageBox('”кажите наименование арендатора!');
    msk_NAME.SetFocus;
    Result:=False;
    Exit;
  end;
end;

procedure TimArendatorForm.DelFromGroup;
begin
  with ds_ARENDATORG do begin
    Edit;
    FN('AGROUP').AsVariant:=0;
    Post;
    ReOpenARENDATORG;
    ReOpenARENDATOR;
  end;
end;

procedure TimArendatorForm.ds_AGROUPAfterOpen(DataSet: TDataSet);
begin
  ReOpenARENDATORG;
end;

procedure TimArendatorForm.FillEdit;
begin
  with ds_ARENDATOR do begin
    msk_NAME.EditValue:=FN('NAME').AsVariant;
    msk_INN.EditValue:=FN('INN').AsVariant;
    msk_KPP.EditValue:=FN('KPP').AsVariant;
    Code1C.EditValue:=FN('Code1C').AsVariant;
  end;
end;

procedure TimArendatorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TimArendatorForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  ChangeMode:=true;
  OpenDS;
end;


 procedure TimArendatorForm.OpenDS;
begin
  DSOptoins(ds_ARENDATOR,'','ARENDATOR','CODE','ARENDATOR_GEN');
  DSOptoins(ds_AGROUP,'','AGROUP','CODE','AGROUP_GEN');
  DSOptoins(ds_ARENDATORG,'','ARENDATOR','CODE','ARENDATOR_GEN',false);
end;

procedure TimArendatorForm.ReOpenARENDATOR;
var
  AIndex :Integer;
begin
  AIndex :=v1.Controller.FocusedRowIndex;
  v1.BeginUpdate;
  try
  with ds_ARENDATOR do begin
    Close;
     //
    Open;
  end;
  finally
    v1.Controller.FocusRecord(AIndex, true);
    v1.EndUpdate;
  end;
end;

procedure TimArendatorForm.ReOpenARENDATORG;
begin
  with ds_ARENDATORG do begin
    Close;
    if gFN(v2,'CODE')=null then exit;
    MainWhereClause:='A.AGROUP=:gr';
    ParamByName('gr').AsVariant:=gFN(v2,'CODE');
    Open;
  end;
end;

procedure TimArendatorForm.src_ARENDATORDataChange(Sender: TObject;
  Field: TField);
begin
  if ChangeMode then FillEdit;
end;

procedure TimArendatorForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : AddToGroup;
  end;
end;

procedure TimArendatorForm.v2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ReOpenARENDATORG;
end;

procedure TimArendatorForm.v2EditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  with Sender.Controller do
  if FocusedItem.IsLast and (Key=VK_RETURN) then
  begin
    Key := 0;
    Sender.DataController.Post;
  end;
end;

procedure TimArendatorForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_UP :ReOpenARENDATORG;
    VK_DOWN :ReOpenARENDATORG;
  end;
end;

procedure TimArendatorForm.v3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_F3 : DelFromGroup;
  end;
end;

initialization
 RegisterClass(TimArendatorForm);
end.
