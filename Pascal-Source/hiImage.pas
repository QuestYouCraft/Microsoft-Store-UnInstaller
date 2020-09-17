unit hiImage;

interface

{$I share.inc}

uses Windows,Share,Win,Kol;

type
  THIImage = class(THIWin)
   private
    Bmp:PBitmap;
    BltMode:dword;
    procedure _OnClick( Sender: PObj );
    procedure _OnPaint( Sender: PControl; DC: HDC );
    procedure SetPicture(Value:HBITMAP);
    procedure SetBltMode(ht:boolean);
    procedure Clear;
    procedure Fill(x1,y1,x2,y2:integer);
    procedure AfterLoad;
   public
    _prop_ViewStyle:procedure(DC:HDC) of object;
    _prop_AutoSize:boolean;
    _data_Bitmap:THI_Event;
    _event_onClick:THI_Event;

    constructor Create(Parent:PControl);
    destructor Destroy; override;
    procedure Init; override;
    procedure Center(DC:HDC);
    procedure Stretch(DC:HDC);
    procedure Scale(DC:HDC;x:boolean);
    procedure ScaleMax(DC:HDC);
    procedure ScaleMin(DC:HDC);
    procedure Mosaic(DC:HDC);
    procedure None(DC:HDC);
    procedure _work_doLoad(var _Data:TData; Index:word);
    procedure _work_doClear(var _Data:TData; Index:word);
    procedure _work_doRefresh(var _Data:TData; Index:word);
    procedure _work_doViewStyle(var _Data:TData; Index:word);
    procedure _work_doColor(var _Data:TData; Index:word);
    procedure _work_doHalfTone(var _Data:TData; Index:word);
    procedure _var_ImageBitmap(var _Data:TData; Index:word);
    procedure _var_ImageWidth(var _Data:TData; Index:word);
    procedure _var_ImageHeight(var _Data:TData; Index:word);
    property _prop_Picture:HBITMAP write SetPicture;
    property _prop_HalfTone:boolean write SetBltMode;
  end;

implementation

constructor THIImage.Create;
begin
  inherited Create(Parent);
  Bmp := NewBitmap(0,0);
end;

destructor THIImage.Destroy;
begin
  Bmp.Free;
  inherited;
end;

procedure THIImage.Init;
begin
  Control := NewPaintbox(FParent);
  inherited;
  Control.OnClick := _OnClick;
  Control.OnPaint := _OnPaint;
  Control.Canvas.Brush.Color := _prop_Color;
  AfterLoad;
end;

procedure THIImage.SetBltMode;
begin
  if ht and(WinVer >= wvNT)then
    BltMode := HALFTONE
  else BltMode := COLORONCOLOR;
end;

procedure THIImage.AfterLoad;
begin
  if Bmp.Empty then exit;
   
  if _prop_AutoSize then
    Control.SetSize(Bmp.Width,Bmp.Height);  
end;

procedure THIImage._work_doHalfTone;
begin
  SetBltMode(ReadBool(_Data));
  Control.Invalidate;
end;

procedure THIImage._work_doColor;
begin
  Control.Color := ToInteger(_Data);
  Control.Canvas.Brush.Color := Control.Color;  
end;

procedure THIImage._work_doLoad;
var t:PBitmap;
begin
  t := ReadBitmap(_Data,_data_Bitmap,nil);
  if t = nil then exit;
  Bmp.Assign(t);
  AfterLoad;
  Control.Invalidate;
end;

procedure THIImage._work_doClear;
begin
  Clear;
end;

procedure THIImage._work_doRefresh;
begin
  Control.Invalidate;
end;

procedure THIImage._work_doViewStyle;
begin
  case ToInteger(_Data) of
    0: _prop_ViewStyle := Center;
    1: _prop_ViewStyle := Stretch;
    2: _prop_ViewStyle := ScaleMin;
    3: _prop_ViewStyle := Mosaic;
    4: _prop_ViewStyle := None;
    5: _prop_ViewStyle := ScaleMax;
  end;
  Control.Invalidate;
end;

procedure THIImage._var_ImageBitmap;
begin
   dtBitmap(_data,Bmp);
end;

procedure THIImage._var_ImageWidth;
begin
   dtInteger(_Data,Bmp.Width)
end;

procedure THIImage._var_ImageHeight;
begin
   dtInteger(_Data,Bmp.Height)
end;

procedure THIImage._OnClick;
begin
  _hi_OnEvent(_event_onClick);
end;

procedure THIImage.Center;
var x,y:integer;
begin
  x := (Control.Width-Bmp.Width)div 2;
  y := (Control.Height-Bmp.Height)div 2;  
  Bmp.Draw(DC,x,y);
  Fill(0,0,Control.Width,y);
  Fill(0,y + bmp.Height,Control.Width,Control.Height);
  Fill(0,y,x,y + Bmp.Height);
  Fill(x + Bmp.Width,y,Control.Width,y + Bmp.Height);
end;

procedure THIImage.Stretch;
begin
  SetStretchBltMode(DC, BltMode);
  Bmp.StretchDraw(DC,Control.ClientRect);
end;

procedure  THIImage.Mosaic;
var i,j:integer;
begin
  for i := 0 to Control.Width div bmp.Width do
    for j := 0 to Control.Height div Bmp.Height do
      Bmp.Draw(DC,i*Bmp.Width,j*Bmp.Height);
end;

procedure THIImage.ScaleMax;
begin
  Scale(DC,true);
end;

procedure THIImage.ScaleMin;
begin
  Scale(DC,false);
end;

procedure THIImage.Fill;
var r:TRect;
begin
   r.Left := x1;
   r.Top := y1;
   r.Right := x2;
   r.Bottom := y2;
   Control.Canvas.FillRect(r);   
end;

procedure THIImage.Scale;
var r:TRect;
    k:real;
begin
  r := Control.ClientRect;
  k := Bmp.Height/Bmp.Width;
  if (Control.Height < Control.Width*k) = x then 
   begin
    r.Top := Round((Control.Height - Control.Width*k)/2);
    r.Bottom := Control.Height - r.Top;
    Fill(0,0,Control.Width,r.top);
    Fill(0,r.Bottom,Control.Width,Control.Height);
   end 
  else 
   begin
    r.Left := Round((Control.Width - Control.Height/k)/2);
    r.Right := Control.Width - r.Left;
    Fill(0,0,r.left,Control.Height);
    Fill(r.Right,0,Control.Width,Control.Height);
   end;
  SetStretchBltMode(DC, BltMode);
  Bmp.StretchDraw(DC,r);
end;

procedure THIImage.None;
begin
  Bmp.Draw(DC,0,0);
  Fill(Bmp.Width,0,Control.Width,Control.Height);
  Fill(0,Bmp.Height,Bmp.Width,Control.Height);
end;

procedure THIImage._OnPaint;
begin
  if Bmp.Empty then 
   Control.Canvas.FillRect(Control.ClientRect)
  else _prop_ViewStyle(DC);
end;

procedure THIImage.SetPicture;
begin
  if Value = 0 then exit;
  Bmp.Handle := Value;
end;

procedure THIImage.Clear;
begin
  if Bmp.Empty then exit;
  Bmp.Clear;
  Control.Invalidate;
end;

end.