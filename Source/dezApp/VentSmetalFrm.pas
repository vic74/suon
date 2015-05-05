unit VentSmetalFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TVentSmetalForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    dt1: TcxDateEdit;
    litm_lc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    litm_lc1Item11: TdxLayoutItem;
    sp_Tarif: TcxSpinEdit;
    litm_lc1Item12: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    lGrplc1Group3: TdxLayoutGroup;
    btn_Print: TcxButton;
    litm_lc1Item13: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
  private
    { Private declarations }
    function CheckParams: Boolean;
  public
    { Public declarations }
  end;

var
  VentSmetalForm: TVentSmetalForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TVentSmetalForm.btn_PrintClick(Sender: TObject);
begin
  if CheckParams then
    ModalResult:= mrOk;
end;

function TVentSmetalForm.CheckParams: Boolean;
begin
  Result:= True;
  if VarIsType(dt1.EditValue,[varNull, varEmpty]) then
     raise dezException.Create('Проверте период!');
  if VarIsType(dt2.EditValue,[varNull, varEmpty]) then
     raise dezException.Create('Проверте период!');
  if VarIsType(sp_Tarif.EditValue,[varNull, varEmpty]) then
     raise dezException.Create('Не указан тариф!');
end;

procedure TVentSmetalForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

initialization
 RegisterClass(TVentSmetalForm);
end.
