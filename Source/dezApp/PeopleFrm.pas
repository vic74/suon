unit PeopleFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,FIBQuery, pFIBCacheQueries, pFIBProps,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  dxLayoutLookAndFeels, dxLayoutControl, cxClasses, dxRibbon, AppUtils, cmDBUnit,
  cxPropertiesStore, FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid, cxCalendar,
  ImgList, BaseForm, dxRibbonSkins, dxLayoutContainer, cxButtonEdit, cxMaskEdit,
  dxSkinDevExpressStyle, cxNavigator, cxCheckBox;

type
  TPeopleForm = class(TDezForm)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr: TdxLayoutControl;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    ds_ppl: TpFIBDataSet;
    src_ppl: TDataSource;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    vb1: TcxGridDBBandedTableView;
    clCODE: TcxGridDBBandedColumn;
    clF: TcxGridDBBandedColumn;
    clI: TcxGridDBBandedColumn;
    clO: TcxGridDBBandedColumn;
    clBORN: TcxGridDBBandedColumn;
    clPS: TcxGridDBBandedColumn;
    clPN: TcxGridDBBandedColumn;
    clPD: TcxGridDBBandedColumn;
    clPV: TcxGridDBBandedColumn;
    il1: TcxImageList;
    clvb1EMAIL: TcxGridDBBandedColumn;
    clvb1PHONE: TcxGridDBBandedColumn;
    clvb1DISP_LOGIN: TcxGridDBBandedColumn;
    clvb1DISP_PSWD: TcxGridDBBandedColumn;
    clvb1DISP: TcxGridDBBandedColumn;
    clvb1isDelete: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SetRihgt;
    procedure clvb1DISPPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure clvb1PHONEPropertiesChange(Sender: TObject);
    procedure clvb1EMAILPropertiesChange(Sender: TObject);
    procedure vb1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure clvb1isDeletePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    ActivePiple: Variant;
    function DispAcc: Boolean;
    procedure ShowDispForm;
  public
    { Public declarations }
  end;

var
  PeopleForm: TPeopleForm;

implementation

{$R *.dfm}

uses dezCommon, DispLoginFrm;

procedure TPeopleForm.clvb1DISPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  // проверка что редактирует себя
  if not DispAcc then
     raise dezException.Create('Вы можете редактировать только свою запись!');
  ShowDispForm;
end;

procedure TPeopleForm.clvb1EMAILPropertiesChange(Sender: TObject);
begin
  if not DispAcc then begin
     Abort;
     raise dezException.Create('Вы можете редактировать только свою запись!');
  end;
end;

procedure TPeopleForm.clvb1isDeletePropertiesEditValueChanged(Sender: TObject);
begin
  vb1.DataController.Post(true);
end;

procedure TPeopleForm.clvb1PHONEPropertiesChange(Sender: TObject);
begin
  if not DispAcc then begin
     Abort;
     //vb1.DataController.Cancel;
     raise dezException.Create('Вы можете редактировать только свою запись!');
  end;
end;

function TPeopleForm.DispAcc: Boolean;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.RT, 'SELECT W.PIPLE FROM WORKER W WHERE  W.CODE= :USR');
  Q.Options:= [qoStartTransaction];
  try
    Q.ParamByName('USR').AsVariant:= ActiveWorker;
    Q.ExecQuery;
    ActivePiple:= Q.FN('PIPLE').AsVariant;
    Result:= Q.FN('PIPLE').AsVariant = vb1.GetColumnByFieldName('CODE').EditValue;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPeopleForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TPeopleForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,self.Name);
  DSOptoins(ds_ppl,'','PIPLE','CODE','PIPLE_GEN');
  SetRihgt; // права доступа
  DispAcc;
end;

procedure TPeopleForm.SetRihgt;
  procedure CanWrite(isCan: Boolean);
  var
    i: integer;
  begin
    //права на добавление/удаление записей из таблицы
    with vb1.OptionsData do begin
      Appending:= isCan;
      Deleting:= isCan;
      Editing:= true;
      Inserting:= isCan;
    end;
    //права на редактирование записей в таблице
    if ActiveUserName = 'SYSDBA' then
    //if DispAcc then
    for I := 0 to vb1.ColumnCount - 1 do begin
         vb1.Columns[i].Options.Editing:= true; //доступен на запись
    end;
    //
    if ActiveWorker = 35 then
       vb1.Columns[clvb1isDelete.Index].Options.Editing:= true;
    //
    clvb1DISP.Editing:= True;
    //visible bands
    vb1.Bands[2].Visible:=  (ActiveUserName = 'SYSDBA') or (ActiveWorker = 35);
    vb1.Bands[2].VisibleForCustomization := ActiveUserName = 'SYSDBA';
  end;
begin
  case ActiveRole of
    1: CanWrite(true); //sysdba
    6: CanWrite(true); //разработчики
    else CanWrite(false);
  end;

end;

procedure TPeopleForm.ShowDispForm;
var
  F: TDispLoginForm;
begin
  F:= TDispLoginForm.Create(self);
  try
    F.Login.EditValue:= vb1.GetColumnByFieldName('DISP_LOGIN').EditValue;
    F.Pass.EditValue:= vb1.GetColumnByFieldName('DISP_PSWD').EditValue;
    if F.ShowModal = mrOk then begin
      with ds_ppl do begin
        Edit;
        FN('DISP_LOGIN').AsVariant:= F.Login.EditingValue;
        FN('DISP_PSWD').AsVariant:= F.Pass.EditingValue;
        Post;
      end;
    end;
  finally
    FreeAndNil(F);
  end;
end;

procedure TPeopleForm.vb1Editing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  {if ActiveUserName = 'SYSDBA' then begin
    AAllow:= True;
    Exit;
  end;}
  if AItem.Index = clvb1PHONE.Index then
            AAllow:= vb1.GetColumnByFieldName('CODE').EditValue = ActivePiple;
  if AItem.Index = clvb1EMAIL.Index then
            AAllow:= vb1.GetColumnByFieldName('CODE').EditValue = ActivePiple;
  if AItem.Index = clvb1DISP.Index then
            AAllow:= vb1.GetColumnByFieldName('CODE').EditValue = ActivePiple;
end;

initialization
 RegisterClass(TPeopleForm);
end.
