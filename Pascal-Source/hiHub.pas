unit hiHub;

interface

uses Kol,Share,Debug;

type
 THIHub = class(TDebug)
   private
     FOutCount:byte;
     procedure SetOutCount(value:word);
   public
     _prop_InCount:byte;
     onEvent:array of THI_Event;

     procedure doEvent(var Data:TData; Index:word);
     property _prop_OutCount:word write SetOutCount;
 end;

implementation

procedure THIHub.SetOutCount;
begin
   SetLength(onEvent,Value);
   FOutCount := Value;
end;

procedure THIHub.doEvent;
var i:integer;
begin
   for i := 0 to FOutCount-1 do
     _hi_onEvent_(onEvent[i],Data);
end;

end.
