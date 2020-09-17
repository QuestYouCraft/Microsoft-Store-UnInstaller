unit hiLayoutSpacer;

interface

uses Kol,Share,Debug,WinLayout;

type
  THILayoutSpacer = class(TDebug)
   private
     FLayout:IWinLayout;
     
     procedure SetLayout(value:IWinLayout);
   public 
     manFlags:cardinal;
     _prop_Left:integer;
     _prop_Top:integer;
     _prop_Width:integer;
     _prop_Height:integer;
     _prop_Align:TControlAlign;

     _prop_WidthScale:integer;
     _prop_HeightScale:integer;

     constructor Create(Parent:PControl);
     destructor Destroy; override; 
     procedure Init;
     procedure _work_doLeft(var Data:TData; Index:word);
     procedure _work_doTop(var Data:TData; Index:word);
     procedure _work_doWidth(var Data:TData; Index:word);
     procedure _work_doHeight(var Data:TData; Index:word);
     property _prop_Layout:IWinLayout write SetLayout;
  end;

implementation

constructor THILayoutSpacer.Create(Parent:PControl);
begin
   inherited Create;
end;

destructor THILayoutSpacer.Destroy;
begin   
   if FLayout <> nil then
     ExplodeLayout(FLayout, self);
   inherited Destroy;
end;

procedure THILayoutSpacer.Init;
begin
  // do nothing
end;

procedure THILayoutSpacer._work_doLeft;
begin
   _prop_Left := ToInteger(Data);
end;

procedure THILayoutSpacer._work_doTop;
begin
   _prop_Top := ToInteger(Data);
end;

procedure THILayoutSpacer._work_doWidth;
begin
   _prop_Width := ToInteger(Data);
end;

procedure THILayoutSpacer._work_doHeight;
begin
   _prop_Height := ToInteger(Data);
end;

procedure THILayoutSpacer.SetLayout;
begin
  FLayout := value;
  if value <> nil then
     value.addSpacer(self, _prop_WidthScale, _prop_HeightScale);
end;

end.
