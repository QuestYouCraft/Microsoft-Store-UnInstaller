unit hiMemoryStream;

interface

uses Kol,Share,Debug;

type
  THIMemoryStream = class(TDebug)
   private
    P:PStream;
    procedure wrPStream(X:PStream);
   public
    _data_SrcStream:THI_Event;
    _event_onCopy:THI_Event;

    constructor Create;
    destructor Destroy; override;
    procedure _work_doCopy(var _Data:TData; Index:word);
    procedure _var_Stream(var _Data:TData; Index:word);
    procedure _work_doPosition(var _Data:TData; Index:word);
    procedure _work_doClear(var _Data:TData; Index:word);
    procedure _work_doSize(var _Data:TData; Index:word);
    procedure _var_Size(var _Data:TData; Index:word);
    procedure _var_Memory(var _Data:TData; Index:word);
    procedure _var_Position(var _Data:TData; Index:word);
    property _prop_Stream:PStream read P write wrPStream;
  end;

implementation

constructor THIMemoryStream.Create;
begin
  inherited;
  P:=NewMemoryStream;
end;

procedure THIMemoryStream.wrPStream;
begin
  P.free;
  P := X;
end;

destructor THIMemoryStream.Destroy;
begin
  P.Free;
  inherited;
end;

procedure THIMemoryStream._work_doCopy;
var St:PStream;
begin
   P.Size := 0;
   St := ReadStream(_data,_data_SrcStream,nil);
   if St <> nil then
    begin
      Stream2Stream(P,St,St.Size);
      _hi_onEvent(_event_onCopy, p);
    end;
end;

procedure THIMemoryStream._var_Stream;
begin
    dtStream(_data,P);
end;

procedure THIMemoryStream._work_doPosition;
begin
   P.Position := ToInteger(_Data);
end;

procedure THIMemoryStream._work_doSize;
begin
   P.Size := ToInteger(_Data);
end;

procedure THIMemoryStream._work_doClear;
begin
   P.Size := 0;
end;

procedure THIMemoryStream._var_Size;
begin
  dtInteger(_data,P.size);
end;

procedure THIMemoryStream._var_Memory;
begin
  dtInteger(_data,integer(P.Memory));
end;

procedure THIMemoryStream._var_Position;
begin
  dtInteger(_Data,P.Position)
end;

end.
