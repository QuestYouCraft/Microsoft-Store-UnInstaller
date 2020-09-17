unit hiIf_else;

interface

uses Kol,Share,If_arg,Debug;

type
  THIIf_else = class(TDebug)
   private
   public
    _prop_Type:byte;
    _prop_Op1:TData;
    _prop_Op2:TData;
    _prop_Mode:byte;

    _data_Op2:THI_Event;
    _data_Op1:THI_Event;
    _event_onTrue:THI_Event;
    _event_onFalse:THI_Event;

    procedure _work_doCompare(var _Data:TData; Index:word);
  end;

implementation

procedure THIIf_else._work_doCompare;
var
   op1,op2,dt:TData;
begin
   dt := _Data;
   Op1 := ReadData(_Data,_data_Op1,@_prop_Op1);
   Op2 := ReadData(_Data,_data_Op2,@_prop_Op2);
   if Compare(Op1,Op2,_prop_Type) then
      _hi_CreateEvent(_Data,@_event_onTrue,Dt)
   else
      _hi_CreateEvent(_Data,@_event_onFalse,Dt);
end;

end.
