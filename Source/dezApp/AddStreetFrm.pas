unit AddStreetFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  FIBQuery, pFIBProps, pFIBCacheQueries,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, DB, FIBDataSet, pFIBDataSet, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  StdCtrls, cxButtons, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle;

type
  TAddStreetForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcl1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_STR_TYPE: TcxLookupComboBox;
    itm_STR_TYPE: TdxLayoutItem;
    ds_STR_TYPE: TpFIBDataSet;
    src_Type: TDataSource;
    txt_Street: TcxTextEdit;
    itm_street: TdxLayoutItem;
    btn_Add: TcxButton;
    itmadd: TdxLayoutItem;
    btn_cancel: TcxButton;
    itm_cancel: TdxLayoutItem;
    grlc1Group1: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepereDs;
    function CheckParam :Boolean;
    procedure AddStreet;
    function ifStreetExist :Boolean;
  public
    { Public declarations }
  end;

var
  AddStreetForm: TAddStreetForm;

implementation

uses AppUtils, cmDBUnit, cmUtils;

{$R *.dfm}

procedure TAddStreetForm.AddStreet;
var
  Q :TFIBQuery;
begin
  if not CheckParam then Exit;
  Q:=GetQueryForUse(cmDB.WT,
      'insert into STREET (NAME, STR_TYPE)' + #13#10 +
      'values (:NAME, :STR_TYPE)');
  Q.Options:=[qoStartTransaction,qoAutoCommit];
  Q.ParamByName('STR_TYPE').AsVariant:=cbb_STR_TYPE.Text;
  Q.ParamByName('NAME').AsVariant:=txt_Street.Text;
  Q.ExecQuery;
  FreeQueryForUse(Q);
  ModalResult:=mrOk;
end;

procedure TAddStreetForm.btn_AddClick(Sender: TObject);
begin
  AddStreet;
end;

procedure TAddStreetForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

function TAddStreetForm.CheckParam: Boolean;
  procedure Rez(mes :string; ed :TcxCustomEdit);
  begin
    Application.MessageBox(PChar(mes), 'Ошибка', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2 + MB_TOPMOST);
    ed.SetFocus;
    Result:=False;
  end;
begin
  Result:=true;
  if cbb_STR_TYPE.Text='' then
  begin
    Rez('Укажите тип',cbb_STR_TYPE);
    Exit;
  end;
  if txt_Street.Text='' then
  begin
    Rez('Наименование не может быть пустым',txt_Street);
    Exit;
  end;
  if ifStreetExist then
  begin
    Rez('Такая улица уже имеется в базе данных',txt_Street);
    Exit;
  end;
end;

procedure TAddStreetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:=caFree;
end;

procedure TAddStreetForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepereDs;
end;

function TAddStreetForm.ifStreetExist: Boolean;
var
  Q :TFIBQuery;
begin
  Q:=GetQueryForUse(cmDB.RT,'SELECT CODE' + #13#10 +
                            'FROM STREET' + #13#10 +
                            'where NAME=:NAME and STR_TYPE=:TP');
  Q.Options:=[qoStartTransaction];
  Q.ParamByName('NAME').AsVariant:=TRIM(txt_Street.Text);
  Q.ParamByName('TP').AsVariant:=cbb_STR_TYPE.Text;
  Q.ExecQuery;
  if Q.FN('CODE').AsVariant=null then Result:=false else
                                    Result:=true;
  FreeQueryForUse(Q);
end;

procedure TAddStreetForm.PrepereDs;
begin
  ds_STR_TYPE.open;
  cbb_STR_TYPE.EditValue:=ds_STR_TYPE.FN('STR_TYPE').AsVariant;
end;

end.


