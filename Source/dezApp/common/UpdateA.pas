unit UpdateA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, ComCtrls, IniFiles,
  IdTCPConnection, IdTCPClient, IdFTPCommon, IdComponent,
  cxProgressBar,
  IdExplicitTLSClientServerBase, IdFTP, IdGlobal, UpdScrFrm;

{ UpdateApp }
type
  TWebUpdateType = (ftpUpdate, httpUpdate, fileUpdate);

  TUpdateApp = class(TObject)
  private

    FUpdateType: TWebUpdateType;
    FAppExe: string;
    FToolExe: string;
    FNewFileName: string;
    FCurFileName: string;
    FAppPath: string;

    FUpdPath: string;
    FSize: LongWord;
    FHost: string;
    FPort: Integer;
    FUser: string;
    FPassword: string;
    FFTPDirectory: string;
    FFTPPassive: Boolean;

    FNewVersionDate: TDateTime;

    FCurVersionDate: TDateTime;
    FCurVersionInfo: string;
    FNewVersionInfo: string;
    FControlFileName: string;

    function GetFileVersionEx(const FileName: string): string;
    function GetFileDateTime(FileName: string): TDateTime;

  protected
    Log: TextFile;
    DownlFrm: TForm;
    prbr1: TProgressBar;
    property Size: LongWord read FSize write FSize;
    function FTPGetFileData(FName: string; showinfo: Boolean = true): Boolean;
    function FileGetFileDate(FName: string; showinfo: Boolean = true): Boolean;
    procedure ShowInfoForm;
    procedure FTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure FTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure ProgressCreate;
    procedure DownlFrmCreate(Sender: TObject);
    procedure LogMes(mes: string);
    function GetFileSize(FileName: string): Longint;
    procedure SetParam(ini: TIniFile);
    procedure UpdateTools;
    function CheckDateTools: Boolean;
    procedure CreateSplash;
    procedure FreeSplash;
    function CopyFileprogress(source , dest: string) :Boolean;

  public
    constructor Create;
    function DoUpdate(conf: string): Boolean;
    function CheckDateFiles(FName: string): Boolean;
    property ControlFileName: string read FControlFileName;
    property NewVersionDate: TDateTime read FNewVersionDate;
    property CurVersionDate: TDateTime read FCurVersionDate;
    property CurVersionInfo: string read FCurVersionInfo;
    property NewVersionInfo: string read FNewVersionInfo;
    destructor Destroy; override;
  published
    property AppExe: string read FAppExe write FAppExe;
    property ToolExe: string read FToolExe write FToolExe;
    property Host: string read FHost write FHost;
    property Password: string read FPassword write FPassword;
    property FTPDirectory: string read FFTPDirectory write FFTPDirectory;
    property User: string read FUser write FUser;
    property FTPPassive
      : Boolean read FFTPPassive write FFTPPassive default false;
    property Port: Integer read FPort write FPort default 21;
    property AppPath: string read FAppPath write FAppPath;
    property UpdPath: string read FUpdPath write FUpdPath;
    property NewFileName: string read FNewFileName write FNewFileName;
    property CurFileName: string read FCurFileName write FCurFileName;
    property UpdateType
      : TWebUpdateType read FUpdateType write FUpdateType default
      httpUpdate;

  end;

var
  FTP: TIdFTP;
  SForm: TUpdScrForm;

implementation

uses UpgradeFrm;

constructor TUpdateApp.Create;
begin
  //
end;

destructor TUpdateApp.Destroy;
begin
  // FreeSplash;
  //inherited Destroy;
end;

{ -------------------------------------------------------------------------------
  Получаем размер файла
  ------------------------------------------------------------------------------- }
function TUpdateApp.GetFileSize(FileName: string): Longint;
var
  SearchRec: TSearchRec;
begin
  if FindFirst(FileName, faAnyFile, SearchRec) = 0 then
    Result := SearchRec.Size
  else
    Result := -1; { возвращаем ошибку, это может быть число меньше нуля }
end;

{ -------------------------------------------------------------------------------
  Пишем сообщение в лог
  ------------------------------------------------------------------------------- }
procedure TUpdateApp.LogMes(mes: string);
begin
  AssignFile(Log, ExtractFilePath(Application.ExeName) + 'Update.log');
  if (GetFileSize(ExtractFilePath(Application.ExeName) + 'Update.log') > 10240)
    or (GetFileSize(ExtractFilePath(Application.ExeName) + 'Update.log') = -1)
    then
    Rewrite(Log)
  else
    Append(Log);
  WriteLn(Log, DateTimeToStr(Date) + ' ' + TimeToStr(Time) + '|' + mes);
  CloseFile(Log);
end;

{ -------------------------------------------------------------------------------
  Проверяем обновление
  ------------------------------------------------------------------------------- }
function TUpdateApp.DoUpdate(conf: string): Boolean;
var
  NewFile,  param: string;
  ini: TIniFile;
  ConfFile :string;
begin
  Result := false;
  try
    // progress
    CreateSplash;
    SForm.ChkUpd('Проверка обновлений...', SForm.chk);
    ConfFile:=ExtractFilePath(Application.ExeName) + 'config\' + conf;
    if FileExists(ConfFile) then
    begin
      ini := TIniFile.Create(ConfFile);
      SetParam(ini);
      UpdateTools; // обновляем утилиту
      if UpdateType = fileUpdate then
      begin
        if FileGetFileDate(NewFileName) then
        begin
          FreeSplash;
          // запускаем утилиту с параметрами
          LogMes('FileGetFileDate-запускаем утилиту с параметрами');
          param := AppExe + ' ' + NewFileName;
          try
            ShellExecute(Application.Handle, nil, PChar(ToolExe), PChar(param),
              nil, SW_RESTORE);
            Result := true;
          except
            on E :Exception do
            LogMes('FileGetFileDate-'+e.Message);
          end;
        end;
      end;
      if UpdateType = ftpUpdate then
      begin
        if FTPGetFileData(NewFileName) then
        begin
          FreeSplash;
          // запускаем утилиту с параметрами
          LogMes('FTPGetFileData-запускаем утилиту с параметрами');
          param := AppExe + ' ' + NewFileName;
          try
            ShellExecute(Application.Handle, nil, PChar(ToolExe), PChar(param),
              nil, SW_RESTORE);
          except

          end;
          Result := true;
        end;
      end;
      ini.Free;
    end;
  finally
    FreeSplash;
  end;
end;

// обновляем утилиту
procedure TUpdateApp.UpdateTools;
begin
  if UpdateType = fileUpdate then
  begin
    if FileGetFileDate(ToolExe, false) then
    begin
      LogMes('FileGetFileDate - Обновляем утилиту');
      // выдаем сообщение
    end;
  end;
  // FTP
  if UpdateType = ftpUpdate then
  begin
    if FTPGetFileData(ToolExe, false) then
    begin
      LogMes('FTPGetFileData - Обновляем утилиту');
    end;
  end;
end;

// проверяем дату файла утилиты
function TUpdateApp.CheckDateTools: Boolean;
var
  CurFileDate, NewFileDate: TDateTime;
begin
  Result := false;
  CurFileDate := GetFileDateTime(AppPath + ToolExe);
  NewFileDate := GetFileDateTime(UpdPath + ToolExe);
  if CurFileDate < NewFileDate then
    Result := true;
  if CurFileDate >= NewFileDate then
    Result := false;
end;

// считываем параметры обновления из файла
procedure TUpdateApp.SetParam(ini: TIniFile);
begin
  if not ini.SectionExists('UpdateType') then
    Exit;
  AppPath := ExtractFilePath(Application.ExeName);
  AppExe := ExtractFileName(Application.ExeName);

  UpdateType := TWebUpdateType(StrToInt(ini.ReadString('UpdateType', 'Utype',
        '-1')));
  ToolExe := ini.ReadString('ToolExe', 'TExe', 'Update.exe');
  UpdPath := ini.ReadString('FileUpdate', 'UpdPath', '');
  NewFileName := ini.ReadString('FileUpdate', 'NewFileName', '');

  Host := ini.ReadString('FtpUpdate', 'FTPHost', '');
  Port := StrToInt(ini.ReadString('FtpUpdate', 'FPort', '21'));
  FTPDirectory := ini.ReadString('FtpUpdate', 'FTPDirectory', '');
  User := ini.ReadString('FtpUpdate', 'FUser', '');
  Password := ini.ReadString('FtpUpdate', 'FPassword', '');
end;

procedure TUpdateApp.CreateSplash;
begin
  SForm := TUpdScrForm.Create(nil);
  SForm.Show;
end;

procedure TUpdateApp.FreeSplash;
var
  f :Integer;
begin
  try
    f:=FindWindow('TUpdScrForm',nil);
    if f<>0 then
      SForm.Free;
    except
      on E :Exception do
      LogMes('FreeSplash- '+e.Message);
    end;
end;

{ -------------------------------------------------------------------------------
  Показываем сообщение об обновлении  //создать в runtime или убрать
  ------------------------------------------------------------------------------- }
procedure TUpdateApp.ShowInfoForm;
begin
  { Form:=TUpgradeForm.Create(nil);
    Form.ShowModal; }
  SForm := TUpdScrForm.Create(Application);
  SForm.Show;
  // Form.Free;
end;


{ -------------------------------------------------------------------------------
  Получаем дату файла по сети
  ------------------------------------------------------------------------------- }
function TUpdateApp.FileGetFileDate(FName: string;
  showinfo: Boolean = true): Boolean;
var
  NewFile, CurFile: string;
begin
  Result := false;
  if FileExists(UpdPath + FName) then
  begin
    if CheckDateFiles(FName) then
    begin
      // выдаем сообщение
      if showinfo then
        SForm.ChkUpd('Загрузка обновления...', SForm.dwl);
      // if showinfo then ShowInfoForm;
      CurFile := UpdPath + FName;
      NewFile := AppPath + FName;
      LogMes('FileGetFileDate-переименовываем страрый архив.');
      CopyFile(PChar(NewFile), PChar(NewFile + '_old'), false);
      LogMes('FileGetFileDate-копируем новый архив.');
      if not CopyFileprogress(CurFile,NewFile) then
      LogMes('FileGetFileDate- '+IntToStr(GetLastError));
      //CopyFile(PChar(CurFile), PChar(NewFile), false);
      Result := true;
    end;
  end;
end;

function CopyProgressRoutine(
  TotalFileSize,
  TotalBytesTransferred,
  StreamSize,
  StreamBytesTransferred: LARGE_INTEGER;
  dwStreamNumber,
  dwCallbackReason: DWORD;
  hSourceFile,
  hDestinationFile: THandle;
  lpData: Pointer): DWORD; stdcall; // Соглашение о передаче параметров
begin
 // lpData содержит указалеть, переданный в CopyFileEx, здесь это
 // указатель на ProgressBar1

 // Если началось копирование нового файла, изменим максимальный
 // порог для указателя прогресса
 if dwCallbackReason = CALLBACK_STREAM_SWITCH then
   TcxProgressBar(lpData).Properties.Max := TotalFileSize.QuadPart;

 // Установим новую позицию
   TcxProgressBar(lpData).Position := TotalBytesTransferred.QuadPart;

 // Обновимся и копируем дальше
 Application.ProcessMessages;
 Result := PROGRESS_CONTINUE;
end;

function TUpdateApp.CopyFileprogress(source , dest: string) :Boolean;
var
  FCancelled: LongBool;
  CallBack   : TFNProgressRoutine;
begin
  FCancelled:=False;
  Result:=CopyFileEx(PChar(source),PChar(dest),@CopyProgressRoutine,
                                   SForm.prb1,@FCancelled,COPY_FILE_RESTARTABLE);
end;

{ -------------------------------------------------------------------------------
  Получаем дату файла по фтп
  ------------------------------------------------------------------------------- }
function TUpdateApp.FTPGetFileData(FName: string;
  showinfo: Boolean = true): Boolean;
var
  NewFDate, CurFDate: TDateTime;
  // form :TForm;
begin
  FTP := TIdFTP.Create(nil);
  FTP.Host := Host;
  FTP.Username := User;
  FTP.Password := Password;
  FTP.Port := Port;
  FTP.TransferType := ftBinary;
  FTP.AutoLogin := true;
  FTP.Passive := true;
  FTP.IPVersion := Id_IPv4;
  FTP.ReadTimeout := 4000;
  // FTP.ListenTimeout:=10000;
  FTP.AUTHCmd := tAuto;
  FTP.OnWork := FTPWork;
  FTP.OnWorkBegin := FTPWorkBegin;
  try
    // if FTP.Host='' then Exit;
    try
      FTP.Connect;
    except
      on e: Exception do
      begin
        LogMes('Ошибка соединения ' + e.Message);
        Result := false;
      end;
    end;
    if FTP.Connected = true then
    begin
      if FTPDirectory <> '' then
        FTP.ChangeDir(FTPDirectory);
      try
        FTP.List;
      except

      end;
      NewFDate := FTP.FileDate(FName);
      Size := FTP.Size(FName);
      CurFDate := GetFileDateTime(AppPath + FName);
      if NewFDate > CurFDate then
      begin
        // выдаем сообщение
        if showinfo then
          SForm.ChkUpd('Загрузка обновления...', SForm.dwl);
        // скачиваем файл
        // ProgressCreate;
        // DownlFrm.Show;
        if FileExists(AppPath + FName) then
        begin
          CopyFile(PChar(AppPath + FName), PChar(AppPath + FName + '_old'),
            false);
          LogMes('FTPGetFileData-переименовываем страрый архив.');
        end;
        FTP.Get(FName, AppPath + FName + '_tmp', true, false);
        LogMes('FTPGetFileData-копируем новый архив.');
        DownlFrm.Free;
        // if RenameFile(AppPath + FName + '_tmp', AppPath + FName) then
        Result := RenameFile(AppPath + FName + '_tmp', AppPath + FName);
      end
      else
        Result := false;
    end
    else
      Result := false;
  finally
    FTP.Disconnect;
    FTP.Free;
  end;
end;

procedure TUpdateApp.FTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  SForm.prb1.Properties.Min := 0;
  SForm.prb1.Properties.Max := Size;
end;

procedure TUpdateApp.FTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  SForm.prb1.Position := AWorkCount;
  Application.ProcessMessages;
end;

function TUpdateApp.CheckDateFiles(FName: string): Boolean;
var
  CurFileDate, NewFileDate: TDateTime;
begin
  Result := false;
  CurFileDate := GetFileDateTime(AppPath + FName);
  NewFileDate := GetFileDateTime(UpdPath + FName);
  if CurFileDate < NewFileDate then
    Result := true;
  if CurFileDate >= NewFileDate then
    Result := false;
end;

{ -------------------------------------------------------------------------------
  Получаем дату файла
  ------------------------------------------------------------------------------- }
function TUpdateApp.GetFileDateTime(FileName: string): TDateTime;
var
  intFileAge: Longint;
begin
  intFileAge := FileAge(FileName);
  if intFileAge = -1 then
    Result := 0
  else
    Result := FileDateToDateTime(intFileAge);
end;

{ -------------------------------------------------------------------------------
  Получаем версию файла
  ------------------------------------------------------------------------------- }
function TUpdateApp.GetFileVersionEx(const FileName: string): string;
type
  PDWORD = ^DWORD;
  PLangAndCodePage = ^TLangAndCodePage;

  TLangAndCodePage = packed record
    wLanguage: WORD;
    wCodePage: WORD;
  end;

  PLangAndCodePageArray = ^TLangAndCodePageArray;
  TLangAndCodePageArray = array [0 .. 0] of TLangAndCodePage;
var
  loc_InfoBufSize: DWORD;
  loc_InfoBuf: PChar;
  loc_VerBufSize: DWORD;
  loc_VerBuf: PChar;
  cbTranslate: DWORD;
  lpTranslate: PDWORD;
  i: DWORD;
begin
  Result := '';
  if (Length(FileName) = 0) or (not FileExists(FileName)) then
    Exit;
  loc_InfoBufSize := GetFileVersionInfoSize(PChar(FileName), loc_InfoBufSize);
  if loc_InfoBufSize > 0 then
  begin
    loc_VerBuf := nil;
    loc_InfoBuf := AllocMem(loc_InfoBufSize);
    try
      if not GetFileVersionInfo(PChar(FileName), 0, loc_InfoBufSize,
        loc_InfoBuf) then
        Exit;
      if not VerQueryValue(loc_InfoBuf, '\\VarFileInfo\\Translation',
        Pointer(lpTranslate), DWORD(cbTranslate)) then
        Exit;
      for i := 0 to (cbTranslate div SizeOf(TLangAndCodePage)) - 1 do
      begin
        if VerQueryValue(loc_InfoBuf, PChar(Format
              ('StringFileInfo\0%x0%x\FileVersion',
              [PLangAndCodePageArray(lpTranslate)[i].wLanguage,
              PLangAndCodePageArray(lpTranslate)[i].wCodePage])),
          Pointer(loc_VerBuf), DWORD(loc_VerBufSize)) then
        begin
          Result := loc_VerBuf;
          Break;
        end;

      end;
    finally
      FreeMem(loc_InfoBuf, loc_InfoBufSize);
    end;
  end;
end;

procedure TUpdateApp.ProgressCreate;
begin
  // DownlFrm
  DownlFrm := TForm.Create(Application);
  // prbr1
  prbr1 := TProgressBar.Create(DownlFrm);
  // DownlFrm
  DownlFrm.Name := 'frm1';
  DownlFrm.Left := 0;
  DownlFrm.Top := 0;
  DownlFrm.BorderStyle := bsNone;
  DownlFrm.Caption := 'frm1';
  DownlFrm.ClientHeight := 22;
  DownlFrm.ClientWidth := 357;
  DownlFrm.Color := clBtnFace;
  DownlFrm.Font.Charset := DEFAULT_CHARSET;
  DownlFrm.Font.Color := clWindowText;
  DownlFrm.Font.Height := -11;
  DownlFrm.Font.Name := 'Tahoma';
  DownlFrm.Font.Style := [];
  DownlFrm.OldCreateOrder := false;
  DownlFrm.Position := poDesktopCenter;
  DownlFrm.PixelsPerInch := 96;
  DownlFrm.OnCreate := DownlFrmCreate;
  // prbr1
  prbr1.Name := 'prbr1';
  prbr1.Parent := DownlFrm;
  prbr1.Left := 0;
  prbr1.Top := 5;
  prbr1.Align := alBottom;
  // prbr1.Properties.PeakValue := 100.000000000000000000;
  // prbr1.Properties.ShowPeak := True;
  prbr1.TabOrder := 0;
  prbr1.Width := 357;
  DownlFrm.Left := 56;
end;

procedure TUpdateApp.DownlFrmCreate(Sender: TObject);
begin
  //
end;

end.
