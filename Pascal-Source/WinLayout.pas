unit WinLayout;

{$IFNDEF FPC}{$HINTS OFF}{$ENDIF}
{$WARNINGS OFF}

interface

uses Messages,Windows,Kol,Share,Debug;

const
  OBJ_CONTROL = 1;
  OBJ_LAYOUT  = 2;
  OBJ_SPACER  = 3;

type
 TIWinLayout = record
   ref:integer; // количество ссылок на объект
   addControl:procedure(obj:PControl; ws, hs:integer) of object;
   addLayout:procedure(obj:pointer; ws, hs:integer) of object;
   addSpacer:procedure(obj:pointer; ws, hs:integer) of object;
   deleteObject:procedure(obj:pointer) of object;
 end;
 IWinLayout = ^TIWinLayout;

  TBoxRecord = record
    otype:byte;  
    obj:pointer;
    ws:integer;
    hs:integer;    
  end;
  PBoxRecord = ^TBoxRecord;
  TWinLayout = class(TDebug)
   private
    OldMes:TOnMessage;
    FActive:boolean;
    FLayout:IWinLayout;
    FILayout:IWinLayout;

    procedure _addControl(obj:PControl; ws, hs:integer);
    procedure _addLayout(obj:pointer; ws, hs:integer);
    procedure _addSpacer(obj:pointer; ws, hs:integer);
    procedure _deleteObject(obj:pointer);
    procedure _onObjDestroy(obj:PObj);
    function  _onMessage( var Msg: TMsg; var Rslt: Integer ): Boolean;
    procedure SetLayout(value:IWinLayout);
   protected
    FParent:PControl;
    FList:PStrListEx;
    FLayoutParent:TWinLayout;

    procedure AddObject(otype:byte; obj:pointer; ws, hs:integer); virtual;

    function getLeft:integer;
    function getTop:integer;
    function getHeight:integer;
    function getWidth:integer;
    function getItemLeft(index:integer):integer;
    function getItemTop(index:integer):integer;   
    function getItemHeight(index:integer):integer;
    function getItemWidth(index:integer):integer;   
    function getItemHS(index:integer):integer;
    function getItemWS(index:integer):integer;   
   public
    _prop_Name:string;
    _prop_Space:integer;
    _prop_Padding:integer;
    _prop_WidthScale:integer;
    _prop_HeightScale:integer;
        
    constructor Create(_Parent:PControl);
    destructor Destroy; override;
    procedure _work_doResize(var _Data:TData; index:word);
    procedure _work_doSort(var _Data:TData; index:word);
    procedure ReSize(PLeft, PTop, PWidth, PHeight:integer); virtual; abstract;
    function getInterfaceWinLayout:IWinLayout;
    
    procedure Sort; virtual;
    procedure ItemResize(index,x,y,w,h:integer);
    
    property _prop_Layout:IWinLayout write SetLayout;
    property Left:integer read GetLeft;
    property Top:integer read GetTop;
    property Width:integer read GetWidth;
    property Height:integer read GetHeight;
    property ItemLeft[index:integer]:integer read getItemLeft;
    property ItemTop[index:integer]:integer read getItemTop;
    property ItemWidth[index:integer]:integer read getItemWidth;
    property ItemHeight[index:integer]:integer read getItemHeight;
    property ItemWS[index:integer]:integer read getItemWS;
    property ItemHS[index:integer]:integer read getItemHS;
  end;

procedure ExplodeLayout(l:IWinLayout; obj:pointer);

implementation

uses hiLayoutSpacer;

procedure ExplodeLayout(l:IWinLayout; obj:pointer);
begin
  if Assigned(l.AddControl) then
    l.deleteObject(obj)
  else
   begin
     dec(l.ref);
     if l.ref = 0 then
       dispose(l);
   end;
end;

constructor TWinLayout.Create(_Parent:PControl);
begin
   inherited Create;
   FParent := _Parent;
   FList := NewStrListEx;
   OldMes := FParent.OnMessage;
   FActive := true;
   FParent.OnMessage := _onMessage;
end;

destructor TWinLayout.Destroy;
var i:integer;
begin
   if FLayout <> nil then
     ExplodeLayout(FLayout, self);
     
   FParent.OnMessage := OldMes;
   for i := 0 to FList.Count-1 do
     dispose(PBoxRecord(FList.Objects[i]));
   FList.free;
   
   if FILayout <> nil then
    begin
       if FILayout.ref = 0 then
         dispose(FILayout)
       else FILayout.addControl := nil;
    end;
   inherited;      
end;

procedure TWinLayout._work_doResize;
begin
   with FParent{$ifndef F_P}^{$endif} do ReSize(0, 0, ClientWidth, ClientHeight);
end;

procedure TWinLayout._work_doSort;
begin
   Sort;
end;

function TWinLayout.getLeft:integer;
var i,d:integer;
begin
  Result := $ffff;
  for i := 0 to FList.Count-1 do
    begin
       case PBoxRecord(FLIst.Objects[i]).otype of
        OBJ_CONTROL: d := PControl(PBoxRecord(FLIst.Objects[i]).obj).Left;
        OBJ_LAYOUT : d := TWinLayout(PBoxRecord(FLIst.Objects[i]).obj).Left;
        OBJ_SPACER : d := THILayoutSpacer(PBoxRecord(FLIst.Objects[i]).obj)._prop_Left;
       end;      
       if d < Result then
         Result := d;
    end;
  dec(Result, _prop_Padding);   
end;

function TWinLayout.getTop:integer;
var i,d:integer;
begin
  Result := $ffff;
  for i := 0 to FList.Count-1 do
    begin
       case PBoxRecord(FLIst.Objects[i]).otype of
        OBJ_CONTROL: d := PControl(PBoxRecord(FLIst.Objects[i]).obj).Top;
        OBJ_LAYOUT : d := TWinLayout(PBoxRecord(FLIst.Objects[i]).obj).Top;
        OBJ_SPACER : d := THILayoutSpacer(PBoxRecord(FLIst.Objects[i]).obj)._prop_Top;
       end;      
       if d < Result then
         Result := d;
    end; 
  dec(Result, _prop_Padding);   
end;


function TWinLayout.getHeight:integer;
var i,d:integer;
begin
  Result := 0;
  d := Result;
  for i := 0 to FList.Count-1 do
    begin
       case PBoxRecord(FLIst.Objects[i]).otype of
        OBJ_CONTROL: d := PControl(PBoxRecord(FLIst.Objects[i]).obj).Height;
        OBJ_LAYOUT : d := TWinLayout(PBoxRecord(FLIst.Objects[i]).obj).Height;
        OBJ_SPACER : d := THILayoutSpacer(PBoxRecord(FLIst.Objects[i]).obj)._prop_Height;
       end;      
       if d > Result then
         Result := d;
    end;
  inc(Result, 2*_prop_Padding);   
end;

function TWinLayout.getWidth:integer;
var i,d:integer;
begin
  Result := 0;
  d := Result;
  for i := 0 to FList.Count-1 do
    begin
       case PBoxRecord(FLIst.Objects[i]).otype of
        OBJ_CONTROL: d := PControl(PBoxRecord(FLIst.Objects[i]).obj).Width;
        OBJ_LAYOUT : d := TWinLayout(PBoxRecord(FLIst.Objects[i]).obj).Width;
        OBJ_SPACER : d := THILayoutSpacer(PBoxRecord(FLIst.Objects[i]).obj)._prop_Width;
       end;      
       if d > Result then
         Result := d;
    end; 
  inc(Result, 2*_prop_Padding);   
end;

function TWinLayout.getItemLeft;
begin
   case PBoxRecord(FList.Objects[index]).otype of
     OBJ_CONTROL: Result := PControl(PBoxRecord(FList.Objects[index]).obj).Left; 
     OBJ_LAYOUT : Result := TWinLayout(PBoxRecord(FList.Objects[index]).obj).Left;
     OBJ_SPACER : Result := THILayoutSpacer(PBoxRecord(FList.Objects[index]).obj)._prop_Left;
     else Result := 0;
   end;
end;

function TWinLayout.getItemTop;
begin
   case PBoxRecord(FList.Objects[index]).otype of
     OBJ_CONTROL: Result := PControl(PBoxRecord(FList.Objects[index]).obj).Top; 
     OBJ_LAYOUT : Result := TWinLayout(PBoxRecord(FList.Objects[index]).obj).Top;
     OBJ_SPACER : Result := THILayoutSpacer(PBoxRecord(FList.Objects[index]).obj)._prop_Top;
     else Result := 0;
   end;
end;

function TWinLayout.getItemHeight;
begin
   case PBoxRecord(FList.Objects[index]).otype of
     OBJ_CONTROL: Result := PControl(PBoxRecord(FList.Objects[index]).obj).Height; 
     OBJ_LAYOUT : Result := TWinLayout(PBoxRecord(FList.Objects[index]).obj).Height;
     OBJ_SPACER : Result := THILayoutSpacer(PBoxRecord(FList.Objects[index]).obj)._prop_Height;
     else Result := 0;
   end;
end;

function TWinLayout.getItemWidth;
begin
   case PBoxRecord(FList.Objects[index]).otype of
     OBJ_CONTROL: Result := PControl(PBoxRecord(FList.Objects[index]).obj).Width; 
     OBJ_LAYOUT : Result := TWinLayout(PBoxRecord(FList.Objects[index]).obj).Width;
     OBJ_SPACER : Result := THILayoutSpacer(PBoxRecord(FList.Objects[index]).obj)._prop_Width;
     else Result := 0;
   end;
end;

procedure TWinLayout.ItemResize;
begin
   case PBoxRecord(FList.Objects[index]).otype of
     OBJ_CONTROL: PControl(PBoxRecord(FList.Objects[index]).obj).SetSize(w,h).SetPosition(x,y);
     OBJ_LAYOUT : TWinLayout(PBoxRecord(FList.Objects[index]).obj).ReSize(x,y,w,h);
     OBJ_SPACER : ; // do nothing
   end;
end;

function TWinLayout.getItemHS;
begin
  Result := PBoxRecord(FList.Objects[index]).hs;
end;

function TWinLayout.getItemWS;
begin
  Result := PBoxRecord(FList.Objects[index]).ws;
end;

function TWinLayout.getInterfaceWinLayout:IWinLayout;
begin
  if FILayout = nil then
   begin
      new(FILayout);
      FILayout.ref := 0;
      FILayout.addControl := _addControl;
      FILayout.addLayout := _addLayout;
      FILayout.addSpacer := _addSpacer;
      FILayout.deleteObject := _deleteObject;
   end;
  Result := FILayout; 
end;

function  TWinLayout._onMessage( var Msg: TMsg; var Rslt: Integer ): Boolean;
begin   
   if FActive then
    case Msg.message of
      WM_SIZE: with FParent{$ifndef F_P}^{$endif}  do ReSize(0, 0, ClientWidth, ClientHeight);
    end;
   Result := _hi_OnMessage(OldMes,Msg,Rslt);
end;

procedure TWinLayout.AddObject;
var br:PBoxRecord;
begin
  new(br);
  br.otype := otype;
  br.obj := obj;
  br.ws := ws;
  br.hs := hs;
  FList.AddObject('', cardinal(br));
  inc(FILayout.ref);
end;

procedure TWinLayout.Sort;
begin
  // do nothing
end;

procedure TWinLayout._addControl;
begin
  AddObject(OBJ_CONTROL, obj, ws, hs);
end;

procedure TWinLayout._addLayout;
begin
  AddObject(OBJ_LAYOUT, obj, ws, hs);
  TWinLayout(obj).FLayoutParent := self;
end;

procedure TWinLayout._addSpacer;
begin
  AddObject(OBJ_SPACER, obj, ws, hs);
end;

procedure TWinLayout._deleteObject(obj:pointer);
var i:integer;
begin
  for i := 0 to FList.count-1 do
    if PBoxRecord(FList.Objects[i]).obj = obj then
     begin       
       dispose(PBoxRecord(FList.Objects[i]));
       FList.Delete(i);
       dec(FILayout.ref);
//       with FParent{$ifndef F_P}^{$endif}  do ReSize(0, 0, ClientWidth, ClientHeight);
       break;
     end;
end;

procedure TWinLayout._onObjDestroy(obj:PObj);
begin
  _deleteObject(obj);
end;

procedure TWinLayout.SetLayout(value:IWinLayout);
begin
  FLayout := value;
  if value = nil then exit;
  FActive := false;
//  FParent.OnMessage := OldMes;
  value.addLayout(self, _prop_WidthScale, _prop_HeightScale);
end;

{$IFNDEF FPC}{$HINTS ON}{$ENDIF}
{$WARNINGS ON}

end.