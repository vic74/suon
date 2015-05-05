unit WorkListTO_partial;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,Forms,
  dezCommon, DB, WorkSpecList, WorkSpecMaterial;

{ TWorkList }
  type
  TWorkList = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
    ///�������� ��� ������ �� ����������� ����� ��
    function GetWorkCodeBySpr: Variant;
    /// ��������/�������������� ������
    function EditWork(minDatePeriod: Variant; kontragent: Variant; ds: TDataSet; isEdit: Boolean = false): Boolean; overload;
    function EditWork(minDatePeriod: Variant; kontragent: Variant; fwsl: TWorkSpecList; isEdit: Boolean = false): Variant; overload;
    // �������� ��� ��������� �� �����������
    function GetMatCodeBySpr: Variant;

    function EditMat(fwsm: TWorkSpecMaterial; isEdit: Boolean = false): Variant;
  published

  end;


implementation

{ TWorkList }

uses KServisworkLookFrm, OrderWorkEditFrm, cmDBUnit, MatClassFrm, AddMatTOFrm;

constructor TWorkList.Create;
begin

end;

destructor TWorkList.Destroy;
begin

  inherited;
end;

function TWorkList.EditMat(fwsm: TWorkSpecMaterial; isEdit: Boolean): Variant;
var
  F: TAddMatTOForm;
begin
  F:= TAddMatTOForm.Create(Application.MainForm, fwsm, isEdit);
  try
    if VarIsType(fwsm.WorkSpecList,[varNull, varEmpty]) then
       raise Exception.Create('�� ������� ������!');
    F.ShowModal;
    Result:= F.fWMaterial.Code;
  finally
    if Assigned(F) then
      FreeAndNil(F);
  end;
end;

function TWorkList.EditWork(minDatePeriod, kontragent: Variant; fwsl: TWorkSpecList;
  isEdit: Boolean): Variant;
var
  F: TOrderWorkEditForm;
begin
  if kontragent = null then
  raise dezException.Create('�� ������� �����������!');
  F := TOrderWorkEditForm.Create(Application.MainForm, kontragent, minDatePeriod, fwsl, isEdit);
  try
    F.ShowModal;
    Result:= fwsl.Code;
  finally
    FreeAndNil(F);
  end;
end;

function TWorkList.EditWork(minDatePeriod: Variant; kontragent: Variant; ds: TDataSet; isEdit: Boolean): Boolean;
var
  F: TOrderWorkEditForm;
begin
  if kontragent = null then
  raise dezException.Create('�� ������� �����������!');
  F := TOrderWorkEditForm.Create(Application.MainForm, kontragent, minDatePeriod, ds, isEdit);
  try
    Result:= F.ShowModal=mrOk;
  finally
    FreeAndNil(F);
  end;
end;

function TWorkList.GetMatCodeBySpr: Variant;
var
  F :TMatClassForm;
begin
  Result:= Null;
  F:=TMatClassForm.CreateModal(Application.MainForm, true);
  try
    F.isReadOnly:= True;
    F.isModal:= True;
    if F.ShowModal=mrOk then
    Result:= F.v1.GetColumnByFieldName('Code').EditValue;
  finally
    if Assigned(F) then
      FreeAndNil(F);
  end;
end;

function TWorkList.GetWorkCodeBySpr: Variant;
var
  F: TKServisworkLookForm;
begin
  Result:= Null;
  F:= TKServisworkLookForm.Create(Application.MainForm);
  try
    if F.ShowModal = mrOk then
    begin
      Result:= F.v1.GetColumnByFieldName('CODE').EditValue;
    end;
  finally
    FreeAndNil(F);
  end;
end;

end.
