unit AddMatFrm;

interface

uses
  dxRibbonForm,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxSkinsdxRibbonPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxPropertiesStore, FIBDatabase, pFIBDatabase, FIBDataSet, pFIBDataSet,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxLayoutLookAndFeels,
  dxRibbon, AppUtils, cmDBUnit, Menus, StdCtrls, cxButtons, ImgList, dxmdaset,
  cxDBLookupComboBox, BaseForm, cxMemo, cxBlobEdit, cxTextEdit,
  dxLayoutContainer, dxLayoutControlAdapters, dxRibbonSkins,
  dxSkinDevExpressStyle, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TAddMatForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    v_gr: TcxGridDBTableView;
    l_gr: TcxGridLevel;
    grd1: TcxGrid;
    Itm_grd1: TdxLayoutItem;
    splt1: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd2: TcxGrid;
    Itm2: TdxLayoutItem;
    grp2: TdxLayoutGroup;
    ds_grp: TpFIBDataSet;
    ds_matr: TpFIBDataSet;
    src_grp: TDataSource;
    src_matr: TDataSource;
    prop1: TcxPropertiesStore;
    cl_gr_Code: TcxGridDBColumn;
    cl_grName: TcxGridDBColumn;
    clv1Code: TcxGridDBColumn;
    clv1MGROUP: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    btn_get: TcxButton;
    Itm_btn: TdxLayoutItem;
    btn_cancel: TcxButton;
    Itm_cancel: TdxLayoutItem;
    grp_btn: TdxLayoutGroup;
    il1: TcxImageList;
    mt_rtype: TdxMemData;
    src_rtype: TDataSource;
    clv1JWORKTYPE: TcxGridDBColumn;
    ds_JWorkType: TpFIBDataSet;
    src_JWorkType: TDataSource;
    clv1Note: TcxGridDBColumn;
    clv1KYear: TcxGridDBColumn;
    clv1StructDefect: TcxGridDBColumn;
    ds_Structdefect: TpFIBDataSet;
    src_Structdefect: TDataSource;
    v1Column1: TcxGridDBColumn;
    ds_MATGROUPTO: TpFIBDataSet;
    src_MATGROUPTO: TDataSource;
    clv1MATGROUPTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure v_grCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_grKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_getClick(Sender: TObject);
    procedure ds_matrAfterInsert(DataSet: TDataSet);
    procedure btn_cancelClick(Sender: TObject);
    procedure ds_matrBeforePost(DataSet: TDataSet);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1DataControllerFilterChanged(Sender: TObject);
    procedure v1DataControllerFilterFormatFilterTextValue
      (Sender: TcxDBDataFilterCriteria; const AValue: Variant;
      var ADisplayValue: string);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure v_grDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure v_grDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure v_grMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure OpenDs;
    procedure OpenMat;
    procedure PostForm;
    procedure SetWriteOpt;
    procedure LookupMatButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
    material: Integer;
  end;

var
  AddMatForm: TAddMatForm;

implementation

uses dezCommon, LoadingSplash;
{$R *.dfm}

procedure TAddMatForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TAddMatForm.btn_getClick(Sender: TObject);
begin
  PostForm;
end;

procedure TAddMatForm.PostForm;
begin
  if v1.GetColumnByFieldName('CODE').EditValue = null then
  begin
    ShowMessage('Не выбран материал!');
    ModalResult := mrNone;
  end
  else
  begin
    material := v1.GetColumnByFieldName('CODE').EditValue;
    ModalResult := mrOk;
  end;
end;

procedure TAddMatForm.SetWriteOpt;
var
  AButton: TcxEditButton;
begin
  with TcxLookupComboBoxProperties(clv1MATGROUPTO.Properties) do begin
    Images:= cmDb.iml1;
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupMatButtonClick;
  end;
  if ((ActiveWorker = 35) or (ActiveRole = 1)) then //Колегова и админ
  begin
    v_gr.Navigator.Visible:= True;
    with v_gr.OptionsData do begin
      Appending:= True;
      Editing:= True;
      Inserting:= True;
    end;
    v1.Navigator.Visible:= True;
    with v1.OptionsData do begin
      Appending:= True;
      Editing:= True;
      Inserting:= True;
    end;
  end;
end;

procedure TAddMatForm.ds_matrAfterInsert(DataSet: TDataSet);
begin
  if v_gr.GetColumnByFieldName('Code').EditValue = null then
  begin
    ShowMessage('Не указана группа!');
    Abort;
    Exit;
  end;
  ds_matr.FN('MGROUP').AsInteger := v_gr.GetColumnByFieldName('Code').EditValue;
end;

procedure TAddMatForm.ds_matrBeforePost(DataSet: TDataSet);
begin
  if ds_matr.FN('Name').AsVariant = null then
  begin
    ShowMessage('Укажите наименование материала!');
    Abort;
  end;
  Trim(ds_matr.FN('Name').AsVariant);
end;

procedure TAddMatForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Self.FormStyle = fsMDIChild then
    Action := caFree;
end;

procedure TAddMatForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  CreateRType(mt_rtype);
  OpenDs;
  ds_JWorkType.Open;
  // если подрядчик - запрещаем редактирование записей
  if ActiveUserType = 1 then
  begin
    GridEditDisable(False, v1);
    GridEditDisable(False, v_gr);
  end;
end;

procedure TAddMatForm.FormShow(Sender: TObject);
begin
  if Self.FormStyle = fsMDIChild then
    grp_btn.Visible := False;
end;

procedure TAddMatForm.LookupMatButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    1: with TcxLookupComboBox(Sender) do
       begin
         EditValue := null;
         PostEditValue;
       end;
  end;
end;

procedure TAddMatForm.OpenDs;
begin
  DSOptoins(ds_grp, '', 'MGROUP', 'CODE', 'MGROUP_GEN');
  DSOptoins(ds_matr, '', 'MLIST', 'CODE', 'MLIST_GEN', False);
  OpenMat;
  ds_MATGROUPTO.Open;
  SetWriteOpt;
end;

procedure TAddMatForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if Self.FormStyle <> fsMDIChild then
  PostForm;
end;

procedure TAddMatForm.v1DataControllerFilterChanged(Sender: TObject);
begin
  if v1.Columns[2].DataBinding.FilterCriteriaItem <> nil then
    if v1.Columns[2].DataBinding.FilterCriteriaItem.DisplayValue <> '' then
      if Copy(v1.Columns[2].DataBinding.FilterCriteriaItem.Value, 1, 1)
        <> '%' then
        v1.Columns[2].DataBinding.FilterCriteriaItem.Value := '%' + v1.Columns
          [2].DataBinding.FilterCriteriaItem.Value;
end;

procedure TAddMatForm.v1DataControllerFilterFormatFilterTextValue
  (Sender: TcxDBDataFilterCriteria; const AValue: Variant;
  var ADisplayValue: string);
begin
  // ShowMessage('AValue = '+AValue+#10#13+'ADisplayValue = '+ADisplayValue);
end;

procedure TAddMatForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  if Self.FormStyle <> fsMDIChild then
    PostForm;
end;

procedure TAddMatForm.v_grCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenMat;
end;

procedure TAddMatForm.v_grDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
  AValue,AName :Variant;
  ms: string;
begin
  with TcxGridSite(Sender) do
    HT := ViewInfo.GetHitTest(X, Y);

  with TcxGridRecordCellHitTest(HT).GridRecord do
  begin
    AValue :=  Values[cl_gr_Code.Index];
    AName :=  Values[cl_grName.Index];
  end;

  if AValue=null then Exit;

  ms:='Вы действительно хотите перенести работу в группу '+VarToSTr(AName)+' ?';
  if Application.MessageBox(PChar(ms), 'Внимание', MB_YESNO + MB_ICONQUESTION
    + MB_DEFBUTTON2 + MB_TOPMOST) = IDYES then
  with ds_matr do  begin
    Edit;
    FN('MGROUP').AsVariant:=AValue;
    Post;
    OpenMat;
  end;
end;

procedure TAddMatForm.v_grDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
  var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest)
    and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <>
                                    GridView.DataController.FocusedRecordIndex);
  end;
end;

procedure TAddMatForm.v_grKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if v_gr.Controller.IsFilterRowFocused then
    Exit;
  if v_gr.Controller.IsNewItemRowFocused then
    Exit;
  if (Key = VK_UP) or (Key = VK_DOWN) then
  begin
    OpenMat;
  end;
end;

procedure TAddMatForm.v_grMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ((Button = mbLeft) and (ssAlt in Shift)) or (ssRight in Shift) then
    if (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell, htRecord])
      then TcxGridSite(Sender).BeginDrag(False);
end;

procedure TAddMatForm.OpenMat;
begin
  try
    //SplashVisibility(True,'Загрузка данных');
    with ds_matr do
    begin
      Close;
      if v_gr.GetColumnByFieldName('CODE').EditValue = null then
        Exit;
      MainWhereClause := 'MGROUP=:grp and CODE<>1';
      ParamByName('grp').AsInteger := v_gr.GetColumnByFieldName('CODE').EditValue;
      Open;
    end;
    ds_Structdefect.CloseOpen(False);
  finally
   // SplashVisibility(False);
  end;
end;

initialization

RegisterClass(TAddMatForm);

end.
