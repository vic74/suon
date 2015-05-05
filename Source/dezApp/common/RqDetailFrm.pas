unit RqDetailFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMemo, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxSpinEdit, cxTimeEdit,
  cxMaskEdit, cxCalendar, cxGridLevel, cxClasses, cxGridCustomView,
  System.DateUtils, FibQuery, pFIBCacheQueries, pFIBProps,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  dxLayoutControl, cxPropertiesStore, dxLayoutControlAdapters, Vcl.Menus,
  FIBDataSet, pFIBDataSet, Vcl.StdCtrls, cxButtons, cxCurrencyEdit, dxmdaset,
  cxCalc, cxLabel, dxSpellChecker, dxHunspellDictionary, dxSkinOffice2010Blue;

type
  TRQState = (rqNew, rqEdit); //новая заявка(работа)| редактируемая

  TRqDetailForm = class(TForm)
    lgrp1: TdxLayoutGroup;
    LControl1: TdxLayoutControl;
    lgrpLControl1Group1: TdxLayoutGroup;
    lgrpLControl1Group2: TdxLayoutGroup;
    splLControl1SplitterItem1: TdxLayoutSplitterItem;
    BarManager1: TdxBarManager;
    doc1: TdxBarDockControl;
    LItemLControl1Item1: TdxLayoutItem;
    br1: TdxBar;
    btn_Exec: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItemLControl1Item11: TdxLayoutItem;
    dt1: TcxDateEdit;
    LItemLControl1Item12: TdxLayoutItem;
    tm1: TcxTimeEdit;
    LItemLControl1Item13: TdxLayoutItem;
    lgrpLControl1Group3: TdxLayoutGroup;
    chk_ABC: TcxCheckBox;
    LItemLControl1Item14: TdxLayoutItem;
    cbb_Kontr: TcxLookupComboBox;
    LItemLControl1Item15: TdxLayoutItem;
    cbb_User: TcxLookupComboBox;
    LItemLControl1Item16: TdxLayoutItem;
    txt_Phone: TcxTextEdit;
    LItemLControl1Item17: TdxLayoutItem;
    lgrpLControl1Group4: TdxLayoutGroup;
    lgrpLControl1Group5: TdxLayoutGroup;
    lgrpLControl1Group6: TdxLayoutGroup;
    lgrpLControl1Group7: TdxLayoutGroup;
    mmo_Note: TcxMemo;
    LItemLControl1Item19: TdxLayoutItem;
    lgrpLControl1Group8: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    LItemLControl1Item110: TdxLayoutItem;
    doc2: TdxBarDockControl;
    LItemLControl1Item111: TdxLayoutItem;
    br2: TdxBar;
    btn_Add: TdxBarButton;
    btn_Del: TdxBarButton;
    clv1ID: TcxGridDBColumn;
    clv1Data: TcxGridDBColumn;
    clv1Status: TcxGridDBColumn;
    clv1StatusName: TcxGridDBColumn;
    clv1USR: TcxGridDBColumn;
    clv1USERNAME: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    src_Detail: TDataSource;
    prop1: TcxPropertiesStore;
    lgrpLControl1Group9: TdxLayoutGroup;
    lgrpLControl1Group10: TdxLayoutGroup;
    cbb_mat: TcxLookupComboBox;
    LItemLControl1Item112: TdxLayoutItem;
    spn_Kol: TcxSpinEdit;
    LItemLControl1Item113: TdxLayoutItem;
    txt_ed: TcxTextEdit;
    LItemLControl1Item114: TdxLayoutItem;
    lgrpLControl1Group11: TdxLayoutGroup;
    LItemLControl1Item3: TdxLayoutItem;
    mmo_note1: TcxMemo;
    btn_mat: TcxButton;
    LItemLControl1Item4: TdxLayoutItem;
    lgrpLControl1Group12: TdxLayoutGroup;
    doc3: TdxBarDockControl;
    LItemLControl1Item115: TdxLayoutItem;
    br3: TdxBar;
    btn_SaveMat: TdxBarButton;
    btn_CancelMat: TdxBarButton;
    src_smat: TDataSource;
    ds_CLASSMAT: TpFIBDataSet;
    md_mat: TdxMemData;
    src_mat: TDataSource;
    LItemLControl1Item5: TdxLayoutItem;
    src_serviswork: TDataSource;
    ds_serviswork: TpFIBDataSet;
    cbb_work: TcxLookupComboBox;
    LItemLControl1Item6: TdxLayoutItem;
    btn_w: TcxButton;
    LItemLControl1Item7: TdxLayoutItem;
    spn_col: TcxSpinEdit;
    LItemLControl1Item8: TdxLayoutItem;
    txt_wed: TcxTextEdit;
    lgrpLControl1Group17: TdxLayoutGroup;
    lgrpLControl1Group14: TdxLayoutGroup;
    lgrpLControl1Group13: TdxLayoutGroup;
    clv2WORKSPECLIST: TcxGridDBColumn;
    clv2DATA: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2SERVISWORK: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2CLASSMAT: TcxGridDBColumn;
    clv2FULLNAME: TcxGridDBColumn;
    clv2QUANTITY: TcxGridDBColumn;
    clv2PRICE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    cedt_price: TcxCalcEdit;
    LItemLControl1Item18: TdxLayoutItem;
    ced_wprice: TcxCalcEdit;
    LItemLControl1Item116: TdxLayoutItem;
    md_detail: TdxMemData;
    chk_AddWork: TcxCheckBox;
    LItemLControl1Item117: TdxLayoutItem;
    lgrpLControl1Group15: TdxLayoutGroup;
    ds_WorkSpecList: TpFIBDataSet;
    ds_WorkSpecMaterial: TpFIBDataSet;
    lbl1: TcxLabel;
    LItemLControl1Item118: TdxLayoutItem;
    SpellChecker1: TdxSpellChecker;
    pm1: TPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure v1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_matClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_CancelMatClick(Sender: TObject);
    procedure btn_SaveMatClick(Sender: TObject);
    procedure btn_wClick(Sender: TObject);
    procedure md_matAfterPost(DataSet: TDataSet);
    procedure md_matAfterDelete(DataSet: TDataSet);
    procedure btn_DelClick(Sender: TObject);
    procedure cbb_workPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_workPropertiesChange(Sender: TObject);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_matPropertiesChange(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
    procedure cedt_pricePropertiesChange(Sender: TObject);
    procedure mmo_NotePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FreeComp: Boolean;
    function GetEd(Cod :Variant) :string;
    procedure GetPrice;
    procedure CreateMem;
    function CheckParam :boolean;
    function CheckWorkParam :Boolean;
    function CheckPeriodWork(d1,d2 :Variant) :boolean;
    procedure OpenRQ;
    procedure PrepareDS;
    procedure AddWork;
    procedure AddMaterial;
    procedure GetSuonData;
    procedure OpenSuonData;
    procedure FillControls;
    procedure CreateComponents;
    procedure FreeComponents;
    procedure LoadDictionary;
    procedure PrepareFormByRq;
  public
    { Public declarations }
    isOpenFromRq: Boolean; //открыта из заявки
    RqState: TRQState;     //статус заявки
    fWorkSpecList, fKontragent, fServisWork, fHouse, fAddr: Variant;
    fData, fWorkList: Variant;
    ID, fWorkCode, SuonID: Variant;
    ds_WSL: TpFIBDataSet; //работы
    ds_WSM: TpFIBDataSet; //материалы
  end;

var
  RqDetailForm: TRqDetailForm;

implementation

{$R *.dfm}

uses common, AppUtils, cmDBUnit, MatClassFrm, CommonDm, KServisWorkFrm;

procedure TRqDetailForm.AddMaterial;
begin
  with md_mat do
  begin
      Append;
      FN('WORKSPECLIST').AsVariant := fWorkCode;
      FN('DATA').AsVariant := Date;
      FN('KONTRAGENT').AsVariant := fKontragent;
      FN('SERVISWORK').AsVariant := cbb_work.EditValue;
      FN('HOUSE').AsVariant := fHouse;
      //FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
      FN('FULLNAME').AsVariant:= cbb_mat.Text;
      FN('CLASSMAT').AsVariant:= cbb_mat.EditingValue;
      FN('QUANTITY').AsVariant := spn_kol.EditingValue;
      if cedt_price.EditingValue = null then
      FN('PRICE').AsVariant := 0 else
      FN('PRICE').AsVariant := cedt_price.EditingValue;
      FN('NOTE').AsVariant := mmo_note1.EditValue;
      Post;
  end;
  lgrpLControl1Group9.ItemIndex:=0;
end;

procedure TRqDetailForm.AddWork;

  procedure ClearMaterial;
  var
    Q: TFIBQuery;
  begin
    Q:= GetQueryForUse(cmDb.WT,'delete from WORKSPECMATERIAL where (WORKSPECLIST = :CODE)');
    Q.Options:= [qoAutoCommit, qoStartTransaction];
    try
      Q.ParamByName('CODE').AsVariant:= SuonID;
      Q.ExecQuery;
      ds_WSM.CloseOpen(True);
    finally
      FreeQueryForUse(Q);
    end;
  end;

begin
   if not CheckWorkParam then Exit;
   if not CheckPeriodWork(fData,dt1.EditingValue) then
    raise EMyException.Create('Дата работы не может выходить за пределы периода наряда!');
    with ds_WSL do
    begin
      case RqState of
        rqNew: Append;
        rqEdit: Edit;
      end;

      ds_WSL.FN('DATA').AsVariant := dt1.EditValue;
      FN('KONTRAGENT').AsVariant := fKontragent;
      FN('HOUSE').AsVariant := fHouse;
      FN('SERVISWORK').AsVariant := cbb_work.EditValue;
      // FN('ED').AsVariant:=F.txt_ed.EditValue;
      FN('quantity').AsVariant := spn_col.EditValue;
      if ced_wprice.EditValue = null then
      FN('PRICE').AsVariant := 0 else
      FN('PRICE').AsVariant := ced_wprice.EditValue;
      FN('NOTE').AsVariant := mmo_Note.EditingValue;
      if src_Detail.DataSet.Locate('ID', ID,[]) then
        FN('DISP_BASE').AsVariant:= src_Detail.DataSet.FieldByName('NOTE').AsVariant;
      FN('WORKLIST').AsVariant := fWorkList;
      FN('REQUESTID').AsVariant:= ID;
      Post;
      fWorkCode:= FN('CODE').AsVariant;  //получаем код созданной работы для материалов
      CloseOpen(true);
      Last;
    end;
    //material
    md_mat.First;
    if RqState = rqEdit then
       ClearMaterial; //удаляем предыдущие материалы
       //ShowMessage(IntToStr(ds_WSM.RecordCount));
    while not md_mat.Eof do begin
      with ds_WSM do begin
        Append;
        FN('WORKSPECLIST').AsVariant := fWorkCode;
        FN('DATA').AsVariant := Date;
        FN('KONTRAGENT').AsVariant := md_mat.FieldByName('KONTRAGENT').AsVariant;
        FN('SERVISWORK').AsVariant := md_mat.FieldByName('SERVISWORK').AsVariant;
        FN('HOUSE').AsVariant := md_mat.FieldByName('HOUSE').AsVariant;
        //FN('SERVISMATERIAL').AsVariant := cbb_mat.EditValue;
        //FN('FULLNAME').AsVariant:= cbb_mat.Text;
        FN('CLASSMAT').AsVariant:= md_mat.FieldByName('CLASSMAT').AsVariant;
        FN('QUANTITY').AsVariant := md_mat.FieldByName('QUANTITY').AsVariant;
        FN('PRICE').AsVariant := md_mat.FieldByName('PRICE').AsVariant;
        FN('NOTE').AsVariant := md_mat.FieldByName('NOTE').AsVariant;
        Post;
      end;
      md_mat.Next;
    end;
end;

procedure TRqDetailForm.btn_AddClick(Sender: TObject);
begin
  lgrpLControl1Group9.ItemIndex:=1;
end;

procedure TRqDetailForm.btn_CancelMatClick(Sender: TObject);
begin
  lgrpLControl1Group9.ItemIndex:=0;
end;

procedure TRqDetailForm.btn_DelClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Вы дествительно хотите удалить материал из списка?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2 + MB_TOPMOST)
    = IDYES then
  begin
    md_mat.Delete;
  end;
end;

procedure TRqDetailForm.btn_ExecClick(Sender: TObject);
var
  s: string;
  d: TDateTime;
begin
  AddWork;
  //AddMaterial;
  //
  if not md_mat.IsEmpty then begin
    s:= mmo_Note.Text+#13+'Материалы: '+#13;//+#10#13+
    with md_mat do begin
      First;
      while not Eof do begin
        s:=s + FN('FULLNAME').AsString+', '+#13;
        Next;
      end;
      System.Delete(s,Length(s)-2, 2);
    end;
  end else s:= mmo_Note.Text;
  //
  d:= dt1.Date+tm1.Time;
  with RQ.Comment do begin
    RequestId:= ID;
    CreatedAtUtc:= RQ.ConvertUTC(d);
    CreatedBy:= null;
    if chk_ABC.Checked then
    ABC:= 1 else
    ABC:= null;
    Status:=3; //выполнена
    if chk_AddWork.Checked then
      CommentBody:='Вид работы: '+ cbb_work.Text+'.'+#9+ s else
      CommentBody:= s;
    CreateComment;
  end;
  ModalResult:= mrOk;
end;

procedure TRqDetailForm.btn_matClick(Sender: TObject);
var
  //F :TKServisMaterialForm;
  F :TMatClassForm;
begin
  F:=TMatClassForm.CreateModal(Self,true);
  F.isReadOnly:= True;
  F.isModal:= True;
  SetSkin(F);
  if F.ShowModal=mrOk then
  begin
    if F.ifInsert then ds_CLASSMAT.CloseOpen(true);
    com_dm.ds_ServisMaterial.CloseOpen(false);
    cbb_mat.EditValue:= F.v1.GetColumnByFieldName('Code').EditValue;
  end;
end;

procedure TRqDetailForm.btn_SaveMatClick(Sender: TObject);
begin
  spn_col.PostEditValue;
  cedt_price.PostEditValue;
  if CheckParam then
  AddMaterial;
end;

procedure TRqDetailForm.btn_wClick(Sender: TObject);
var
  F : TKServisWorkForm;
begin
  F:=TKServisWorkForm.CreateModal(Self,true);
  F.FormStyle := fsStayOnTop;
  F.WindowState:=wsNormal;
  F.Position:=poMainFormCenter;
  F.Visible:=False;
  SetSkin(F);
  if F.ShowModal=mrOk then begin
    if F.ifInsert then ds_serviswork.CloseOpen(true);
    cbb_work.EditValue:=F.v2.GetColumnByFieldName('Code').EditValue;
  end;
  F.Free;
end;

procedure TRqDetailForm.cbb_matPropertiesChange(Sender: TObject);
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

procedure TRqDetailForm.cbb_matPropertiesEditValueChanged(Sender: TObject);
begin
  GetPrice;
  spn_Kol.EditValue:=1;
end;

procedure TRqDetailForm.cbb_workPropertiesChange(Sender: TObject);
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
    sText := cbb_work.Text;
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

procedure TRqDetailForm.cbb_workPropertiesEditValueChanged(Sender: TObject);
begin
  GetEd(cbb_work.EditValue);
end;

procedure TRqDetailForm.cedt_pricePropertiesChange(Sender: TObject);
begin
  //cedt_price.PostEditValue;
end;

function TRqDetailForm.CheckParam: boolean;
begin
  Result:=False;
  if (cbb_mat.EditValue=null) or (cbb_mat.EditValue=Unassigned) then
    raise EMyException.Create('Укажите материал.');
  if (spn_kol.EditingValue=null) or (spn_kol.EditingValue=Unassigned) then
    raise EMyException.Create('Укажите кол-во.');
  if not VarIsNumeric(cedt_price.EditingValue) then
  //if (cedt_price.EditValue=null) or (cedt_price.EditValue=Unassigned)  then
    raise EMyException.Create('Укажите цену.');
  Result:=True;
end;

function TRqDetailForm.CheckPeriodWork(d1, d2: Variant): boolean;
var
  nextD :TDateTime;
  M,nextM :integer;
  Y: Word;
begin
  Result:=True;
  Y:=YearOf(VarToDateTime(d1));
  M:=MonthOf(System.SysUtils.IncMonth(d1));
  if M=1 then Y:=Y+1;
  nextD:=StrToDateTime('25.'+IntToStr(M)+'.'+VarToStr(Y));
  if (d2>nextD) or (d2<d1) then Result:=false;
end;

function TRqDetailForm.CheckWorkParam: Boolean;
begin
  Result:=false;
  if dt1.EditValue=null then
    raise DezException.Create('Не указана дата работы.');
  if cbb_work.EditValue=null then
    raise DezException.Create('Не указана работа по наряду.');
  if mmo_Note.EditingValue = null then
    raise DezException.Create('Заполните коментарий!');
  Result:=True;
end;

procedure TRqDetailForm.CreateComponents;
begin

end;

procedure TRqDetailForm.CreateMem;
begin
  CreateField(md_mat,'WORKSPECLIST', ftInteger);
  CreateField(md_mat,'DATA', ftDate);
  CreateField(md_mat,'KONTRAGENT', ftInteger);
  CreateField(md_mat,'SERVISWORK', ftInteger);
  CreateField(md_mat,'HOUSE', ftInteger);
  CreateField(md_mat,'CLASSMAT', ftInteger);
  CreateField(md_mat,'FULLNAME', ftString, 256);
  CreateField(md_mat,'QUANTITY', ftBCD);
  CreateField(md_mat,'PRICE', ftBCD);
  CreateField(md_mat,'NOTE', ftString, 256);
  md_mat.Open;
end;

procedure TRqDetailForm.FillControls;
begin
  with ds_WSL do begin
    cbb_work.EditValue:= FN('SERVISWORK').AsVariant;
    ced_wprice.EditValue:= FN('PRICE').AsVariant;
    spn_col.EditValue := FN('quantity').AsVariant;
    mmo_Note.EditValue := FN('NOTE').AsVariant;
  end;
  with ds_WSM do begin
    First;
    while not Eof do begin
       md_mat.Append;
       md_mat.FN('WORKSPECLIST').AsVariant := FN('WORKSPECLIST').AsVariant;
       md_mat.FN('DATA').AsVariant := FN('DATA').AsVariant;
       md_mat.FN('KONTRAGENT').AsVariant := FN('KONTRAGENT').AsVariant;
       md_mat.FN('SERVISWORK').AsVariant := FN('SERVISWORK').AsVariant;
       md_mat.FN('HOUSE').AsVariant := FN('HOUSE').AsVariant;
       md_mat.FN('FULLNAME').AsVariant:= FN('NAME').AsVariant;
       md_mat.FN('CLASSMAT').AsVariant:= FN('CLASSMAT').AsVariant;
       md_mat.FN('QUANTITY').AsVariant := FN('QUANTITY').AsVariant;
       md_mat.FN('PRICE').AsVariant := FN('PRICE').AsVariant;
       md_mat.FN('NOTE').AsVariant := FN('NOTE').AsVariant;
       md_mat.Post;
      Next;
    end;
  end;
end;

procedure TRqDetailForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  PrepareDS;
  LoadDictionary;
  isOpenFromRq:= False;
end;

procedure TRqDetailForm.FormShow(Sender: TObject);

  procedure CheckPeriodWork;
  var
    nextD :TDateTime;
    M,nextM :integer;
    Y: Word;
  begin
    Y:=YearOf(VarToDateTime(fData));
    M:=MonthOf(System.SysUtils.IncMonth(fData));
    if M=1 then Y:=Y+1;
    nextD:=StrToDateTime('25.'+IntToStr(M)+'.'+VarToStr(Y));
    lbl1.Caption:= 'Допустимый период с '+DateToStr(fData)+' по '+DateToStr(nextD);
    //lbl1.Visible:= True;
    // перехватить exception cxDateEdit
    dt1.Properties.MinDate:= fData;
    dt1.Properties.MaxDate:= nextD;
  end;
begin
  Caption:= 'Заявка № '+ID;
  CheckPeriodWork;
  OpenRQ;
  PrepareFormByRq;
end;

procedure TRqDetailForm.FreeComponents;
begin

end;

function TRqDetailForm.GetEd(Cod: Variant): string;
var
  ED :Variant;
  Q :TFIBQuery;
begin
  ED:=null;
  try
    Q:=GetQueryForUse(cmDB.RT,'Select ED,PRICE from SERVISWORK where Code=:Cod');
    Q.ParamByName('Cod').AsVariant:=Cod;
    Q.ExecQuery;
    ED:=Q.FN('ED').AsVariant;
    txt_wed.EditValue:=Q.FN('ED').AsVariant;
    //ced_wprice.EditValue:=Q.FN('PRICE').AsVariant;
  finally
    Result:=VarToStr(ED);
    FreeQueryForUse(Q);
  end;
end;

procedure TRqDetailForm.GetPrice;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'select ED, PRICE from classmat where Code=:cod');
  try
    Q.ParamByName('Cod').AsVariant:=cbb_mat.EditValue;
    Q.ExecQuery;
    txt_ed.EditValue:=Q.FN('ED').AsVariant;
    cedt_price.EditValue:=Q.FN('PRICE').AsVariant;
    if cedt_price.EditValue = null then
       cedt_price.EditValue:= 0;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TRqDetailForm.GetSuonData;
begin
  // если работа не найдена в текущем наряде - получаем данные по работе
  if SuonID <> null then
  if not ds_WSL.Locate('CODE', SuonID,[]) then  begin
     OpenSuonData;

  end;
  FillControls;
end;

procedure TRqDetailForm.LoadDictionary;
var
  ADictionaryItem: TdxSpellCheckerDictionaryItem;
begin
  if not FileExists('config\russian-rk-ieyo.dic') then Exit;
  if not FileExists('config\russian-rk-ieyo.aff') then Exit;

  ADictionaryItem := SpellChecker1.DictionaryItems.Add;
  ADictionaryItem.DictionaryTypeClass := TdxHunspellDictionary;
  TdxHunspellDictionary(ADictionaryItem.DictionaryType).DictionaryPath := 'config\russian-aot-ieyo.dic';
  TdxHunspellDictionary(ADictionaryItem.DictionaryType).GrammarPath := 'config\russian-aot-ieyo.aff';
  SpellChecker1.LoadDictionaries;
  SpellChecker1.CheckAsYouTypeOptions.Active:= True;
end;

procedure TRqDetailForm.md_matAfterDelete(DataSet: TDataSet);
begin
  btn_Del.Enabled:= not md_mat.IsEmpty;
end;

procedure TRqDetailForm.md_matAfterPost(DataSet: TDataSet);
begin
  btn_Del.Enabled:= not md_mat.IsEmpty;
end;

procedure TRqDetailForm.mmo_NotePropertiesEditValueChanged(Sender: TObject);
begin
  //SpellChecker1.Check(mmo_Note);
end;

procedure TRqDetailForm.OpenRQ;
begin
  if not RQ.con.Connected = true then
  try
    RQ.Connect;
  except
    on E: Exception do begin
      raise dezException.Create('Не удается соедениться с сервером диспетчера!'+
      sLineBreak+'Проверте правильность ввода параметров авторизации'+sLineBreak+
      'на форме "Физические лица."');
      Exit;
    end;
  end;
  src_Detail.DataSet:= RQ.Get_Detail(ID);
  if RqState = rqNew then begin

  end else begin
    GetSuonData;
  end;
end;

procedure TRqDetailForm.OpenSuonData;
begin
  DSOptoins(ds_WorkSpecList, '', 'WORKSPECLIST', 'CODE', 'WORKSPECLIST_GEN', false);
  DSOptoins(ds_WorkSpecMaterial, '', 'WORKSPECMATERIAL', 'CODE', 'WORKSPECMATERIAL_GEN', False);
  with ds_WorkSpecList do begin
    Close;
    ParamByName('CODE').AsVariant:= SuonID;
    Open;
  end;
  with ds_WorkSpecMaterial do begin
    Close;
    ParamByName('CODE').AsVariant:= SuonID;
    Open;
  end;
  ds_WSL:= ds_WorkSpecList;     //работы
  ds_WSM:= ds_WorkSpecMaterial; //материалы
end;

procedure TRqDetailForm.PrepareDS;
begin
  CreateMem;
  ds_CLASSMAT.CloseOpen(false);
  ConfigureCombo(cbb_mat);
  ds_serviswork.CloseOpen(false);
  ConfigureCombo(cbb_work);
  //
  dt1.Date:= Date;
  tm1.Time:= Time;
end;

procedure TRqDetailForm.PrepareFormByRq;
begin
  lgrpLControl1Group5.Visible:= not isOpenFromRq;
  LItemLControl1Item1.Visible:= not isOpenFromRq;
end;

procedure TRqDetailForm.v1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);

  function ConvertHtmlHexToTColor(Color: string):TColor ;
  var
    rColor: TColor;
  begin
    if (length(color) >= 6) then
    begin
      color := '$00' + copy(color,5,2) + copy(color,3,2) + copy(color,1,2);
      rColor := StrToInt(color);
    end;
    result := rColor;
  end;

  procedure SetColor(FontColor, BrushColor: TColor);
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := BrushColor;
    ACanvas.Font.Color := FontColor;
  end;
begin
  case AViewInfo.GridRecord.Values[clv1Status.Index] of
    1 : SetColor(clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Не рассмотрена
    2 : SetColor(clBlack, ConvertHtmlHexToTColor('FFFFB3'));  //В процессе
    3 : SetColor(clBlack, ConvertHtmlHexToTColor('90EE90'));  //Выполнена
    4 : SetColor(clBlack, ConvertHtmlHexToTColor('FFB6C1'));  //Возвращена
    5 : SetColor(clWhite, clBlue);                            //Снята
    6 : SetColor(clWhite, clGreen);                           //Закрыта
    7 : SetColor(clBlack, ConvertHtmlHexToTColor('87CEEB'));  //Отложена

  end;
end;

end.
