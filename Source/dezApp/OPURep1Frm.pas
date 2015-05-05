unit OPURep1Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinsdxBarPainter, cxCalendar, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridLevel, cxClasses, ShellApi,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxBar, cxBarEditItem, FIBDataSet, pFIBDataSet, EXLReportExcelTLB,
  cxExport,
  EXLReportBand, EXLReport, dxSkinsDefaultPainters, dxSkinDevExpressStyle,
  cxNavigator, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TOPURep1Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    BarManager1: TdxBarManager;
    br1: TdxBar;
    bItm1: TcxBarEditItem;
    bItm2: TcxBarEditItem;
    btn_Exec: TdxBarButton;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    LItem1: TdxLayoutItem;
    fds_PROVERKA: TpFIBDataSet;
    src_PROVERKA: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1OHCODE: TcxGridDBColumn;
    clv1OHNAME: TcxGridDBColumn;
    clv1OTNAME: TcxGridDBColumn;
    clv1OMCODE: TcxGridDBColumn;
    clv1OMNAME: TcxGridDBColumn;
    clv1OENOMER: TcxGridDBColumn;
    clv1OUTDATE: TcxGridDBColumn;
    clv1INDATE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1OKNAME: TcxGridDBColumn;
    clv1GARANTDATE: TcxGridDBColumn;
    clv1ELEMENT: TcxGridDBColumn;
    xls1: TEXLReport;
    btn_Export: TdxBarButton;
    dlgSave1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ExecClick(Sender: TObject);
    procedure btn_ExportClick(Sender: TObject);
  private
    { Private declarations }
    procedure MakeData;
    procedure ExportInExcel;
  public
    { Public declarations }
  end;

var
  OPURep1Form: TOPURep1Form;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TOPURep1Form.btn_ExecClick(Sender: TObject);
begin
  MakeData;
end;

procedure TOPURep1Form.btn_ExportClick(Sender: TObject);
var
  Header: TStrings;
begin
  Header:= TStringList.Create;
  try
    Header.Add(Caption);
    Header.Add('Период с '+VarToStr(bItm1.EditValue)+' по '+VarToStr(bItm2.EditValue));
    AppUtils.ExportInExcel(grd1,Header);
  finally
    FreeAndNil(Header);
  end;
end;

procedure TOPURep1Form.ExportInExcel;
var
  FName: string;
  fHeader: TStrings;
begin
  fHeader:= TStringList.Create;
  try
    fHeader.Add(Caption);
    fHeader.Add('Период с '+VarToStr(bItm1.EditValue)+' по '+VarToStr(bItm2.EditValue));
    if dlgSave1.Execute then begin
        MyExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd1, true, True, false, '', '', '', 'xls', fHeader);
        FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
        if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
          '        Открыть файл?      ', 'Внимание', MB_YESNO +
          MB_ICONQUESTION + MB_TOPMOST) = IDYES then
        begin
          ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
        end;
    end;
  finally
    fHeader.Free;
  end;
end;

procedure TOPURep1Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TOPURep1Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
end;

procedure TOPURep1Form.MakeData;
begin
  with fds_PROVERKA do begin
    Close;
    ParamByName('D1').AsVariant:= bItm1.EditValue;
    ParamByName('D2').AsVariant:= bItm2.EditValue;
    Open;
    btn_Export.Enabled:= not IsEmpty;
  end;
end;

initialization
 RegisterClass(TOPURep1Form);
end.
