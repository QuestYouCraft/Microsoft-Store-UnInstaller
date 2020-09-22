unit hiChildForm_2587EA0;

interface

uses 
  Windows,
  hiEditMulti,
  hiLabel,
  hiMainForm,
  hiImage,
  hiGif,
  hiMemoryStream,
  hiHub,
  hiMemory,
  hiMultiBase,
  kol,Share;

type
TClassChildForm_2587EA0 = class(TClassMultiBase)
 public
  EditMulti_24AC5D0:THIEditMulti;
  Label_251A350:THILabel;
  MainForm_251A3F0:THIMainForm;
  Label_251A490:THILabel;
  Image_251A530:THIImage;
  Gif_250F168:THIGif;
  MemoryStream_250F200:THIMemoryStream;
  Hub_2588160:THIHub;
  Memory_250F0D0:THIMemory;
  Memory_250F298:THIMemory;
  Memory_250F330:THIMemory;
  Memory_250F3C8:THIMemory;
  Hub_2588210:THIHub;
  Hub_25882C0:THIHub;
  Hub_2588370:THIHub;
  Hub_2588420:THIHub;
  Hub_25884D0:THIHub;
  Hub_2588580:THIHub;
  Hub_2588630:THIHub;
  Memory_250F460:THIMemory;
  Memory_250F4F8:THIMemory;
  Memory_250F590:THIMemory;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_2587EA0(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_2587EA0;
begin
  Result := THiEditMulti(TClassChildForm_2587EA0.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_2587EA0.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_251A3F0 - Main
  MainForm_251A3F0 := THIMainForm.Create(_Control);
  with MainForm_251A3F0 do begin
    ManFlags := 0;
    _prop_Left := 35;
    _prop_Top := 105;
    _prop_Width := 389;
    _prop_Height := 231;
    _prop_Align := caNone;
    _prop_Color := 16777215;
    _prop_Font := hiCreateFont('MS Sans Serif',8,0,0,1);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_KeyPreview := True;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 0;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_AlphaBlendValue := 255;
    _prop_Caption := PChar('Installing'#0);
    _prop_BorderStyle := 0;
    _prop_WindowsState := 0;
    _prop_Icon := LoadIcon(hInstance,'ASMA');
    _prop_TaskBar := 1;
    _prop_DragForm := False;
    _prop_TransparentColor := 16777215;
    _prop_SavePosName := PChar(#0);
    _prop_MouseCapture := False;
    _prop_ClientSize := False;
    _prop_Position := poNone;
    _prop_ShiftLeft := 0;
    _prop_ShiftTop := 0;
    Init;
  end;
//Init for EditMulti;
  EditMulti_24AC5D0 := THIEditMulti.Create;
  with EditMulti_24AC5D0 do begin
    SetLength(Works,15);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_251A350 := THILabel.Create(MainForm_251A3F0.Control);
  with Label_251A350 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 180;
    _prop_Width := 390;
    _prop_Height := 45;
    _prop_Align := caNone;
    _prop_Color := 16777215;
    _prop_Font := hiCreateFont('Segoe UI',24,0,0,204);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_KeyPreview := True;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 0;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_ModeSp := spNone;
    _prop_SizeSp := 4;
    _prop_ColorSp := -16777201;
    _prop_MinOwn := 0;
    _prop_MinRest := 0;
    _prop_Transparent := False;
    _prop_Caption := PChar('Please wait'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Label;
  Label_251A490 := THILabel.Create(MainForm_251A3F0.Control);
  with Label_251A490 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 140;
    _prop_Width := 385;
    _prop_Height := 45;
    _prop_Align := caNone;
    _prop_Color := 16777215;
    _prop_Font := hiCreateFont('Segoe UI',24,0,0,204);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_KeyPreview := True;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 0;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_ModeSp := spNone;
    _prop_SizeSp := 4;
    _prop_ColorSp := -16777201;
    _prop_MinOwn := 0;
    _prop_MinRest := 0;
    _prop_Transparent := False;
    _prop_Caption := PChar('Installing'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Image;
  Image_251A530 := THIImage.Create(MainForm_251A3F0.Control);
  with Image_251A530 do begin
    ManFlags := 0;
    _prop_Left := 5;
    _prop_Top := 15;
    _prop_Width := 385;
    _prop_Height := 120;
    _prop_Align := caNone;
    _prop_Color := 16777215;
    _prop_Font := hiCreateFont('MS Sans Serif',8,0,0,1);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_KeyPreview := True;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 0;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_ModeSp := spNone;
    _prop_SizeSp := 4;
    _prop_ColorSp := -16777201;
    _prop_MinOwn := 0;
    _prop_MinRest := 0;
    _prop_AutoSize := False;
    _prop_ViewStyle := ScaleMin;
    _prop_HalfTone := True;
    _prop_MouseCapture := False;
    Init;
  end;
//Init for Gif;
  Gif_250F168 := THIGif.Create;
  with Gif_250F168 do begin
    _prop_FileName := PChar(#0);
    _prop_X := 0;
    _prop_Y := 0;
    _prop_BkColor := 16777215;
    _prop_DrawSource := 2;
    _prop_AutoAnimation := True;
    _prop_DefaultDelay := 83;
  end;
//Init for MemoryStream;
  MemoryStream_250F200 := THIMemoryStream.Create;
  with MemoryStream_250F200 do begin
    _prop_Stream := LoadResStream('STREAM0');
  end;
//Init for Hub;
  Hub_2588160 := THIHub.Create;
  with Hub_2588160 do begin
    _prop_InCount := 2;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_250F0D0 := THIMemory.Create;
  with Memory_250F0D0 do begin
    _prop_Default := _DoData(PChar('Store Purchase App'#0));
  end;
//Init for Memory;
  Memory_250F298 := THIMemory.Create;
  with Memory_250F298 do begin
    _prop_Default := _DoData(PChar('Desktop App Installer'#0));
  end;
//Init for Memory;
  Memory_250F330 := THIMemory.Create;
  with Memory_250F330 do begin
    _prop_Default := _DoData(PChar('Xbox Identity Provider'#0));
  end;
//Init for Memory;
  Memory_250F3C8 := THIMemory.Create;
  with Memory_250F3C8 do begin
    _prop_Default := _DoData(PChar('Windows Store'#0));
  end;
//Init for Hub;
  Hub_2588210 := THIHub.Create;
  with Hub_2588210 do begin
    _prop_InCount := 5;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25882C0 := THIHub.Create;
  with Hub_25882C0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588370 := THIHub.Create;
  with Hub_2588370 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588420 := THIHub.Create;
  with Hub_2588420 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25884D0 := THIHub.Create;
  with Hub_25884D0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588580 := THIHub.Create;
  with Hub_2588580 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588630 := THIHub.Create;
  with Hub_2588630 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Memory;
  Memory_250F460 := THIMemory.Create;
  with Memory_250F460 do begin
    _prop_Default := _DoData(PChar('Uninstalling'#0));
  end;
//Init for Memory;
  Memory_250F4F8 := THIMemory.Create;
  with Memory_250F4F8 do begin
    _prop_Default := _DoData(PChar('Installing'#0));
  end;
//Init for Memory;
  Memory_250F590 := THIMemory.Create;
  with Memory_250F590 do begin
    _prop_Default := _DoData(PChar('Libraries'#0));
  end;
  Child := EditMulti_24AC5D0;
  EditMulti_24AC5D0.MainClass := Self;
  EditMulti_24AC5D0.Parent := _parent;
 //Make all connection in scheme
  EditMulti_24AC5D0.Works[0]               := _DoEvent(Hub_2588160.doEvent,0);
  EditMulti_24AC5D0.Works[1]               := _DoEvent(Hub_25882C0.doEvent,0);
  EditMulti_24AC5D0.Works[2]               := _DoEvent(Hub_2588370.doEvent,0);
  EditMulti_24AC5D0.Works[3]               := _DoEvent(Hub_2588420.doEvent,0);
  EditMulti_24AC5D0.Works[4]               := _DoEvent(Hub_2588580.doEvent,0);
  EditMulti_24AC5D0.Works[5]               := _DoEvent(Hub_25884D0.doEvent,0);
  EditMulti_24AC5D0.Works[6]               := _DoEvent(Hub_2588160.doEvent,1);
  EditMulti_24AC5D0.Works[7]               := _DoEvent(Hub_25882C0.doEvent,1);
  EditMulti_24AC5D0.Works[8]               := _DoEvent(Hub_2588370.doEvent,1);
  EditMulti_24AC5D0.Works[9]               := _DoEvent(Hub_2588420.doEvent,1);
  EditMulti_24AC5D0.Works[10]              := _DoEvent(Hub_2588580.doEvent,1);
  EditMulti_24AC5D0.Works[11]              := _DoEvent(Hub_25884D0.doEvent,1);
  EditMulti_24AC5D0.Works[12]              := _DoEvent(Memory_250F460._work_doClear,1);
  EditMulti_24AC5D0.Works[13]              := _DoEvent(Memory_250F4F8._work_doClear,1);
  EditMulti_24AC5D0.Works[14]              := _DoEvent(Memory_250F590._work_doClear,1);
  MainForm_251A3F0._event_onActivate       := _DoEvent(Gif_250F168._work_doLoadFromStream,1);
  Gif_250F168._event_onDraw                := _DoEvent(Image_251A530._work_doLoad,0);
  Gif_250F168._data_Stream                 := _DoEvent(MemoryStream_250F200._var_Stream,0);
  Hub_2588160.onEvent[0]                   := _DoEvent(MainForm_251A3F0._work_doVisible,4);
  Hub_2588160.onEvent[1]                   := _DoEvent(MainForm_251A3F0._work_doCenterPos,5);
  Memory_250F0D0._event_onData             := _DoEvent(Hub_2588210.doEvent,1);
  Memory_250F298._event_onData             := _DoEvent(Hub_2588210.doEvent,0);
  Memory_250F330._event_onData             := _DoEvent(Hub_2588210.doEvent,3);
  Memory_250F3C8._event_onData             := _DoEvent(Hub_2588210.doEvent,2);
  Hub_2588210.onEvent[0]                   := _DoEvent(Label_251A350._work_doText,0);
  Hub_25882C0.onEvent[0]                   := _DoEvent(MainForm_251A3F0._work_doClose,3);
  Hub_2588370.onEvent[0]                   := _DoEvent(Memory_250F298._work_doClear,1);
  Hub_2588420.onEvent[0]                   := _DoEvent(Memory_250F0D0._work_doClear,1);
  Hub_25884D0.onEvent[0]                   := _DoEvent(Memory_250F330._work_doClear,1);
  Hub_2588580.onEvent[0]                   := _DoEvent(Memory_250F3C8._work_doClear,1);
  Hub_2588630.onEvent[0]                   := _DoEvent(Label_251A490._work_doText,0);
  Memory_250F460._event_onData             := _DoEvent(Hub_2588630.doEvent,0);
  Memory_250F4F8._event_onData             := _DoEvent(Hub_2588630.doEvent,1);
  Memory_250F590._event_onData             := _DoEvent(Hub_2588210.doEvent,4);
  Label_251A350._prop_HintManager := nil;
  Label_251A350._prop_Layout := nil;
  MainForm_251A3F0._prop_HintManager := nil;
  MainForm_251A3F0._prop_Layout := nil;
  MainForm_251A3F0._prop_TransparentManager := nil;
  MainForm_251A3F0._prop_FormFastening := nil;
  Label_251A490._prop_HintManager := nil;
  Label_251A490._prop_Layout := nil;
  Image_251A530._prop_HintManager := nil;
  Image_251A530._prop_Layout := nil;
  MainForm_251A3F0.Control.Tabulate;

  ParentElement := MainForm_251A3F0;
end;

destructor TClassChildForm_2587EA0.Destroy;
begin
  Memory_250F590.Destroy;
  Memory_250F4F8.Destroy;
  Memory_250F460.Destroy;
  Hub_2588630.Destroy;
  Hub_2588580.Destroy;
  Hub_25884D0.Destroy;
  Hub_2588420.Destroy;
  Hub_2588370.Destroy;
  Hub_25882C0.Destroy;
  Hub_2588210.Destroy;
  Memory_250F3C8.Destroy;
  Memory_250F330.Destroy;
  Memory_250F298.Destroy;
  Memory_250F0D0.Destroy;
  Hub_2588160.Destroy;
  MemoryStream_250F200.Destroy;
  Gif_250F168.Destroy;
  Image_251A530.Destroy;
  Label_251A490.Destroy;
  Label_251A350.Destroy;
  EditMulti_24AC5D0.Destroy;
  MainForm_251A3F0.Destroy;
  inherited;
end;


end.
