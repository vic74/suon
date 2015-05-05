unit FactDocHistoryFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsdxBarPainter,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  Data.DB, cxDBData, FIBDataSet, pFIBDataSet, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridExportLink, ShellApi, cxExport,
  cxGrid, dxBar, cxCheckBox, cxCalc, cxCalendar, dxSkinsDefaultPainters,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle;

type
  TFactDocHistoryForm = class(TForm)
    BarManager1: TdxBarManager;
    br1: TdxBar;
    btn_Exit: TdxBarButton;
    btn_Excel: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    ds_FACTDOCHISTORY: TpFIBDataSet;
    src_FACTDOCHISTORY: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1FACTDOCCODE: TcxGridDBColumn;
    clv1M: TcxGridDBColumn;
    clv1Y: TcxGridDBColumn;
    clv1DOCTYPE: TcxGridDBColumn;
    clv1HOUSESRV: TcxGridDBColumn;
    clv1MONTHNAME: TcxGridDBColumn;
    clv1SRVNAME: TcxGridDBColumn;
    clv1OPERTYPE: TcxGridDBColumn;
    clv1PLANSUM: TcxGridDBColumn;
    clv1FACTSUM: TcxGridDBColumn;
    clv1CORRECT: TcxGridDBColumn;
    clv1LASTTIME: TcxGridDBColumn;
    clv1USERNAME: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDoc;
    procedure ExportExcel;
  public
    { Public declarations }
    fDocType: Variant;
    fDocCode: Variant;
  end;

var
  FactDocHistoryForm: TFactDocHistoryForm;

implementation

{$R *.dfm}

uses cmDBUnit;

{ TFactDocHistoryForm }

procedure TFactDocHistoryForm.btn_ExcelClick(Sender: TObject);
var
  Fname: string;
begin
  if dlgSave1.Execute then begin
    ExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd1, true, True, false,
                       '', '', '', 'xls');
    FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
    if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
      '        Открыть файл?      ', 'Внимание', MB_YESNO +
     MB_ICONQUESTION + MB_TOPMOST) = IDYES then
    begin
      ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
    end;
  end;
end;

procedure TFactDocHistoryForm.ExportExcel;
begin

end;

procedure TFactDocHistoryForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

procedure TFactDocHistoryForm.FormShow(Sender: TObject);
begin
  OpenDoc;
end;

procedure TFactDocHistoryForm.OpenDoc;
begin
  with ds_FACTDOCHISTORY do begin
    Close;
    Prepare;
    MainWhereClause:= 'FH.DOCTYPE = :DOCTYPE AND FH.FACTDOCCODE = :CODE';
    ParamByName('DOCTYPE').AsVariant:= fDocType;
    ParamByName('CODE').AsVariant:= fDocCode;
    Open;
  end;
end;

end.
