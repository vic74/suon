unit SingletonTemplate;

interface

uses
  Classes, SysUtils;

type

  ///	<summary>
  ///	  ������� ����� ��� ��������, ����������� ������� "Singleton". ���
  ///	  ��������� ������� � ���������� ���������� ������� GetInstance. ����
  ///	  ��������� ��� �� ����������, �� �� ����� ������. ����� - ����������
  ///	  ������ �� ����� ��������� ���������. ���������� ��������� �����
  ///	  �������, ������ Free, ����� �� ����� ��������� ������������� �����
  ///	  ����������� ����������
  ///	</summary>
  TSingleton = class(TObject)
  private
    class procedure RegisterInstance(Instance: TSingleton);
    procedure UnRegisterInstance;
    class function FindInstance: TSingleton;
  protected
    ///	<summary>
    /// ������������� ����������� ������ � ����
    /// ������������, � �� � GetInstance.
    /// �� ������������� �������� ���� �����������
    /// �� ������ protected
    ///	</summary>
    constructor Create; virtual;
  public
    class function NewInstance: TObject; override;
    procedure BeforeDestruction; override;

    ///	<summary>
    ///	  ����� ������� � ����������
    ///	</summary>
    constructor GetInstance;
  end;

implementation

uses Contnrs;

var
  SingletonList: TObjectList;

  { TSingleton }

procedure TSingleton.BeforeDestruction;
begin
  UnRegisterInstance;
  inherited BeforeDestruction;
end;

constructor TSingleton.Create;
begin
  inherited Create;
end;

class function TSingleton.FindInstance: TSingleton;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to SingletonList.Count - 1 do
    if SingletonList[i].ClassType = Self then
    begin
      Result := TSingleton(SingletonList[i]);
      Break;
    end;
end;

constructor TSingleton.GetInstance;
begin
  inherited Create;
end;

class function TSingleton.NewInstance: TObject;
begin
  Result := FindInstance;
  if Result = nil then
  begin
    Result := inherited NewInstance;
    TSingleton(Result).Create;
    RegisterInstance(TSingleton(Result));
  end;
end;

class procedure TSingleton.RegisterInstance(Instance: TSingleton);
begin
  SingletonList.Add(Instance);
end;

procedure TSingleton.UnRegisterInstance;
begin
  SingletonList.Extract(Self);
end;

initialization

SingletonList := TObjectList.Create(True);

finalization

SingletonList.Free;

end.
