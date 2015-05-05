unit HouseTarifPeriodFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxPropertiesStore,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer;

type
  THouseTarifPeriodForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    itmlc1Item1: TdxLayoutItem;
    btn_ok: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    btn_cancel: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    prop1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HouseTarifPeriodForm: THouseTarifPeriodForm;

implementation

uses AppUtils;

{$R *.dfm}

procedure THouseTarifPeriodForm.btn_okClick(Sender: TObject);
begin
  if dt1.EditValue = null then
      raise EMyException.Create('Укажите дату!');
  ModalResult:= mrOk;
end;

procedure THouseTarifPeriodForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
end;

end.
