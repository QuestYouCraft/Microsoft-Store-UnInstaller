unit hiMultiBase;

interface

uses kol,share;

type
  TClassMultiBase = class
     ParentElement:TObject;
     Child:TObject;
     constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  end;
  
implementation

constructor TClassMultiBase.Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
begin
   inherited Create;
end;

end.