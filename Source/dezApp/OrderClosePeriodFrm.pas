unit OrderClosePeriodFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet,
  cxCalendar, cxButtonEdit, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, dxSkinDevExpressStyle, KontragentRepository;

type
  TOrderClosePeriodForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    ds_OrderPeriod: TpFIBDataSet;
    src_OrderPeriod: TDataSource;
    clv1ID: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1ComandColumn: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    cbb_kontr: TcxLookupComboBox;
    lItmlc1Item11: TdxLayoutItem;
    dt_DATA: TcxDateEdit;
    lItmlc1Item12: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    btn_Save: TcxButton;
    lItmlc1Item13: TdxLayoutItem;
    src_kontr: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SaveClick(Sender: TObject);
    procedure clv1DATAPropertiesChange(Sender: TObject);
    procedure clv1ComandColumnPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure PrepareDS;
    procedure AddPeriod;
    procedure DeletePeriod;
  public
    { Public declarations }
  end;

var
  OrderClosePeriodForm: TOrderClosePeriodForm;

implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TOrderClosePeriodForm.AddPeriod;
begin
  if cbb_kontr.EditValue = null then
     raise dezException.Create('Укажите организацию!');
  if dt_DATA.EditValue = null then
     raise dezException.Create('Укажите дату!');
  with ds_OrderPeriod do begin
    Append;
    FN('KONTRAGENT').AsVariant := cbb_kontr.EditValue;
    FN('DATA').AsVariant:= dt_DATA.Date;
    Post;
  end;
  fController.DS.CloseOpen(false);
  cbb_kontr.EditValue := null;
  dt_DATA.EditValue:= null;
end;

procedure TOrderClosePeriodForm.btn_SaveClick(Sender: TObject);
begin
  AddPeriod;
end;

procedure TOrderClosePeriodForm.clv1ComandColumnPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  DeletePeriod;
end;

procedure TOrderClosePeriodForm.clv1DATAPropertiesChange(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TOrderClosePeriodForm.DeletePeriod;
begin
  if Application.MessageBox('Вы действительно хотите удалить период?',
    'Внимание', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds_OrderPeriod.Delete;
    fController.DS.CloseOpen(false);
  end;

end;

procedure TOrderClosePeriodForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:= caFree;
end;

procedure TOrderClosePeriodForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  PrepareDS;
end;

procedure TOrderClosePeriodForm.PrepareDS;
begin
  AppUtils.DSOptoins(ds_OrderPeriod,'','ORDER$CLOSEPERIOD','ID','ORDER$CLOSEPERIOD_GEN');
  src_kontr.DataSet:= fController.DS;
  fController.LoadKontragents('CODE not in (select KONTRAGENT from ORDER$CLOSEPERIOD) and ISACTIVE = 1 and KTYPE = 1', True, True);
  //ds_Kontr.CloseOpen(false);
  if ActiveUserType = 1 then begin
    grplc1Group1.Visible:= False;
    v1.OptionsData.Deleting:= False;
    v1.OptionsData.Editing:= False;
    v1.OptionsData.Inserting:= False;
  end;

end;

initialization
 RegisterClass(TOrderClosePeriodForm);
end.
