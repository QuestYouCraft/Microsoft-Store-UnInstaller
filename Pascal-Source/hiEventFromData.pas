unit hiEventFromData;

interface

uses Kol,Share,Debug;

type
  THIEventFromData = class(TDebug)
   private
    dt:TData;
   public
    _data_Data:THI_Event;
    _event_onEvent:THI_Event;

    procedure _work_doData(var _Data:TData; Index:word);
    procedure _var_GetData(var _Data:TData; Index:word);
  end;

implementation

procedure THIEventFromData._work_doData;
var  ldt:TData;
begin
   ldt := ReadMTData(_Data,_data_Data);
   FreeData(@dt);
   CopyData(@dt,@ldt);
end;

procedure THIEventFromData._var_GetData;
begin
  _hi_OnEvent(_event_onEvent,_Data);
  _data := dt;
end;

end.
