unit FinPlanSpecEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TFinPlanSpecEditForm = class(TForm)
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lGrplc1Group1: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litmlc1Item1: TdxLayoutItem;
    lGrplc1Group2: TdxLayoutGroup;
    ds_FINPLANSTATE: TpFIBDataSet;
    src_FINPLANSTATE: TDataSource;
    clCODE: TcxGridDBColumn;
    clNAME: TcxGridDBColumn;
    bnt_Edit: TcxButtonEdit;
    litmlc1Item13: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure bnt_EditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure clNAMEPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
    procedure InsertState;
    procedure DeleteState;
  public
    { Public declarations }
  end;

var
  FinPlanSpecEditForm: TFinPlanSpecEditForm;

implementation

{$R *.dfm}

uses AppUtils, cmDBUnit;

procedure TFinPlanSpecEditForm.bnt_EditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: InsertState;
    1: DeleteState;
  end;
end;

procedure TFinPlanSpecEditForm.clNAMEPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post(true);
end;

procedure TFinPlanSpecEditForm.DeleteState;
begin
  if Application.MessageBox('Вы действительно хотите удалить статью?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    try
      v1.DataController.DeleteFocused;
    except on e: Exception do
      begin
        v1.DataController.Cancel;
        dezException.Create(e.Message);
      end;
    end;

  end;
end;

procedure TFinPlanSpecEditForm.FormCreate(Sender: TObject);
begin
  OpenDS;
end;

procedure TFinPlanSpecEditForm.InsertState;
begin
  if Trim(bnt_Edit.EditingValue) = '' then
     dezException.Create('Введите наименование статьи расхода!');
  with ds_FINPLANSTATE do begin
    Append;
    FN('NAME').AsVariant:= Trim(bnt_Edit.EditingValue);
    Post;
  end;
  bnt_Edit.Clear;
end;

procedure TFinPlanSpecEditForm.OpenDS;
begin
  DSOptoins(ds_FINPLANSTATE,'','FINPLANSTATE','CODE','FINPLANSTATE_GEN');
end;

end.
