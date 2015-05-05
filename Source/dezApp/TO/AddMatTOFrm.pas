unit AddMatTOFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  DB, WorkListTO_partial,
  cxFilter,
  dxSkinDevExpressStyle, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxSpinEdit, WorkSpecMaterial;

type
  TAddMatTOForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    litm_lc1Item1: TdxLayoutItem;
    cbb_mat: TcxLookupComboBox;
    ds_CLASSMAT: TpFIBDataSet;
    src_smat: TDataSource;
    sp_Quantity: TcxSpinEdit;
    litm_lc1Item2: TdxLayoutItem;
    sp_Price: TcxSpinEdit;
    litm_lc1Item3: TdxLayoutItem;
    txt_ED: TcxTextEdit;
    litm_lc1Item4: TdxLayoutItem;
    txt_Note: TcxTextEdit;
    litm_lc1Item5: TdxLayoutItem;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    btn_Save: TcxButton;
    litm_lc1Item11: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SaveClick(Sender: TObject);
    procedure cbb_matPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_matPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    ds: TDataSet;
    work: Variant;
    isEditing: Boolean;
    WorkList: TWorkList;
    procedure prepareDS;
    procedure FillControls;
    procedure AddMaterial;
    procedure EditMaterial;
    procedure CustomizeMatCombo(cbb: TcxLookupCombobox);
    procedure LookupMatButtonClick(Sender: TObject; AButtonIndex: Integer);
  public
    { Public declarations }
    fWMaterial: TWorkSpecMaterial;
    constructor Create(AOwner: TComponent; fwsm: TWorkSpecMaterial; isEdit: Boolean = false);
  end;

var
  AddMatTOForm: TAddMatTOForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TAddMatTOForm.EditMaterial;
var
  ASQL: string;

  procedure CheckParams;
  begin
    if VarIsType(cbb_mat.EditValue,[varNull, varEmpty]) then
       raise dezException.Create('Не выбран материал!');
  end;
begin
  CheckParams;
  ASQL:= 'update WORKSPECMATERIAL'+#10#13+
         'set WORKSPECLIST = :WORKSPECLIST, QUANTITY = :QUANTITY, PRICE = :PRICE,'+#10#13+
         '    NOTE = :NOTE, CLASSMAT = :CLASSMAT'+#10#13+
         ' where (CODE = :CODE)';
  with fWMaterial do begin
    Classmat:= cbb_mat.EditValue;
    if VarIsType(sp_Quantity.EditValue,[varNull, varEmpty]) then
     sp_Quantity.EditValue:= 0;
    Quantity:= sp_Quantity.EditValue;
    if VarIsType(sp_price.EditValue,[varNull, varEmpty]) then
      sp_price.EditValue:= 0;
    Price:= sp_price.EditValue;
    Note:= txt_Note.EditValue;
    Save(ASQL, -1);
  end;
  ModalResult:= mrOk;
end;

procedure TAddMatTOForm.btn_SaveClick(Sender: TObject);
begin
  if isEditing then
    EditMaterial else
    AddMaterial;
end;

procedure TAddMatTOForm.cbb_matPropertiesChange(Sender: TObject);
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

procedure TAddMatTOForm.cbb_matPropertiesEditValueChanged(Sender: TObject);
begin
  with TcxLookupComboBoxProperties(cbb_mat.Properties).Grid.DataController do
  begin
    sp_Price.EditValue := Values[FocusedRecordIndex, 2];
    txt_ED.EditValue := Values[FocusedRecordIndex, 1];
  end;
end;

constructor TAddMatTOForm.Create(AOwner: TComponent; fwsm: TWorkSpecMaterial; isEdit: Boolean);
begin
  inherited Create(AOwner);
  WorkList:= TWorkList.Create;
  fWMaterial:= fwsm;
  isEditing:= isEdit;
  //
  prepareDS;
  CustomizeMatCombo(cbb_mat);
  FillControls;
end;

procedure TAddMatTOForm.CustomizeMatCombo(cbb: TcxLookupCombobox);
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
    OnButtonClick := LookupMatButtonClick;
  end;
  with TcxLookupComboBoxProperties(cbb.Properties) do
  begin
    AButton := Buttons.Add;
    AButton.Kind := bkGlyph;
    AButton.Caption := '+';
    AButton.ImageIndex :=31;
    AButton.Hint:='Выбрать из справочника';
    OnButtonClick := LookupMatButtonClick;
  end;
end;

procedure TAddMatTOForm.FillControls;
begin
  with fWMaterial do begin
    cbb_mat.EditValue:= Classmat;
    sp_Quantity.EditValue:= Quantity;
    sp_Price.EditValue:= Price;
    txt_Note.EditValue:= Note;
  end;
end;

procedure TAddMatTOForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(WorkList) then FreeAndNil(WorkList);
  //Action:= caFree;
end;

procedure TAddMatTOForm.LookupMatButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  mat: Variant;
begin
    case AButtonIndex of
      1: with TcxLookupComboBox(Sender) do
         begin
           EditValue := null;
           PostEditValue;
         end;
      2: with TcxLookupComboBox(Sender) do
         begin
           mat:= WorkList.GetMatCodeBySpr;
           if mat<> null then begin
             EditValue := mat;
             PostEditValue;
           end;
         end;
    end;
end;

procedure TAddMatTOForm.prepareDS;
begin
  if cmDb.ds_ClassMat.State in [dsInactive] then
     cmDb.ds_ClassMat.Open;
  AppUtils.ConfigureCombo(cbb_mat);
end;

procedure TAddMatTOForm.AddMaterial;
var
  ASQL: string;

  procedure CheckParams;
  begin
    if VarIsType(cbb_mat.EditValue,[varNull, varEmpty]) then
       raise dezException.Create('Не выбран материал!');
  end;
begin
  CheckParams;
  ASQL:= 'insert into WORKSPECMATERIAL (WORKSPECLIST, QUANTITY, PRICE, NOTE, CLASSMAT)'+#10#13+
         'values (:WORKSPECLIST,:QUANTITY, :PRICE, :NOTE, :CLASSMAT)'+#10#13+
         'returning CODE';
  with fWMaterial do begin
    Classmat:= cbb_mat.EditValue;
    if VarIsType(sp_Quantity.EditValue,[varNull, varEmpty]) then
     sp_Quantity.EditValue:= 0;
    Quantity:= sp_Quantity.EditValue;
    if VarIsType(sp_price.EditValue,[varNull, varEmpty]) then
      sp_price.EditValue:= 0;
    Price:= sp_price.EditValue;
    Note:= txt_Note.EditValue;
    Code:= Save(ASQL);
  end;

  {with ds do begin
    if not isEditing then
      FieldByName('WORKSPECLIST').AsVariant:= work;
      FieldByName('CLASSMAT').AsVariant := cbb_mat.EditValue;
      if VarIsType(sp_Quantity.EditValue,[varNull, varEmpty]) then
        FieldByName('QUANTITY').AsVariant := 0 else
        FieldByName('QUANTITY').AsVariant := sp_Quantity.EditValue;
      if VarIsType(sp_price.EditValue,[varNull, varEmpty]) then
        FieldByName('PRICE').AsVariant := 0 else
        FieldByName('PRICE').AsVariant := sp_price.EditValue;
      FieldByName('NOTE').AsVariant := txt_Note.EditValue;
    Post;
  end;}
  ModalResult:= mrOk;
end;

initialization
 RegisterClass(TAddMatTOForm);
end.
