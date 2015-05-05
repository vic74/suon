unit ShowR2Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  DateUtils,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, dxSkinsdxBarPainter,
  cxDBLookupComboBox, cxCalendar, DB, dxmdaset, dxBar, cxBarEditItem, cxClasses,
  FIBDataSet, pFIBDataSet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  dxLayoutContainer, dxSkinDevExpressStyle;

type
  TShowR2Form = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    brm1Bar1: TdxBar;
    itm_kontr: TcxBarEditItem;
    itm_type: TcxBarEditItem;
    itm_d1: TcxBarEditItem;
    itm_d2: TcxBarEditItem;
    btn_exec: TdxBarButton;
    btn_print: TdxBarButton;
    btn_excel: TdxBarButton;
    src_type: TDataSource;
    m_type: TdxMemData;
    mt_rep: TdxMemData;
    src_rep: TDataSource;
    ds_SHOWHOUSE: TpFIBDataSet;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm_grd1: TdxLayoutItem;
    grp_detail: TdxLayoutGroup;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itm_grd2: TdxLayoutItem;
    spl1: TdxLayoutSplitterItem;
    clv1STREET: TcxGridDBColumn;
    clv1STREETNAME: TcxGridDBColumn;
    clv1HOUSE: TcxGridDBColumn;
    clv1HOUSENOM: TcxGridDBColumn;
    clv1TP_0: TcxGridDBColumn;
    clv1TP_1: TcxGridDBColumn;
    clv1TP_2: TcxGridDBColumn;
    clv1TP_3: TcxGridDBColumn;
    ds_detail: TpFIBDataSet;
    src_detail: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2SRVDOG: TcxGridDBColumn;
    clv2DOGNOM: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KONTRNAME: TcxGridDBColumn;
    clv2SHOWDATE: TcxGridDBColumn;
    clv2STYPE: TcxGridDBColumn;
    clv2SYEAR: TcxGridDBColumn;
    clv2STATE: TcxGridDBColumn;
    clv2HOUSE: TcxGridDBColumn;
    clv2HOUSENOM: TcxGridDBColumn;
    clv2STREET: TcxGridDBColumn;
    clv2STREETNAME: TcxGridDBColumn;
    clv2PLANED: TcxGridDBColumn;
    clv2D1: TcxGridDBColumn;
    clv2D2: TcxGridDBColumn;
    clv2LOCK: TcxGridDBColumn;
    clv2LOCKDATA: TcxGridDBColumn;
    clv2SHDATE: TcxGridDBColumn;
    clv2ATYPE: TcxGridDBColumn;
    clv2ATYPENAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure itm_typePropertiesEditValueChanged(Sender: TObject);
    procedure btn_execClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure CreateMemType;
    procedure OpenDs;
    function CheckParam: Boolean;
    procedure SetDate;
    procedure MakeRep;
    procedure CreateMem;
    procedure DsOpen;
    procedure AddMemData;
    procedure GetDetail;
  public
    { Public declarations }
  end;

var
  ShowR2Form: TShowR2Form;

implementation

uses AppUtils, cmDBUnit, cmUtils, LoadingSplash;

{$R *.dfm}

procedure TShowR2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShowR2Form.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  OpenDs;
end;

procedure TShowR2Form.GetDetail;
begin
  with ds_detail do
  begin
    Close;
    if (v1.GetColumnByFieldName('HOUSE').EditValue=null) or
       (v1.GetColumnByFieldName('HOUSE').EditValue=Unassigned) then Exit;
    MainWhereClause:=' sp.d1 >= :d1 and sp.d1<=:d2 and s.stype=:tp'+
                     ' and (sp.d2 <current_date and sp.LOCK=0)'+
                     ' and sp.house=:hs';
    ParamByName('d1').AsVariant:=itm_d1.EditValue;
    ParamByName('d2').AsVariant:=itm_d2.EditValue;
    ParamByName('tp').AsVariant:=itm_type.EditValue;
    ParamByName('hs').AsVariant:=v1.GetColumnByFieldName('HOUSE').EditValue;
    Open;
  end;
end;

procedure TShowR2Form.itm_typePropertiesEditValueChanged(Sender: TObject);
begin
  SetDate;
end;

procedure TShowR2Form.OpenDs;
begin
  CreateMemType;
end;

procedure TShowR2Form.CreateMemType;
  procedure AddType(ACode: Integer; AName: string);
  begin
    with m_type do
    begin
      Append;
      FieldByName('Code').AsInteger := ACode;
      FieldByName('Name').AsString := AName;
      Post;
    end;
  end;
begin
  CreateField(m_type, 'Code', ftInteger);
  CreateField(m_type, 'Name', ftString, 128);
  m_type.Open;
  AddType(0,'весна');
  AddType(1,'осень');
end;

procedure TShowR2Form.btn_execClick(Sender: TObject);
begin
  MakeRep;
end;

function TShowR2Form.CheckParam: Boolean;
begin
  Result:=True;
  if itm_type.EditValue=null then
  begin
    ShowMessage('Не указан тип осмотра');
    Result:=False;
    Exit;
  end;
  if itm_d1.EditValue=null then
  begin
    ShowMessage('Укажите дату начала периода');
    Result:=False;
    Exit;
  end;
  if itm_d2.EditValue=null then
  begin
    ShowMessage('Укажите дату окончания периода');
    Result:=False;
    Exit;
  end;
end;

procedure TShowR2Form.SetDate;
var
  d1,d2 :Variant;
begin
  if itm_type.EditValue=null then Exit;
  case itm_type.EditValue of
    0 : begin
          d1:=String('01.01.'+VarToStr(YearOf(Date)));
          d2:=String('31.07.'+VarToStr(YearOf(Date)));
        end;
    1 : begin
          d1:=String('01.08.'+VarToStr(YearOf(Date)));
          d2:=String('31.12.'+VarToStr(YearOf(Date)));
        end;
  end;
  itm_d1.EditValue:=d1;
  itm_d2.EditValue:=d2;
end;

procedure TShowR2Form.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GetDetail;
end;

procedure TShowR2Form.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
  GetDetail;
end;

procedure TShowR2Form.MakeRep;
begin
  if not CheckParam then Exit;
  try
    SplashVisibility(True,'Дождитесь окончания операции!');
    CreateMem;
    SetCapt('Получаем данные...');
    DsOpen;
    mt_rep.DisableControls;
    SetCapt('Заполняем таблицу');
    AddMemData;
    mt_rep.EnableControls;
  finally
    SplashVisibility(false);
  end;
end;

procedure TShowR2Form.CreateMem;
begin
  mt_rep.Close;
  ClearField(mt_rep);

  CreateField(mt_rep,'STREET',ftinteger);
  CreateField(mt_rep,'STREETNAME',ftString,128);
  CreateField(mt_rep,'HOUSE',ftinteger);
  CreateField(mt_rep,'HOUSENOM',ftString,32);

  CreateField(mt_rep,'TP_0',ftinteger);
  CreateField(mt_rep,'TP_1',ftinteger);
  CreateField(mt_rep,'TP_2',ftinteger);
  CreateField(mt_rep,'TP_3',ftinteger);

  mt_rep.Open
end;

procedure TShowR2Form.DsOpen;
begin
  with ds_SHOWHOUSE do
  begin
    Close;
    MainWhereClause:=
         ' sp.d1 >= :d1 and sp.d1<=:d2 and s.stype=:tp'+
         ' and (sp.d2 <current_date and sp.LOCK=0)';

    ParamByName('d1').AsVariant:=itm_d1.EditValue;
    ParamByName('d2').AsVariant:=itm_d2.EditValue;

    ParamByName('tp').AsVariant:=itm_type.EditValue;
    OrderClause:='sp.house';
    Open;
  end;
end;

procedure TShowR2Form.AddMemData;
var
  house :Variant;
  FName :string;
  function GetName(aType :variant) :string;
  begin
    if aType<>null then
    Result:='TP_'+VarToStr(aType) else
    Result:='TP_3';
  end;
begin
  house:=null;
  with ds_SHOWHOUSE do
  begin
    while not Eof do
    begin
      if house<>FN('HOUSE').AsVariant then
      begin
        mt_rep.Append;
        mt_rep.FieldByName('STREET').AsVariant:=FN('STREET').AsVariant;
        mt_rep.FieldByName('STREETNAME').AsString:=FN('STREETNAME').AsString;
        mt_rep.FieldByName('HOUSE').AsVariant:=FN('HOUSE').AsVariant;
        mt_rep.FieldByName('HOUSENOM').AsString:=FN('HOUSENOM').AsString;

        FName:=GetName(FN('atype').AsVariant);
        mt_rep.FieldByName(FName).AsVariant:=1;
      end else
      begin
        mt_rep.Edit;
        FName:=GetName(FN('atype').AsVariant);
        mt_rep.FieldByName(FName).AsVariant:=1;
      end;
      mt_rep.Post;
      house:=FN('HOUSE').AsVariant;
      Next;
    end;
  end;
end;

 initialization
 RegisterClass(TShowR2Form);
end.
