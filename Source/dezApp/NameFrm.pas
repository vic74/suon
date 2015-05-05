unit NameFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  BaseForm,
  Dialogs, StdCtrls;

type
  TNameForm = class(TDezModalForm)
    NameEdit: TEdit;
    CancelBtn: TButton;
    Btn_ok: TButton;
    procedure OkBtnClick(Sender: TObject);
  private
   fSrvList: string;
   function GetFileName: string;
   procedure SaveSrvList;
  public
   property SrvList: string read fSrvList write fSrvList;
  end;

var
  NameForm: TNameForm;

implementation

{$R *.dfm}

{ TForm1 }

function TNameForm.GetFileName: string;
begin
 Result:=ExtractFilePath(ParamStr(0));
 if Result[Length(Result)]<>'\' then Result:=Result+'\';
 Result:=Result+'srv.ini';
end;

procedure TNameForm.OkBtnClick(Sender: TObject);
begin
 SaveSrvList;
end;

procedure TNameForm.SaveSrvList;
 var List: TStringList;
     FileName: string;
begin
 if SrvList='' then Exit;
 FileName:=GetFileName;
 List:=TStringList.Create;
 try
  if FileExists(FileName) then List.LoadFromFile(FileName);
  List.Add(NameEdit.Text+'='+SrvList);
  List.SaveToFile(FileName);
 finally
  List.Free;
 end;
end;

end.
