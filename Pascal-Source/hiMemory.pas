unit hiMemory;

interface

uses Kol,Share,Debug;

type
  THIMemory = class(TDebug)
   private
    FData:TData;
    FDefault:TData;

    procedure SetDefault(Data:TData);
   public
    _event_onData:THI_Event;
    _data_Data:THI_Event;

    procedure _work_doValue(var _Data:TData; Index:word);
    procedure _work_doClear(var _Data:TData; Index:word);
    procedure _var_Value(var _Data:TData; Index:word);
    property _prop_Default:TData write SetDefault;
  end;

implementation

procedure THIMemory.SetDefault;
begin
   FDefault := Data;
   FData := FDefault;
end;

procedure THIMemory._work_doValue;
begin
   FData := ReadData(_Data,_data_Data);
   _hi_CreateEvent(_Data,@_event_onData,FData);
end;

procedure THIMemory._work_doClear;
begin
   FData := FDefault;
   _hi_CreateEvent(_Data,@_event_onData,FData);
end;

procedure THIMemory._var_Value;
begin
   _Data := FData;
end;

end.
