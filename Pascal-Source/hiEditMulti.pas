unit hiEditMulti;

interface

uses Kol,Share,Debug;

type
 THIEditMulti = class(TDebug)
   private
     FParent:pointer;

   public
     MainClass:TObject;
     Works:array of THI_Event;
     Vars:array of THI_Event;

     procedure onEvent(var Data:TData; Index:word);
     procedure _Data(var Data:TData; Index:word);
     property Parent:pointer read FParent write FParent;
 end;

implementation

uses hiMultiElement;

procedure THIEditMulti.onEvent;
begin
   _hi_onEvent(THIMultiElement(FParent).Events[Index],Data);
end;

procedure THIEditMulti._Data;
begin
   _ReadData(Data,THIMultiElement(FParent).Datas[Index]);
end;

end.
