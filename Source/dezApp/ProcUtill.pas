unit ProcUtill;

interface

uses ShellApi, tlhelp32, psapi, WinSvc, Windows, Messages, SysUtils, Variants,
  Classes;

function LocateProcess(const ImageName: String): Integer;
procedure Kill(exe: string);
function KillTask(ExeFileName: string): Integer;

implementation

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  Co: BOOL;
  FS: THandle;
  FP: TProcessEntry32;
begin
  try
    result := 0;
    FS := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    FP.dwSize := Sizeof(FP);
    Co := Process32First(FS, FP);
    while Integer(Co) <> 0 do
    begin
      if ((UpperCase(ExtractFileName(FP.szExeFile)) = UpperCase(ExeFileName))
          or (UpperCase(FP.szExeFile) = UpperCase(ExeFileName))) then
        result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE,
              BOOL(0), FP.th32ProcessID), 0));
      Co := Process32Next(FS, FP);
    end;
    CloseHandle(FS);
  except

  end;
end;

// .....................Получаем id процесса по имени приложения................
function LocateProcess(const ImageName: String): Integer;
var
  Snapshot, ProcessHandle, ModuleHandle, i: Integer;
  BytesRead: Cardinal;
  ProcessEntry: TProcessEntry32;
  ExeFile: String;
  PIDs: array [0 .. 4095] of DWord;
begin
  result := 0;
  Snapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  SetLength(ExeFile, Length(ImageName));
  if Snapshot <> 0 then
  begin
    ProcessEntry.dwSize := Sizeof(TProcessEntry32);
    if Process32First(Snapshot, ProcessEntry) then
      repeat
        if AnsiSameText(ImageName, ExtractFileName(ProcessEntry.szExeFile)) then
        begin
          result := ProcessEntry.th32ProcessID;
          Break;
        end;
      until not Process32Next(Snapshot, ProcessEntry);
      CloseHandle(Snapshot);
  end
  else
  // Processes enumeration loop for Windows NT, 2000 PSAPI
    if EnumProcesses(@PIDs, Sizeof(PIDs), BytesRead) then
  begin
    for i := 0 to BytesRead shr 2 - 1 do
    begin
      ProcessHandle := OpenProcess
        (PROCESS_VM_READ or PROCESS_QUERY_INFORMATION, False, PIDs[i]);
      if ProcessHandle <> 0 then
      begin
        ExeFile := '';
        if EnumProcessModules(ProcessHandle, @ModuleHandle,
          Sizeof(ModuleHandle), BytesRead) then
          GetModuleBaseName(ProcessHandle, ModuleHandle, PChar(ExeFile),
            Length(ExeFile) + 1);
        CloseHandle(ProcessHandle);
        if AnsiSameText(ImageName, ExeFile) then
        begin
          result := PIDs[i];
          Break;
        end;
      end;
    end;
  end;
end;

{ _______Убиваем процесс________________________________________________________ }
procedure Kill(exe: string);
const
  PROCESS_TERMINATE = $0001;
var
  ProcessHandle: THandle;
begin
  ProcessHandle := OpenProcess(PROCESS_TERMINATE, False, LocateProcess(exe));
  TerminateProcess(ProcessHandle, 0);
end;

end.
