unit SIGNDogEditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDevExpressStyle,
  dxSkinOffice2010Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, dxLayoutContainer,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  TSIGNDogEditForm = class(TForm)
    lafLSkin1: TdxLayoutLookAndFeelList;
    llafLCxSkin1: TdxLayoutCxLookAndFeel;
    lGrp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    litm_lc1Item1: TdxLayoutItem;
    clv1ID: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    lGrplc1Group1: TdxLayoutGroup;
    lGrplc1Group2: TdxLayoutGroup;
    btn_Ok: TcxButton;
    litm_lc1Item11: TdxLayoutItem;
    btn_Cancel: TcxButton;
    litm_lc1Item12: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  SIGNDogEditForm: TSIGNDogEditForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils, dezCommon;

{ TSIGNDogEditForm }

procedure TSIGNDogEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if v1.DataController.IsEditing then
     v1.DataController.Post(true);
end;

procedure TSIGNDogEditForm.FormCreate(Sender: TObject);
begin
  OpenDS;
end;

procedure TSIGNDogEditForm.OpenDS;
begin
  DSOptoins(cmDb.ds_SIGNDOG,'','SIGNDOG','ID','SIGNDOG_GEN',true);
end;

end.
