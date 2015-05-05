unit KServisworkLookFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinDevExpressStyle, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxImageComboBox, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxRichEdit, Vcl.ComCtrls;

type
  TKServisworkLookForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    lGrplc1Group3: TdxLayoutGroup;
    clv1CODE: TcxGridDBColumn;
    clv1GROOP: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1CASH: TcxGridDBColumn;
    clv1ED: TcxGridDBColumn;
    clv1PRICE: TcxGridDBColumn;
    bnt_Search: TcxButtonEdit;
    litm_lc1Item11: TdxLayoutItem;
    btn_Ok: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item13: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure bnt_SearchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bnt_SearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Highlight;
  private
    { Private declarations }
    procedure CreateFilter(s: string);
  public
    { Public declarations }
  end;

var
  KServisworkLookForm: TKServisworkLookForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TKServisworkLookForm.bnt_SearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    CreateFilter(bnt_Search.Text);
end;

procedure TKServisworkLookForm.bnt_SearchPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: CreateFilter(bnt_Search.Text);
    1: begin
         v1.DataController.Filter.Root.Clear;
         bnt_Search.Clear;
       end;
  end;
end;

procedure TKServisworkLookForm.CreateFilter(s: string);
begin
  with v1.DataController.Filter do begin
    BeginUpdate;
    try
      Root.Clear;
      Root.AddItem(clv1NAME, foLike, '%'+s+'%', '%'+s+'%');
      Active:= True;
    finally
      EndUpdate;
    end;
  end;
end;

procedure TKServisworkLookForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  if (cmDb.ds_SERVISWORK.State in [dsInactive]) then
    cmDb.ds_SERVISWORK.Open;
end;

procedure TKServisworkLookForm.Highlight;
var
  I, FoundPos, StartPosition: integer;
  AColumn : TcxGridDBColumn;
  ATextToFind : String;
  AEdit : TcxRichEdit;
  AFind : Boolean;
begin
  grd1.SetFocus;
  ATextToFind := bnt_Search.Text;
  with v1 do
  begin
    AColumn := GetColumnByFieldName('NAME');
    for I := 0 to ViewData.RecordCount - 1 do
      if ViewData.Rows[I].IsData then
      begin
        ViewData.Rows[I].Focused := True;
        with Controller.EditingController do
        begin
          ShowEdit(AColumn);
          AEdit := TcxRichEdit(Edit);
          StartPosition := 0;
          AFind := True;
          while AFind do
          begin
            FoundPos := AEdit.FindText(ATextToFind, StartPosition, Length(AEdit.Text), [stWholeWord]);
            if (FoundPos >= 0) then
            begin
              AEdit.SelStart := FoundPos;
              AEdit.SelLength := Length( ATextToFind);
              AEdit.SelAttributes.Color:=clGreen;
              AEdit.SelLength:=0;
              StartPosition := FoundPos + 1;
            end
            else
              AFind := False;
          end;
        end;
      end;
   end;
  bnt_Search.SetFocus;
end;

procedure TKServisworkLookForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult:= mrOk;
end;

initialization
 RegisterClass(TKServisworkLookForm);
end.
