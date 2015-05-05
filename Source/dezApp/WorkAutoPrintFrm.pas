unit WorkAutoPrintFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutcxEditAdapters, cxContainer, Menus, cxGridCustomTableView,
  frxClass, frxFIBComponents,
  cxGridTableView, cxGridDBTableView, FIBDataSet, pFIBDataSet, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxCalendar, dxmdaset, ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  KontragentRepository, dxSkinDevExpressStyle;

type
  TWorkAutoPrintForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    ppm1: TcxGridPopupMenu;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    iml1: TcxImageList;
    m1: TdxMemData;
    src_m1: TDataSource;
    dt1: TcxDateEdit;
    itm_dt1: TdxLayoutItem;
    dt2: TcxDateEdit;
    itm_dt2: TdxLayoutItem;
    btn_exec: TcxButton;
    itm_exec: TdxLayoutItem;
    cbb_kontr: TcxLookupComboBox;
    itm_kontr: TdxLayoutItem;
    btn_print: TcxButton;
    itm_print: TdxLayoutItem;
    src_kontr: TDataSource;
    ds_WORKLIST: TpFIBDataSet;
    clv1CODE: TcxGridDBColumn;
    clv1DATA: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1KONTRNAME: TcxGridDBColumn;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DU: TcxGridDBColumn;
    clv1DUNAME: TcxGridDBColumn;
    clv1WORKER: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1FLAG: TcxGridDBColumn;
    fr1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure clv1FLAGPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fController: TKontragentController;
    procedure CreateMem;
    procedure OpenDS;
    procedure OpenWorkList;
    function CheckParam :Boolean;
    procedure PrintRep;
  public
    { Public declarations }
  end;

var
  WorkAutoPrintForm: TWorkAutoPrintForm;

implementation

uses AppUtils, cmDBUnit, cmUtils, dezCommon, LoadingSplash;

{$R *.dfm}

procedure TWorkAutoPrintForm.btn_execClick(Sender: TObject);
begin
  OpenWorkList;
end;

procedure TWorkAutoPrintForm.btn_printClick(Sender: TObject);
begin
  PrintRep;
end;

procedure TWorkAutoPrintForm.PrintRep;
var
  fdb: TfrxFIBDatabase;
  i :integer;
  dirName,dirCODE :Variant;
begin
  i:=1;
  try
    SplashVisibility(true,'Печатаем наряды.');
    fr1.LoadFromFile('rep\attire.fr3');
    fdb := fr1.FindObject('fdb1') as TfrxFIBDatabase;
    with fdb do
    begin
      DatabaseName := cmDB.DB.DBName;
      Params.Values['user_name'] := cmDB.DB.DBParams.Values['user_name'];
      Params.Values['password'] := cmDB.DB.DBParams.Values['password'];
      Params.Values['sql_role_name'] := cmDB.DB.DBParams.Values['sql_role_name'];
      SQLDialect := 3;
      Connected := true;
    end;
    v1.BeginUpdate;
    with m1 do begin
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant=1 then begin
          SetCapt(IntToSTr(i));
          fr1.Variables['varCode'] := m1.FieldByName('Code').AsVariant;
          fr1.Variables['varManager'] := #39+m1.FieldByName('FIO').AsVariant+#39;
          GetDir(dirCODE,dirName,cbb_kontr.EditValue);
          fr1.Variables['varDir'] := #39+dirName+#39;
          fr1.PrepareReport;
          fr1.PrintOptions.ShowDialog := False;
          fr1.Print;
          inc(i);
        end;
        Next;
      end;
    end;
  finally
    SplashVisibility(false);
    v1.EndUpdate;
  end;

end;

function TWorkAutoPrintForm.CheckParam: Boolean;
begin
  Result:=True;
  if (cbb_kontr.EditValue=null) or (cbb_kontr.EditValue=Unassigned) then
  begin
    Application.MessageBox('Не указана подрядная организация!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
  if (dt1.EditValue=null) or (dt2.EditValue=null) then
  begin
    Application.MessageBox('Не указан период!', 'Внимание',
      MB_OK + MB_ICONSTOP + MB_TOPMOST);
    Result:=False;
    Exit;
  end;
end;

procedure TWorkAutoPrintForm.clv1FLAGPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post;
end;

procedure TWorkAutoPrintForm.CreateMem;
begin
  CreateField(m1,'FLAG',ftInteger);
  CreateField(m1,'CODE',ftInteger);
  CreateField(m1,'DATA',ftDate);
  CreateField(m1,'KONTRAGENT',ftInteger);
  CreateField(m1,'KONTRNAME',ftString,128);
  CreateField(m1,'STREET',ftInteger);
  CreateField(m1,'STREETNAME',ftString,128);
  CreateField(m1,'HOUSE',ftInteger);
  CreateField(m1,'NOMER',ftString,32);
  CreateField(m1,'DU',ftInteger);
  CreateField(m1,'DUNAME',ftString,128);
  CreateField(m1,'WORKER',ftInteger);
  CreateField(m1,'FIO',ftString,256);
  CreateField(m1,'NOTE',ftString,256);
  m1.Open;
end;

procedure TWorkAutoPrintForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fController.Free;
  Action:=caFree;
end;

procedure TWorkAutoPrintForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  fController:= TKontragentController.Create;
  OpenDS;
end;

procedure TWorkAutoPrintForm.N1Click(Sender: TObject);
begin
  try
    v1.BeginUpdate;
    SplashVisibility(True,'Отмечаем записи.');
    with m1 do begin
      First;
      while not Eof do begin
        Edit;
        FieldByName('FLAG').AsVariant:=1;
        Post;
        SetCapt(IntToStr(RecNo)+' - '+IntToStr(RecordCount));
        Next;
      end;
    end;
  finally
    SplashVisibility(false);
    v1.EndUpdate;
  end;
end;

procedure TWorkAutoPrintForm.N2Click(Sender: TObject);
begin
  try
    v1.BeginUpdate;
    SplashVisibility(True,'Снимаем отметки.');
    with m1 do begin
      First;
      while not Eof do begin
        Edit;
        FieldByName('FLAG').AsVariant:=0;
        Post;
        SetCapt(IntToStr(RecNo)+' - '+IntToStr(RecordCount));
        Next;
      end;
    end;
  finally
    SplashVisibility(false);
    v1.EndUpdate;
  end;
end;

procedure TWorkAutoPrintForm.OpenDS;
begin
  CreateMem;
  {$REGION 'Kontragent'}
  src_kontr.DataSet:= fController.DS;
  if ActiveUserType=1 then begin
    fController.GetById(ActiveKontragent);
    cbb_kontr.EditValue:=ActiveKontragent;
    cbb_kontr.Enabled:=False;
  end else
    fController.GetActiveKontrShort();
  {$ENDREGION}
end;

procedure TWorkAutoPrintForm.OpenWorkList;
begin
  try
    SplashVisibility(True,'Дождитесь окончания операции.');
    with ds_WORKLIST do begin
      Close;
      if not CheckParam then Exit;
      SetCapt('Получаем данные...');
      MainWhereClause:=' wl.KONTRAGENT =:kontr and wl.DATA between :d1 and :d2';
      ParamByName('kontr').AsVariant:=cbb_kontr.EditValue;
      ParamByName('d1').AsVariant:=dt1.EditValue;
      ParamByName('d2').AsVariant:=dt2.EditValue;
      Open;
      m1.Close; m1.Open;
      m1.LoadFromDataSet(ds_WORKLIST);
    end;
  finally
    SplashVisibility(false);
  end;
end;

initialization
 RegisterClass(TWorkAutoPrintForm);
end.

