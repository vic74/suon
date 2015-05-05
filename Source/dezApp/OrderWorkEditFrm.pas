unit OrderWorkEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxDockControlPainter, cxPC, dxDockControl, dxDockPanel, cxClasses,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit, cxCalendar,
  cxMemo, cxCurrencyEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, cxCheckBox,
  FIBQuery, pFIBCacheQueries, pFibProps,
  cxDBExtLookupComboBox, dxSkinDevExpressStyle, WorkListTO_partial, WorkSpecList,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TOrderWorkEditForm = class(TDezModalForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    DockingManager1: TdxDockingManager;
    DockSite1: TdxDockSite;
    DockPanel1: TdxDockPanel;
    DockPanel2: TdxDockPanel;
    lDockSite2: TdxLayoutDockSite;
    lDockSite1: TdxLayoutDockSite;
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    grplc1Group1: TdxLayoutGroup;
    src_serviswork: TDataSource;
    ds_serviswork: TpFIBDataSet;
    cbb_work: TcxLookupComboBox;
    lItmlc1Item3: TdxLayoutItem;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    lItmlc1Item5: TdxLayoutItem;
    dt1: TcxDateEdit;
    lItmlc1Item6: TdxLayoutItem;
    spn_col: TcxSpinEdit;
    lItmlc1Item7: TdxLayoutItem;
    curEd_wprice: TcxCurrencyEdit;
    mmo1: TcxMemo;
    lItmlc1Item8: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    md_HouseByDog: TdxMemData;
    ds_houseByDog: TpFIBDataSet;
    clv1HOUSE: TcxGridDBColumn;
    clv1FLAG: TcxGridDBColumn;
    clv1SNAME: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    src_houseByDog: TDataSource;
    grplc1Group4: TdxLayoutGroup;
    btn_SaveWork: TcxButton;
    lItmlc1Item11: TdxLayoutItem;
    ds_TOPLAN: TpFIBDataSet;
    src_ToPlan: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clv1FLAGPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SaveWorkClick(Sender: TObject);
    procedure grd1Exit(Sender: TObject);
    procedure cbb_workPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    WorkList: TWorkList;
    ds: TDataSet;

    minPeriodData: Variant;
    procedure LoadhouseByDog(kontr: integer);
    procedure SetEditMode;
    procedure SaveWork;
    procedure CustomizeCombo(cbb: TcxLookupCombobox);
    procedure LookupButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PrepareDS;
    procedure FillControls;
  public
    { Public declarations }
    fWorkSpecList: TWorkSpecList;
    isEditing: Boolean;
    constructor Create(AOwner: TComponent; kontr: Integer; minData: Variant; fds: TDataSet; isEdit: Boolean = false); overload;
    constructor Create(AOwner: TComponent; kontr: Integer; minData: Variant; fwsl: TWorkSpecList; isEdit: Boolean = false); overload;
  end;


implementation

uses cmDBUnit, dezCommon;

{$R *.dfm}


procedure TOrderWorkEditForm.btn_SaveWorkClick(Sender: TObject);
begin
  if dt1.Date<=minPeriodData then
    raise dezException.Create('Дата работы не может входить в закрытый период!'+#10#13+'период закрыт по '+VarToStr(minPeriodData));
  SaveWork;
  ModalResult:= mrOk;
end;

procedure TOrderWorkEditForm.cbb_workPropertiesChange(Sender: TObject);
var
  aItemListOr : TcxFilterCriteriaItemList;
  sText : String;
  i : Integer;
  combo : TcxLookupComboBox;
begin
  inherited;
  if not (Sender is TcxLookupComboBox) then
    exit;
  combo := TcxLookupComboBox(Sender);
  with combo.Properties.Grid.DataController do begin
    Filter.Active := False;
    Filter.Options := [fcoCaseInsensitive];
    Filter.Root.Clear;
    sText := combo.Text;
    if sText <> '' then begin
      sText := '%' + sText + '%';
      aItemListOr := Filter.Root.AddItemList( fboOr );
      for i:=0 to ItemCount-1 do begin
        aItemListOr.AddItem(GetItem(i), foLike, sText, sText);
      end;
    end;
    Filter.Active := True;
    combo.Properties.DropDownRows := 8;
  end;
end;

procedure TOrderWorkEditForm.clv1FLAGPropertiesChange(Sender: TObject);
begin
  v1.DataController.Post();
  v1.DataController.Summary.Calculate;
end;

constructor TOrderWorkEditForm.Create(AOwner: TComponent; kontr: Integer; minData: Variant; fds: TDataSet;
  isEdit: Boolean);
begin
  inherited Create(AOwner);
  WorkList:= TWorkList.Create;
  PrepareDS;
  //LoadForm(prop1,Self.Name);
  isEditing:= isEdit;
  minPeriodData:= minData;
  ds:= fds;
  if isEditing then SetEditMode else
  LoadhouseByDog(kontr);
end;

constructor TOrderWorkEditForm.Create(AOwner: TComponent; kontr: Integer; minData: Variant; fwsl: TWorkSpecList; isEdit: Boolean);
begin
  inherited Create(AOwner);
  WorkList:= TWorkList.Create;
  PrepareDS;
  //LoadForm(prop1,Self.Name);
  isEditing:= isEdit;
  minPeriodData:= minData;
  fWorkSpecList:= fwsl;
  if isEditing then SetEditMode else
  LoadhouseByDog(kontr);
end;

procedure TOrderWorkEditForm.CustomizeCombo(cbb: TcxLookupCombobox);
var
  AButton: TcxEditButton;
begin
  cbb.Properties.Images:= cmDb.iml1;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=23;
    AButton.Hint:='Очистить';
    OnButtonClick := LookupButtonClick;
  end;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=31;
    AButton.Hint:='Выбрать из справочника';
    OnButtonClick := LookupButtonClick;
  end;
end;

procedure TOrderWorkEditForm.FillControls;
begin
  //todo переделать без использования TpFibDataSet
  with fWorkSpecList do begin
    cbb_work.EditValue:= ServisWork;
    dt1.EditValue:= Data;
    spn_col.EditValue:= Quantity;
    curEd_wprice.EditValue:= Price;
    mmo1.EditValue:= Note;
  end;
end;

procedure TOrderWorkEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(WorkList) then FreeAndNil(WorkList);
  //Action:= caFree;
end;

procedure TOrderWorkEditForm.FormShow(Sender: TObject);
begin
   if VarIsType(fWorkSpecList.Data, [varNull, varEmpty]) then
   dt1.Date:= Date;
end;

procedure TOrderWorkEditForm.grd1Exit(Sender: TObject);
begin
  v1.DataController.Filter.Clear;
end;

procedure TOrderWorkEditForm.LoadhouseByDog(kontr: integer);
var
  dog: Int32;
begin
  if kontr<0 then
     kontr := ActiveKontragent;
     with ds_houseByDog do begin
       Close;
       ParamByName('kontr').AsVariant := kontr;
       Open;
     end;
     md_HouseByDog.LoadFromDataSet(ds_houseByDog);
    if md_HouseByDog.Locate('HOUSE',fWorkSpecList.House,[]) then begin
       md_HouseByDog.Edit;
       md_HouseByDog.FieldByName('FLAG').AsVariant:= 1;
       md_HouseByDog.Post;
    end;
end;

procedure TOrderWorkEditForm.LookupButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var
    work: Variant;
begin
    case AButtonIndex of
      1: with TcxLookupComboBox(Sender) do
         begin
           EditValue := null;
           PostEditValue;
         end;
      2: begin
           work:= WorkList.GetWorkCodeBySpr;
           if work<>null then
             cbb_work.EditValue:= work;
         end;
    end;
end;

procedure TOrderWorkEditForm.PrepareDS;
begin
  ds_serviswork.Open;
  //
  CustomizeCombo(cbb_work);
  AppUtils.ConfigureCombo(cbb_work);
end;

procedure TOrderWorkEditForm.SaveWork;
var
  noFlag: Boolean;

  procedure AddWork;
  var
    ASQL: string;
    Q: TFibQuery;
  begin
    ASQL:= 'insert into WORKSPECLIST (CODE, DATA, KONTRAGENT, SERVISWORK, HOUSE, PRICE, NOTE, QUANTITY)'+#10#13+
           ' values (:CODE, :DATA, :KONTRAGENT, :SERVISWORK, :HOUSE, :PRICE, :NOTE, :QUANTITY)'+#10#13+
           ' returning CODE';
    fWorkSpecList.Data:= dt1.EditValue;
    with fWorkSpecList do begin
      Data:= dt1.EditValue;
      Kontragent:= ActiveKontragent;
      ServisWork:= cbb_work.EditValue;
      House:= md_HouseByDog.FieldByName('HOUSE').AsVariant;
      if curEd_wprice.EditValue = null then curEd_wprice.EditValue:=0;
      Price:= curEd_wprice.EditValue;
      Quantity:= spn_col.EditValue;
      Note:= mmo1.EditingValue;
      Code:= Save(ASQL);
    end;
    //fWorkCode:= cmDb.DB.QueryValue('select gen_id(workspeclist_gen, 1) from rdb$database',0);

    {Q:= GetQueryForUse(cmDb.WT, ASQL);
    Q.Options:= [qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('CODE').AsVariant:= fWorkCode;
      Q.ParamByName('DATA').AsVariant:= dt1.EditValue;
      Q.ParamByName('KONTRAGENT').AsVariant:= ActiveKontragent;
      Q.ParamByName('SERVISWORK').AsVariant:= cbb_work.EditValue;
      Q.ParamByName('HOUSE').AsVariant:= md_HouseByDog.FieldByName('HOUSE').AsVariant;
      if curEd_wprice.EditValue = null then curEd_wprice.EditValue:=0;
      Q.ParamByName('PRICE').AsVariant:= curEd_wprice.EditValue;
      Q.ParamByName('QUANTITY').AsVariant:= spn_col.EditValue;
      Q.ParamByName('NOTE').AsVariant:= mmo1.EditingValue;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;}

    {with ds do begin
      Insert;
      FieldByName('DATA').AsVariant := dt1.EditValue;
      FieldByName('KONTRAGENT').AsVariant := ActiveKontragent;
      FieldByName('SERVISWORK').AsVariant := cbb_work.EditValue;
      FieldByName('HOUSE').AsVariant:= md_HouseByDog.FieldByName('HOUSE').AsVariant;
      if curEd_wprice.EditValue = null then
      FieldByName('PRICE').AsVariant := 0 else
      FieldByName('PRICE').AsVariant := curEd_wprice.EditValue;
      //Q.ParamByName('WORKLIST').AsVariant:= md_HouseByDog.FieldByName('CODE').AsVariant;
      FieldByName('QUANTITY').AsVariant := spn_col.EditValue;
      FieldByName('NOTE').AsVariant:= mmo1.EditingValue;

      ds.Post;
    end;}
    noFlag:= False;
  end;

  procedure EditWork;
  var
    ASQL: string;
    Q: TFibQuery;
  begin
    with fWorkSpecList do begin
      Data:= dt1.EditValue;
      ServisWork:= cbb_work.EditValue;
      if curEd_wprice.EditValue = null then curEd_wprice.EditValue:=0;
      Price:= curEd_wprice.EditValue;
      Quantity:= spn_col.EditValue;
      Note:= mmo1.EditingValue;
      Save;
    end;
    {if VarIsType(fWorkCode,[varNull, varEmpty]) then
      raise dezException.Create('Не определен код работы для редактирования!'+#10#13+'TOrderWorkEditForm.SaveWork');

    ASQL:='update WORKSPECLIST'+#10#13+
          'set DATA = :DATA, SERVISWORK = :SERVISWORK, PRICE = :PRICE, NOTE = :NOTE, QUANTITY = :QUANTITY'+#10#13+
          'where (CODE = :CODE)';
    Q:= GetQueryForUse(cmDb.WT, ASQL);
    Q.Options:= [qoStartTransaction, qoAutoCommit];
    try
      Q.ParamByName('CODE').AsVariant:= fWorkCode;
      Q.ParamByName('DATA').AsVariant:= dt1.EditValue;
      Q.ParamByName('SERVISWORK').AsVariant:= cbb_work.EditValue;
      if curEd_wprice.EditValue = null then curEd_wprice.EditValue:=0;
      Q.ParamByName('PRICE').AsVariant:= curEd_wprice.EditValue;
      Q.ParamByName('QUANTITY').AsVariant:= spn_col.EditValue;
      Q.ParamByName('NOTE').AsVariant:= mmo1.EditingValue;
      Q.ExecQuery;
    finally
      FreeQueryForUse(Q);
    end;}

    {with ds do begin
      Edit;
      FieldByName('DATA').AsVariant := dt1.EditValue;
      //FieldByName('KONTRAGENT').AsVariant := ActiveKontragent;
      FieldByName('SERVISWORK').AsVariant := cbb_work.EditValue;
      //FieldByName('HOUSE').AsVariant:= md_HouseByDog.FieldByName('HOUSE').AsVariant;
      if curEd_wprice.EditValue = null then
      FieldByName('PRICE').AsVariant := 0 else
      FieldByName('PRICE').AsVariant := curEd_wprice.EditValue;
      FieldByName('QUANTITY').AsVariant := spn_col.EditValue;
      FieldByName('NOTE').AsVariant:= mmo1.EditingValue;
      ds.Post;
    end;}
    noFlag:= False;
  end;

begin
  noFlag:= True;
  if isEditing then
  EditWork else
  with md_HouseByDog do begin
    DisableControls;
    try
      First;
      while not Eof do begin
        if FieldByName('FLAG').AsVariant = 1 then begin
          AddWork;
          Edit;
          FieldByName('FLAG').AsVariant:= 0;
          Post;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
  if noFlag then
    raise dezException.Create('Не выбран ни один адрес!');
end;

procedure TOrderWorkEditForm.SetEditMode;
begin
  DockPanel2.Visible:= False;
  Self.Width := 305;
  Self.BorderStyle := bsDialog;
  FillControls;
end;

initialization
 RegisterClass(TOrderWorkEditForm);
end.
