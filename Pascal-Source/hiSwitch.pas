unit hiSwitch;

interface

uses Kol,Share,Debug;

type
  THISwitch = class(TDebug)
   private
    State:boolean;
    _dat:TData;
    procedure SetState(Value:byte);
   public
    _prop_DataOn:TData;
    _prop_DataOff:TData;

    _data_DataOff:THI_Event;
    _data_DataOn:THI_Event;
    _event_onOff:THI_Event;
    _event_onOn:THI_Event;
    _event_onSwitch:THI_Event;

    procedure _work_doSwitch(var _Data:TData; Index:word);
    procedure _work_doCheck(var _Data:TData; Index:word);
    procedure _work_doReset(var _Data:TData; Index:word);
    procedure _work_doOn(var _Data:TData; Index:word);
    procedure _var_State(var _Data:TData; Index:word);
    property _prop_Default:byte write SetState;
  end;

implementation

procedure THISwitch.SetState;
begin
  State := Value=0;
  if State then _dat := _prop_DataOn
  else _dat := _prop_DataOff;
end;

procedure THISwitch._work_doSwitch;
var P:PHI_Event;
begin
  State := not State;
  _work_doCheck(_Data,0);
  dec(_Data.data_type,$80);
  P := _Data.next;
  _hi_onEvent(_event_onSwitch,_Data);
  _hi_CreateEvent(_Data,P,_dat);
end;

procedure THISwitch._work_doCheck;
begin
  if State then begin
    _dat := ReadData(_Data,_data_DataOn,@_prop_DataOn);
    _hi_CreateEvent(_Data,@_event_onOn,_dat);
  end else begin
    _dat := ReadData(_Data,_data_DataOff,@_prop_DataOff);
    _hi_CreateEvent(_Data,@_event_onOff,_dat);
  end;
end;

procedure THISwitch._work_doReset;
begin
  if State then
    _work_doSwitch(_data,0);
end;

procedure THISwitch._work_doOn;
begin
  if not State then
    _work_doSwitch(_data,0);
end;

procedure THISwitch._var_State;
begin
  _Data := _dat;
end;

end.
