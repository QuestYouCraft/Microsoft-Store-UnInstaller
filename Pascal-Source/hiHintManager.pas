unit hiHintManager;

interface
     
uses Messages,Windows,Kol,Share,Debug;

const
  TTS_BALLOON   = $40;
  TTM_SETTITLE  = WM_USER + 32;
  TTDT_AUTOMATIC = 0;
  TTDT_RESHOW = 1;
  TTDT_AUTOPOP = 2;
  TTDT_INITIAL = 3;

type
  TIHintManager = record
    init:function(HintParent:HWND):pointer of object;
    free:procedure(id:pointer) of object;
    hint:procedure(id:pointer; const text:string) of object;
    title:procedure(id:pointer; const idx:integer; const text:string) of object;
    show:procedure(id:pointer) of object;
    hide:procedure(id:pointer) of object;
    move:procedure(id:pointer; x,y:integer) of object;
  end;
  PTOOLINFO = ^TTOOLINFO;
  IHintManager = ^TIHintManager; 
  THIHintManager = class(TDebug)
   private
     hm:IHintManager;
     FHintWidth: integer;
     function init(HintParent:HWND):pointer;
     procedure free(id:pointer);
     procedure hint(id:pointer; const text:string);
     procedure title(id:pointer; const idx:integer; const text:string);
     procedure show(id:pointer);
     procedure hide(id:pointer);
     procedure move(id:pointer; x,y:integer);
   public                   
     _prop_Name:string;
     _prop_HintStyle:byte;
     _prop_HintBackColor:TColor;
     _prop_HintDelay:integer;
     _prop_HintAutoPopUp:integer;
     _prop_HintMargin:integer;
     _prop_HintTrack:boolean;
     _prop_Font:TFontRec;
     
     constructor Create;
     function getInterfaceHint:IHintManager;
     procedure InitByDefault;
     property _prop_HintWidth: integer read FHintWidth write FHintWidth;
  end;

implementation

constructor THIHintManager.Create;
begin
   inherited;
   new(hm);     // временное решение, т.к. приводит к потере памяти
   hm.init := init;
   hm.free := free;
   hm.hint := hint;
   hm.title := title;
   hm.show := show;
   hm.hide := hide;
   hm.move := move;
   FHintWidth := -1;   
end;

procedure THIHintManager.InitByDefault;
begin
    _prop_Font := hiCreateFont('Tahoma',8,0,0,1);
    _prop_HintStyle := 1;
    _prop_HintDelay := 500;
    _prop_HintAutoPopUp := 5000;
    _prop_HintTrack := False;
    _prop_HintMargin := 0;
    _prop_HintBackColor := -16777192;
    _prop_Font.Color := -16777193;
end;

function THIHintManager.getInterfaceHint;
begin
   Result := hm;
end;

function THIHintManager.init;
var style:dword;
    ti:PTOOLINFO;
    fTThwnd:HWND;
    Rect:TRect;
    lf:TLogFont;
    hf:HFONT;    
    i:integer;
begin       
  new(ti);
  FillChar(ti^, sizeof(TTOOLINFO), #0);
  ti.cbSize := sizeof(TTOOLINFO);
  ti.uFlags := TTF_SUBCLASS or TTF_IDISHWND or TTF_TRANSPARENT;
  ti.hwnd := HintParent;
  ti.hinst := 0;
  ti.uId := HintParent;  

  Style := TTS_NOPREFIX or TTS_ALWAYSTIP or WS_POPUP;
  if _prop_HintStyle = 0 then Style := Style or TTS_BALLOON;
  fTThwnd := CreateWindowEx(WS_EX_TOPMOST, TOOLTIPS_CLASS, nil, Style,
             integer(CW_USEDEFAULT), integer(CW_USEDEFAULT), integer(CW_USEDEFAULT), integer(CW_USEDEFAULT),
             HintParent, 0, hInstance, nil );
  // init LogFont
  FillChar(lf, sizeof(lf), #0);
  // init Font_Name   
  FillChar(lf.lfFaceName, sizeof(lf.lfFaceName), #0);
  for i:=1 to Length(_prop_Font.Name) do lf.lfFaceName[i-1] := _prop_Font.Name[i];
  // init Font_Size
  lf.lfheight := _hi_SizeFnt(_prop_Font.Size);
  // init Font_CharSet
  lf.lfCharSet := byte(_prop_Font.CharSet);
  // init Font_Style   
  if _prop_Font.Style and 1 > 0 then lf.lfWeight := 700 else lf.lfWeight := 0;
  if _prop_Font.Style and 2 > 0 then lf.lfItalic := 1 else lf.lfItalic := 0;   
  if _prop_Font.Style and 4 > 0 then lf.lfUnderline := 1 else lf.lfUnderline := 0;   
  if _prop_Font.Style and 8 > 0 then lf.lfStrikeOut := 1 else lf.lfStrikeOut := 0;
  hf := CreateFontIndirect(lf);
  SendMessage( fTThwnd, WM_SETFONT, WPARAM(hf), MAKELPARAM(integer(true), 0));

  SetWindowPos(fTThwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);
  SendMessage(fTThwnd, TTM_ADDTOOL, 0, LPARAM(ti));
  SendMessage(fTThwnd, TTM_SETTIPTEXTCOLOR, WPARAM(Color2RGB(_prop_Font.Color)), 0);
  SendMessage(fTThwnd, TTM_SETTIPBKCOLOR, WPARAM(Color2RGB(_prop_HintBackColor)), 0);
//  SendMessage(fTThwnd, TTM_SETDELAYTIME, WPARAM(TTDT_AUTOMATIC), Delay);
  SendMessage(fTThwnd, TTM_SETDELAYTIME, WPARAM(TTDT_INITIAL), LPARAM(_prop_HintDelay));
  SendMessage(fTThwnd, TTM_SETDELAYTIME, WPARAM(TTDT_AUTOPOP), LPARAM(_prop_HintAutoPopUp));
  SendMessage(fTThwnd, TTM_SETMAXTIPWIDTH, 0, LPARAM(_prop_HintWidth));
    
  Rect.Top := _prop_HintMargin;
  Rect.Left := _prop_HintMargin;
  Rect.Bottom := _prop_HintMargin;
  Rect.Right := _prop_HintMargin;
  SendMessage(fTThwnd, TTM_SETMARGIN, 0, LPARAM(@Rect));
  ti.lParam := fTThwnd;
  Result := ti;
end;

procedure THIHintManager.free;
begin
  DeleteObject(SendMessage(PTOOLINFO(id).lParam, WM_GETFONT, 0, 0));
  SendMessage(PTOOLINFO(id).lParam, TTM_DELTOOL, 0, LPARAM(id));
  DestroyWindow(PTOOLINFO(id).lParam);
  dispose(PTOOLINFO(id));
end;

procedure THIHintManager.hint;
begin     
  PTOOLINFO(id).lpszText := PChar(text);
  SendMessage(PTOOLINFO(id).lParam, TTM_UPDATETIPTEXT, 0, LPARAM(id));
end;

procedure THIHintManager.title;
begin    
  SendMessage(PTOOLINFO(id).lParam, TTM_SETTITLE, WPARAM(idx), LPARAM(PChar(text)));
end;

procedure THIHintManager.show;
begin    
  if _prop_HintTrack then SendMessage(PTOOLINFO(id).lParam, TTM_TRACKACTIVATE, WPARAM(true), LPARAM(id))
end;

procedure THIHintManager.hide;
begin   
  if _prop_HintTrack then SendMessage(PTOOLINFO(id).lParam, TTM_TRACKACTIVATE, WPARAM(false), LPARAM(id));
end;

procedure THIHintManager.move;
begin    
  if _prop_HintTrack then SendMessage(PTOOLINFO(id).lParam, TTM_TRACKPOSITION, 0, MAKELPARAM(X, Y));
end;

end.