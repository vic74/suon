unit CalcSumFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  System.IOUtils, System.DateUtils,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons, cxCalc,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, dxLayoutLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, FIBDataSet, pFIBDataSet,
  BaseForm,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxButtonEdit, cxBlobEdit, cxDBEdit, dxSkinDevExpressStyle;

type
  TCalcSumForm = class(TDezModalForm)
    gr1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    msk_num: TcxMaskEdit;
    itm_num: TdxLayoutItem;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    ced_sum: TcxCalcEdit;
    itm_sum: TdxLayoutItem;
    btn_ok: TcxButton;
    itm_ok: TdxLayoutItem;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    cbb_worker: TcxLookupComboBox;
    itm_worker: TdxLayoutItem;
    ds_worker: TpFIBDataSet;
    src_worker: TDataSource;
    btn_gen: TcxButton;
    itm_gen: TdxLayoutItem;
    grlc1Group2: TdxLayoutGroup;
    dlgOpen1: TOpenDialog;
    DBBlobEdit1: TcxDBBlobEdit;
    LItemlc1Item11: TdxLayoutItem;
    fds_TRFACT: TpFIBDataSet;
    ds_TRFACT: TDataSource;
    btn_Load: TcxButton;
    LItemlc1Item12: TdxLayoutItem;
    lgrplc1Group1: TdxLayoutGroup;
    btn_Save: TcxButton;
    LItemlc1Item2: TdxLayoutItem;
    btn_Delete: TcxButton;
    LItemlc1Item3: TdxLayoutItem;
    dlgSave1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure cbb_workerPropertiesEditValueChanged(Sender: TObject);
    procedure btn_genClick(Sender: TObject);
    procedure btn_FileClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_LoadClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenNum;
    procedure LoadFileToServer;
    procedure SaveFileToHDD;
    procedure DeleteFileFromServer;
    procedure CheckBtnEnabled;
    function MakeSQL: string;
  public
    { Public declarations }
    pref, num, len, PlanY :variant;
    CODE, TABLENAME: Variant;
  end;

var
  CalcSumForm: TCalcSumForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TCalcSumForm.cbb_workerPropertiesEditValueChanged(Sender: TObject);
begin
 // btn_gen.Enabled:= not cbb_worker.EditValue=null;
end;

procedure TCalcSumForm.CheckBtnEnabled;
begin
  btn_Save.Enabled:= fds_TRFACT.FN('SMETA').AsVariant<>null;
  btn_Delete.Enabled:= fds_TRFACT.FN('SMETA').AsVariant<>null;
end;

procedure TCalcSumForm.DeleteFileFromServer;
begin
  if Application.MessageBox('Вы действительно хотите удалить файл с сервера?',
    'Предупреждение', MB_YESNO + MB_TOPMOST) = IDYES then
  with fds_TRFACT do begin
    Edit;
    FN('SMETA').AsVariant:= null;
    Post;
  end;
  CheckBtnEnabled;
end;

procedure TCalcSumForm.FormCreate(Sender: TObject);
begin
  ds_worker.Open;

end;

procedure TCalcSumForm.FormShow(Sender: TObject);
begin
  DSOptoins(fds_TRFACT,'',TABLENAME,'CODE',TABLENAME+'_GEN',false);
  with fds_TRFACT do begin
    Close;
    SelectSQL.Text:= MakeSQL;
    Prepare;
    ParamByName('COD').AsVariant:= CODE;
    Open;
  end;
  CheckBtnEnabled;
end;

procedure TCalcSumForm.GenNum;
var
  cod: Variant;
begin
  with cbb_worker.Properties.Grid.DataController do
  begin
    cod := Values[FocusedRecordIndex, 5];
  end;
  msk_num.EditValue:= GenNumTR(cod);
end;

procedure TCalcSumForm.LoadFileToServer;
begin
  {$MESSAGE WARN '--------------Сделать проверку на размер загружаемого файла!!!'}
  if dlgOpen1.Execute then
  if not CheckLimitSize(dlgOpen1.FileName, 'mb', 2) then begin
    with fds_TRFACT do begin
      Edit;
      TBlobField(FN('SMETA')).LoadFromFile(dlgOpen1.FileName);
      FN('FNAME').AsVariant:= ExtractFileName(dlgOpen1.FileName);
      Post;
    end;
    CheckBtnEnabled;
  end else
    raise dezException.Create('Размер файла превышает 2 мб!'+#10#13+
                              '    Операция отменена!');
end;

function TCalcSumForm.MakeSQL: string;
begin
  Result:= 'SELECT * FROM '+TABLENAME+' where Code = :COD';
end;

procedure TCalcSumForm.SaveFileToHDD;
begin
  dlgSave1.FileName:= fds_TRFACT.FN('FNAME').AsString;
  //dlgSave1.DefaultExt:= ExtractFileExt(fds_TRFACT.FN('FNAME').AsString);
  if dlgSave1.Execute then
    TBlobField(fds_TRFACT.FN('SMETA')).SaveToFile(dlgSave1.FileName);
end;

procedure TCalcSumForm.btn_DeleteClick(Sender: TObject);
begin
  DeleteFileFromServer;
end;

procedure TCalcSumForm.btn_FileClick(Sender: TObject);
begin
  {case btn_File.Properties.Buttons.Items of
    0: if dlgOpen1.Execute then btn_File.Text:= dlgOpen1.FileName;
    1: btn_File.Text:='';
  end;}

end;

procedure TCalcSumForm.btn_genClick(Sender: TObject);
begin
  if (cbb_worker.EditValue<>null) and (cbb_worker.EditValue>0) then
  GenNum else
  Application.MessageBox('Укажите сметчика!', 'Ошибка', MB_OK + MB_ICONSTOP +
    MB_DEFBUTTON2 + MB_TOPMOST);
end;

procedure TCalcSumForm.btn_LoadClick(Sender: TObject);
begin
  LoadFileToServer;
end;

procedure TCalcSumForm.btn_okClick(Sender: TObject);
begin
  //CheckPlanY
  if (PlanY<>null) then begin
    if YearOf(dt1.Date)<>PlanY then begin
       dt1.SetFocus;
       //dt1.PopupWindow.Popup(self);
       raise dezException.Create('Год запланированной работы = '+PlanY+#10#13+
                             'Дата создания сметы должна быть в этом же году!');
    end;
  end;
  with cbb_worker.Properties.Grid.DataController do
  begin
    pref := Values[FocusedRecordIndex, 2];
    num := Values[FocusedRecordIndex, 3];
    len := Values[FocusedRecordIndex, 4];
  end;
  ModalResult:=mrOk;
end;

procedure TCalcSumForm.btn_SaveClick(Sender: TObject);
begin
  SaveFileToHDD;
end;

end.
