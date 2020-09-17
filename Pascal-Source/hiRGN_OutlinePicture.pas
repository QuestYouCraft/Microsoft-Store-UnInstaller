unit hiRGN_OutlinePicture;

interface

uses Windows, Kol, Share, Debug;

type
  THIRGN_OutlinePicture = class(TDebug)
   private
     FRegion: HRGN;
     BitMap: PBitMap;
     FTransparent: TColor;
     procedure SetPicture(Value: HBITMAP);
     procedure CreateOutlinePicture;     
   public
     _prop_ModeTransparent: byte;
     _event_onOutlinePicture: THI_Event;
     _data_SrcBitmap: THI_Event;

     property _prop_Picture:HBITMAP write SetPicture;
     property _prop_Transparent: TColor write FTransparent;

     constructor Create;
     destructor Destroy; override;
     procedure _work_doOutlinePicture(var _Data:TData; Index:word);
     procedure _work_doTransparent(var _Data: TData; Index: Word);
     procedure _work_doPicture(var Data: TData; Index: Word);
     procedure _work_doClear(var _Data:TData; Index:word);
     procedure _var_Result(var _Data:TData; Index:word);
     procedure _var_Bitmap(var _Data:TData; Index:word);
     procedure _var_Width(var _Data:TData; Index:word);
     procedure _var_Height(var _Data:TData; Index:word);

  end;

function OutlinePicture(sBitMap: PBitmap; sTransp: TColor = clWhite): HRGN;

implementation

procedure THIRGN_OutlinePicture.SetPicture;
begin
  BitMap.Handle := Value;
end;

constructor THIRGN_OutlinePicture.Create;
begin
  inherited;
  BitMap := NewBitmap(0, 0);
end;

destructor THIRGN_OutlinePicture.Destroy;
begin
  DeleteObject(FRegion);
  Bitmap.free;
  inherited;
end;

function OutlinePicture;
var
  p: PColor;
  x, y : Integer;
  FromX: Integer;

  procedure AddSubLine;
  var
    PixelRGN: HRGN;
  begin
    PixelRGN := CreateRectRgn(FromX, y, x, y + 1);
    CombineRgn(Result, Result, PixelRGN, RGN_OR);
    DeleteObject(PixelRGN);
  end;

begin
  Result := CreateRectRgn(0, 0, 0, 0);
//  if sBitMap.HandleType = bmDDB then
//    sBitMap.HandleType := bmDIB;
  sBitMap.PixelFormat := pf32bit;

  sTransp := Color2RGB(sTransp);

  for y := 0 to sBitMap.Height - 1 do
  begin
    FromX := -1;
    p := sBitMap.ScanLine[y];
    for x := 0 to sBitMap.Width - 1 do
    begin
      if p^ and $00FFFFFF <> sTransp then
      begin
        if FromX < 0 then FromX := x;
      end  
      else
      begin
        if FromX >= 0 then
        begin
          AddSubLine;
          FromX := -1;
        end;
      end;
      Inc(p);
    end;
    if FromX >= 0 then AddSubLine;
  end;
end; 

procedure THIRGN_OutlinePicture.CreateOutlinePicture;
begin
  if (BitMap = nil) or BitMap.Empty then exit;
  DeleteObject(FRegion);
  case _prop_ModeTransparent of
    0: FRegion := OutlinePicture(Bitmap, Bitmap.Pixels[0,0]); 
    1: FRegion := OutlinePicture(Bitmap, FTransparent); 
  end;
  _hi_onEvent(_event_onOutlinePicture, integer(FRegion));
end;

procedure THIRGN_OutlinePicture._work_doOutlinePicture;
begin
  CreateOutlinePicture;
end;

procedure THIRGN_OutlinePicture._var_Result;
begin
  dtInteger(_Data, FRegion);
end;

procedure THIRGN_OutlinePicture._work_doPicture;
var
  bmp: PBitmap;
begin
  bmp := ReadBitmap(Data, _data_SrcBitmap, nil);
  if (bmp = nil) or bmp.empty then exit;
  BitMap.Assign(bmp);
  CreateOutlinePicture;
end;

procedure THIRGN_OutlinePicture._work_doTransparent;
begin
  FTransparent := ToInteger(_Data);
  CreateOutlinePicture;
end;

procedure THIRGN_OutlinePicture._work_doClear;
begin
  DeleteObject(FRegion);
  FRegion := 0;
end;

procedure THIRGN_OutlinePicture._var_Bitmap;
begin
  if (BitMap = nil) then exit;
  dtBitmap(_data, BitMap);
end;

procedure THIRGN_OutlinePicture._var_Width;
begin
  if (BitMap = nil) then exit;
  dtInteger(_Data, BitMap.Width);
end;

procedure THIRGN_OutlinePicture._var_Height;
begin
  if (BitMap = nil) then exit;
  dtInteger(_Data, BitMap.Height);
end;

end.