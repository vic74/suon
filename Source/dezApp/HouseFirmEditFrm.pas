unit HouseFirmEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxPropertiesStore;

type
  THouseFirmEditForm = class(TForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    litm_date: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    btn_Cancel: TcxButton;
    litm_lc1Item1: TdxLayoutItem;
    btn_Ok: TcxButton;
    litm_lc1Item11: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; fState: Variant);
  end;

var
  HouseFirmEditForm: THouseFirmEditForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

{ THouseFirmEditForm }

procedure THouseFirmEditForm.btn_OkClick(Sender: TObject);
begin
  if dt1.EditValue = null then
     raise dezException.Create('Укажите дату!');
  ModalResult:= mrOk;
end;

constructor THouseFirmEditForm.Create(AOwner: TComponent; fState: Variant);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  case fState of
    -1: litm_date.CaptionOptions.Text:= 'Дата вывода с обслуживания';
    1: litm_date.CaptionOptions.Text:= 'Дата ввода в обслуживание';
  end;
  if dt1.EditValue = null then
     dt1.Date:= Date;
end;

end.
