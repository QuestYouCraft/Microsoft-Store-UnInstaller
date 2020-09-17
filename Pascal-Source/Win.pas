unit Win;

interface

{$I share.inc}

uses Kol,{KOLMHToolTip,}Share,ShellAPI,Windows,Messages,Debug,hiHintManager,WinLayout;

type
  KOLChar = char;
  TIControlManager = record
    ctrlpoint:function:pointer of object;
  end;
  IControlManager = ^TIControlManager;

type
 THIWin = class(TDebug)
   protected
     cp:TIControlManager;
     Guid:integer;
     NoKill:boolean;
     FParent,Split:PControl;
     OldMes:TOnMessage;
     OldPaint:TOnPaint;
     fOnPaint:THI_Event;
     Ms:TMouseEventData;
     Back:integer; //!!! KeyPreview
     hid:pointer;
     onSplitUp:THI_Event;
     fHint:IHintManager;
     fLayout:IWinLayout;
     fOnMouseEnter:THI_Event;
     fOnMouseLeave:THI_Event;

     function ctrlpoint:pointer;
     procedure KeyDown(Sender: PControl; var Key: Longint; Shift: DWORD); //!!! KeyPreview
     procedure KeyUp(Sender: PControl; var Key: Longint; Shift: DWORD); //!!! KeyPreview
     procedure KeyChar(Sender: PControl; var Key: KOLChar; Shift: DWORD); //!!! KeyPreview
     procedure _onKeyDown(Sender: PControl; var Key: Longint; Shift: DWORD);  virtual; //!!! KeyPreview
     procedure _onKeyUp(Sender: PControl; var Key: Longint; Shift: DWORD); virtual; //!!! KeyPreview
     procedure _onKeyChar(Sender: PControl; var Key: KOLChar; Shift: DWORD);  virtual; //!!! KeyPreview
     procedure _onMouseDown(Sender: PControl; var Mouse: TMouseEventData); virtual;
     procedure _onMouseMove(Sender: PControl; var Mouse: TMouseEventData); virtual;
     procedure _onMouseEnter( Sender: PObj ); virtual;
     procedure _onMouseLeave( Sender: PObj ); virtual;
     procedure _onMouseUp(Sender: PControl; var Mouse: TMouseEventData); virtual;
     procedure _onMouseWheel(Sender: PControl; var Mouse: TMouseEventData); virtual;//!!!
     function  _onMessage( var Msg: TMsg; var Rslt: Integer ): Boolean; virtual;
     procedure _onDblClick(Sender: PControl; var Mouse: TMouseEventData); virtual;
     procedure _OnDestroy(Sender:PObj);virtual;
     procedure _onResize(Obj:PObj);virtual;
     procedure _onShow(Obj:PObj); virtual;
     procedure _onHide(Obj:PObj); virtual;
     procedure _onSplitUp(Sender: PControl; var Mouse: TMouseEventData);
     procedure _OnPaint( Sender: PControl; DC: HDC );
     procedure SetOnPaint(Ev:THI_Event);
     procedure TrackMouseEvnt(Sender :PControl; Flags :DWORD);
     procedure SetOnSplitUp(Ev:THI_Event);
     procedure SetLayout(value:IWinLayout);
     procedure SetHintManager(value:IHintManager);
     procedure SetMouseEnter(Ev:THI_Event);
     procedure SetMouseLeave(Ev:THI_Event);
   public
     ManFlags:cardinal;
     Control:PControl;
     _prop_Name:string;
     _prop_Left:integer;
     _prop_Top:integer;
     _prop_Width:integer;
     _prop_Height:integer;
     _prop_Align:TControlAlign;
     _prop_TabOrder:integer;
     _prop_Color:TColor;
     _prop_Ctl3D:byte;
     _prop_Hint:string;
//     _prop_HintIcon:integer;
//     _prop_HintTitle:string;
     _prop_Font:TFontRec;
     _prop_ParentFont:boolean;
     _prop_Transparent:boolean;
     _prop_Visible:boolean;
     _prop_Enabled:boolean;
     _prop_Cursor:integer;
     _prop_MouseCapture:boolean;
     _prop_Flat:boolean;
     _prop_KeyPreview:boolean; //!!! KeyPreview
     //Св-а Splitter-а
      _prop_ModeSp:TNewSpl;
      _prop_SizeSp:integer;
      _prop_ColorSp:TColor;
      _prop_MinOwn:integer;
      _prop_MinRest:integer;
      _prop_WinStyle:byte;

     _prop_WidthScale:integer;
     _prop_HeightScale:integer;
      
     _event_onKeyDown:THI_Event;
     _event_onKeyUp:THI_Event;
     _event_onChar:THI_Event; //!!! KeyPreview
     _event_onMouseDown:THI_Event;
     _event_onMouseMove:THI_Event;
     _event_onMouseUp:THI_Event;
     _event_onMouseWheel:THI_Event;
     _event_onSetFocus:THI_Event;
     _event_onKillFocus:THI_Event;
     _event_onDblClick:THI_Event;
     _event_onResize:THI_Event;
     _event_onShow:THI_Event;
     _event_onHide:THI_Event;
     _event_onMove:THI_Event;
     _data_WidthControls:THI_Event;
     _data_HeightControls:THI_Event;

     constructor Create(Parent:PControl);
     destructor Destroy; override;
     procedure Init; virtual;

     function getInterfaceControlManager:IControlManager; virtual;

     procedure _work_doKeyPreview(var Data:TData; Index:word); //!!! KeyPreview
     procedure _work_doVisible(var Data:TData; Index:word);
     procedure _work_doEnabled(var Data:TData; Index:word);
     procedure _work_doHint(var Data:TData; Index:word);
//     procedure _work_doHintIcon(var Data:TData; Index:word);
//     procedure _work_doHintTitle(var Data:TData; Index:word);
     procedure _work_doLeft(var Data:TData; Index:word);
     procedure _work_doTop(var Data:TData; Index:word);
     procedure _work_doWidth(var Data:TData; Index:word);
     procedure _work_doHeight(var Data:TData; Index:word);
     procedure _work_doColor(var Data:TData; Index:word);
     procedure _work_doCursor(var Data:TData; Index:word);
     procedure _work_doSendToBack(var Data:TData; Index:word);
     procedure _work_doBringToFront(var Data:TData; Index:word);
     procedure _work_doCenterPos(var Data:TData; Index:word);
     procedure _work_doFont(var Data:TData; Index:word);
     procedure _work_doAlign(var Data:TData; Index:word);
     procedure _work_doSetFocus(var Data:TData; Index:word);
     procedure _work_doKeyBack(var Data:TData; Index:word); //!!! KeyPreview
     procedure _var_Handle(var Data:TData; Index:word);
     procedure _var_PHandle(var Data:TData; Index:word);
     procedure _var_MouseX(var Data:TData; Index:word);
     procedure _var_MouseY(var Data:TData; Index:word);
     procedure _var_Left(var Data:TData; Index:word);
     procedure _var_Top(var Data:TData; Index:word);
     procedure _var_Width(var Data:TData; Index:word);
     procedure _var_Height(var Data:TData; Index:word);
     procedure _var_Position(var Data:TData; Index:word);

     property  _event_onSplitUp:THI_Event write SetOnSplitUp;
     property  _event_onPaint:THI_Event read fOnPaint write SetOnPaint;
     property  _event_onMouseEnter:THI_Event read fonMouseEnter write SetMouseEnter;
     property  _event_onMouseLeave:THI_Event read fonMouseLeave write SetMouseLeave;

     property _prop_Layout:IWinLayout write SetLayout;
     property _prop_HintManager:IHintManager read fHint write SetHintManager;

 end;


implementation

var defHint:THIHintManager;

//-------------------------------------------------------------------------------------------------

function TrackMouseEvent(var EventTrack: TTrackMouseEvent): BOOL; stdcall; external user32 name 'TrackMouseEvent';

//-------------------------------------------------------------------------------------------------

procedure THIWin.TrackMouseEvnt;
var
     t_MouseEvent: TTrackMouseEvent;
begin
   t_MouseEvent.cbSize:=SizeOf(TTrackMouseEvent);
   t_MouseEvent.dwFlags:=Flags;
   t_MouseEvent.hwndTrack:=Sender.GetWindowHandle;
   t_MouseEvent.dwHoverTime:=HOVER_DEFAULT;
   TrackMouseEvent(t_MouseEvent);
end;

function THIWin.getInterfaceControlManager;
begin
   Result := @cp;
end;

function THIWin.ctrlpoint;
begin
  Result := Control;
end;

constructor THIWin.Create;
begin
   inherited Create;
   FParent := Parent;
   if Parent <> nil then _prop_Color := Parent.Color;
   _prop_Ctl3D := 2;
   _prop_Visible := true;
   _prop_Enabled := true;
   _prop_KeyPreview := true; //!!! KeyPreview
   _prop_MouseCapture := false;
end;

destructor THIWin.Destroy;
begin
   if fLayout <> nil then 
     ExplodeLayout(FLayout, Control);
     
   if not NoKill then begin
      Split.Free;
      Control.Visible := false; //for Global_Align(Parent)
      Control.Free;
//    Manager.free;
//    hi.free;
   end;
   
   if hid <> nil then fHint.free(hid);
   
   inherited;
end;

procedure THIWin._onShow;
begin
   _hi_OnEvent(_event_onShow);
end;

procedure THIWin._onHide;
begin
   _hi_OnEvent(_event_onHide);
end;

procedure THIWin._OnDestroy;
begin
   NoKill := true;
end;

procedure THIWin.Init;
const wpFlag = SWP_NOSIZE or SWP_NOMOVE or SWP_NOACTIVATE or SWP_NOOWNERZORDER or SWP_HIDEWINDOW;
begin
   with Control{$ifndef F_P}^{$endif} do begin
      cp.ctrlpoint := ctrlpoint;
      Color := _prop_Color;
      SetPosition(_prop_Left,_prop_Top);
      SetSize(_prop_Width,_prop_Height);
      if _prop_Ctl3D<2 then Ctl3D := _prop_Ctl3D=0;
      Transparent := _prop_Transparent;
      Enabled := _prop_Enabled;
      CursorLoad(0, MakeIntResource(_prop_Cursor));
      if _prop_Flat then
         Style := Style or BS_FLAT;
      if _prop_ParentFont then
         Font.Assign(Parent.Font)
      else begin
         Font.Color := _prop_Font.Color;
         SetFont(Font,_prop_Font.Style);
         Font.FontName :=  _prop_Font.Name;
         Font.FontHeight := _hi_SizeFnt(_prop_Font.Size);
         Font.FontCharset := _prop_Font.CharSet;
      end;

      if _prop_TabOrder > 0 then begin
         Style := Style or WS_TABSTOP;
         LookTabKeys := [tkTab];
         TabOrder := _prop_TabOrder;
      end else
         TabStop := _prop_TabOrder = 0;
     //SendToBack;
//      if _prop_Hint <> '' then SetHint(_prop_Hint,_prop_HintStyle);

      OldMes        :=  OnMessage;
      onMouseDown   := _onMouseDown;
      onMouseMove   := _onMouseMove;
      onMouseUp     := _onMouseUp;
      onMouseWheel  := _onMouseWheel;
      OnMouseDblClk := _onDblClick;
      OnMessage     := _onMessage;
      OnDestroy     := _OnDestroy;
      OnKeyDown     := KeyDown; //!!! KeyPreview
      onKeyUp       := KeyUp;   //!!! KeyPreview
      onChar        := KeyChar; //!!! KeyPreview
      onResize      := _onResize;
      onShow        := _onShow;
      onHide        := _onHide;

      Align := _prop_Align;
      SetWindowPos(GetWindowHandle, HWND_TOP, 0, 0, 0, 0, wpFlag);
      Visible := _prop_Visible;
      CreateWindow;
      
//      if Assigned(_prop_HintManager) then
//       begin
//        hid := _prop_HintManager.init(GetWindowHandle);
//        _prop_HintManager.hint(hid, _prop_Hint);
//       end;
      
//      if Assigned(_prop_Layout) then
//        _prop_Layout.addControl(Control, _prop_WidthScale, _prop_HeightScale);
      
      if assigned(_prop_ModeSp) then begin
         Split := _prop_ModeSp(FParent,_prop_MinOwn,_prop_MinRest,_prop_ColorSp,_prop_SizeSp);
         SetWindowPos(Split.GetWindowHandle, HWND_TOP, 0, 0, 0, 0, wpFlag);
         case Align of
           caTop,caBottom:
             begin
               Height := Height - (_prop_SizeSp + FParent.Border);
               Split.visible := _prop_Visible;
             end;
           caLeft,caRight:
             begin
               Width := Width - (_prop_SizeSp + FParent.Border);
               Split.visible := _prop_Visible;
             end;
           else Split.visible := false;
         end;
         Split.CreateWindow;
      end;

      if _prop_Ctl3D = 0 then
        case _prop_WinStyle of
          1: Control.ExStyle := WS_EX_LTRREADING;
          2: Control.ExStyle := WS_EX_STATICEDGE;
          3: Control.ExStyle := WS_EX_DLGMODALFRAME;
          4: Control.ExStyle := WS_EX_CLIENTEDGE OR WS_EX_DLGMODALFRAME;
        end;

   end;
end;

procedure THIWin.SetMouseEnter(Ev:THI_Event);
begin
      // история костыля:
      // если св-ва установлены, то появляется лишнее событие WM_PAINT на контролах, но верно работает MouseEnter
      // если не установлены или сделаны иначе, то MouseEvent может приходить много раз + еще хз какие проблемы
      fonMouseEnter := ev;  
      Control.onMouseEnter  := _onMouseEnter;
end;

procedure THIWin.SetMouseLeave(Ev:THI_Event);
begin
      fonMouseLeave := ev;
      Control.onMouseLeave  := _onMouseLeave;
end;

procedure THIWin._onDblClick;
begin
   _hi_OnEvent(_event_onDblClick, integer(Mouse.Button)-1);
end;

procedure THIWin._work_doColor;
begin
   Control.Color := ToInteger(Data);
end;

procedure THIWin._work_doCursor;
begin
   Control.CursorLoad(0, MakeIntResource(ToInteger(Data)));
//   Control.Cursor := ToInteger(Data);
end;

procedure THIWin._work_doVisible;
begin
   Control.Visible := ReadBool(Data);
   if (Split = nil)or(Control.Align in [caNone,caClient]) then exit;
   Split.Visible := Control.Visible;
end;

procedure  THIWin._work_doEnabled;
begin
   Control.Enabled := ReadBool(Data);
end;

procedure THIWin._work_doHint;
begin
   if assigned(_prop_HintManager) then _prop_HintManager.hint(hid, ToString(Data));
end;
{
procedure THIWin._work_doHintIcon;
begin
   if not assigned(_prop_HintManager) then exit;
   _prop_HintIcon := ToInteger(Data);
   _prop_HintManager.title(hid, _prop_HintIcon, _prop_HintTitle);
end;

procedure THIWin._work_doHintTitle;
begin
   if not assigned(_prop_HintManager) then exit;
   _prop_HintTitle := ToString(Data);
   _prop_HintManager.title(hid, _prop_HintIcon, _prop_HintTitle);
end;
}
procedure THIWin._work_doLeft;
begin
   Control.Left := ToInteger(Data);
end;

procedure THIWin._work_doTop;
begin
   Control.Top := ToInteger(Data);
end;

procedure THIWin._work_doWidth;
begin
   Control.Width := ToInteger(Data);
end;

procedure THIWin._work_doHeight;
begin
   Control.Height := ToInteger(Data);
end;

procedure THIWin._work_doSendToBack;
begin
   Control.SendToBack;
end;

procedure THIWin._work_doBringToFront;
begin
   Control.BringToFront;
end;

procedure THIWin._work_doCenterPos;
begin
   if Assigned(FParent) then
   begin
     Control.Left := max((FParent.Left + (FParent.Width  - Control.Width)  div 2), 0);
     Control.Top  := max((FParent.Top  + (FParent.Height - Control.Height) div 2), 0);
   end
   else
   begin
     Control.Left := (ScreenWidth  - Control.Width)  div 2;
     Control.Top  := (ScreenHeight - Control.Height) div 2;
   end;
end;

procedure THIWin._work_doFont;
begin
   if _IsFont(Data) then
      with pfontrec(Data.idata)^ do begin
         Control.Font.Color := Color;
         SetFont(Control.Font,Style);
         Control.Font.FontName :=  Name;
         Control.Font.FontHeight := _hi_SizeFnt(Size);
         Control.Font.FontCharset := CharSet;
      end;
end;

procedure THIWin._work_doAlign;
begin
   Control.Align := TControlAlign(ToInteger(Data));
   if Split = nil then exit;
   case Control.Align of
   caLeft, caRight:
     begin
       Split.Cursor := LoadCursor( 0, IDC_SIZEWE );
       Split.visible := Control.visible;
     end;
   caTop, caBottom:
     begin
       Split.Cursor := LoadCursor( 0, IDC_SIZENS );
       Split.visible := Control.visible;
     end;
   else Split.visible := false;
   end;
   Split.Align := Control.Align;
   Split.SetSize(_prop_SizeSp, _prop_SizeSp);
end;

procedure THIWin._onPaint;
begin
   if assigned(OldPaint) then
     OldPaint(Sender, DC);
   _hi_onEvent(fOnPaint, integer(DC));
end;

procedure THIWin.SetOnPaint;
begin
   OldPaint := Control.OnPaint;
   Control.OnPaint := _OnPaint;
   fOnPaint := Ev;
end;

procedure THIWin._onSplitUp;
begin
   _hi_onEvent(onSplitUp);
end;

procedure THIWin.SetOnSplitUp;
begin
   if Split = nil then exit;
   onSplitUp := Ev;
   Split.onMouseUp := _onSplitUp;
end;

procedure THIWin.SetLayout;
begin
  if value <> nil then
    value.addControl(Control, _prop_WidthScale, _prop_HeightScale);
  fLayout := value;  
end;

procedure THIWin.SetHintManager;
begin
  if value <> nil then
   begin
          Control.onMouseEnter  := _onMouseEnter;
          Control.onMouseLeave  := _onMouseLeave;
   end
  else 
    if _prop_Hint = '' then
      exit
    else
      value := defHint.getInterfaceHint;
  
  hid := value.init(Control.GetWindowHandle);
  value.hint(hid, _prop_Hint);
//  value.title(hid, _prop_HintIcon, _prop_HintTitle);

  fHint := value; 
end;

procedure THIWin._work_doSetFocus;
begin
   Control.Focused := true;
end;

procedure THIWin._var_Handle;
begin
   dtInteger(Data,Control.GetWindowHandle);
end;

procedure THIWin._var_PHandle;
begin
   dtInteger(Data, integer(Control) );
end;

procedure THIWin._onMouseDown;
begin
   Ms := Mouse;
   _hi_OnEvent(_event_onMouseDown, integer(Ms.Button)-1);
   if _prop_MouseCapture then begin
      ReleaseCapture;
      SetCapture(Control.Handle);
   end;
end;

procedure THIWin._onMouseMove;
var   b:smallint;
begin
//   SendMessage(fTThwnd, TTM_TRACKPOSITION, 0, MAKELPARAM(Ms.X, Ms.Y));
   if assigned(_prop_HintManager) then _prop_HintManager.move(hid, Ms.X, Ms.Y);
   case Ms.Shift of
      1:   b :=  0;
      2:   b :=  1;
      16:  b :=  2;
      else b := -1;
   end;
   Ms := Mouse;
   _hi_OnEvent(_event_onMouseMove, b);
end;

procedure THIWin._onMouseUp;
begin
   Ms := Mouse;
   _hi_OnEvent(_event_onMouseUp, integer(Ms.Button)-1);
   if _prop_MouseCapture then ReleaseCapture;
end;

procedure THIWin._onMouseWheel;
begin
   Ms := Mouse;
   _hi_OnEvent(_event_onMouseWheel, integer(Ms.Shift)div $10000);
end;

procedure THIWin._var_MouseX;
begin
   dtInteger(Data,Ms.X);
end;

procedure THIWin._var_MouseY;
begin
   dtInteger(Data,Ms.Y);
end;

procedure THIWin._var_Left;
begin
   dtInteger(Data,Control.Left);
end;

procedure THIWin._var_Top;
begin
   dtInteger(Data,Control.Top);
end;

procedure THIWin._var_Width;
begin
   dtInteger(Data,Control.Width)
end;

procedure THIWin._var_Height;
begin
   dtInteger(Data,Control.Height)
end;

procedure THIWin._var_Position;
begin
   dtInteger(Data, Control.SelStart);
end;

function THIWin._onMessage;
var P:PWindowPos; dt:TData; sz:integer;
begin
   case Msg.message of
      WM_WINDOWPOSCHANGING: begin
        P := Pointer(Msg.lParam);
        if (P.flags and SWP_NOSIZE)=0 then begin
          sz := Control.Height;
          if P.cy<>sz then begin
            dtInteger(dt, P.cy - sz);
            _ReadData(dt,_data_HeightControls);
            if _isInteger(dt) then P.cy := sz + ToInteger(dt);
          end;
          sz := Control.Width;
          if P.cx<>sz then begin
            dtInteger(dt, P.cx - sz);
            _ReadData(dt,_data_WidthControls);
            if _isInteger(dt) then P.cx := sz + ToInteger(dt);
          end;
        end;
      end;
      WM_SETFOCUS :  _hi_OnEvent(_event_onSetFocus);
      WM_KILLFOCUS:  _hi_OnEvent(_event_onKillFocus);
{      WM_MOUSEHOVER: _onMouseEnter(Control);
      WM_MOUSELEAVE: begin
                       _onMouseLeave(Control);
                       TrackMouseEvnt(Control, TME_HOVER);
                     end;
      WM_MOUSEFIRST..WM_MOUSELAST:
                     begin
                       TrackMouseEvnt(Control, TME_LEAVE);
                       //_onMouseEnter(Control);
                     end;
}
      WM_MOVE: _hi_OnEvent(_event_onMove);
   end;
   Result := _hi_OnMessage(OldMes,Msg,Rslt);
end;

procedure THIWin._onMouseEnter;
begin
   if assigned(_prop_HintManager) then _prop_HintManager.show(hid);
   _hi_OnEvent(_event_onMouseEnter);
end;

procedure THIWin._onMouseLeave;
begin
   if assigned(_prop_HintManager) then _prop_HintManager.hide(hid);
   _hi_OnEvent(_event_onMouseLeave);
end;

procedure THIWin._work_doKeyPreview; //!!! KeyPreview
begin
   _prop_KeyPreview := ReadBool(Data);
end;

procedure THIWin._work_doKeyBack; //!!! KeyPreview
begin
   Back := ToInteger(Data);
end;

procedure THIWin.KeyDown; //!!! KeyPreview
begin
   if _prop_KeyPreview and(FParent<> nil)and assigned(FParent.OnKeyDown) then begin
      FParent.OnKeyDown(FParent,Key,Shift);
      if Key=0 then exit;
   end;
   Back := -1;
   _onKeyDown(Sender,Key,Shift);  //virtual
   if Back >= 0 then Key:=Back
   else if Key=0 then Back:=0;
end;

procedure THIWin._onResize;
begin
   _hi_OnEvent(_event_onResize);
end;

procedure THIWin._onKeyDown;
begin
   _hi_OnEvent(_event_onKeyDown,Key);
end;

procedure THIWin.KeyUp; //!!! KeyPreview
begin
   if _prop_KeyPreview and(FParent<> nil)and assigned(FParent.OnKeyUp) then begin
      FParent.OnKeyUp(FParent,Key,Shift);
      if Key=0 then exit;
   end;
   Back := -1;
   _onKeyUp(Sender,Key,Shift);  //virtual
   if Back >= 0 then Key:=Back;
end;

procedure THIWin._onKeyUp;
begin
   _hi_OnEvent(_event_onKeyUp,Key);
end;

procedure THIWin.KeyChar; //!!! KeyPreview
begin
   if _prop_KeyPreview and(FParent<> nil)and assigned(FParent.OnChar) then begin
      FParent.OnChar(FParent,Key,Shift);
      if Key=#0 then exit;
   end;
   if Back <> 0 then begin
      Back := -1;
      _onKeyChar(Sender,Key,Shift); //virtual
   end;
   if Back >= 0 then Key:=char(Back);
end;

procedure THIWin._onKeyChar; //!!! KeyPreview
begin
   _hi_OnEvent(_event_onChar,Key+'');
end;

initialization
   DoInitCommonControls(ICC_WIN95_CLASSES);
   defHint := THIHintManager.Create;
   defHint.InitByDefault;
   
finalization

end.