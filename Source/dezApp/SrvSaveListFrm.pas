unit SrvSaveListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TSrvSaveListForm = class(TForm)
    List: TListBox;
    btn_Ok: TButton;
    btn_Cancel: TButton;
    procedure FormCreate(Sender: TObject);
  private
   procedure MakeSrvList;
   function GetFileName: string;
  public
   function GetSrvList: string;
  end;

var
  SrvSaveListForm: TSrvSaveListForm;

implementation

uses cmUtils;

{$R *.dfm}

{ TForm2 }

procedure TSrvSaveListForm.FormCreate(Sender: TObject);
begin
 MakeSrvList;
end;

function TSrvSaveListForm.GetFileName: string;
begin
 Result:=ExtractFilePath(ParamStr(0));
 if Result[Length(Result)]<>'\' then Result:=Result+'\';
 Result:=Result+'srv.ini';
end;

function TSrvSaveListForm.GetSrvList: string;
begin
 Result:='';
 if List.ItemIndex<0 then Exit;
 Result:=cmGetWord(List.Items[List.ItemIndex],2,'=');
end;

procedure TSrvSaveListForm.MakeSrvList;
 var FileName: string;
begin
 FileName:=GetFileName;
 if not FileExists(FileName) then Exit;
 List.Items.LoadFromFile(FileName);
 if List.Items.Count>0 then List.ItemIndex:=0;
end;

end.
