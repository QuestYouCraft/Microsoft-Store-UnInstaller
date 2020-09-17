unit hiThread;

interface

{$I share.inc}

uses Kol,Share,Windows,Debug;

type
  THIThread = class(TDebug)
   private
    th:PThread;
    FStop:boolean;

    function Execute(Sender:PThread): Integer;
    procedure SyncExec;
   public
    _prop_Delay:cardinal;
    _prop_FastStop:boolean;
    _prop_BusyEvent:byte;

    _event_onSyncExec:THI_Event;
    _event_onExec:THI_Event;

    destructor Destroy; override;
    procedure _work_doStart(var _Data:TData; Index:word);
    procedure _work_doStop(var _Data:TData; Index:word);
    procedure _work_doStopFlag(var _Data:TData; Index:word);
    procedure _work_doDelay(var _Data:TData; Index:word);
    procedure _var_Busy(var _Data:TData; Index:word);
  end;

implementation

destructor THIThread.Destroy;
var dt:TData;
begin
   _work_doStop(dt,0);
   inherited Destroy;
end;

function THIThread.Execute(Sender:PThread): Integer;
begin
    FStop := false;
    repeat
       sleep(_prop_delay);
       _hi_OnEvent(_event_onExec);
       if Assigned(_event_onSyncExec.Event) then Sender.Synchronize(SyncExec);
    until Sender.Terminated or _prop_FastStop or FStop;
    Sender.Tag := 0;
    Result := 0;
end;

procedure THIThread.SyncExec;
begin
   _hi_OnEvent(_event_onSyncExec);
end;

procedure THIThread._work_doStart;
begin
   if Assigned(th) then
    begin
      if(_prop_BusyEvent = 0)and( th.Tag = 1 ) then exit;
      th.Free;
    end;

   th := {$ifdef F_P}NewThreadforFPC{$else}NewThread{$endif};
   th.OnExecute := Execute;
   th.Resume;
   th.Tag := 1;
end;

procedure THIThread._work_doStop;
begin
  if th <> nil then
    begin
      th.Free;
      th := nil;
    end;
end;

procedure THIThread._work_doStopFlag;
begin
   FStop := true;
end;

procedure THIThread._work_doDelay;
begin
   _prop_Delay := ToInteger(_Data);
end;

procedure THIThread._var_Busy;
begin
   dtInteger(_Data,integer(Assigned(th) and(th.Tag = 1)));
end;

end.
