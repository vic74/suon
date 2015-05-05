program Update;

uses
  //ExceptionLog,
  Forms,
  ExtCtrls,
  ShellAPI,
  SysUtils,
  Windows,
  ProcUtill in 'ProcUtill.pas' { Form2 },
  ProcFrm in 'ProcFrm.pas' { Form2 },
  KAZip in 'common\KAZip.pas';

{$R *.res}

var
  rar, param, path: string;
  trycn1: TTrayIcon;
  Log: TextFile;
  KZ: TKAZip;
  FileUpdate: string; // файл обновления
  i :integer;
begin
  Application.Initialize;
  if ParamCount > 0 then
  begin
    path :=ExtractFilePath(Application.ExeName);
    trycn1 := TTrayIcon.Create(Application);
    trycn1.Name := 'trycn1';
    trycn1.BalloonHint := 'Устанавливается обновление!' + #10#13 +
      'Пожалуйста подождите...';
    trycn1.BalloonTitle := 'Внимание!';
    trycn1.BalloonFlags := bfInfo;
    trycn1.Visible := True;
    trycn1.ShowBalloonHint;
    Application.ProcessMessages;
    AssignFile(Log, path + 'Update.log');
    Append(Log);
     WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
     +' '+path+ParamStr(2));
    try
      WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
        + '|' + 'закрываем процесс  ' + ParamStr(1));
    repeat
      Kill(ParamStr(1));
      Sleep(2000);
    until LocateProcess(ParamStr(1)) = 0;

    except
      on e: Exception do
        WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
            + '|' + 'Ошибка закрытия процесса ' + ParamStr(1)
            + #10#13 + ' [ ' + e.Message + ' ] ' + #10#13);
    end;
    WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
        + '|' + 'закрыли процесс  ' + ParamStr(1));
    // распаковываем
    try
      try
        WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
            + '|' + 'распаковываем  ' + path + ParamStr(2));
        Sleep(2000);
        FileUpdate:=path + ParamStr(2);
        KZ := TKAZip.Create(Application);
        KZ.OverwriteAction := oaOverwrite;
        // KZ.OnDecompressFile:=KZDecompressFile;
        KZ.Open(FileUpdate);
        KZ.ExtractAll(ExtractFilePath(Application.ExeName));
      except
        on E :Exception do
        WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
        + '|' + 'Ошибка  '+ e.Message);
      end;
      KZ.Close;
      KZ.Free;
    finally
      // запускаем программу
      WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time)
          + '|' + 'запускаем программу');
      WriteLn(Log, '--------------'+DateTimeToStr(Date) + ' ' + TimeToStr(Time)
          + '-----------------------------------');
      WriteLn(Log, ' ');
      ShellExecute(Application.Handle, nil,
        PChar(ExtractFilePath(Application.ExeName) + ParamStr(1)), nil, nil,
        SW_RESTORE);
    end;
    CloseFile(Log);
    trycn1.Free;
  end
  else
  begin
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TForm2, Form2);
  end;
  Application.Run;

end.
