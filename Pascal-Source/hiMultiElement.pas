unit hiMultiElement;

interface

uses Kol,Share,hiEditMulti,Debug;

type
 TOnCreate = function(_parent:pointer; Control:PControl; ParentClass:TObject):THIEditMulti;
 THIMultiElement = class(TDebug)
   private
     FChild:THIEditMulti;
     FOnCreate:TOnCreate;

     procedure SetCreateProc(Value:TOnCreate);

     procedure CreateInstance;
   protected
     FControl:PControl;
   public
     _prop_FirstUsage:boolean;
     Events:array of THI_Event;
     Datas:array of THI_Event;

     ParentClass:TObject;

     constructor Create(Control:PControl); overload;
     constructor Create; overload;   //temp
     destructor Destroy; override;
     procedure Init;

     procedure doWork(var Data:TData; Index:word);
     procedure getVar(var Data:TData; Index:word);
     property OnCreate:TOnCreate write SetCreateProc;
     property Child:THIEditMulti read FChild;
 end;

implementation

constructor THIMultiElement.Create(Control:PControl);
begin
   inherited Create;
   FControl := Control;
end;

constructor THIMultiElement.Create;
begin
   inherited Create;
end;

destructor THIMultiElement.Destroy;
begin
   if Assigned(FChild) then
     FChild.MainClass.Destroy;
   inherited;
end;

procedure THIMultiElement.Init;
begin
end;

procedure THIMultiElement.doWork;
begin
   CreateInstance;
   _hi_OnEvent(FChild.Works[Index],Data);
end;

procedure THIMultiElement.getVar;
begin
   CreateInstance;
   _ReadData(Data,FChild.Vars[Index]);
end;

procedure THIMultiElement.SetCreateProc;
begin
   FOnCreate := Value;
   if not _prop_FirstUsage then
     CreateInstance;
end;

procedure THIMultiElement.CreateInstance;
var PrevNeedInit:boolean;
begin
   if not Assigned(FChild) then
    begin
     PrevNeedInit := NeedInit;
     NeedInit := false;
     FChild := FOnCreate(Self, FControl, ParentClass);
//     FChild.Parent := Self;
     if PrevNeedInit then InitDo;
    end;
end;

end.
