unit ClosePeriodFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, DateUtils, cmDBUnit, FIBQuery,
  BaseForm,
  dxSkinDevExpressStyle;

type
  TClosePeriodForm = class(TDezModalForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    Y: TcxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    M: TcxComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure SetData;
  public
    { Public declarations }
  end;

var
  ClosePeriodForm: TClosePeriodForm;

  function GetDataClosePeriod(IsYear: boolean): integer;
  function IsClosePeriod(aM,aY: integer): boolean; overload;
  function IsClosePeriod(aDate: TDateTime): boolean; overload;
  procedure ScanClosePeriod(aM,aY: integer); overload;
  procedure ScanClosePeriod(aDate: TDateTime); overload;

implementation

uses
  MainFrm;

{$R *.dfm}

function GetDataClosePeriod_(IsYear: boolean): integer;
var
  Q: TFIBQuery;
  S: string;
begin
  Result:=0;
  if IsYear then S:='Y' else S:='M';
  Q:=cmDB.GetQuery('select gen_id(Close'+S+'_gen,0) V FROM RDB$DataBase', cmDB.RT);
  try
    Q.ExecQuery;
    if not Q.Eof then
      Result:=Q.FN('V').AsInteger;
  finally
    cmDB.FreeQuery(Q);
  end;
end;

function GetDataClosePeriod(IsYear: boolean): integer;
var
  Q: TFIBQuery;
  S: string;
begin
  Result:=GetDataClosePeriod_(IsYear);
  if Result=0 then
    if IsYear then
      Result:=YearOf(Date)
    else
      Result:=DateUtils.MonthOf(Date)-1;
end;

function IsClosePeriod(aM,aY: integer): boolean; overload;
var
  D1,D2: TDateTime;
begin
  Result:=false;
  D1:=EncodeDate(aY,aM,1);
  D1:=IncMonth(D1)-1;

  aY:=GetDataClosePeriod(true);
  if aY=0 then Exit;
  aM:=GetDataClosePeriod(false);

  D2:=EncodeDate(aY,aM,1);
  D2:=IncMonth(D2)-1;

  Result:=D1<=D2;
end;

function IsClosePeriod(aDate: TDateTime): boolean; overload;
var
  aY, aM: integer;
  D2: TDateTime;
begin
  Result:=false;

  aY:=GetDataClosePeriod(true);
  if aY=0 then Exit;
  aM:=GetDataClosePeriod(false);

  D2:=EncodeDate(aY,aM,1);
  D2:=IncMonth(D2)-1;

  Result:=aDate<=D2;
end;

procedure ScanClosePeriod(aM,aY: integer); overload;
begin
  if IsClosePeriod(aM, aY) then
    raise dezException.Create('Отчетный период закрыт. Операция отменена.');
end;

procedure ScanClosePeriod(aDate: TDateTime); overload;
begin
  if IsClosePeriod(aDate) then
    raise dezException.Create('Отчетный период закрыт. Операция отменена.');
end;


procedure TClosePeriodForm.cxButton1Click(Sender: TObject);
begin
  //получаем значения генераторов
  SetData;
end;

procedure TClosePeriodForm.FormCreate(Sender: TObject);
begin
  Y.Value:=GetDataClosePeriod(true);
  M.ItemIndex:=GetDataClosePeriod(false)-1;
end;

procedure TClosePeriodForm.SetData;
var
  Q: TFIBQuery;
  aY, aM: integer;
  S: string;
begin
  aY:=GetDataClosePeriod_(true);
  aM:=GetDataClosePeriod_(false);
  try
    S:='select gen_id(CloseY_gen, -'+IntToStr(aY)+
      '), gen_id(CloseM_gen, -'+IntToStr(aM)+') from rdb$DataBase';
    Q:=cmDB.GetQuery(S, cmDB.WT);
    Q.ExecQuery;
    cmDB.FreeQuery(Q);

    Q:=cmDB.GetQuery('select gen_id(CloseY_gen, '+IntToStr(Y.EditingValue)+
      '), gen_id(CloseM_gen, '+IntToStr(M.ItemIndex+1)+') from rdb$DataBase', cmDB.WT);
    Q.ExecQuery;
    cmDB.FreeQuery(Q);

    cmDB.WT.Commit;
  finally
  end;
end;

initialization
  RegisterClass(TClosePeriodForm)

end.
