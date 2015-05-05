unit TOPlanProcFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, cxButtons, cxMaskEdit,
  cxTextEdit, cxDropDownEdit, cxCalendar, FIBDataSet, pFIBDataSet, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalc, dxLayoutContainer,
  dxLayoutControlAdapters, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxSkinVS2010;

type
  TTOPlanProcForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    ds_TOPLANPROC: TpFIBDataSet;
    src_TOPLANPROC: TDataSource;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    btn_save: TcxButton;
    itm_save: TdxLayoutItem;
    btn_edit: TcxButton;
    itm_edit: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    btn_delete: TcxButton;
    itm_delete: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1TO1: TcxGridDBColumn;
    clv1TO2: TcxGridDBColumn;
    TO1: TcxCalcEdit;
    itmlc1Item1: TdxLayoutItem;
    TO2: TcxCalcEdit;
    itmlc1Item11: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_deleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure AddRec(isEdit :boolean=false);
    function CheckParam :Boolean;
  public
    { Public declarations }
  end;

var
  TOPlanProcForm: TTOPlanProcForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TTOPlanProcForm.AddRec(isEdit: boolean);
begin
  if not CheckParam then Exit;
  with ds_TOPLANPROC do begin
    if isEdit then Edit else Append;
    FN('DATA').AsVariant:=dt1.EditValue;
    FN('TO1').AsVariant:=TO1.EditValue;
    FN('TO2').AsVariant:=TO2.EditValue;
    Post;
  end;
end;

procedure TTOPlanProcForm.btn_deleteClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_OKCANCEL + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDOK then
  begin
    ds_TOPLANPROC.Delete;
  end;
end;

procedure TTOPlanProcForm.btn_editClick(Sender: TObject);
begin
  AddRec(true);
end;

procedure TTOPlanProcForm.btn_saveClick(Sender: TObject);
begin
  AddRec(false);
end;

function TTOPlanProcForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if dt1.EditValue=null then
  begin
    Rez('Укажите дату, с которой действует процент',dt1);
    Exit;
  end;
  if TO1.EditValue=null then
  begin
    Rez('Укажите процент по общестрою',TO1);
    Exit;
  end;
  if TO2.EditValue=null then
  begin
    Rez('Укажите процент по электрике',TO2);
    Exit;
  end;
end;

procedure TTOPlanProcForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTOPlanProcForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TTOPlanProcForm.PrepareDS;
begin
  DSOptoins(ds_TOPLANPROC,'','TOPLANPROC','CODE','TOPLANPROC_GEN');
end;

initialization
 RegisterClass(TTOPlanProcForm);
end.
