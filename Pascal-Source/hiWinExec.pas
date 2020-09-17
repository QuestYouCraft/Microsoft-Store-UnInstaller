unit hiWinExec;

interface

uses Kol, Share, Windows, ShellApi, Debug;

type

  THIWinExec = class(TDebug)
    private
      hProcess: THandle;
      hPipeInputWrite: THandle;
      hPipeOutputRead: THandle;
      hPipeErrorsRead: THandle;
      hPipeInputRead: THandle;
      hPipeOutputWrite: THandle;
      hPipeErrorsWrite: THandle;

      dwReadThreadID: dword;
      hReadThread: THandle;
      FRead: boolean;
      FExitCode: dword;
      FProcessID: dword;

      procedure Read;
      procedure Terminate;
      function RunProcess(const Fn, CmdLine, WDir: string; Wait: boolean): boolean;
    public
      _prop_Param: string;
      _prop_FileName: string;
      _prop_Mode: byte;
      _prop_RunEvent: byte;
      _prop_Action: string;
      _prop_WorkingDir: string;

      _data_Params: THI_Event;
      _data_FileName: THI_Event;
      _data_Action: THI_Event;
      _data_WorkingDir: THI_Event;

      _event_onExec: THI_Event;
      _event_onConsoleResult: THI_Event;
      _event_onConsoleError: THI_Event;
      _event_onConsoleTerminate: THI_Event;

      procedure _work_doExec(var _Data:TData; Index:word);
      procedure _work_doRunCpl(var _Data:TData; Index:word);
      procedure _work_doShellExec(var _Data:TData; Index:word);
      procedure _work_doConsoleExec(var _Data:TData; Index:word);
      procedure _work_doConsoleInput(var _Data:TData; Index:word);
      procedure _work_doConsoleTerminate(var _Data:TData; Index:word);

      procedure _var_ExitCode(var _Data: TData; Index: word);
      procedure _var_ProcessID(var _Data: TData; Index: word);

      destructor Destroy; override;
  end;

implementation

function THIWinExec.RunProcess(const Fn, CmdLine, WDir: string; Wait: boolean): boolean;
var
  SI: TStartupInfo;
  PI: TProcessInformation;
  Dir: PChar;
begin
  FillChar(SI, SizeOf(TStartupInfo), 0);
  with SI do
  begin
    cb := SizeOf(TStartupInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := _prop_Mode;
  end;
  
  FExitCode := 0;
  FProcessID := 0;
  
  if Length(WDir) > 0 then Dir := PChar(WDir) else Dir := nil;
  
  Result := CreateProcess(nil, PChar(Trim(Fn + ' ' + CmdLine)), nil, nil,
                          False, CREATE_DEFAULT_ERROR_MODE, nil, Dir, SI, PI);
  if Result then
  begin
    FProcessID := PI.dwProcessId;
    if Wait then
    begin
      WaitForSingleObject(PI.hProcess, INFINITE);
      GetExitCodeProcess(PI.hProcess, FExitCode);
    end;
    CloseHandle(PI.hThread);
    CloseHandle(PI.hProcess);
  end;
end;

procedure THIWinExec._work_doRunCpl;
var Fn: string;
begin
  Fn := ReadString(_Data,_data_FileName,_prop_FileName);
  WinExec(PChar('rundll32.exe shell32.dll,Control_RunDLL ' + Fn),_prop_Mode)
end;

procedure THIWinExec._work_doExec;
var Fn, Cmd, WD: string;
begin
  Fn := ReadString(_Data,_data_FileName,_prop_FileName);
  Cmd := ReadString(_Data,_data_Params,_prop_Param);
  WD := ReadString(_Data,_data_WorkingDir,_prop_WorkingDir);
  
  if RunProcess(Fn, Cmd, WD, Boolean(_prop_RunEvent)) then
    _hi_CreateEvent(_Data, @_event_onExec);
end;

procedure THIWinExec._work_doShellExec;
var Fn, Params, WD, Action: string;
    Dir: PChar;
begin
  Fn := ReadString(_Data,_data_FileName,_prop_FileName);
  Params := ReadString(_Data,_data_Params,_prop_Param);
  WD := ReadString(_Data,_data_WorkingDir,_prop_WorkingDir);
  if Length(WD) > 0 then Dir := PChar(WD) else Dir := nil;
  Action := ReadString(_Data,_data_Action,_prop_Action);
  
  ShellExecute(0, PChar(Action), PChar(Fn), PChar(Params), Dir, _prop_Mode);
end;

function ReadFunc(Parent:THIWinExec):cardinal; stdcall;
begin
  Parent.Read;
  Result := 0;
end;

procedure THIWinExec.Read;
var Total:dword; bWait:boolean; hWait:THandle; bError:boolean; 
  pBuffer: array[0..1024] of char;
begin
  hWait := CreateEvent(nil,false,false,nil); bError := false;
  while FRead and not bError do begin
    bWait := true;
    if not PeekNamedPipe(hPipeErrorsRead,nil,0,nil,@Total,nil) then bError := true;
    if Total>0 then begin
      bWait := false;
      if ReadFile(hPipeErrorsRead, pBuffer, 1024, Total, nil) then begin
         pBuffer[Total] := #0;
        _hi_OnEvent(_event_onConsoleError, pBuffer);
      end;
    end;
    if not PeekNamedPipe(hPipeOutputRead,nil,0,nil,@Total,nil) then bError := true;
    if Total>0 then begin
      bWait := false;
      if ReadFile(hPipeOutputRead, pBuffer, 1024, Total, nil) then begin
         pBuffer[Total] := #0;
        _hi_OnEvent(_event_onConsoleResult, pBuffer);
      end;
    end;
    if bWait then WaitForSingleObject(hWait,1);
  end;
  CloseHandle(hWait);
  if bError then begin
    Terminate;
    _hi_OnEvent(_event_onConsoleTerminate);
  end;
end;

procedure THIWinExec.Terminate;
begin
  if hProcess<>0 then begin
    FRead := false;
    TerminateProcess(hProcess, 0);
    CloseHandle(hProcess);
    CloseHandle(hPipeInputRead);
    CloseHandle(hPipeOutputWrite);
    CloseHandle(hPipeErrorsWrite);
    CloseHandle(hPipeInputWrite);
    CloseHandle(hPipeOutputRead);
    CloseHandle(hPipeErrorsRead);
    CloseHandle(hReadThread);
    hProcess := 0;
  end;
end;

procedure THIWinExec._work_doConsoleExec;
var
  sa: TSECURITYATTRIBUTES;
  si: TSTARTUPINFO;
  pi: TPROCESSINFORMATION;
  Res: Boolean;
  CommandLine:string;
  FN,params:string;
begin
  Fn := ReadString(_Data,_data_FileName,_prop_FileName);
  Params := ReadString(_Data,_data_Params,_prop_Param);
  CommandLine := Fn + ' ' + Params;
  
  Terminate;
  
  sa.nLength := sizeof(sa);
  sa.bInheritHandle := true;
  sa.lpSecurityDescriptor := nil;
  
  CreatePipe(hPipeInputRead, hPipeInputWrite, @sa, 0);
  CreatePipe(hPipeOutputRead, hPipeOutputWrite, @sa, 0);
  CreatePipe(hPipeErrorsRead, hPipeErrorsWrite, @sa, 0);
  
  ZeroMemory(@si, SizeOf(si));
  ZeroMemory(@pi, SizeOf(pi));
  
  si.cb := SizeOf(si);
  si.dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  si.wShowWindow := SW_HIDE;
  si.hStdInput := hPipeInputRead;
  si.hStdOutput := hPipeOutputWrite;
  si.hStdError := hPipeErrorsWrite;

  Res := CreateProcess(nil, PChar(CommandLine), nil, nil, true,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, si, pi);

  // Procedure will exit if CreateProcess fail
  if not Res then
  begin
    CloseHandle(hPipeInputRead);
    CloseHandle(hPipeOutputWrite);
    CloseHandle(hPipeErrorsWrite);
    CloseHandle(hPipeInputWrite);
    CloseHandle(hPipeOutputRead);
    CloseHandle(hPipeErrorsRead);
    hProcess := 0;
    Exit;
  end;
  
  hProcess := pi.hProcess; FRead := true;
  hReadThread := CreateThread(nil,1024,@ReadFunc,Self,0,dwReadThreadID);

  _hi_onEvent(_event_onExec);
end;

procedure THIWinExec._work_doConsoleInput;
var Total:dword; s:string;
begin
  if hProcess=0 then Exit;
  s := ToString(_Data);
  WriteFile(hPipeInputWrite, PChar(s)^, Length(s), Total, nil);
end;

procedure THIWinExec._work_doConsoleTerminate;
begin
  Terminate;
  _hi_OnEvent(_event_onConsoleTerminate);
end;

procedure THIWinExec._var_ExitCode(var _Data: TData; Index: word);
begin
  dtInteger(_Data, FExitCode);
end;

procedure THIWinExec._var_ProcessID(var _Data: TData; Index: word);
begin
  dtInteger(_Data, FProcessID);
end;

destructor THIWinExec.Destroy;
begin
  Terminate;
  inherited;
end;

end.
