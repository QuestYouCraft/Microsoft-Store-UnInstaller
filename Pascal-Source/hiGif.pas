unit hiGif;

interface

uses Windows,Kol,Share,Debug;

type
  {$ifdef F_P}TGifFrame=class;{$endif}
  PGifFrame={$ifndef F_P}^{$endif}TGifFrame;

  TGifVersion = ( gvUnknown, gv87a, gv89a );

  TGifBits = 1..8;

  TDisposeMethod = ( dmUndefined, dmLeave, dmRestoreBackground, dmRestorePrevious );

  TGifColorItem = record
    Red:  Byte;
    Green:Byte;
    Blue: Byte;
  end;

  TGifColorTable = record
    ColorCount : Integer;
    Colors : packed array[ Byte ] of TGifColorItem;
  end;

  TGifItem = packed record
    FImageData : PStream;
    FSize : TPoint;
    FPackedFields : Byte;
    FBitsPerPixel : Byte;
    FColorMap : TGifColorTable;
  end;

  TGifData = packed record
    DComment : PStrList;
    DAspectRatio : Byte;
    DBitsPerPixel : Byte;
    DColorResBits : Byte;
    DColorMap : TGifColorTable;
  end;

  {$ifdef F_P}TGifDecoder = class;{$endif}
  PGifDecoder = {$ifndef F_P}^{$endif}TGifDecoder;
  TGifDecoder = {$ifdef F_P}class{$else}object{$endif}( TObj )

  private
    FGifData : TGifData;
    FVersion : TGifVersion;
    FItems : PList;
    FFrameIndex : Integer;
    FGifWidth : Integer;
    FGifHeight : Integer;
    FBkColor : TColor;
    FBackIndex : Integer;
    FLooping : Boolean;
    FRepeatCount : Word;
    FNeedMask: Boolean;
    FTransparent : Boolean;
    FCorrupted: Boolean;
    FOnNeedMask: procedure( Sender: PObj; var BIH: TBitmapInfoHeader; Bits: Pointer );
    procedure NewImage;
    procedure ClearItems;
    function GetFrames(Idx: Integer): PGifFrame;
    function GetBitmap: PBitmap;
    procedure SetNeedMask(const Value: Boolean);
    function GetMask: PBitmap;
  protected
    function GetWidth : Integer;
    function GetHeight: Integer;
    function GetFrameCount : Integer;
    function GetFrame : Integer;
    procedure SetFrame( Value : Integer );
  public
    destructor Destroy; {$ifdef F_P}override{$else}virtual{$endif};
    procedure Clear;
    property Count : Integer read GetFrameCount;
    property Frame : Integer read GetFrame write SetFrame;
    property Width : Integer read GetWidth;
    property Height : Integer read GetHeight;
    property BkColor : TColor read FBkColor write FBkColor;
    property NeedMask : Boolean read FNeedMask write SetNeedMask;
    property Transparent : Boolean read FTransparent;
    property Frames[ Idx : Integer ] : PGifFrame read GetFrames;
    function LoadFromStream( Stream : PStream ) : Boolean;
    function LoadFromFile( const FileName : String ) : Boolean;
    property Mask: PBitmap read GetMask;
    procedure FreeResources;
    property Corrupted: Boolean read FCorrupted;
  end;

  TGifFrame = {$ifdef F_P}class{$else}object{$endif}( TObj )

  private
    FOwner : PGifDecoder;
    FBitmap : PBitmap;
    FItem : TGifItem;
    FExtensions : PList;
    FTopLeft : TPoint;
    FInterlaced : Boolean;
    FCorrupted : Boolean;
    FTranspColor : TColor;
    FDelay : Word;
    FLocalColors : Boolean;
    FTransparent : Boolean;
    FTransIndex : Integer;
    FTransMask : PBitmap;
    FFrameIndex : Integer;
    FReallyTransparent : Boolean;
    FDisposalMethod: TDisposeMethod;
    procedure SetDelay(const Value: Word);
    function GetColorCount: Integer;
    procedure SetDisposalMethod(const Value: TDisposeMethod);
    procedure SetTranspColor(const Value: TColor);
    procedure SetTopLeft(const Value: TPoint);
    function GetHeight: Integer;
    function GetWidth: Integer;
    function GetReallyTransparent: Boolean;
    function GetBitmap: PBitmap;
    procedure New_Bitmap;
  protected

    function LoadFromStream( Stream : PStream ) : Boolean;

  public
    destructor Destroy; {$ifdef F_P}override{$else}virtual{$endif};
    property Bitmap : PBitmap read GetBitmap;
    property Mask : PBitmap read FTransMask;
    property Delay : Word read FDelay write SetDelay;
    property ColorCount : Integer read GetColorCount;
    property DisposalMethod : TDisposeMethod read FDisposalMethod write SetDisposalMethod;
    property Corrupted: Boolean read FCorrupted;
    property TranspColor : TColor read FTranspColor write SetTranspColor;
    property Origin: TPoint read FTopLeft write SetTopLeft;
    property Width: Integer read GetWidth;
    property Height: Integer read GetHeight;
    property Transparent : Boolean read FTransparent;
    property ReallyTransparent : Boolean read GetReallyTransparent;
    procedure FreeResources;
    procedure Draw( DC : HDC; X, Y : Integer );
    procedure StretchDraw( DC : HDC; Rect : TRect );
  end;

function NewGifDecoder: PGifDecoder;
procedure DrawBitmapMaskMask( DC : HDC; X, Y : Integer; Bmp, Msk : PBitmap );
procedure DrawBitmapMask( DC : HDC; X, Y : Integer; Bmp, Msk : PBitmap );

type
 THIGif = class(TDebug)
  private
    Timer:PTimer;
    sBkColor:TColor;
    Context:TData;
    x,y:integer;
    BMPpart: PBitmap;
    BMPcopy: PBitmap;
    fDrawSource:byte;
    fAutoAnimation:boolean;
    FGifImage : PGifDecoder;
    FCurFrame : PBitmap;
    FCurMask : PBitmap;
    FCurIndex : Integer;
    FPrevFrame : PBitmap;
    FPrevMask : PBitmap;
    sDelay:integer;
    procedure PrepareFrame;
    function GetFrames(Idx: Integer): PGifFrame;

    function GetBkColor: TColor; 
    procedure SetBkColor(Value: TColor);
    function GetWidth : Integer;
    procedure SetWidth( Value : Integer );
    function GetHeight : Integer;
    procedure SetHeight( Value : Integer );
    function GetFrame : Integer;
    procedure SetFrame( Value : Integer );
    function GetFrameCount : Integer;
    function GetTransparent: Boolean;

    procedure Animation(Obj:PObj);
    procedure SetGifParametrs;
    procedure Clear;
    procedure DrawTransp( DC: HDC; X, Y: Integer );
    procedure DrawTransparent( DC : HDC; X, Y : Integer; TranspColor : TColor );

    property Width: Integer read GetWidth write SetWidth;
    property Height: Integer read GetHeight write SetHeight;
    property BkColor : TColor read GetBkColor write SetBkColor;
    property Transparent : Boolean read GetTransparent;
    property Count: Integer read GetFrameCount;
    property Frame: Integer read GetFrame write SetFrame;
    property Frames[ Idx : Integer ] : PGifFrame read GetFrames;

  public
      
    _prop_FileName:string;
    _prop_BkColor:TColor;
    _prop_X:integer;
    _prop_Y:integer;

    _data_NewDelay:THI_Event;
    _data_FileName:THI_Event;
    _data_Stream:THI_Event;
    _data_BkColor:THI_Event;
    _data_Frame:THI_Event;
    _data_Bitmap:THI_Event;
    _data_X:THI_Event;
    _data_Y:THI_Event;
    _event_onDraw:THI_Event;
    _event_onLoad:THI_Event;

    property _prop_DrawSource:byte read fDrawSource write fDrawSource;
    property _prop_AutoAnimation:boolean read fAutoAnimation write fAutoAnimation;
    property _prop_DefaultDelay:integer read sDelay write sDelay;
         
    procedure Bitmap;
    procedure Handle;
    procedure outBitmap;
        
    constructor Create;
    destructor Destroy; override;
    procedure _work_doLoadFromFile(var _Data:TData; Index:word);
    procedure _work_doLoadFromStream(var _Data:TData; Index:word);
    procedure _work_doStop(var _Data:TData; Index:word);
    procedure _work_doPlay(var _Data:TData; Index:word);
    procedure _work_doNextFrame(var _Data:TData; Index:word);
    procedure _work_doDrawSource(var _Data:TData; Index:word);
    procedure _work_doAutoAnimation(var _Data:TData; Index:word);    
    procedure _work_doDefaultDelay(var _Data:TData; Index:word);
    procedure _work_doSetFrame(var _Data:TData; Index:word);
    procedure _var_CurFrame(var _Data:TData; Index:word);
    procedure _var_FrameCount(var _Data:TData; Index:word);
    procedure _var_GIFWidth(var _Data:TData; Index:word);
    procedure _var_GIFHeight(var _Data:TData; Index:word);        
end;

implementation

const
  ROP_DstAndNotSrc = $00220326;

function NewGifFrame( AOwner: PGifDecoder ): PGifFrame; forward;

procedure DrawBitmapMaskMask( DC : HDC; X, Y : Integer; Bmp, Msk : PBitmap );
begin
   if Msk = nil then
      Bmp.Draw( DC, X, Y )
   else begin
      BitBlt( DC, X, Y, Bmp.Width, Bmp.Height, Msk.Canvas.Handle, 0, 0, SrcAnd );
      BitBlt( DC, X, Y, Bmp.Width, Bmp.Height, Bmp.Canvas.Handle, 0, 0, SRCPAINT );
   end;
end;

procedure DrawBitmapMask( DC : HDC; X, Y : Integer; Bmp, Msk : PBitmap );
var   TmpBmp : PBitmap;
begin
   if Msk = nil then
      Bmp.Draw( DC, X, Y )
   else begin
      TmpBmp := NewBitmap( 0, 0 );
      TmpBmp.Assign( Bmp );
      BitBlt( TmpBmp.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, Msk.Canvas.Handle, 0, 0, ROP_DstAndNotSrc );
      DrawBitmapMaskMask( DC, X, Y, TmpBmp, Msk );
      TmpBmp.Free;
   end;
end;

procedure StretchBitmapMaskMask( DC : HDC; Rect : TRect; Bmp, Msk : PBitmap );
var   OldMode: Integer;
      OldOrgX: TPoint;
begin
   OldMode := SetStretchBltMode( DC, HALFTONE );
   SetBrushOrgEx( DC, 0, 0, @ OldOrgX );
   if Msk = nil then
      Bmp.StretchDraw( DC, Rect )
   else begin
      StretchBlt( DC, Rect.Left, Rect.Top, Rect.Right - Rect.Left, Rect.Bottom - Rect.Top,
                  Msk.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, SrcAnd );
      StretchBlt( DC, Rect.Left, Rect.Top, Rect.Right - Rect.Left, Rect.Bottom - Rect.Top,
                  Bmp.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, SRCPAINT );
   end;
   SetBrushOrgEx( DC, OldOrgX.x, OldOrgX.y, nil );
   SetStretchBltMode( DC, OldMode );
end;

procedure StretchBitmapMask( DC : HDC; Rect : TRect; Bmp, Msk : PBitmap );
var   TmpBmp : PBitmap;
      OldMode: Integer;
      OldOrgX: TPoint;
begin
   OldMode := SetStretchBltMode( DC, HALFTONE );
   SetBrushOrgEx( DC, 0, 0, @ OldOrgX );
   if Msk = nil then
      Bmp.StretchDraw( DC, Rect )
   else begin
      TmpBmp := NewBitmap( 0, 0 );
      TmpBmp.Assign( Bmp );
      BitBlt( TmpBmp.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, Msk.Canvas.Handle, 0, 0, ROP_DstAndNotSrc );
      StretchBitmapMaskMask( DC, Rect, TmpBmp, Msk );
      TmpBmp.Free;
   end;
   SetBrushOrgEx( DC, OldOrgX.x, OldOrgX.y, nil );
   SetStretchBltMode( DC, OldMode );
end;

function AllocMemo(Size: Longint): Pointer;
{$ifdef F_P}var   HeapAllocFlags: Word;{$endif}
begin
   {$ifdef F_P} HeapAllocFlags := GMEM_MOVEABLE;{$endif}
   if Size > 0 then
      Result := GlobalAllocPtr(HeapAllocFlags or GMEM_ZEROINIT, Size)
   else
      Result := nil;
end;

procedure FreeMemo(var fpBlock: Pointer);
begin
   if fpBlock <> nil then begin
      GlobalFreePtr(fpBlock);
      fpBlock := nil;
   end;
end;

const
  GIFSignature = 'GIF';
  GIFVersionStr: array[TGIFVersion] of PChar = (#0#0#0, '87a', '89a');

const
  CODE_TABLE_SIZE = 4096;
  HASH_TABLE_SIZE = 17777;
  MAX_LOOP_COUNT  = 30000;

  CHR_EXT_INTRODUCER    = '!';
  CHR_IMAGE_SEPARATOR   = ',';
  CHR_TRAILER           = ';';  { indicates the end of the GIF Data stream }

{ Image descriptor bit masks }

  ID_LOCAL_COLOR_TABLE  = $80;  { set if a local color table follows }
  ID_INTERLACED         = $40;  { set if image is interlaced }
  ID_SORT               = $20;  { set if color table is sorted }
  ID_RESERVED           = $0C;  { reserved - must be set to $00 }
  ID_COLOR_TABLE_SIZE   = $07;  { Size of color table as above }

{ Logical screen descriptor packed field masks }

  LSD_GLOBAL_COLOR_TABLE = $80; { set if global color table follows L.S.D. }
  LSD_COLOR_RESOLUTION   = $70; { Color resolution - 3 bits }
  LSD_SORT               = $08; { set if global color table is sorted - 1 bit }
  LSD_COLOR_TABLE_SIZE   = $07; { Size of global color table - 3 bits }
                                { Actual Size = 2^value+1    - value is 3 bits }

{ Graphic control extension packed field masks }

  GCE_TRANSPARENT     = $01; { whether a transparency Index is given }
  GCE_USER_INPUT      = $02; { whether or not user input is expected }
  GCE_DISPOSAL_METHOD = $1C; { the way in which the graphic is to be treated after being displayed }
  GCE_RESERVED        = $E0; { reserved - must be set to $00 }

{ Application extension }

  AE_LOOPING          = $01; { looping Netscape extension }

  GIFColors: array[TGIFBits] of Word = (2, 4, 8, 16, 32, 64, 128, 256);

function ColorsToBits(ColorCount: Word): Byte;
var   I: TGIFBits;
begin
   for I := Low(TGIFBits) to High(TGIFBits) do
      if ColorCount = GIFColors[I] then begin
         Result := I;
         Exit;
      end;
   Result := 0;
end;

function ItemToRGB(const Item: TGIFColorItem): Longint;
begin
   with Item do Result := RGB(Red, Green, Blue);
end;

type
  TGIFHeader = packed record
    Signature: array[0..2] of Char; { contains 'GIF' }
    Version: array[0..2] of Char;   { '87a' or '89a' }
  end;

  TScreenDescriptor = packed record
    ScreenWidth: Word;            { logical screen width }
    ScreenHeight: Word;           { logical screen height }
    PackedFields: Byte;
    BackgroundColorIndex: Byte;   { Index to global color table }
    AspectRatio: Byte;            { actual ratio = (AspectRatio + 15) / 64 }
  end;

  TImageDescriptor = packed record
    ImageLeftPos: Word;   { column in pixels in respect to left of logical screen }
    ImageTopPos: Word;    { row in pixels in respect to top of logical screen }
    ImageWidth: Word;     { width of image in pixels }
    ImageHeight: Word;    { height of image in pixels }
    PackedFields: Byte;
  end;

{ GIF Extensions support }

type
  TExtensionType = (etGraphic, etPlainText, etApplication, etComment);

const
  ExtLabels: array[TExtensionType] of Byte = ($F9, $01, $FF, $FE);
  LoopExt: string[11] = 'NETSCAPE2.0';

type
  TGraphicControlExtension = packed record
    BlockSize: Byte; { should be 4 }
    PackedFields: Byte;
    DelayTime: Word; { in centiseconds }
    TransparentColorIndex: Byte;
    Terminator: Byte;
  end;

  TPlainTextExtension = packed record
    BlockSize: Byte; { should be 12 }
    Left, Top, Width, Height: Word;
    CellWidth, CellHeight: Byte;
    FGColorIndex, BGColorIndex: Byte;
  end;

  TAppExtension = packed record
    BlockSize: Byte; { should be 11 }
    AppId: array[1..8] of Byte;
    Authentication: array[1..3] of Byte;
  end;

  TExtensionRecord = packed record
    case ExtensionType: TExtensionType of
      etGraphic: (GCE: TGraphicControlExtension);
      etPlainText: (PTE: TPlainTextExtension);
      etApplication: (APPE: TAppExtension);
  end;

type

  {$ifdef F_P}TExtension=class;{$endif}
  PExtension={$ifndef F_P}^{$endif}TExtension;
  TExtension={$ifdef F_P}class{$else}object{$endif}(TObj)

  private
    FExtType: TExtensionType;
    FList: PStrList;
    FExtRec: TExtensionRecord;
  public
    function IsLoopExtension: Boolean;
    destructor Destroy; {$ifdef F_P}override{$else}virtual{$endif};
  end;

destructor TExtension.Destroy;
begin
   FList.Free;
   inherited;
end;

function TExtension.IsLoopExtension: Boolean;
begin
   Result := (FExtType = etApplication) and CompareMem(@FExtRec.APPE.AppId,
              @LoopExt[1], FExtRec.APPE.BlockSize) and (FList.Count > 0) and
              (Length(FList.Items[0]) >= 3) and (Byte(FList.Items[0][1]) = AE_LOOPING);
end;

function FindExtension(Extensions: PList; ExtType: TExtensionType): PExtension;
var   I: Integer;
begin
   if Extensions <> nil then
      for I := Extensions.Count - 1 downto 0 do begin
         Result := PExtension(Extensions.Items[I]);
         if (Result <> nil) and (Result.FExtType = ExtType) then Exit;
      end;
   Result := nil;
end;

procedure FreeExtensions(Extensions: PList);
begin
   if Extensions <> nil then begin
      while Extensions.Count > 0 do begin
         PObj(Extensions.Items[Extensions.Count - 1]).Free;
         Extensions.Delete(Extensions.Count - 1);
      end;
      Extensions.Free;
   end;
end;

{ GIF read procedures }

type
  PIntCodeTable = ^TIntCodeTable;
  TIntCodeTable = array[0..CODE_TABLE_SIZE - 1] of Word;

  PReadContext = ^TReadContext;
  TReadContext = record
    Inx, Size: Longint;
    Buf: array[0..255 + 4] of Byte;
    CodeSize: Longint;
    ReadMask: Longint;
  end;

  TOutputContext = record
    W, H, X, Y: Longint;
    BitsPerPixel, Pass: Integer;
    Interlace: Boolean;
    LineIdent: Longint;
    Data, CurrLineData: Pointer;
  end;

  PImageDict = ^TImageDict;
  TImageDict = record
    Tail, Index: Word;
    Col: Byte;
  end;

  PDictTable = ^TDictTable;
  TDictTable = array[0..CODE_TABLE_SIZE - 1] of TImageDict;

  PRGBPalette = ^TRGBPalette;
  TRGBPalette = array [Byte] of TRGBQuad;

function InterlaceStep(Y, Height: Integer; var Pass: Integer): Integer;
begin
   Result := Y;
   case Pass of
   0, 1: Inc(Result, 8);
      2: Inc(Result, 4);
      3: Inc(Result, 2);
   end;
   if Result >= Height then begin
      if Pass = 0 then begin
         Pass := 1; Result := 4;
         if (Result < Height) then Exit;
      end;
      if Pass = 1 then begin
         Pass := 2; Result := 2;
         if (Result < Height) then Exit;
      end;
      if Pass = 2 then begin
         Pass := 3; Result := 1;
      end;
   end;
end;

procedure ReadImageStream(Stream : PStream;  Dest: PStream; var Desc: TImageDescriptor;
          var Interlaced, LocalColors, Corrupted: Boolean; var BitsPerPixel: Byte;
          var ColorTable: TGIFColorTable);
const BufSize = 1024;
var   CodeSize, BlockSize: Byte;

  procedure ProvideDestSize( Size : DWord );
  begin
     if Dest.Size < Size then Dest.Size := Size;
  end;
begin
   Corrupted := False;
   Stream.Read(Desc, SizeOf(TImageDescriptor));
   Interlaced := (Desc.PackedFields and ID_INTERLACED) <> 0;
   if (Desc.PackedFields and ID_LOCAL_COLOR_TABLE) <> 0 then begin
      { Local colors table follows }
      BitsPerPixel := 1 + Desc.PackedFields and ID_COLOR_TABLE_SIZE;
      LocalColors := True;
      ColorTable.ColorCount := 1 shl BitsPerPixel;
      Stream.Read(ColorTable.Colors[0],
      ColorTable.ColorCount * SizeOf(TGIFColorItem));
   end else begin
      LocalColors := False;
      FillChar(ColorTable, SizeOf(ColorTable), 0);
   end;
   Stream.Read(CodeSize, 1);
   ProvideDestSize( BufSize );
   Dest.Write(CodeSize, 1);
   repeat
      Stream.Read(BlockSize, 1);
      if (Stream.Position + BlockSize) > Stream.Size then begin
         Corrupted := True;
         Exit; {!!?}
      end;
      ProvideDestSize( ((Dest.Size + 1 + BlockSize + BufSize - 1) div BufSize) * BufSize );
      Dest.Write(BlockSize, 1);
      if (Stream.Position + BlockSize) > Stream.Size then begin
         BlockSize := Stream.Size - Stream.Position;
         Corrupted := True;
      end;
      if BlockSize > 0 then Stream2Stream( Dest, Stream, BlockSize );
   until (BlockSize = 0) or (Stream.Position >= Stream.Size);
end;

procedure FillRGBPalette(const ColorTable: TGIFColorTable; var Colors: TRGBPalette);
var   I: Byte;
begin
   FillChar(Colors, SizeOf(Colors), $80);
   for I := 0 to ColorTable.ColorCount - 1 do begin
      Colors[I].rgbRed := ColorTable.Colors[I].Red;
      Colors[I].rgbGreen := ColorTable.Colors[I].Green;
      Colors[I].rgbBlue := ColorTable.Colors[I].Blue;
      Colors[I].rgbReserved := 0;
   end;
end;

function ReadCode(Stream: PStream; var Context: TReadContext): Longint;
var   RawCode: Longint;
      ByteIndex: Longint;
      Bytes: Byte;
      BytesToLose: Longint;
begin
   while (Context.Inx + Context.CodeSize > Context.Size) and (Stream.Position < Stream.Size) do begin
      BytesToLose := Context.Inx shr 3;
      Move(Context.Buf[Word(BytesToLose)], Context.Buf[0], 3);
      Context.Inx := Context.Inx and 7;
      Context.Size := Context.Size - (BytesToLose shl 3);
      Stream.Read(Bytes, 1);
      if Bytes > 0 then Stream.Read(Context.Buf[Word(Context.Size shr 3)], Bytes);
      Context.Size := Context.Size + (Bytes shl 3);
   end;
   ByteIndex := Context.Inx shr 3;
   RawCode := Context.Buf[Word(ByteIndex)] + (Word(Context.Buf[Word(ByteIndex + 1)]) shl 8);
   if Context.CodeSize > 8 then RawCode := RawCode + (Longint(Context.Buf[ByteIndex + 2]) shl 16);
   RawCode := RawCode shr (Context.Inx and 7);
   Context.Inx := Context.Inx + Byte(Context.CodeSize);
   Result := RawCode and Context.ReadMask;
end;

procedure Output(Value: Byte; var Context: TOutputContext);
var   P: PByte;
begin
   if (Context.Y >= Context.H) then Exit;
   case Context.BitsPerPixel of
      1: begin
            P := Pointer( Integer( Context.CurrLineData ) + Context.X shr 3 );
            if (Context.X and $07 <> 0) then
               P^ := P^ or Word(value shl (7 - (Word(Context.X and 7))))
            else
               P^ := Byte(value shl 7);
         end;
      4: begin
            P := Pointer( Integer( Context.CurrLineData ) + Context.X shr 1 );
            if (Context.X and 1 <> 0) then
               P^ := P^ or Value
            else
               P^ := Byte(value shl 4);
         end;
      8: begin
            P := Pointer( Integer( Context.CurrLineData ) + Context.X );
            P^ := Value;
         end;
   end;
   Inc(Context.X);
   if Context.X < Context.W then Exit;
   Context.X := 0;
   if Context.Interlace then
      Context.Y := InterlaceStep(Context.Y, Context.H, Context.Pass)
   else
      Inc(Context.Y);
   Context.CurrLineData := Pointer( Integer( Context.Data ) + (Context.H - 1 - Context.Y) * Context.LineIdent );
end;

procedure ReadGIFData(Stream: PStream; const Header: TBitmapInfoHeader;
          Interlaced: Boolean; IntBitPerPixel: Byte; Data: Pointer;
          var Corrupted: Boolean);
var   MinCodeSize: Byte;
      MaxCode, BitMask, InitCodeSize: Longint;
      ClearCode, EndingCode, FirstFreeCode, FreeCode: Word;
      I, OutCount, Code: Longint;
      CurCode, OldCode, InCode, FinalChar: Word;
      Prefix, Suffix, OutCode: PIntCodeTable;
      ReadCtxt: TReadContext;
      OutCtxt: TOutputContext;
      TableFull: Boolean;
begin
   Corrupted := False;
   OutCount := 0; OldCode := 0; FinalChar := 0;
   TableFull := False;
   Prefix := AllocMem(SizeOf(TIntCodeTable));
   Suffix := AllocMem(SizeOf(TIntCodeTable));
   OutCode := AllocMem(SizeOf(TIntCodeTable) + SizeOf(Word));
   Stream.Read(MinCodeSize, 1);
   if (MinCodeSize < 2) or (MinCodeSize > 9) then begin
      Corrupted := True;
      Exit;
   end;
   { Initial read context }
   ReadCtxt.Inx := 0;
   ReadCtxt.Size := 0;
   ReadCtxt.CodeSize := MinCodeSize + 1;
   ReadCtxt.ReadMask := (1 shl ReadCtxt.CodeSize) - 1;
   { Initialise pixel-output context }
   OutCtxt.X := 0; OutCtxt.Y := 0;
   OutCtxt.Pass := 0;
   OutCtxt.W := Header.biWidth;
   OutCtxt.H := Header.biHeight;
   OutCtxt.BitsPerPixel := Header.biBitCount;
   OutCtxt.Interlace := Interlaced;
   OutCtxt.LineIdent := ((Header.biWidth * Header.biBitCount + 31) div 32) * 4;
   OutCtxt.Data := Data;
   OutCtxt.CurrLineData := Pointer( Integer( Data ) + (Header.biHeight - 1) * OutCtxt.LineIdent );
   BitMask := (1 shl IntBitPerPixel) - 1;
   ClearCode := 1 shl MinCodeSize;
   EndingCode := ClearCode + 1;
   FreeCode := ClearCode + 2;
   FirstFreeCode := FreeCode;
   InitCodeSize := ReadCtxt.CodeSize;
   MaxCode := 1 shl ReadCtxt.CodeSize;
   Code := ReadCode(Stream, ReadCtxt);
   while (Code <> EndingCode) and (Code <> $FFFF) and (OutCtxt.Y < OutCtxt.H) do begin
      if (Code = ClearCode) then begin
         ReadCtxt.CodeSize := InitCodeSize;
         MaxCode := 1 shl ReadCtxt.CodeSize;
         ReadCtxt.ReadMask := MaxCode - 1;
         FreeCode := FirstFreeCode;
         Code := ReadCode(Stream, ReadCtxt);
         CurCode := Code; OldCode := Code;
         if (Code = $FFFF) then Break;
         FinalChar := (CurCode and BitMask);
         Output(Byte(FinalChar), OutCtxt);
         TableFull := False;
      end else begin
         CurCode := Code;
         InCode := Code;
         if CurCode >= FreeCode then begin
            CurCode := OldCode;
            OutCode^[OutCount] := FinalChar;
            Inc(OutCount);
         end;
         while (CurCode > BitMask) do begin
            if (OutCount > CODE_TABLE_SIZE) then begin
               CurCode := BitMask;
               OutCount := 1;
               Corrupted := True;
               Break;
            end;
            OutCode^[OutCount] := Suffix^[CurCode];
            Inc(OutCount);
            CurCode := Prefix^[CurCode];
         end;
         if Corrupted then Break;
         FinalChar := CurCode and BitMask;
         OutCode^[OutCount] := FinalChar;
         Inc(OutCount);
         for I := OutCount - 1 downto 0 do Output(Byte(OutCode^[I]), OutCtxt);
         OutCount := 0;
         { Update dictionary }
         if not TableFull then begin
            Prefix^[FreeCode] := OldCode;
            Suffix^[FreeCode] := FinalChar;
            { Advance to next free slot }
            Inc(FreeCode);
            if (FreeCode >= MaxCode) then begin
               if (ReadCtxt.CodeSize < 12) then begin
                  Inc(ReadCtxt.CodeSize);
                  MaxCode := MaxCode shl 1;
                  ReadCtxt.ReadMask := (1 shl ReadCtxt.CodeSize) - 1;
               end else
                  TableFull := True;
            end;
         end;
         OldCode := InCode;
      end;
      Code := ReadCode(Stream, ReadCtxt);
   end; { while }
   if Code = $FFFF then Corrupted := True;
   FreeMem( OutCode );
   FreeMem(Suffix );
   FreeMem(Prefix );
end;

{ TGifFrame }

function NewGifFrame(AOwner: PGifDecoder): PGifFrame;
begin
   {$ifdef F_P}
   Result:=PGifFrame.Create;
   {$else}
   New(Result, Create);
   {$endif}
   Result.FOwner := AOwner;
   Result.FTransIndex := -1;
   Result.FItem.FImageData := NewMemoryStream;
   Result.FTranspColor := clNone;
end;

destructor TGifFrame.Destroy;
begin
   FBitmap.Free;
   FTransMask.Free;
   FItem.FImageData.Free;
   FreeExtensions( FExtensions );
   inherited;
end;

procedure TGifFrame.Draw(DC : HDC; X, Y: Integer);
begin
   GetBitmap;
   if Mask = nil then
      FBitmap.Draw( DC, X, Y )
   else
      DrawBitmapMask( DC, X, Y, FBitmap, FTransMask );
end;

procedure TGifFrame.FreeResources;
begin
   if FBitmap <> nil then FBitmap.Dormant;
   if FTransMask <> nil then FTransMask.Dormant;
end;

function FillMaskLine4( Mask, Scan : PByte; W : Integer; TransIdx : Integer ): Boolean; assembler;
asm
   PUSH ESI
   PUSH EDI
   PUSH EBX
   MOV EDI, EAX
   MOV ESI, EDX
   MOV EDX, TransIdx
   MOV DH, 0
   INC ECX
   SHR ECX, 1
   JZ @@fin
   MOV BX, 8000h
   CLD
@@loop1:
   LODSB
   MOV AH, AL
   SHR AH, 4
   CMP AH, DL
   JNZ @@1
   OR BL, BH
   MOV DH, BL
@@1: ROR BH, 1
   AND AL, 0Fh
   CMP AL, DL
   JNZ @@2
   OR BL, BH
   MOV DH, BL
@@2: ROR BH, 1
   JNC @@e_loop
   MOV [EDI], BL
   INC EDI
   MOV BL, 0
@@e_loop:
   LOOP @@loop1
   CMP BH, 80h
   JZ @@fin
   MOV [EDI], BL

@@fin:
   XOR EAX, EAX
   MOV AL, DH
   POP EBX
   POP EDI
   POP ESI
end;

function FillMaskLine8( Mask, Scan : PByte; W : Integer; TransIdx : Integer ): Boolean; assembler;
asm
   PUSH ESI
   PUSH EDI
   PUSH EBX
   MOV EDI, EAX
   MOV ESI, EDX
   MOV EDX, TransIdx
   MOV DH, 0
   JECXZ @@fin
   MOV BX, 8000h
   CLD
@@loop1:
   LODSB
   CMP AL, DL
   JNZ @@2
   OR BL, BH
   MOV DH, BL
@@2: ROR BH, 1
   JNC @@e_loop
   MOV [EDI], BL
   INC EDI
   MOV BL, 0
@@e_loop:
   LOOP @@loop1
   CMP BH, 80h
   JZ @@fin
   MOV [EDI], BL

@@fin:
   XOR EAX, EAX
   MOV AL, DH
   POP EBX
   POP EDI
   POP ESI
end;

function FillMaskLine0( Mask, Scan : PByte; W : Integer ): Boolean; assembler;
asm
   PUSH ESI
   PUSH EDI
   MOV EDI, EAX
   MOV ESI, EDX
   MOV EDX, 0
   ADD ECX, 7
   SHR ECX, 3
   JZ @@fin
   CLD
@@loop1:
   LODSB
   NOT AL
   STOSB
   OR DL, AL
   LOOP @@loop1

@@fin:
   MOV EAX, EDX
   POP EDI
   POP ESI
end;

function FillMaskLine1( Mask, Scan : PByte; W : Integer ): Boolean; assembler;
asm
   PUSH ESI
   PUSH EDI
   MOV EDI, EAX
   MOV ESI, EDX
   MOV EDX, 0
   ADD ECX, 7
   SHR ECX, 3
   JZ @@fin
   CLD
@@loop1:
   LODSB
   STOSB
   OR DL, AL
   LOOP @@loop1

@@fin:
   MOV EAX, EDX
   POP EDI
   POP ESI
end;

function FillMaskBitmap(Mask: PBitmap; Width, Height: Integer;
         Bits: PByte; BitsPerPixel, LineWidth, TransIndex: Integer): Boolean;
var   Y : Integer;
      P, S : PByte;
begin
   Result := False;
   if TransIndex < 0 then Exit;
   P := Mask.ScanLine[ 0 ];
   if P = nil then Exit;
   if BitsPerPixel = 4 then
      for Y := Height - 1 downto 0 do begin
         P := Mask.ScanLine[ Y ];
         S := Bits;
         Result := FillMaskLine4( P, S, Width, TransIndex );
         Inc( Bits, LineWidth );
      end;
   if BitsPerPixel = 8 then
      for Y := Height - 1 downto 0 do begin
         P := Mask.ScanLine[ Y ];
         S := Bits;
         Result := FillMaskLine8( P, S, Width, TransIndex );
         Inc( Bits, LineWidth );
      end;
   if BitsPerPixel = 1 then
      for Y := Height - 1 downto 0 do begin
         P := Mask.ScanLine[ Y ];
         S := Bits;
         if Byte( TransIndex ) = 0 then
            Result := FillMaskLine0( P, S, Width )
         else
            Result := FillMaskLine1( P, S, Width );
         Inc( Bits, LineWidth );
      end;
end;

procedure ProvideTruthMask( Sender: PObj; var BIH: TBitmapInfoHeader; Bits: Pointer );
var   Frame: PGifFrame;
begin
   Frame := PGifFrame( Sender );
   if Frame.FTransIndex >= 0 then begin
      Frame.FTransMask := NewBitmap( BIH.biWidth, BIH.biHeight );
      Frame.FTransMask.PixelFormat := pf1bit;
      Frame.FReallyTransparent :=
      FillMaskBitmap( Frame.FTransMask, BIH.biWidth, BIH.biHeight, Bits,
                      BIH.biBitCount,
                      ((BIH.biWidth * BIH.biBitCount + 31) div 32) * 4,
                      Frame.FTransIndex );
   end;
end;

function TGifFrame.GetBitmap: PBitmap;
var   Mem : PStream;

   function ConvertBitsPerPixel: TPixelFormat;
   begin
      case FItem.FBitsPerPixel of
         1: Result := pf1bit;
      2..4: Result := pf4bit;
      5..8: Result := pf8bit;
         else Result := pfDevice;
      end;
   end;

   procedure SaveToBmpStream;
   var   HeaderSize: Longword;
         Length: Longword;
         BIH: TBitmapInfoHeader;
         BFH: TBitmapFileHeader;
         Colors: TRGBPalette;
         Bits: Pointer;
         Corrupt: Boolean;
   begin
      Mem.Size := 0;
      with BIH do begin
         biSize := Sizeof(TBitmapInfoHeader);
         biWidth := FItem.FSize.X;
         biHeight := FItem.FSize.Y;
         biPlanes := 1;
         biBitCount := 0;
         case ConvertBitsPerPixel of
            pf1bit: biBitCount := 1;
            pf4bit: biBitCount := 4;
            else biBitCount := 8;
         end;
         biCompression := BI_RGB;
         biSizeImage := (((biWidth * biBitCount + 31) div 32) * 4) * biHeight;
         biXPelsPerMeter := 0;
         biYPelsPerMeter := 0;
         biClrUsed := 0;
         biClrImportant := 0;
      end;
      Bits := AllocMemo(BIH.biSizeImage);
      ReadGIFData(FItem.FImageData, BIH, FInterlaced,
      FItem.FBitsPerPixel, Bits, Corrupt);
      with BIH do biSizeImage := (((biWidth * biBitCount + 31) div 32) * 4) * biHeight;
      HeaderSize := SizeOf(TBitmapFileHeader) + SizeOf(TBitmapInfoHeader) + SizeOf(TRGBQuad) * (1 shl BIH.biBitCount);
      Length := HeaderSize + BIH.biSizeImage;
      with BFH do begin
         bfType := $4D42; { 'BM' }
         bfSize := Length;
         bfOffBits := HeaderSize;
      end;
      Mem.Write(BFH, SizeOf(TBitmapFileHeader));
      Mem.Write(BIH, SizeOf(TBitmapInfoHeader));
      FillRGBPalette(FItem.FColorMap, Colors);
      Mem.Write(Colors, SizeOf(TRGBQuad) * (1 shl BIH.biBitCount));
      FItem.FImageData.Seek( 0, spBegin );

      free_and_nil(FTransMask);

      if Assigned( FOwner.FOnNeedMask ) then FOwner.FOnNeedMask( {$ifndef F_P}@{$endif}Self, BIH, Bits );
      FCorrupted := FCorrupted or Corrupt;
      FOwner.FCorrupted := FOwner.FCorrupted or FCorrupted;
      Mem.Write(Bits^, BIH.biSizeImage);
      FreeMemo(Bits);
      Mem.Seek( 0, spBegin );
   end;


begin
   if FBitmap = nil then begin
      New_Bitmap;
      Mem := NewMemoryStream;
      SaveToBmpStream;
      FBitmap.LoadFromStream( Mem );
      FBitmap.PixelFormat := pf24bit;
      Mem.Free;
   end;
   Result := FBitmap;
end;

function TGifFrame.GetColorCount: Integer;
begin
   Result := FItem.FColorMap.ColorCount;
   Assert( Result <> 0, 'Unknown color count in gif frame bitmap' );
end;

function TGifFrame.GetHeight: Integer;
begin
   if Assigned(FBitmap) or Assigned(FItem.FImageData) then
      Result := Bitmap.Height
   else
      Result := 0;
end;

function TGifFrame.GetReallyTransparent: Boolean;
begin
   GetBitmap;
   Result := fReallyTransparent;
end;

function TGifFrame.GetWidth: Integer;
begin
   if Assigned(FBitmap) or Assigned(FItem.FImageData) then
      Result := Bitmap.Width
   else
      Result := 0;
end;

function TGifFrame.LoadFromStream(Stream: PStream): Boolean;
   function DoLoadStream : Boolean;
   var   ImageDesc: TImageDescriptor;
         I, TransIndex: Integer;
   begin
      fTransIndex := -1;
      FItem.FImageData.Free;
      FItem.FImageData := NewMemoryStream;
      ReadImageStream(Stream, FItem.FImageData, ImageDesc, FInterlaced,
                      FLocalColors, FCorrupted, FItem.FBitsPerPixel, FItem.FColorMap);
      FItem.FImageData.Position := 0;
      with ImageDesc do begin
         FTopLeft := MakePoint(ImageLeftPos, ImageTopPos);
         FItem.FSize := MakePoint(ImageWidth, ImageHeight);
         FItem.FPackedFields := PackedFields;
      end;
      if not FLocalColors then
         FItem.FColorMap := FOwner.FGifData.DColorMap;
      FDelay := 0;
      if FExtensions <> nil then begin
         for I := 0 to FExtensions.Count - 1 do
         with PExtension(FExtensions.Items[I]){$ifndef F_P}^{$endif} do
            if FExtType = etGraphic then begin
               if (FExtRec.GCE.PackedFields and GCE_TRANSPARENT) <> 0 then begin
                  TransIndex := FExtRec.GCE.TransparentColorIndex;
                  if FItem.FColorMap.ColorCount > TransIndex then begin
                     fTransIndex := TransIndex;
                     FTranspColor := ItemToRGB(FItem.FColorMap.Colors[TransIndex]);
                     FTransparent := True;
                  end;
               end else
                  FTranspColor := clNone;
               FDelay := Max(FExtRec.GCE.DelayTime * 10, FDelay);
               FDisposalMethod := TDisposeMethod((FExtRec.GCE.PackedFields and GCE_DISPOSAL_METHOD) shr 2);
           end;
      end;
      Result := True;
   end;

begin
   Result := DoLoadStream;
   if not Result then  begin
      FItem.FImageData.Free;
      FItem.FImageData := nil;
   end;
end;

procedure TGifFrame.New_Bitmap;
begin
   FBitmap.Free;
   FBitmap := NewBitmap( 0, 0 );
end;

procedure TGifFrame.SetDelay(const Value: Word);
begin
   if FDelay = Value then Exit;
   FDelay := Value;
   if FDelay > 0 then FOwner.FVersion := gv89a;
end;

procedure TGifFrame.SetDisposalMethod(const Value: TDisposeMethod);
begin
   if FDisposalMethod = Value then Exit;
   FDisposalMethod := Value;
   if Value <> dmUndefined then FOwner.FVersion := gv89a;
end;

procedure TGifFrame.SetTopLeft(const Value: TPoint);
begin
   if (FTopLeft.X = Value.X) and (FTopLeft.Y = Value.Y) then Exit;
   FTopLeft := Value;
   FOwner.FGifWidth := Max(FOwner.FGifWidth, FItem.FSize.X + FTopLeft.X);
   FOwner.FGifHeight := Max(FOwner.FGifHeight, FItem.FSize.Y + FTopLeft.Y);
end;

procedure TGifFrame.SetTranspColor(const Value: TColor);
begin
   if FTranspColor = Value then Exit;
   if Value <> clNone then FOwner.FVersion := gv89a;
   FTranspColor := Value;
end;

procedure TGifFrame.StretchDraw(DC: HDC; Rect: TRect);
var   OldMode: Integer;
      OldOrgX: TPoint;
begin
   GetBitmap;
   if Mask = nil then begin
      OldMode := SetStretchBltMode( DC, HALFTONE );
      SetBrushOrgEx( DC, 0, 0, @ OldOrgX );
      Bitmap.StretchDraw( DC, Rect );
      SetBrushOrgEx( DC, OldOrgX.x, OldOrgX.y, nil );
      SetStretchBltMode( DC, OldMode );
   end else begin
      StretchBitmapMask( DC, Rect, Bitmap, Mask );
   end;
end;

{ TGifDecoder }

procedure TGifDecoder.Clear;
begin
   FGifData.DComment.Free;
   FGifData.DComment := nil;
   ClearItems;
   FGifWidth := 0;
   FGifHeight := 0;
   FCorrupted := FALSE;
end;

procedure TGifDecoder.ClearItems;
var   I: Integer;
begin
   if FItems = nil then exit;
   for I := 0 to FItems.Count-1 do PObj(FItems.Items[I]).Free;
   FItems.Clear;
end;

function NewGifDecoder: PGifDecoder;
begin
   {$ifdef F_P}
   Result := PGifDecoder.Create;
   {$else}
   New(Result, Create);
   {$endif}
   Result.NewImage;
   Result.FTransparent := True;
   Result.FBkColor := clNone;
end;

destructor TGifDecoder.Destroy;
begin
   Clear;
   free_and_nil(FItems);
   inherited;
end;

procedure TGifDecoder.FreeResources;
var   I : Integer;
begin
   if FItems = nil then exit;
   for I := 0 to FItems.Count - 1 do PGifFrame( FItems.Items[ I ] ).FreeResources;
end;

function TGifDecoder.GetBitmap: PBitmap;
begin
   if (FItems.Count > 0) then begin
      if (FFrameIndex >= 0) and (FFrameIndex < FItems.Count) then
         Result := PGIFFrame(FItems.Items[FFrameIndex]).Bitmap
      else
         Result := PGIFFrame(FItems.Items[0]).Bitmap
   end else
      Result := nil;
end;

function TGifDecoder.GetFrame: Integer;
begin
   Result := FFrameIndex;
end;

function TGifDecoder.GetFrameCount: Integer;
begin
   Result := 0;
   if FItems <> nil then Result := FItems.Count;
end;

function TGifDecoder.GetFrames(Idx: Integer): PGifFrame;
begin
   Result := nil;
   if Idx >= 0 then Result := PGifFrame( FItems.Items[ Idx ] );
end;

function TGifDecoder.GetHeight: Integer;
begin
   Result := FGifHeight;
end;

function TGifDecoder.GetMask: PBitmap;
begin
   if (FItems.Count > 0) then begin
      if (FFrameIndex >= 0) and (FFrameIndex < FItems.Count) then
         Result := PGIFFrame(FItems.Items[FFrameIndex]).Mask
      else
         Result := PGIFFrame(FItems.Items[0]).Mask
   end else
      Result := nil;
end;

function TGifDecoder.GetWidth: Integer;
begin
   Result := FGifWidth;
end;

function TGifDecoder.LoadFromFile(const FileName: String): Boolean;
var   Strm : PStream;
begin
   Strm := NewReadFileStream( FileName );
   Result := LoadFromStream( Strm );
   Strm.Free;
end;

function TGifDecoder.LoadFromStream(Stream: PStream): Boolean;
var   SeparatorChar: Char;
      NewItem: PGIFFrame;
      Extensions: PList;
      ScreenDesc: TScreenDescriptor;

   function ReadSignature(Stream: PStream) : Boolean;
   var   I: TGIFVersion;
         S: array[ 0..3 ] of Char;
   begin
      Result := False;
      FVersion := gvUnknown;
      S[ 3 ] := #0;
      Stream.Read(S[0], 3);
      if GIFSignature <> S then Exit;
      Stream.Read(S[0], 3);
      for I := Low(TGIFVersion) to High(TGIFVersion) do
         if CompareMem( @S[ 0 ], PChar( GifVersionStr[ I ] ), 4 ) then begin
            FVersion := I;
            Break;
         end;
      if FVersion = gvUnknown then Exit;
      Result := True;
   end;

   procedure ReadScreenDescriptor(Stream: PStream);
   begin
      Stream.Read(ScreenDesc, SizeOf(ScreenDesc));
      FGifWidth := ScreenDesc.ScreenWidth;
      FGifHeight := ScreenDesc.ScreenHeight;
      FGifData.DAspectRatio := ScreenDesc.AspectRatio;
      FGifData.DBitsPerPixel := 1 + (ScreenDesc.PackedFields and LSD_COLOR_TABLE_SIZE);
      FGifData.DColorResBits := 1 + (ScreenDesc.PackedFields and LSD_COLOR_RESOLUTION) shr 4;
   end;

   procedure ReadGlobalColorMap(Stream: PStream);
   begin
      if (ScreenDesc.PackedFields and LSD_GLOBAL_COLOR_TABLE) <> 0 then begin
         FGifData.DColorMap.ColorCount := 1 shl FGifData.DBitsPerPixel;
         Stream.Read( FGifData.DColorMap.Colors[0],
                      FGifData.DColorMap.ColorCount * SizeOf(TGIFColorItem) );
         fBackIndex := ScreenDesc.BackgroundColorIndex;
         if fBackIndex >= FGifData.DColorMap.ColorCount then fBackIndex := 0;
         FBkColor := ItemToRGB( FGifData.DColorMap.Colors[fBackIndex] );
      end;
   end;

   function ReadDataBlock(Stream: PStream): PStrList;
   var   BlockSize: Byte;
         S: string;
   begin
      Result := NewStrlist;
      repeat
         Stream.Read(BlockSize, SizeOf(Byte));
         if BlockSize <> 0 then begin
            SetLength(S, BlockSize);
            Stream.Read(S[1], BlockSize);
            Result.Add(S);
         end;
      until (BlockSize = 0) or (Stream.Position >= Stream.Size);
   end;

   function ReadExtension(Stream: PStream): PExtension;
   var   ExtensionLabel: Byte;
   begin
      {$ifdef F_P}
      Result:=PExtension.Create;
      {$else}
      New(Result, Create);
      {$endif}
      Stream.Read(ExtensionLabel, SizeOf(Byte));
      if ExtensionLabel = ExtLabels[etGraphic] then begin
         { graphic control extension }
         Result.FExtType := etGraphic;
         Stream.Read(Result.FExtRec.GCE, SizeOf(TGraphicControlExtension));
      end else if ExtensionLabel = ExtLabels[etComment] then begin
         { comment extension }
         Result.FExtType := etComment;
         Result.FList := ReadDataBlock(Stream);
      end else if ExtensionLabel = ExtLabels[etPlainText] then begin
         { plain text extension }
         Result.FExtType := etPlainText;
         Stream.Read(Result.FExtRec.PTE, SizeOf(TPlainTextExtension));
         Result.FList := ReadDataBlock(Stream);
      end else if ExtensionLabel = ExtLabels[etApplication] then begin
         { application extension }
         Result.FExtType := etApplication;
         Stream.Read(Result.FExtRec.APPE, SizeOf(TAppExtension));
         Result.FList := ReadDataBlock(Stream);
      end else
         free_and_nil(Result);
   end;

   function ReadExtensionBlock(Stream: PStream; var SeparatorChar: Char): PList;
   var   sNewExt: PExtension;
         Li: Char;
         FListItems: pointer;
   begin
      Result := nil;
      while SeparatorChar = CHR_EXT_INTRODUCER do begin
         sNewExt := ReadExtension(Stream);
         if (sNewExt.FExtType = etPlainText) then begin
            FreeExtensions(Result);
            Result := nil;
         end;
         if (sNewExt.FExtType in [etPlainText, etApplication]) then begin
            if sNewExt.IsLoopExtension then begin
               FLooping := True;
               Li := sNewExt.FList.Items[0][2];
               FListItems := @Li;
               FRepeatCount := Min( PWord( FListItems )^, MAX_LOOP_COUNT);
            end;
            sNewExt.Free;
         end else begin
            if Result = nil then Result := NewList;
            Result.Add(sNewExt);
         end;
         if Stream.Size > Stream.Position then
            Stream.Read(SeparatorChar, SizeOf(Byte))
         else
            SeparatorChar := CHR_TRAILER;
      end;
      if (Result <> nil) and (Result.Count = 0) then free_and_nil(Result);
   end;

   function DoLoadStream : Boolean;
   var   Size : Integer;
         I, OldPos: Integer;
         Ext: PExtension;
         Idx : Integer;
   begin
      Size := Stream.Size - Stream.Position;
      Result := False;
      NewImage;
      Idx := 0;
      if Size > 0 then begin
         if not ReadSignature(Stream) then Exit;
         ReadScreenDescriptor(Stream);
         ReadGlobalColorMap(Stream);
         Stream.Read(SeparatorChar, SizeOf(Byte));
         OldPos := -1;
         while not (SeparatorChar in [CHR_TRAILER, #0]) and not
                    (Stream.Position >= Stream.Size) and (DWORD(OldPos) <> Stream.Position) do begin
            OldPos := Stream.Position;
            Extensions := ReadExtensionBlock(Stream, SeparatorChar);
            if SeparatorChar = CHR_IMAGE_SEPARATOR then begin
               NewItem := NewGIFFrame({$ifndef F_P}@{$endif}Self);
               NewItem.fFrameIndex := Idx;
               Inc( Idx );
               if FGifData.DColorMap.ColorCount > 0 then
                  NewItem.FItem.FBitsPerPixel := ColorsToBits(FGifData.DColorMap.ColorCount);
               NewItem.FExtensions := Extensions;
               Extensions := nil;
               if not NewItem.LoadFromStream(Stream) then begin
                  NewItem.Free;
                  Exit;
               end;
               FItems.Add(NewItem);
               if Stream.Position < Stream.Size then begin
                  Stream.Read(SeparatorChar, SizeOf(Byte));
                  while (SeparatorChar = #0) and (Stream.Position < Stream.Size) do
                     Stream.Read(SeparatorChar, SizeOf(Byte));
               end else
                  SeparatorChar := CHR_TRAILER;
               if not (SeparatorChar in [CHR_EXT_INTRODUCER, CHR_IMAGE_SEPARATOR, CHR_TRAILER]) then
                  SeparatorChar := #0;
               end else if (FGifData.DComment.Count = 0) and (Extensions <> nil) then begin
                  for I := 0 to Extensions.Count - 1 do begin
                     Ext := Extensions.Items[I];
                     if (Ext <> nil) and (Ext.FExtType = etComment) then begin
                        if FGifData.DComment.Count > 0 then FGifData.DComment.Add(#13#10#13#10);
                        FGifData.DComment.AddStrings(Ext.FList);
                     end;
                  end;
                  FreeExtensions(Extensions);
               end else if not (SeparatorChar in [CHR_TRAILER, #0]) then begin
                  FreeExtensions(Extensions);
                  FCorrupted := TRUE;
                  break;
               end;
            end;
         end;
      if Count > 0 then begin
         FFrameIndex := 0;
         GetBitmap;
         FTransparent := Frames[ 0 ].FTransparent;
      end;
      Result := True;
   end;

begin
   Clear;
   Result := DoLoadStream;
   if not Result then Clear;
end;

procedure TGifDecoder.NewImage;
begin
   FGifData.DComment.Free;
   FGifData.DComment := NewStrList;
   if FItems = nil then FItems := NewList;
   ClearItems;
   FFrameIndex := -1;
   FBkColor := clNone;
   FRepeatCount := 1;
   FLooping := False;
   FVersion := gvUnknown;
end;

procedure TGifDecoder.SetFrame(Value: Integer);
begin
   FFrameIndex := Value;
   if FFrameIndex >= FItems.Count then FFrameIndex := 0;
end;

procedure TGifDecoder.SetNeedMask(const Value: Boolean);
begin
   FNeedMask := Value;
   if Value then
      FOnNeedMask := ProvideTruthMask
   else
      FOnNeedMask := nil;
end;

//******************************************************************************

{ THIGif }

procedure THIGif.Clear;
begin
   if Assigned( FGifImage ) then FGifImage.Clear;
   FCurIndex := -1;
   free_and_nil(FCurFrame);
   free_and_nil(FCurMask);
   free_and_nil(FPrevFrame);
   free_and_nil(FPrevMask);
end;

procedure THIGif.DrawTransp(DC: HDC; X, Y: Integer);
begin
   if Count = 0 then Exit;
   DrawTransparent( DC, X, Y, Frames[ Frame ].TranspColor );
end;

procedure THIGif.DrawTransparent(DC: HDC; X, Y: Integer; TranspColor: TColor);
begin
   if Count = 0 then Exit;
   PrepareFrame;
   if FCurMask = nil then
      FCurFrame.Draw( DC, X, Y )
   else
      DrawBitmapMask( DC, X, Y, FCurFrame, FCurMask );
end;

function THIGif.GetHeight: Integer;
begin
   Result := FGifImage.Height;
end;

function THIGif.GetWidth: Integer;
begin
   Result := FGifImage.Width;
end;

procedure THIGif.PrepareFrame;
var   DM : TDisposeMethod;
      I : Integer;

   procedure DrawCurFrameMask;
   var   F: PGifFrame;
   begin
      F := Frames[ FCurIndex ];
      F.GetBitmap;
      if F.Mask <> nil then begin
         BitBlt( FCurMask.Canvas.Handle, F.Origin.x, F.Origin.y, F.Origin.X + F.Width,
                 F.Origin.Y + F.Height, F.Mask.Canvas.Handle, 0, 0, SRCAND );
      end else begin
         FCurMask.BkColor := clBlack;
         FCurMask.Canvas.FillRect( MakeRect( F.Origin.x, F.Origin.y,
                                   F.Origin.x + F.Width, F.Origin.y + F.Height ) );
      end;
   end;

   procedure Prepare0;
   var   Frame0: PGifFrame;
   begin
      FCurIndex := 0;
      Frame0 := Frames[ 0 ];
      FCurFrame.PixelFormat := Frame0.Bitmap.PixelFormat;
      FCurFrame.BkColor := BkColor;
      FCurFrame.Canvas.FillRect( MakeRect( 0, 0, Width, Height ) );
      if FCurMask <> nil then begin
         FCurMask.BkColor := clWhite;
         FCurMask.Canvas.FillRect( MakeRect( 0, 0, Width, Height ) );
      end;
      Frame0.Draw( FCurFrame.Canvas.Handle, Frame0.Origin.x, Frame0.Origin.y );
      if FCurMask <> nil then DrawCurFrameMask;
   end;

var   F: PGifFrame;
begin
   if Count = 0 then Exit;
   if FCurFrame = nil then begin
      FCurFrame := NewBitmap( Width, Height );
      FCurFrame.PixelFormat := pf24bit;
      if Transparent then begin
         FCurMask := NewBitmap( Width, Height );
         FCurMask.PixelFormat := pf1bit;
      end;
      FCurIndex := -1;
   end;
   if FCurIndex >= 0 then
   if Frames[ FCurIndex ].ReallyTransparent then
   if FCurMask = nil then begin
      FCurMask := NewBitmap( Width, Height );
      FCurMask.PixelFormat := pf1bit;
      FCurMask.BkColor := clBlack;
      FCurMask.Canvas.FillRect( MakeRect( 0, 0, Width, Height ) );
   end;
   if (FCurIndex < 0) or (FCurIndex > Frame) then Prepare0;
   while FCurIndex < Min( Frame, Count ) do begin
      DM := Frames[ FCurIndex ].DisposalMethod;
      if DM = dmRestorePrevious then
         if FCurIndex = 0 then DM := dmRestoreBackground;
      if DM = dmUndefined then
         for I := FCurIndex - 1 downto 0 do
            if Frames[ I ].DisposalMethod <> DM then begin
               DM := Frames[ I ].DisposalMethod;
               break;
            end;
      if (DM = dmUndefined) and (FCurIndex < Count-1) and Frames[ FCurIndex + 1 ].Transparent then DM := dmLeave;
      case DM of
         dmRestoreBackground: begin
                                 FCurFrame.BkColor := BkColor;
                                 F := Frames[ FCurIndex ];
                                 FCurFrame.Canvas.FillRect( MakeRect( F.Origin.x, F.Origin.y,
                                                            F.Origin.x + F.Width, F.Origin.y + F.Height ) );
                                 if FCurMask <> nil then begin
                                    FCurMask.BkColor := clWhite;
                                    if FCurIndex < Count then  begin
                                       Frames[ FCurIndex + 1 ].GetBitmap;
                                       if Frames[ FCurIndex + 1 ].Mask = nil then FCurMask.BkColor := clBlack;
                                    end;
                                    FCurMask.Canvas.FillRect( MakeRect( F.Origin.x, F.Origin.y,
                                                              F.Origin.x + F.Width, F.Origin.y + F.Height ) );
                                 end;
                               end;
           dmRestorePrevious: begin
                                 FCurFrame.Assign( FPrevFrame );
                                 if FCurMask <> nil then FCurMask.Assign( FPrevMask );
                                 if FCurMask <> nil then
                                    if FCurMask.Empty then begin
                                       FCurMask.Free;
                                       FCurMask := nil;
                                    end;
                              end;
                 dmUndefined: begin
                                 F := Frames[ FCurIndex + 1 ];
                                 if F = nil then F := Frames[ FCurIndex ];
                                 FCurFrame.BkColor := BkColor;
                                 FCurFrame.Canvas.FillRect( MakeRect( F.Origin.x, F.Origin.y,
                                                            F.Origin.x + F.Width, F.Origin.y + F.Height ) );
                                 if FCurMask <> nil then begin
                                    FCurMask.BkColor := clBlack;
                                    FCurMask.Canvas.FillRect( MakeRect( F.Origin.x, F.Origin.y,
                                                              F.Origin.x + F.Width, F.Origin.y + F.Height ) );
                                 end;
                              end;
      end;
      Inc( FCurIndex );
      if FCurIndex < Count then begin
         F := Frames[ FCurIndex ];
         if F.DisposalMethod = dmRestorePrevious then begin
            if FPrevFrame = nil then FPrevFrame := NewBitmap( 0, 0 );
            FPrevFrame.Assign( FCurFrame );
            if FCurMask <> nil then begin
               if FPrevMask = nil then FPrevMask := NewBitmap( 0, 0 );
               FPrevMask.Assign( FCurMask );
            end;
         end;
         F.Draw( FCurFrame.Canvas.Handle, F.Origin.x, F.Origin.y );
         if FCurMask <> nil then DrawCurFrameMask;
      end;
   end;
   if FCurIndex >= Count then begin
      FCurIndex := 0;
      Prepare0;
   end;
end;

function THIGif.GetBkColor: TColor;begin Result := FGifImage.BkColor;end;
procedure THIGif.SetBkColor(Value: TColor);begin FGifImage.BkColor := Value;end;
function THIGif.GetFrames(Idx: Integer): PGifFrame;begin Result := FGifImage.Frames[ Idx ];end;
function THIGif.GetTransparent: Boolean;begin Result := FGifImage.Transparent;end;
function THIGif.GetFrame: Integer;begin Result := FGifImage.FFrameIndex;end;
procedure THIGif.SetFrame(Value: Integer); begin if Value >= Count then Value := 0;FGifImage.Frame := Value;end;
function THIGif.GetFrameCount: Integer;begin Result := FGifImage.Count;end;
procedure THIGif.SetWidth(Value: Integer);begin end;
procedure THIGif.SetHeight(Value: Integer);begin end;

//******************************************************************************

constructor THIGif.Create;
begin
   inherited Create;
   FGifImage := NewGifDecoder;
   FGifImage.NeedMask := TRUE;
   Timer := NewTimer(10);
   Timer.Enabled := false;
   Timer.OnTimer := Animation;
end;

destructor THIGif.Destroy;
begin
   Timer.free;
   BMPpart.free;
   Clear;
   free_and_nil(FGifImage);
   inherited;
end;

procedure THIGif._work_doLoadFromFile;
var   fn:string;
begin
   Timer.Enabled := false;
   fn := ReadFileName(ReadString(_data, _data_FileName, _prop_FileName));
   if not FileExists(fn) then exit;
   Clear;
   FGifImage.LoadFromFile(fn);
   _hi_OnEvent(_event_onLoad);
   Context := ReadData(_Data, _data_Bitmap);
   sBkColor := ReadInteger(_data, _data_BkColor, _prop_BkColor);
   x := ReadInteger(_Data, _data_X, _prop_X);
   y := ReadInteger(_Data, _data_Y, _prop_Y);
   If Count > 0 then SetGifParametrs;
end;

procedure THIGif._work_doLoadFromStream;
var   st:PStream;
      dt:TData;
begin
   Timer.Enabled := false;
   dt := ReadData(_data, _data_Stream);
   if not _IsStream(dt) then exit;  
   st := ToStream(dt);
   st.Position := 0;
   if st = nil then exit;
   Clear;
   FGifImage.LoadFromStream(st);   
   _hi_OnEvent(_event_onLoad);
   Context := ReadData(_Data, _data_Bitmap);
   sBkColor := ReadInteger(_data, _data_BkColor, _prop_BkColor);
   x := ReadInteger(_Data, _data_X, _prop_X);
   y := ReadInteger(_Data, _data_Y, _prop_Y);
   If Count > 0 then SetGifParametrs;
end;

procedure THIGif.SetGifParametrs;
var   Wnd: HWND;
      DC: HDC;
begin
   BMPpart.free;
   BMPpart := NewBitmap(Width,Height);
   Frame := Frame - 1;
   
   { save working part of context }
   case fDrawSource of
      0: begin
            if not _IsBitmap(Context) then exit;
            BMPcopy := ToBitmap(Context);
            if (BMPcopy = nil) or BMPcopy.Empty then exit;
            BitBlt(BMPpart.Canvas.Handle, 0, 0, Width, Height, BMPcopy.Canvas.Handle, X, Y, SRCCOPY);            
         end;
      1: begin
            if not _IsInteger(Context) then exit;
            Wnd := ToInteger(Context);
            if Wnd = 0 then exit;
            DC := GetWindowDC(Wnd);
            BitBlt(BMPpart.Canvas.Handle, 0, 0, Width, Height, DC, X, Y, SRCCOPY);
            ReleaseDC(Wnd,DC);
         end;
   end;
   
   if fAutoAnimation then Timer.Enabled := true;
   Animation(nil);   
end;

procedure THIGif.Animation;
var   tm: integer;
      dt:TData;
begin
   Frame := Frame + 1;
   dtInteger(dt, Frames[Frame].Delay);
   _ReadData(dt,_data_NewDelay);
   tm := ToInteger(dt); 
   if (tm = 0) and (Frames[Frame].Delay < 10) then tm := sDelay;
   if tm <> 0 then
      Timer.Interval := Max(10, tm)
   else
      Timer.Interval := Max(10, Frames[Frame].Delay);
   case fDrawSource of
      0: Bitmap;
      1: Handle;
      else outBitmap;
   end;
   If Count < 2 then Timer.Enabled := false;
end;

procedure THIGif.Bitmap;
begin
   BitBlt(BMPcopy.Canvas.Handle, X, Y, Width, Height, BMPpart.Canvas.Handle, 0, 0, SRCCOPY);
   DrawTransp(BMPcopy.Canvas.Handle, X, Y);
   _hi_OnEvent(_event_onDraw);
end;

procedure THIGif.Handle;
var   Wnd: HWND;
      DC: HDC;
      hdcMem: HDC;
      hdcBmp: HBITMAP;
begin
   Wnd := ToInteger(Context);
   if Wnd = 0 then exit;
   DC := GetWindowDC(Wnd);
   hdcMem:= CreateCompatibleDC(0);
   hdcBmp:= CreateCompatibleBitmap(DC, Width, Height);
   SelectObject(hdcMem, hdcBmp); 
   BitBlt(hdcMem, 0, 0, Width, Height, BMPpart.Canvas.Handle, 0, 0, SRCCOPY);
   DrawTransp(hdcMem, 0, 0);
   BitBlt(DC, X, Y, Width, Height, hdcMem, 0, 0, SRCCOPY);
   DeleteDC(hdcMem);
   DeleteObject(hdcBmp);
   ReleaseDC(Wnd,DC);
   _hi_OnEvent(_event_onDraw);
end;

procedure THIGif.outBitmap;
var   TmpBmp: PBitmap;
begin
   TmpBmp := NewDIBBitmap(Width, Height, pf24bit );
   TmpBmp.Canvas.Brush.Color := sBkColor;
   TmpBmp.Canvas.FillRect(MakeRect( 0, 0, Width, Height) );
   DrawTransp(TmpBmp.Canvas.Handle, 0, 0);
   _hi_OnEvent(_event_onDraw, TmpBmp) ;
   TmpBmp.Free;
end;

procedure THIGif._work_doNextFrame;
begin                                 
   if not Timer.Enabled then Animation(nil);
end; 

procedure THIGif._work_doStop;
begin                                 
   Timer.Enabled := false;
end; 

procedure THIGif._work_doPlay;
begin                                 
   Timer.Enabled := true;
end;
 
procedure THIGif._work_doSetFrame;
begin                                 
   Timer.Enabled := false;
   Frame := ReadInteger(_data, _data_Frame) - 1;
   Animation(nil);
end;

procedure THIGif._work_doDrawSource;
begin
   fDrawSource := ToInteger(_Data);
   If Count > 0 then SetGifParametrs;
end;
    
procedure THIGif._work_doAutoAnimation; begin fAutoAnimation := ReadBool(_Data);end; 
procedure THIGif._work_doDefaultDelay; begin sDelay := ToInteger(_Data);end;

procedure THIGif._var_CurFrame;begin dtInteger(_Data, Frame);end;
procedure THIGif._var_FrameCount;begin dtInteger(_Data, Count);end;
procedure THIGif._var_GIFWidth;begin dtInteger(_Data, Width);end;
procedure THIGif._var_GIFHeight;begin dtInteger(_Data, Height);end;

end.