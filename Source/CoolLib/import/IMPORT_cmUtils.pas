unit IMPORT_cmUtils;

interface

uses
  SysUtils,
  PaxRegister,
  PaxCompiler,
  Forms,
  cmUtils,
  JclFileUtils,
  JclSvcCtrl;

procedure Register_cmUtils;

implementation

procedure Register_cmUtils;
var
  H: integer;
begin
  H:=RegisterNamespace(0, 'cmUtils');

  RegisterHeader(H, 'function cmRunApp(const CmdStr: String): cardinal;', @cmRunApp);
  RegisterHeader(H, 'function cmClearDir(const APath, AMask: string; DeleteDir: Boolean): Boolean;', @cmClearDir);
  RegisterHeader(H, 'function cmDirExists(Name: string): Boolean;', @cmDirExists);
  RegisterHeader(H, 'function cmDirIsEmpty(Name: string): boolean;', @cmDirIsEmpty);
  RegisterHeader(H, 'function cmCreateDirs(Name: string): boolean;', @cmCreateDirs);
  RegisterHeader(H, 'function cmNormalDir(const DirName: string): string;', @cmNormalDir);
  RegisterHeader(H, 'procedure cmMakeFileList(AList: TStrings; const Path, Shb: string);', @cmMakeFileList);
  RegisterHeader(H, 'function cmReadFolders(const Folder: string; FolderList: TStrings): Integer;', @cmReadFolders);
  RegisterHeader(H, 'function cmCreateGUIDString: string;', @cmCreateGUIDString);
  RegisterHeader(H, 'procedure Sleep(milliseconds: Cardinal); stdcall;', @Sleep);
  RegisterHeader(H, 'function cmCopyFile(const aExistsFileName, ANewFileName: string; aFailIfExists: boolean): boolean;', @cmCopyFile);
  RegisterHeader(H, 'function cmMoveFile(const aExistsFileName, ANewFileName: string): boolean;', @cmMoveFile);
  RegisterHeader(H, 'function cmCorrectFloat(S: string): string;', @cmCorrectFloat);

  //strings
  RegisterHeader(H, 'function cmWordCount(S: String; Ch: char): integer;', @cmWordCount);
  RegisterHeader(H, 'function cmGetWord(S: String; Nomer: integer; Ch: char): String;', @cmGetWord);
  RegisterHeader(H, 'function cmReplaceWord(Source,FindWord,NewWord: string): string;', @cmReplaceWord);
  RegisterHeader(H, 'function cmExtractFirstWord(var Source: string; Rzd: string): string;', @cmExtractFirstWord);
  RegisterHeader(H, 'function cmExtractLastWord(var Source: string; Rzd: string): string;', @cmExtractLastWord);
  //сообщения
  RegisterHeader(H, 'procedure cmShowMessage(Msg: string; ErrorStyle: boolean = false; TimeOut: integer = 0);', @cmShowMessage);
  RegisterHeader(H, 'function cmMessageBox(Msg: string): boolean;', @cmMessageBox);
  RegisterHeader(H, 'procedure cmCriticalMessage(Msg: string);', @cmCriticalMessage);

  //services
  RegisterRTTIType(H, TypeInfo(TJclServiceState));
  RegisterHeader(H, 'function GetServiceStatus(const AServer,AServiceName: string): TJclServiceState;', @GetServiceStatusByName);
  RegisterHeader(H, 'function StopService(const AServer, AServiceName: String): Boolean;', @StopServiceByName);
  RegisterHeader(H, 'function StartService(const AServer,AServiceName: String): Boolean;', @StartServiceByName);
end;

end.
