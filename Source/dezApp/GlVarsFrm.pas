unit GlVarsFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  dxRibbonForm,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsdxRibbonPainter, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutControl, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxRibbon,
  dxmdaset, PlanShablon, AppUtils, dxLayoutLookAndFeels, Menus, StdCtrls,
  cxButtons, dxRibbonSkins, dxLayoutContainer, dxLayoutControlAdapters,
  dxSkinDevExpressStyle;

type
  TGlVarsForm = class(Tdxcustomribbonform)
    Ribbon1Tab1: TdxRibbonTab;
    Ribbon1: TdxRibbon;
    grp_root: TdxLayoutGroup;
    lcntr1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    Item_grd1: TdxLayoutItem;
    mt1: TdxMemData;
    src1: TDataSource;
    clv1Id: TcxGridDBColumn;
    clv1Caption: TcxGridDBColumn;
    clv1Value: TcxGridDBColumn;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    btn_Ok: TcxButton;
    Itmlcntr1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    fGlobalVars : TdezGlobalVars;
    procedure SetGlobalVars(const Value: TdezGlobalVars);
    procedure CreateMem;
    procedure GetVars;
  public
    property GlobalVars : TdezGlobalVars read fGlobalVars write SetGlobalVars;

  end;

var
  GlVarsForm: TGlVarsForm;

implementation

{$R *.dfm}

procedure TGlVarsForm.FormCreate(Sender: TObject);
begin
  CreateMem;
end;

procedure TGlVarsForm.GetVars;
var
  i :Integer;
begin
  //GlobalVars.LoadFromBase;
  mt1.Close;
  mt1.Open;
  for I := 0 to GlobalVars.Count - 1 do
  begin
    with mt1 do
    begin
      Append;
      FieldByName('Id').AsInteger:=StrToInt(GlobalVars.DVar[i].Id);
      FieldByName('Caption').AsString:=GlobalVars.DVar[i].Caption;
      FieldByName('Value').AsFloat:=GlobalVars.DVar[i].Value;
      Post;
    end;
  end;
  v1.ApplyBestFit();
end;

procedure TGlVarsForm.SetGlobalVars(const Value: TdezGlobalVars);
begin
  fGlobalVars := Value;
  GetVars;
end;
{-------------------------------------------------------------------------------
TGlVarsForm.btn_OkClick|Устанавливаем значения
-------------------------------------------------------------------------------}
procedure TGlVarsForm.btn_OkClick(Sender: TObject);
begin
  with mt1 do
  begin
    DisableControls;
    First;
    while not EOF do
    begin
      GlobalVars.ByName[FieldByName('Id').AsString]:=
                                                   FieldByName('Value').AsFloat;
      Next;
    end;
    EnableControls;
  end;
  ModalResult:=mrOk;
end;

procedure TGlVarsForm.CreateMem;
begin
  with mt1.FieldDefs do
  begin
    CreateField(mt1,'Id',ftInteger);
    CreateField(mt1,'Caption',ftString,128);
    CreateField(mt1,'Value',ftFloat);
  end;
  mt1.Open;
end;

initialization

  RegisterClass(TGlVarsForm);

end.
