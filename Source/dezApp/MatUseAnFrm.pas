unit MatUseAnFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, MaterialUse,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  Menus, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset,
  dxLayoutControlAdapters, dxLayoutContainer, dxSkinDevExpressStyle;

type
  TMatUseAnForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    gr1: TdxLayoutGroup;
    gr2: TdxLayoutGroup;
    btn_Exec: TcxButton;
    itm_exec: TdxLayoutItem;
    m1: TdxMemData;
    src_m1: TDataSource;
    clv1Column1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_ExecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatUseAnForm: TMatUseAnForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TMatUseAnForm.btn_ExecClick(Sender: TObject);
var
  Obj :TMatUse;
  i :integer;
begin
  Obj:=TMatUse.Create;
  try
    with Obj do begin
      D1:=StrToDate('01.05.2011');
      D2:=Date;
      MaterialCodList:= '831,839,842';
      ClearField(m1);
      //QType:=byMat;
      GetUseMat(m1,byMat);
      v1.BeginUpdate;
      v1.ClearItems;
      v1.DataController.CreateAllItems();

      for i:=0 to v1.ColumnCount -1 do
      if v1.Columns[i].Caption='inv' then
      v1.Columns[i].Visible:=false;
      v1.Columns[0].Options.CellMerging:=true;
      v1.Columns[1].Options.CellMerging:=true;
      v1.EndUpdate;
      v1.ApplyBestFit();
    end;
  finally
    Obj.Free;
  end;
end;

procedure TMatUseAnForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TMatUseAnForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;


 initialization
 RegisterClass(TMatUseAnForm);
end.
