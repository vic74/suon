unit cmUtils;

interface

uses Windows, SysUtils, Classes, Forms, Messages, Registry, Dialogs, Controls,
  AppTerminateFrm, cmInfoBoxFrm, cmMessageBoxFrm, DateUtils {,
    JclFileUtils};

type
  EMyException = class(Exception);
  // выполнить внешнее приложение
function cmRunApp(const CmdStr: String): cardinal;

// строковые утилиты
function cmWordCount(S: String; Ch: char): integer;
function cmGetWord(S: String; Nomer: integer; Ch: char): String;
function cmReplaceWord(Source, FindWord, NewWord: string): string;
function cmExtractFirstWord(var Source: string; Rzd: string): string;
function cmExtractLastWord(var Source: string; Rzd: string): string;
function cmCreateGUIDString: string;
function cmCorrectFloat(S: string): string;

// получение системной информации
function cmGetSystemDirectory: string;
function cmWinVersionCode: smallint;
function cmGetBIOSDate(WinVer: byte): string;
function cmGetVolumeInfo: LongWord;

// запись сообщения в файл
procedure cmSaveLog(FileName, Text: string);

// Сбрасывает и устанавливает бит в слове
function cmGetBit(Value: LongInt; Bit: integer): Boolean;
function cmChangeBit(Value: LongInt; Bit: integer): LongInt;

// работа с файлами и каталогами
function cmCopyFile(const aExistsFileName, ANewFileName: string;
  aFailIfExists: Boolean): Boolean;
function cmMoveFile(const aExistsFileName, ANewFileName: string): Boolean;
function cmNormalDir(const DirName: string): string;
function cmDirExists(Name: string): Boolean;
function cmClearDir(const Path, Shb: string; DeleteDir: Boolean): Boolean;
function cmDirIsEmpty(Name: string): Boolean;
function cmGetFileList(const Path: string; Shb: string = '*.*'): TStrings;
procedure cmMakeFileList(AList: TStrings; const Path: string;
  Shb: string = '*.*');
function cmCreateDirs(Name: string): Boolean;
function cmReadFolders(const Folder: TFileName; FolderList: TStrings): integer;

// возвращает текущую версию файла в формате CoolManager
// function cmFileVersion(WithComments: boolean = true): string;
// возвращает текущую версию ядра
procedure cmCriticalMessage(Msg: string);
// вывод запроса
function cmMessageBox(Msg: string;
  Position: TPosition = poMainFormCenter): Boolean;
// вывод сообщения
procedure cmShowMessage(Msg: string; ErrorImage: Boolean = false;
  Position: TPosition = poMainFormCenter; TimeOut: integer = 0);

// возвращает дату файла в виде строки
function cmGetFileDate(FileName: string): string;
// конвертируем дату из строки
function cmFileDateToDateTime(FileDate: string): TDateTime;
// меняет дату и время файла
function cmSetFileDate(FileName, FileDate: string): Boolean;

// перевод в 36-ю систему счисления и обратно
function cmIdToStr(i: integer): String;
function cmStrToId(S: String): integer;

// возвращает период по YM
procedure MakePeriodYM(Y, M: smallint; var D1, D2: TDateTime);

implementation

procedure MakePeriodYM(Y, M: smallint; var D1, D2: TDateTime);
var
  aY, aM: smallint;
begin
  if M < 12 then
  begin
    aM := M + 1;
    aY := Y;
  end
  else
  begin
    aM := 1;
    aY := Y + 1;
  end;
  D1 := EncodeDate(Y, M, 1);
  D2 := EncodeDate(aY, aM, 1) - 1;
end;

// получаем список каталогов
function cmReadFolders(const Folder: TFileName; FolderList: TStrings): integer;
var
  SearchRec: TSearchRec;
  DosError: integer;
begin
  FolderList.BeginUpdate;
  try
    FolderList.Clear;
    Result := FindFirst(cmNormalDir(Folder) + '*.*', faAnyFile, SearchRec);
    DosError := Result;
    while DosError = 0 do
    begin
      if ((SearchRec.Attr and faDirectory) = faDirectory) and
        (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
        FolderList.Add(SearchRec.Name);
      DosError := FindNext(SearchRec);
    end;
    FindClose(SearchRec);
  finally
    FolderList.EndUpdate;
  end;
end;

procedure cmMakeFileList(AList: TStrings; const Path: string;
  Shb: string = '*.*');
var
  FileInfo: TSearchRec;
  DosCode: integer;
begin
  if not cmDirExists(Path) then
    Exit;
  DosCode := FindFirst(cmNormalDir(Path) + Shb, faAnyFile, FileInfo);
  try
    while DosCode = 0 do
    begin
      if (FileInfo.Name <> '.') and (FileInfo.Name <> '..') and
        (FileInfo.Attr <> faVolumeID) then
      begin
        if (FileInfo.Attr and faArchive) = faArchive then
        begin
          AList.Add(cmNormalDir(Path) + FileInfo.Name);
        end;
      end;
      DosCode := FindNext(FileInfo);
    end;
  finally
    FindClose(FileInfo);
  end;
end;

function cmCreateDirs(Name: string): Boolean;
var
  Poz: integer;
  S1: string;
begin
  S1 := '';
  Result := true;
  repeat
    Poz := Pos('\', Name);
    if Poz <> 0 then
    begin
      S1 := S1 + Copy(Name, 1, Poz);
      Delete(Name, 1, Poz);
      if not cmDirExists(S1) then
        Result := CreateDir(S1);
      if not Result then
        Exit;
    end;
  until Poz = 0;
end;

function cmGetFileList(const Path: string; Shb: string = '*.*'): TStrings;
var
  FileInfo: TSearchRec;
  DosCode: integer;
begin
  Result := TStringList.Create;
  if not cmDirExists(Path) then
    Exit;
  DosCode := FindFirst(cmNormalDir(Path) + Shb, faAnyFile, FileInfo);
  try
    while DosCode = 0 do
    begin
      if (FileInfo.Name <> '.') and (FileInfo.Name <> '..') and
        (FileInfo.Attr <> faVolumeID) then
      begin
        if (FileInfo.Attr and faArchive) = faArchive then
        begin
          Result.Add(cmNormalDir(Path) + FileInfo.Name);
        end;
      end;
      DosCode := FindNext(FileInfo);
    end;
  finally
    FindClose(FileInfo);
  end;
end;

function cmDirIsEmpty(Name: string): Boolean;
var
  List: TStrings;
begin
  List := cmGetFileList(Name);
  try
    Result := List.Count = 0;
  finally
    List.Free;
  end;
end;

function cmDirExists(Name: string): Boolean;
var
  Code: integer;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;

function cmNormalDir(const DirName: string): string;
begin
  Result := DirName;
  if (Result <> '') and
{$IFDEF COMPILER3_UP}
    not(AnsiLastChar(Result)^ in [':', '\']) then
{$ELSE}
    not CharInSet(Result[Length(Result)], [':', '\']) then
{$ENDIF}
  if (Length(Result) = 1) and CharInSet(UpCase(Result[1]), ['A' .. 'Z']) then
    Result := Result + ':\'
  else
    Result := Result + '\';
end;

function cmClearDir(const Path, Shb: string; DeleteDir: Boolean): Boolean;
const
{$IFDEF WIN32}
  FileNotFound = 18;
{$ELSE}
  FileNotFound = -18;
{$ENDIF}
var
  FileInfo: TSearchRec;
  DosCode: integer;
  AFileMask: string;
begin
  Result := cmDirExists(Path);
  if not Result then
    Exit;
  AFileMask := cmNormalDir(Path);
  if Shb = '' then
    AFileMask := AFileMask + '*.*'
  else
    AFileMask := AFileMask + Shb;
  DosCode := FindFirst(AFileMask, faAnyFile, FileInfo);
  try
    while DosCode = 0 do
    begin
      // if (FileInfo.Name[1] <> '.') and (FileInfo.Attr <> faVolumeID) then
      // !!! BUG !!!
      if (FileInfo.Name <> '.') and (FileInfo.Name <> '..') and
        (FileInfo.Attr <> faVolumeID) then
      begin
        if (FileInfo.Attr and faDirectory) = faDirectory then
          Result := cmClearDir(cmNormalDir(Path) + FileInfo.Name, Shb,
            DeleteDir) and Result
        else if (FileInfo.Attr and faVolumeID) <> faVolumeID then
        begin
          if (FileInfo.Attr and faReadOnly) = faReadOnly then
            FileSetAttr(cmNormalDir(Path) + FileInfo.Name, faArchive);
          Result := DeleteFile(cmNormalDir(Path) + FileInfo.Name) and Result;
        end;
      end;
      DosCode := FindNext(FileInfo);
    end;
  finally
    FindClose(FileInfo);
  end;
  if DeleteDir and Result and (DosCode = FileNotFound) and
    not((Length(Path) = 2) and (Path[2] = ':')) then
  begin
    RmDir(Path);
    Result := (IOResult = 0) and Result;
  end;
end;

function cmIdToStr(i: integer): String;
var
  S: String;
var
  ost: integer;
var
  c: char;
const
  chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  if i >= 2147483647 then
    Raise EMyException.Create('Ожидается число < 2147483647');
  if i < 0 then
    Raise EMyException.Create('Ожидается значение >=0');

  S := '';
  repeat
    ost := i mod 36;
    i := i div 36;
    c := chars[ost + 1];
    S := c + S;
  until i = 0;
  while Length(S) < 6 do
  begin
    S := ' ' + S;
  end;

  Result := S;
end;

function cmStrToId(S: String): integer;
var
  c: char;
  i: integer;
  p: integer;
const
  chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  Result := 0;
  S := trim(S);
  if Length(S) > 6 then
    Raise EMyException.Create('Ожидается строка не длиннее 6 символов: ' + S);
  for i := 1 to Length(S) do
  begin
    c := S[i];
    p := Pos(c, chars) - 1;
    if p < 0 then
      Raise EMyException.Create('Ожидается символ ' + chars);
    Result := Result * 36;
    Result := Result + p;
  end;
  if Result < 0 then
    Raise EMyException.Create('На входе слишком большое значение: ' + S);

end;

function cmCopyFile(const aExistsFileName, ANewFileName: string;
  aFailIfExists: Boolean): Boolean;
begin
  Result := Windows.CopyFile(PWideChar(aExistsFileName),
    PWideChar(ANewFileName), aFailIfExists);
end;

function cmMoveFile(const aExistsFileName, ANewFileName: string): Boolean;
begin
  Result := Windows.MoveFile(PWideChar(aExistsFileName),
    PWideChar(ANewFileName));
end;

// выполнить внешнее приложение и дождаться его окончания
function cmRunApp(const CmdStr: String): cardinal;
var
  SInfo: TStartupInfo;
  PInfo: TProcessInformation;
begin
  FillChar(SInfo, SizeOf(SInfo), 0);
  SInfo.cb := SizeOf(SInfo);

  SInfo.dwFlags := STARTF_USESHOWWINDOW;
  SInfo.wShowWindow := 1;

  if not CreateProcess(nil, PChar(CmdStr), nil, nil, false,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, SInfo, PInfo) then
    RaiseLastOSError;

  while GetExitCodeProcess(PInfo.hProcess, Result) and
    (Result = STILL_ACTIVE) do
    Application.ProcessMessages;

  CloseHandle(PInfo.hProcess);
  CloseHandle(PInfo.hThread);
end;

// Вспомогательная функция - выделяет бит из слова и возвращает True если
// бит установлен и False если бит сброшен
function cmGetBit(Value: LongInt; Bit: integer): Boolean;
begin
  if (Bit >= 0) and (Bit < 32) then
    Result := (Value and (1 shl Bit)) <> 0
  else
    Result := false;
end;

// Изменение значения бита на противоположное
function cmChangeBit(Value: LongInt; Bit: integer): LongInt;
begin
  if (Bit >= 0) and (Bit < 32) then
    Result := Value xor (1 shl Bit)
  else
    Result := Value;
end;

function cmCorrectFloat(S: string): string;
var
  i, Poz: integer;
begin
  // удаляем пробелы из отформатированной строки
  for i := Length(S) downto 1 do
    if (S[i] = #32) or (S[i] = #160) then
      Delete(S, i, 1);
  // устанавливаем нужный десятичный разделитель
  if DecimalSeparator = '.' then
    Poz := Pos(',', S)
  else
    Poz := Pos('.', S);
  if Poz <> 0 then
    S[Poz] := DecimalSeparator;
  // возвращаем откорректированное значение
  Result := S;
end;

function cmExtractFirstWord(var Source: string; Rzd: string): string;
var
  Poz: integer;
begin
  Poz := Pos(Rzd, Source);
  if Poz = 0 then
  begin
    Result := Source;
    Source := '';
  end
  else
  begin
    Result := Copy(Source, 1, Poz - 1);
    Delete(Source, 1, Poz + Length(Rzd) - 1);
  end;
end;

function cmExtractLastWord(var Source: string; Rzd: string): string;
var
  S: string;
  Len: integer;
begin
  S := Source;
  while S <> '' do
    Result := cmExtractFirstWord(S, Rzd);
  Len := Length(Source) - (Length(Result) + Length(Rzd));
  if Len > 0 then
    Source := Copy(Source, 1, Len)
  else
    Source := '';
end;

procedure cmSaveLog(FileName, Text: string);
var
  f: TextFile;
begin
  AssignFile(f, FileName);
  if FileExists(FileName) then
    Reset(f)
  else
    Rewrite(f);
  Append(f);
  Writeln(f, Text);
  Flush(f);
  CloseFile(f);
end;

function GetAppIniFileName: string;
begin
  Result := ChangeFileExt(ParamStr(0), '.ini');
end;

// .......................string utilites........................................
function cmWordCount(S: String; Ch: char): integer;
var
  i: integer;
begin
  Result := 0;
  if S = '' then
    Exit;
  Result := 1;
  for i := 1 to Length(S) do
    if S[i] = Ch then
      Inc(Result);
end;

function cmGetWord(S: String; Nomer: integer; Ch: char): String;
var
  WPoz, i: integer;
begin
  WPoz := 1;
  Result := '';
  for i := 1 to Length(S) do
  begin
    if S[i] = Ch then
      Inc(WPoz)
    else if WPoz = Nomer then
      Result := Result + S[i];
    if WPoz > Nomer then
      Break;
  end;
end;

function cmReplaceWord(Source, FindWord, NewWord: string): string;
var
  Poz: integer;
begin
  repeat
    Poz := Pos(FindWord, Source);
    if Poz <> 0 then
    begin
      Delete(Source, Poz, Length(FindWord));
      Insert(NewWord, Source, Poz);
    end
    until Poz = 0;
    Result := Source;
  end;

  // ...................получение системной информации.............................
  function cmGetSystemDirectory: string;
  var
    PRes: PChar;
    Res: word;
  begin
    Result := '';
    PRes := StrAlloc(255);
    Res := GetWindowsDirectory(PRes, 255);
    if Res <> 0 then
      Result := StrPas(PRes);
  end;

  function cmWinVersionCode: smallint;
  var
    lpVersionInformation: TOSVersionInfo;
    BRes: Boolean;
  begin
    Result := -1;
    lpVersionInformation.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
    BRes := GetVersionEx(lpVersionInformation);
    if BRes then
      Result := lpVersionInformation.dwPlatformId;
  end;

  function cmGetBIOSDate(WinVer: byte): string;
  var
    p: pointer;
    S: string[255];
  begin
    Result := '';
    if WinVer = 2 then
    begin
      with TRegistry.Create do
        try
          RootKey := HKEY_LOCAL_MACHINE;
          if OpenKeyReadOnly('HARDWARE\DESCRIPTION\System') then
            Result := ReadString('SystemBiosDate');
        finally
          Free;
        end;
    end
    else
      try
        S[0] := #8;
        p := pointer($0FFFF5);
        Move(p^, S[1], 8);
        Result := Copy(S, 1, 2) + '/' + Copy(S, 4, 2) + '/' + Copy(S, 7, 2);
      except
      end;
  end;

  function cmGetVolumeInfo: DWord;
  var
    VolumeName, FileSystemName: array [0 .. MAX_PATH - 1] of char;
    VolumeSerialNo: DWord;
    MaxComponentLength, FileSystemFlags: cardinal;
  begin
    GetVolumeInformation('C:\', VolumeName, MAX_PATH, @VolumeSerialNo,
      MaxComponentLength, FileSystemFlags, FileSystemName, MAX_PATH);
    Result := LongWord(VolumeSerialNo);
  end;

  procedure cmCriticalMessage(Msg: string);
  var
    Form: TAppTerminateForm;
  begin
    Form := TAppTerminateForm.Create(Application);
    Form.Msg.Caption := Msg;
    Form.ShowModal;
    Form.Free;
  end;

  procedure cmShowMessage(Msg: string; ErrorImage: Boolean = false;
    Position: TPosition = poMainFormCenter; TimeOut: integer = 0);
  var
    Form: TcmInfoBoxForm;
  begin
    Form := TcmInfoBoxForm.Create(Application);
    Form.Position := Position;
    try
      Form.Message.Caption := Msg;
      Form.SetTimeOut(TimeOut);
      Form.ErrorPicture := ErrorImage;
      Form.ShowModal;
    finally
      Form.Free;
    end;
  end;

  function cmMessageBox(Msg: string;
    Position: TPosition = poMainFormCenter): Boolean;
  var
    Form: TcmMessageBoxForm;
  begin
    Form := TcmMessageBoxForm.Create(Application);
    Form.Position := Position;
    try
      Form.Message.Caption := Msg;
      Result := Form.ShowModal = mrOk;
    finally
      Form.Free;
    end;
  end;

  { function cmFileVersion(WithComments: boolean = true): string;
    var Info: TJclFileVersionInfo;
    S,S1: string;
    i,Poz: integer;
    begin
    Result:='';
    Info:=TJclFileVersionInfo.Create(Application.ExeName);
    try
    S:=Info.FileVersion;
    for i:=1 to 3 do
    begin
    Poz:=Pos('.',S);
    S1:=Copy(S,1,Poz-1);
    Delete(S,1,Poz);
    if i=1 then Result:=S1
    else begin
    if Length(S1)=1 then S1:='0'+S1;
    Result:=Result+'.'+S1;
    end;
    end;
    if WithComments then Result:=Result+' '+Info.Comments;
    finally
    Info.Free;
    end;
    end; }

  function cmGetFileDate(FileName: string): string;
  var
    FD: integer;
    D: TDateTime;
  begin
    Result := '';
    if not FileExists(FileName) then
      Exit;
    FD := FileAge(FileName);
    if FD = -1 then
      Exit;
    D := FileDateToDateTime(FD);
    Result := FormatDateTime('YYYYMMDDHHNNSS', D);
  end;

  function cmFileDateToDateTime(FileDate: string): TDateTime;
  var
    Y, M, D, H, N, S: word;
  begin
    Y := StrToInt(Copy(FileDate, 1, 4));
    Delete(FileDate, 1, 4);
    M := StrToInt(Copy(FileDate, 1, 2));
    Delete(FileDate, 1, 2);
    D := StrToInt(Copy(FileDate, 1, 2));
    Delete(FileDate, 1, 2);
    H := StrToInt(Copy(FileDate, 1, 2));
    Delete(FileDate, 1, 2);
    N := StrToInt(Copy(FileDate, 1, 2));
    Delete(FileDate, 1, 2);
    S := StrToInt(FileDate);
    Result := EncodeDateTime(Y, M, D, H, N, S, 0);
  end;

  function cmSetFileDate(FileName, FileDate: string): Boolean;
  var
    FD: integer;
  begin
    // устанавливаем дату файла
    FD := DateTimeToFileDate(cmFileDateToDateTime(FileDate));
    Result := FileSetDate(FileName, FD) = 0;
  end;

  function cmCreateGUIDString: string;
  var
    GUID: TGUID;
  begin
    CreateGuid(GUID);
    Result := GUIDTOString(GUID);
    Result := Copy(Result, 2, Length(Result) - 2);
  end;

end.
