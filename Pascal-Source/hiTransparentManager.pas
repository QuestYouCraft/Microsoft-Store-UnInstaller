unit hiTransparentManager;

interface
     
uses Windows,Kol,Share,Debug,Win;

const
  LWA_COLORKEY  = $00000001;
  LWA_ALPHA     = $00000002;
  ULW_COLORKEY  = $00000001;
  ULW_ALPHA     = $00000002;
  ULW_OPAQUE    = $00000004;
  WS_EX_LAYERED = $00080000;

type
  TITransparentManager = record
    settransparent: procedure(Control: PControl) of object;
    getbitmap: function: PBitmap of object;
    setaeromode: procedure(Control: PControl) of object;
  end;
  ITransparentManager = ^TITransparentManager;

type
  THITransparentManager = class(TDebug)
   private
     tm:TITransparentManager;
     Bitmap: PBitmap;
     sControl: PControl;
     hRegion: HRGN;     
     procedure settransparent(Control: PControl);
     procedure setaeromode(Control: PControl);     
     function getbitmap: PBitmap;     
     procedure SetPicture(Value:HBITMAP);
   public
     _prop_Name:string;
     _prop_ControlManager:IControlManager;
     _prop_TransparentMode:byte;
     _prop_TransparentType:byte;
     _prop_TransparentColor:TColor;
     _prop_FormTranspColor:TColor;
     _prop_AlphaBlendValue:byte;
     _prop_AeroMode:byte;
     _prop_LeftWidth:integer;
     _prop_RightWidth:integer;
     _prop_TopHeight:integer;
     _prop_BottomHeight:integer;          
     
     function getInterfaceTransparentManager:ITransparentManager;

     constructor Create;
     destructor Destroy; override;
     procedure _work_doAlphaBlendValue(var _Data:TData; Index:word);     
     procedure _work_doPicture(var _Data:TData; Index:word);
     property _prop_Picture:HBITMAP write SetPicture;          
  end;

implementation

uses hiMainForm;

function SetLayeredWindowAttributes( hwnd: Integer; crKey: TColor; bAlpha: Byte; dwFlags: DWORD ): Boolean;
                                     stdcall; external 'User32.dll' name 'SetLayeredWindowAttributes';

function UpdateLayeredWindow( hwnd: HWND; hdcDst: HDC; pptDst: PPoint; psize: PSize;
                              hdcSrc: HDC; pptSrc: PPoint; crKey: TColor;
                              blend: PBlendFunction; dwFlags: Dword): Boolean;
                              stdcall; external 'User32.dll' name 'UpdateLayeredWindow';

procedure setalphatransparent(Control: PControl; FormTranspColor: TColor; AlphaBlendValue: byte);
var
  dw: DWORD;
  dwFlags: Dword;
  Wnd: HWnd;  
begin
  Wnd := Control.GetWindowHandle;
  dw := GetWindowLong(Wnd, GWL_EXSTYLE);        

  if (FormTranspColor = clNone) and (AlphaBlendValue = 255) then
  begin
    SetWindowLong(Wnd, GWL_EXSTYLE, dw and not WS_EX_LAYERED);
    exit;
  end
  else if (FormTranspColor <> clNone) and (AlphaBlendValue <> 255) then
    dwFlags := LWA_COLORKEY or LWA_ALPHA
  else if (FormTranspColor <> clNone) and (AlphaBlendValue = 255) then
    dwFlags := LWA_COLORKEY
  else
    dwFlags := LWA_ALPHA;     

  if dw and WS_EX_LAYERED = 0 then
    SetWindowLong(Wnd, GWL_EXSTYLE, dw or WS_EX_LAYERED);
  SetLayeredWindowAttributes(Wnd, Color2RGB(FormTranspColor), AlphaBlendValue, dwFlags);
end;

procedure setalphapicture(Control: PControl; Bitmap: PBitmap; TransparentColor: TColor; AlphaBlendValue, TransparentType: byte);
var
  dw: DWORD;
  ptDst, ptSrc: TPoint;
  hdcDst, hdcSRC: HDC;
  size: TSize;
  blend: TBlendFunction;
  dwFlags: Dword;
  Wnd: HWND;
begin
  Wnd := Control.GetWindowHandle;

  blend.BlendOp := AC_SRC_OVER;
  blend.BlendFlags := 0;
  blend.SourceConstantAlpha := AlphaBlendValue;

  hdcDst := GetDC(0);
  hdcSRC := CreateCompatibleDC(hdcDst);
  SelectObject(hdcSRC, Bitmap.Handle);

  ptDst := MakePoint(Control.Left, Control.Top);
  ptSrc := MakePoint(0, 0);
  size.cx := Bitmap.Width;
  size.cy := Bitmap.Height;
  
  dwFlags := ULW_ALPHA;
  case TransparentType of
    0: begin
         blend.AlphaFormat := 0;
         dwFlags := dwFlags or ULW_COLORKEY;      
       end;
    1: blend.AlphaFormat := AC_SRC_NO_PREMULT_ALPHA;
  end;

  dw := GetWindowLong(Wnd, GWL_EXSTYLE );
  if dw and WS_EX_LAYERED = 0 then
    SetWindowLong(Wnd, GWL_EXSTYLE, dw or WS_EX_LAYERED);
  UpdateLayeredWindow(Wnd, hdcDst, @ptDst, @size, hdcSRC, @ptSrc, Color2RGB(TransparentColor), @blend, dwFlags);
  RedrawWindow(Wnd, nil, 0, RDW_ERASE or RDW_INVALIDATE or RDW_FRAME or RDW_ALLCHILDREN);  
  ReleaseDC(0, hdcDst);
  DeleteDC(hdcSRC);
end;

function THITransparentManager.getInterfaceTransparentManager;
begin
   Result := @tm;
end;

procedure THITransparentManager.SetPicture;
begin
  BitMap.Handle := Value;
end;

procedure THITransparentManager._work_doAlphaBlendValue;
begin
  if sControl = nil then exit;
  _prop_AlphaBlendValue := ToInteger(_Data);
  if (not Bitmap.Empty) and (_prop_TransparentMode = 1) then 
    SetAlphaPicture(sControl, Bitmap, _prop_TransparentColor, _prop_AlphaBlendValue, _prop_TransparentType)
  else
    SetAlphaTransparent(sControl, _prop_FormTranspColor, _prop_AlphaBlendValue);    
end;
     
procedure THITransparentManager._work_doPicture;
var
  bmp:PBitmap;
  dw: Dword;
  Wnd: HWND;
  form: THIMainForm;
begin
  if sControl = nil then exit;
  Wnd := sControl.GetWindowHandle; 
  bmp := ToBitmap(_Data);

  if bmp <> nil then
  begin
    BitMap.Assign(bmp);
    dw := GetWindowLong(Wnd, GWL_EXSTYLE);
    SetWindowLong(Wnd, GWL_EXSTYLE, dw and not WS_EX_LAYERED);
    form := THIMainForm(sControl.Tag);
    if (not Bitmap.Empty) then
    begin
      if _prop_TransparentMode = 0 then
      begin
        form.Bitmap := Bitmap;
        DeleteObject(hRegion);
        hRegion := CreateCoolControl(Wnd, Bitmap, _prop_TransparentColor);
      end;
      SetAlphaPicture(sControl, Bitmap, _prop_TransparentColor, _prop_AlphaBlendValue, _prop_TransparentType);
      RedrawWindow(Wnd, nil, 0, RDW_ERASE or RDW_INVALIDATE or RDW_FRAME or RDW_ALLCHILDREN);
    end;  
  end;       
end;

constructor THITransparentManager.Create;
begin
  inherited;
  tm.settransparent := settransparent;
  tm.getbitmap := getbitmap;
  tm.setaeromode := setaeromode;
  BitMap := NewBitmap(0,0);  
end;

destructor THITransparentManager.Destroy;
begin
  BitMap.free;
  DeleteObject(hRegion);  
  inherited;
end;  

function THITransparentManager.getbitmap:PBitmap;
begin
  Result := Bitmap;
end;

procedure THITransparentManager.settransparent;
var
  Wnd: HWnd;
  form: THIMainForm;
begin
  sControl := Control;
  Wnd := sControl.GetWindowHandle;
  form := THIMainForm(sControl.Tag);
  if (not Bitmap.Empty) then
  begin
    if _prop_TransparentMode = 0 then
    begin
      form.Bitmap := Bitmap;
      DeleteObject(hRegion);
      hRegion := CreateCoolControl(Wnd, Bitmap, _prop_TransparentColor);
    end;
    SetAlphaPicture(sControl, Bitmap, _prop_TransparentColor, _prop_AlphaBlendValue, _prop_TransparentType);
    RedrawWindow(Wnd, nil, 0, RDW_ERASE or RDW_INVALIDATE or RDW_FRAME or RDW_ALLCHILDREN);
  end  
  else
    SetAlphaTransparent(sControl, _prop_FormTranspColor, _prop_AlphaBlendValue);    
end;

procedure THITransparentManager.setaeromode;
const
  DWM_BB_ENABLE = $00000001;
  DWM_BB_BLURREGION = $00000002;
  DWM_BB_TRANSITIONONMAXIMIZED = $00000004; 

type
  DWM_BLURBEHIND = record
    dwFlags                : Cardinal;
    fEnable                : boolean;
    hRgnBlur               : HRGN;
    fTransitionOnMaximized : boolean;
  end;
  IDWM_BLURBEHIND = ^DWM_BLURBEHIND;

  MARGINS = record
    cxLeftWidth    : Integer;
    cxRightWidth   : Integer;
    cyTopHeight    : Integer;
    cyBottomHeight : Integer;
  end;
  IMARGINS = ^MARGINS;
  
type
  TDwmEnableBlurBehindWindow    = function(hWnd : HWND; const pBlurBehind : IDWM_BLURBEHIND): HRESULT; stdcall;
  TDwmExtendFrameIntoClientArea = function(hWnd : HWND; const pMargins : IMARGINS): HRESULT; stdcall;  
  TDwmIsCompositionEnabled      = function(var bool : boolean): HRESULT; stdcall;

var
  pBlurBehind : IDWM_BLURBEHIND;
  pMargins : IMARGINS;
  osVInfo : TOSVersionInfo;
  Hdwmapi : THandle;
  Wnd : HWND;  
  DwmIsCompositionEnabled : TDwmIsCompositionEnabled;
  DwmEnableBlurBehindWindow : TDwmEnableBlurBehindWindow;
  DwmExtendFrameIntoClientArea : TDwmExtendFrameIntoClientArea;  
  IsCompositionEnabled : boolean;
begin
  if _prop_AeroMode = 0 then exit;
  sControl := Control;
  Wnd := sControl.GetWindowHandle;   
  ZeroMemory(@osVinfo, SizeOf(osVinfo));
  OsVinfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if not (GetVersionEx(osVInfo) and (osVinfo.dwPlatformId = VER_PLATFORM_WIN32_NT) and (osVinfo.dwMajorVersion >= 6)) then exit;
  Hdwmapi := LoadLibrary('dwmapi.dll');
  if Hdwmapi = 0 then exit; 

  @DwmIsCompositionEnabled := GetProcAddress(Hdwmapi, 'DwmIsCompositionEnabled');  
  DwmIsCompositionEnabled(IsCompositionEnabled);

  if IsCompositionEnabled then
  begin 
    case _prop_AeroMode of
      1: begin
           new(pBlurBehind);
           pBlurBehind.dwFlags := DWM_BB_ENABLE;
           pBlurBehind.fEnable := true;
           pBlurBehind.hRgnBlur := 0;
           pBlurBehind.fTransitionOnMaximized := true;
           @DwmEnableBlurBehindWindow := GetProcAddress(Hdwmapi, 'DwmEnableBlurBehindWindow');
           DwmEnableBlurBehindWindow(Wnd, pBlurBehind);
           dispose(pBlurBehind);
         end;
      2: begin
           new(pMargins);
           pMargins.cxLeftWidth    := _prop_LeftWidth;
           pMargins.cxRightWidth   := _prop_RightWidth;
           pMargins.cyTopHeight    := _prop_TopHeight;
           pMargins.cyBottomHeight := _prop_BottomHeight;
           @DwmExtendFrameIntoClientArea := GetProcAddress(Hdwmapi, 'DwmExtendFrameIntoClientArea');
           DwmExtendFrameIntoClientArea(Wnd, pMargins);
           dispose(pMargins);
         end;
      3: begin
           new(pMargins);
           pMargins.cxLeftWidth    := _prop_LeftWidth;
           pMargins.cxRightWidth   := _prop_RightWidth;
           pMargins.cyTopHeight    := _prop_TopHeight;
           pMargins.cyBottomHeight := _prop_BottomHeight;
           @DwmExtendFrameIntoClientArea := GetProcAddress(Hdwmapi, 'DwmExtendFrameIntoClientArea');
           DwmExtendFrameIntoClientArea(Wnd, pMargins);
           dispose(pMargins);
           new(pBlurBehind);
           pBlurBehind.dwFlags := DWM_BB_ENABLE OR DWM_BB_BLURREGION;
           pBlurBehind.fEnable := true;
           pBlurBehind.hRgnBlur := 0;
           pBlurBehind.fTransitionOnMaximized := true;
           @DwmEnableBlurBehindWindow := GetProcAddress(Hdwmapi, 'DwmEnableBlurBehindWindow');
           DwmEnableBlurBehindWindow(Wnd, pBlurBehind);
           dispose(pBlurBehind);
         end;
    end;
  end;
  FreeLibrary(Hdwmapi);
end;

end.