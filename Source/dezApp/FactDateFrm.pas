unit FactDateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControlAdapters,
  BaseForm, System.DateUtils,
  dxLayoutContainer, dxSkinDevExpressStyle, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TFactDateForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    btn_set: TcxButton;
    itm_set: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_setClick(Sender: TObject);
  private
    { Private declarations }
    function CheckParams :Boolean;
  public
    { Public declarations }
    DopY: Variant;
  end;

var
  FactDateForm: TFactDateForm;

implementation

uses AppUtils, cmDBUnit;

{$R *.dfm}

procedure TFactDateForm.btn_setClick(Sender: TObject);
begin
  if not CheckParams then
    ModalResult:= mrNone else
    ModalResult := mrOk;
end;

function TFactDateForm.CheckParams: Boolean;
begin
  Result:= false;
  if dt1.EditValue = null then
    raise EMyException.Create('Укажите дату фактического завершения!');
  if dt2.EditValue = null then
    raise EMyException.Create('Укажите дату для сайта!');
  if (DopY<>null) and (DopY<> Unassigned) then
  if YearOf(dt1.Date)>DopY then
    raise dezException.Create('Год завершения работы не может быть больше года завершения доп. соглашения!');
  Result:= true;
end;

procedure TFactDateForm.FormCreate(Sender: TObject);
begin
  dt1.EditValue:=Date;
  dt2.EditValue:=Date;
end;

end.
