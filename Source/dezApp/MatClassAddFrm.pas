unit MatClassAddFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, dxLayoutControl, cxCheckBox, FIBQuery, pFIBCacheQueries,
  BaseForm,
  pFIBProps, dxSkinDevExpressStyle;

type
  TMatClassAddForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc_1: TdxLayoutControl;
    grp__1Group1: TdxLayoutGroup;
    grp__1Group2: TdxLayoutGroup;
    txt_ParentName: TcxTextEdit;
    itm_1: TdxLayoutItem;
    txt_Name: TcxTextEdit;
    itm_Name: TdxLayoutItem;
    txt_FullName: TcxTextEdit;
    itm__1Item1: TdxLayoutItem;
    btn_Cancel: TcxButton;
    itm_Cancel: TdxLayoutItem;
    btn_Ok: TcxButton;
    itm_Ok: TdxLayoutItem;
    grp__1Group3: TdxLayoutGroup;
    chk_ISGROUP: TcxCheckBox;
    itm_ISGROUP: TdxLayoutItem;
    chk_ISNAME: TcxCheckBox;
    itm_ISNAME: TdxLayoutItem;
    grp_1Group1: TdxLayoutGroup;
    grp_1Group2: TdxLayoutGroup;
    txt_MatName: TcxTextEdit;
    itm_MatName: TdxLayoutItem;
    txt_Ed: TcxTextEdit;
    itm_Ed: TdxLayoutItem;
    txt_ED1: TcxTextEdit;
    itm_ED1: TdxLayoutItem;
    grp_1Group3: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure txt_NamePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    fFullName: string;
    procedure SetParams;
    function CheckParams : boolean;
    procedure GetFullName;
    procedure MakeFullName;
  public
    { Public declarations }
    fOWN: Variant;
    fOWNName: Variant;
    fISGROUP: Variant;
    fED: Variant;
    isEdit: boolean;
    fTab: Integer;
  end;

var
  MatClassAddForm: TMatClassAddForm;

implementation

uses cmDBUnit, AppUtils;

{$R *.dfm}

procedure TMatClassAddForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TMatClassAddForm.btn_OkClick(Sender: TObject);
begin
  if CheckParams then ModalResult:= mrOk else
                      ModalResult:= mrNone;
end;

function TMatClassAddForm.CheckParams: boolean;
begin
  Result:= false;
  if grp_1Group1.ItemIndex= 0 then
  if Trim(txt_Name.Text) = '' then
    raise EMyException.Create('Укажите наименование!');
  Result:= true;
end;

procedure TMatClassAddForm.FormShow(Sender: TObject);
begin
  grp_1Group1.ItemIndex:= fTab;
  GetFullName;
  SetParams;
end;

procedure TMatClassAddForm.GetFullName;
var
  Q: TFIBQuery;
begin
  if fOWN = null then Exit;
  Q:= GetQueryForUse(cmDb.RT, 'select NAME from CLASSMATFULLNAME(:CODE)');
  try
    Q.Options:=[qoStartTransaction];
    Q.ParamByName('CODE').AsVariant:=fOWN;
    Q.ExecQuery;
    fFullName:= Q.FN('NAME').AsString;
    MakeFullName;
  finally
    FreeQueryForUse(Q);
  end;
end;

procedure TMatClassAddForm.MakeFullName;
begin
  if (Trim(txt_Name.Text)<>'') and (chk_ISNAME.Checked=true) then
  txt_FullName.Text:= fFullName+' '+txt_Name.Text;
end;

procedure TMatClassAddForm.SetParams;
begin
  if fISGROUP <> null then
  chk_ISGROUP.Checked := Boolean(fISGROUP);
  txt_ParentName.EditValue:= fOWNName;
end;

procedure TMatClassAddForm.txt_NamePropertiesChange(Sender: TObject);
begin
  MakeFullName;
end;

end.
