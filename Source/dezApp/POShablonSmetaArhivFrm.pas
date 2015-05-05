unit POShablonSmetaArhivFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FIBDataSet, pFIBDataSet, FIBQuery, pFIBCacheQueries, pFIBProps,
  cxGridLevel, cxClasses, BaseForm,
  cxGridCustomView, cxGrid, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, AppUtils, cxCurrencyEdit, dxSkinsDefaultPainters,
  dxSkinOffice2010Blue, cxImageComboBox, dxSkinDevExpressStyle,
  cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit;

type
  TPOShablonSmetaArhivForm = class(TDezModalForm)
    g1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    glc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    ds_ArcShbHead: TpFIBDataSet;
    src_ArcShbHead: TDataSource;
    clv1MAKESHABLONSMETA: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1SRVDOG: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1SRV: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1KCODE: TcxGridDBColumn;
    clv1KONTRAGENTNAME: TcxGridDBColumn;
    clv1HOUSESRVNAME: TcxGridDBColumn;
    clv1SRVNAME: TcxGridDBColumn;
    clv1NMONTH: TcxGridDBColumn;
    cbb_M: TcxComboBox;
    itmlc1Item11: TdxLayoutItem;
    msk_Y: TcxMaskEdit;
    itmlc1Item12: TdxLayoutItem;
    btn_Save: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    glc1Group3: TdxLayoutGroup;
    glc1Group4: TdxLayoutGroup;
    btn_Load: TcxButton;
    itmlc1Item15: TdxLayoutItem;
    btn_Delete: TcxButton;
    itmlc1Item14: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    glc1Group5: TdxLayoutGroup;
    glc1Group6: TdxLayoutGroup;
    glc1Group7: TdxLayoutGroup;
    ds_ARCSHBSPEC: TpFIBDataSet;
    src_ARCSHBSPEC: TDataSource;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item16: TdxLayoutItem;
    clv2CODE: TcxGridDBColumn;
    clv2ARCSHBHEAD: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2SNAME: TcxGridDBColumn;
    clv2NOMER: TcxGridDBColumn;
    clv2SQ1: TcxGridDBColumn;
    clv2SQ2: TcxGridDBColumn;
    clv2SUMMA: TcxGridDBColumn;
    StyleRepository1: TcxStyleRepository;
    Style1: TcxStyle;
    grpHistory: TdxLayoutGroup;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    ds_history: TpFIBDataSet;
    src_history: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3ARCSHBHEAD_ID: TcxGridDBColumn;
    clv3MAKESMETASHABLON: TcxGridDBColumn;
    clv3M: TcxGridDBColumn;
    clv3Y: TcxGridDBColumn;
    clv3SRVDOG: TcxGridDBColumn;
    clv3HOUSESRV: TcxGridDBColumn;
    clv3SRV: TcxGridDBColumn;
    clv3SUMMA: TcxGridDBColumn;
    clv3WORKERID: TcxGridDBColumn;
    clv3FIO: TcxGridDBColumn;
    clv3DATA: TcxGridDBColumn;
    clv3OPERTYPE: TcxGridDBColumn;
    clv3HSRVNAME: TcxGridDBColumn;
    clv3SRVNAME: TcxGridDBColumn;
    clv1FIRM: TcxGridDBColumn;
    cbb_FIRM: TcxLookupComboBox;
    litm_Firm: TdxLayoutItem;
    constructor Create(aOwner: TComponent; smeta: Variant);
    procedure v1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_LoadClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure Localize;
    procedure Open_ArcShbHead;
    procedure SetBtnRihgts(NewSmeta: Boolean = true);
    procedure CreateNewShablon;
    procedure RewriteTemplate;
    procedure DeleteTemplate;
    function CheckParams: Boolean;
    procedure LoadFromArhiv;
    function AddToHistory(cod, opertype: variant): Variant;
  public
    { Public declarations }
    shSmeta: Variant;
  end;

var
  POShablonSmetaArhivForm: TPOShablonSmetaArhivForm;

implementation

{$R *.dfm}

uses cmDBUnit, LoadingSplash, dezCommon, resStr;

{ TPOShablonSmetaArhivForm }

function TPOShablonSmetaArhivForm.AddToHistory(cod, opertype: variant): Variant;
var
  Q: TFIBQuery;
begin
  Q:= GetQueryForUse(cmDb.WT,'select CODE from ADD_HISTORY$ARCSHBHEAD(:COD, :OPERTYPE, :WORKER)');
  Q.Options:= [qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= cod;
    Q.ParamByName('OPERTYPE').AsVariant:= opertype;
    Q.ParamByName('WORKER').AsVariant:= ActiveWorker;
    Q.ExecQuery;
    Result:= Q.FN('CODE').AsVariant;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaArhivForm.btn_DeleteClick(Sender: TObject);
begin
  DeleteTemplate;
end;

procedure TPOShablonSmetaArhivForm.btn_LoadClick(Sender: TObject);
begin
  LoadFromArhiv;
end;

procedure TPOShablonSmetaArhivForm.btn_SaveClick(Sender: TObject);
begin
  if ds_ArcShbHead.Locate('M;Y',VarArrayOf([cbb_M.ItemIndex, msk_Y.EditingValue]),[]) then
  begin
    if Application.MessageBox('В архиве имеется сохраненный шаблон за указанный месяц.'
      + #13#10 + 'Хотите его перезаписать?', 'Внимание!', MB_YESNO +
      MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
    begin
      RewriteTemplate;
    end;
  end else CreateNewShablon;
  {case btn_Save.Tag of
    0: CreateNewShablon;
    1: RewriteTemplate;
  end;}
end;

function TPOShablonSmetaArhivForm.CheckParams: Boolean;
begin
  Result:= False;
    if cbb_M.ItemIndex<1 then
       raise dezException.Create('Не указан месяц!');
    if msk_Y.EditingValue = null then
       raise dezException.Create('Не указан год!');
    if VarIsType(cbb_FIRM.EditValue,[varEmpty, varNull]) then
       raise dezException.Create('Не указана организация');
  Result:= True;
end;

constructor TPOShablonSmetaArhivForm.Create(aOwner: TComponent; smeta: Variant);
begin
  inherited Create(aOwner);
  Localize;
  if (smeta = null) or (smeta = Unassigned) then
     raise dezException.Create('Не передан код шаблона!');
  shSmeta:= smeta;
  OpenDS;
  Open_ArcShbHead;
end;

procedure TPOShablonSmetaArhivForm.CreateNewShablon;
var
  Q: TFIBQuery;
begin
  if not CheckParams then Exit;
  //
  Q:= GetQueryForUse(cmDb.WT,
    'insert into ARCSHBHEAD (MAKESMETASHABLON, M, Y, SRVDOG, HOUSESRV, SRV,FIRM)' +#13#10+
    'select CODE, :M, :Y, SRVDOG, HOUSESRV, SRV, :FIRM' +#13#10+
    'from MAKESMETASHABLON'+#13#10+
    'WHERE CODE=:COD'+#13#10+
    'RETURNING CODE');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= shSmeta;
    Q.ParamByName('M').AsVariant:= cbb_M.ItemIndex;
    Q.ParamByName('Y').AsVariant:= msk_Y.EditingValue;
    Q.ParamByName('FIRM').AsVariant:= cbb_FIRM.EditValue;
    Q.ExecQuery;

    //AddToHistory(Q.FN('CODE').AsVariant,0);
    case btn_Save.Tag of
      0: Application.MessageBox('Шаблон успешно добавлен в архив.', 'Информация', MB_OK + MB_ICONINFORMATION);
      1: Application.MessageBox('Шаблон успешно перезаписан.', 'Информация', MB_OK + MB_ICONINFORMATION);
    end;
    Open_ArcShbHead;
    SetBtnRihgts(true);
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaArhivForm.DeleteTemplate;
var
  Q: TFIBQuery;
begin
  if Application.MessageBox('Вы действительно хотите удалить ' + #13#10 +
    '      шаблон из архива?', 'Предупреждение', MB_YESNO +
    MB_ICONWARNING) = IDNO then Exit;
  //
  Q:= GetQueryForUse(cmDb.WT,
    'DELETE FROM ARCSHBHEAD WHERE CODE= :COD');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= v1.FN('CODE');
    Q.ExecQuery;
    Open_ArcShbHead;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaArhivForm.LoadFromArhiv;
var
  Q: TFIBQuery;

  procedure InsertNewData;
  var
    Q: TFIBQuery;
  begin
    if v1.FN('CODE') = null then
       raise dezException.Create('Не выбран шаблон для загрузки!');
    Q:= GetQueryForUse(cmDb.WT,
      'insert into MAKESMETASHABLONSPEC (MAKESMETASHABLON, HOUSE, SUMMA)' +#13#10+
      'select AH.MAKESMETASHABLON, AC.HOUSE, AC.SUMMA' +#13#10+
      'from ARCSHBSPEC AC' +#13#10+
      'left outer join ARCSHBHEAD AH on AH.CODE = AC.ARCSHBHEAD' +#13#10+
      'where AC.ARCSHBHEAD=:CODE');
    Q.Options:=[qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('CODE').AsVariant:= v1.FN('CODE');
      Q.ExecQuery;

    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
  if Application.MessageBox(' Вы действительно хотите загрузить шаблон из архива?'
    + #13#10 + '              Текущий шаблон будет ПЕРЕЗАПИСАН!',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then Exit;
  Q:= GetQueryForUse(cmDb.WT,
      'delete from MAKESMETASHABLONSPEC' +#13#10+
      'where (MAKESMETASHABLON = :CODE)');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  SplashVisibility(True);
  try
    SetCapt('Очищаем документ...');
    Q.ParamByName('CODE').AsVariant:= shSmeta;
    Q.ExecQuery;
    SetCapt('Загружаем новые данные...');
    InsertNewData;
    SetCapt('Загрузка данных завершена.');
    if Application.MessageBox('Шаблон успешно перезаписан.' + #13#10 +
      'Закрыть окно архива?', 'Информация', MB_YESNO + MB_ICONINFORMATION +
      MB_DEFBUTTON2) = IDYES then
    begin
      ModalResult:= mrOk;
    end;
  finally
    FreeQueryForUse(Q);
    SplashVisibility(false);
  end;
end;

procedure TPOShablonSmetaArhivForm.Localize;
begin
  litm_Firm.Caption:= CaptionFirm;
end;

procedure TPOShablonSmetaArhivForm.OpenDS;
begin
  if cmDb.ds_FIRM.State = dsInactive then
     cmDb.ds_FIRM.Open;
  cbb_FIRM.EditValue :=1;
end;

procedure TPOShablonSmetaArhivForm.Open_ArcShbHead;
begin
  with ds_ArcShbHead do begin
    Close;
    MainWhereClause:='AR.MAKESMETASHABLON= :CODE';
    ParamByName('CODE').AsVariant:= shSmeta;
    Open;
  end;
  SetBtnRihgts(ds_ArcShbHead.Locate('MAKESMETASHABLON',shSmeta,[]));
end;

procedure TPOShablonSmetaArhivForm.RewriteTemplate;
var
  Q: TFIBQuery;
begin
  if not CheckParams then Exit;
  //
  {if Application.MessageBox('Вы действительно хотите перезаписать ' + #13#10 +
    '     имеющийся шаблон в архиве?', 'Предупреждение', MB_YESNO +
    MB_ICONWARNING) = IDNO then Exit;}
  //
  //add to history
  //AddToHistory(v1.FN('CODE'),2);
  //delete record
  Q:= GetQueryForUse(cmDb.WT,
    'DELETE FROM ARCSHBHEAD WHERE CODE= :COD');
  Q.Options:=[qoStartTransaction, qoAutoCommit];
  try
    Q.ParamByName('COD').AsVariant:= v1.FN('CODE');
    Q.ExecQuery;
    CreateNewShablon;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TPOShablonSmetaArhivForm.SetBtnRihgts(NewSmeta: Boolean);
begin
  {if NewSmeta = false then begin
    with btn_Save do begin
      Caption:='Добавить шаблон';
      Tag:=0;
      OptionsImage.ImageIndex:=0;
    end;
  end else begin
    with btn_Save do begin
      Caption:='Перезаписать шаблон';
      Tag:=1;
      OptionsImage.ImageIndex:=1;
    end;
  end;}
  btn_Load.Enabled:= not ds_ArcShbHead.IsEmpty;
  btn_Delete.Enabled:= not ds_ArcShbHead.IsEmpty;
end;

procedure TPOShablonSmetaArhivForm.v1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btn_Load.Enabled:= not ds_ArcShbHead.IsEmpty;
end;

procedure TPOShablonSmetaArhivForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP : btn_Load.Enabled:= not ds_ArcShbHead.IsEmpty;
    VK_DOWN : btn_Load.Enabled:= not ds_ArcShbHead.IsEmpty;
  end;
end;

end.
