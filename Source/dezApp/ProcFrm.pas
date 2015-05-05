unit ProcFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvZlibMultiple, StdCtrls,ShellAPI, ExtCtrls,IniFiles,
  KAZip;

type
  TForm2 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function GetFileDateTime(FileName: string): TDateTime;
  public
    { Public declarations }
    Ini :TIniFile;
    UpdFile :string;
  end;

var
  Form2: TForm2;

implementation

uses ProcUtill;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  rar,param :string;
  KZ :TKAZip;
  FileUpdate :string; //файл обновления
begin
  btn1.Enabled:=False;
  Application.MessageBox('Закройте все копии обновляемой программы!' + #13#10
    + 'И только после этого можете закрывать это сообщение!', 'Внимание!',
    MB_OK + MB_ICONWARNING);

    //распаковываем
    FileUpdate:=ExtractFilePath(Application.ExeName)+UpdFile+'_old';
    KZ:=TKAZip.Create(Application);
    KZ.OverwriteAction := oaOverwrite;
    //KZ.OnDecompressFile:=KZDecompressFile;
    KZ.Open(FileUpdate);
    KZ.ExtractAll(ExtractFilePath(Application.ExeName));
    KZ.Close;
    KZ.Free;


  {rar:=ExtractFilePath(Application.ExeName)+'config\tools\Rar.exe ';
  param:='x -idcdp -o+ '+ExtractFilePath(Application.ExeName)+UpdFile+'_old';
  //распаковываем
  ShellExecute(Application.Handle, nil, PChar(rar),PChar(param), nil, SW_HIDE);
  //ждем конца распаковки
  repeat
    Sleep(1000);
  until LocateProcess('Rar.exe')=0;}
  Application.MessageBox('Возврат к предыдущему состоянию совершен.' + #13#10
    + 'Теперь вы можете запускать программу.', 'Информация.', MB_OK +
    MB_ICONINFORMATION);
  Close;
end;

function TForm2.GetFileDateTime(FileName: string): TDateTime;
var
  intFileAge: LongInt;
begin
  intFileAge := FileAge(FileName);
  if intFileAge = -1 then
    Result := 0
  else
    Result := FileDateToDateTime(intFileAge);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config\update.ini');
  UpdFile:=ini.ReadString('FileUpdate','NewFileName','');
 if FileExists(ExtractFilePath(Application.ExeName)+UpdFile+'_old') then
 begin
  mmo1.Lines.Add('Найдено предыдущее обновление программы от '+
  DateTimeToStr(GetFileDateTime(ExtractFilePath(Application.ExeName)+
  UpdFile+'_old')));
  mmo1.Lines.Add('Желаете вернуться к предыдущему состоянию программы?');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Внимание!!!');
  mmo1.Lines.Add('Возврат к последнему обновлению станет не доступен!');
  btn1.Enabled:=True;
 end else
 begin
  mmo1.Lines.Add('Предыдущих обновлений программы не обнаруженно.');
  btn1.Enabled:=False;
 end;
end;

end.
