unit hiChildForm_2527EA0;

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
TClassChildForm_2527EA0 = class(TClassMultiBase)
 public
  EditMulti_244C5D0:THIEditMulti;
  Label_24BA350:THILabel;
  MainForm_24BA3F0:THIMainForm;
  Label_24BA490:THILabel;
  Image_24BA530:THIImage;
  Gif_24AF168:THIGif;
  MemoryStream_24AF200:THIMemoryStream;
  Hub_2528160:THIHub;
  Memory_24AF0D0:THIMemory;
  Memory_24AF298:THIMemory;
  Memory_24AF330:THIMemory;
  Memory_24AF3C8:THIMemory;
  Hub_2528210:THIHub;
  Hub_25282C0:THIHub;
  Hub_2528370:THIHub;
  Hub_2528420:THIHub;
  Hub_25284D0:THIHub;
  Hub_2528580:THIHub;
  Hub_2528630:THIHub;
  Memory_24AF460:THIMemory;
  Memory_24AF4F8:THIMemory;
  Memory_24AF590:THIMemory;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_2527EA0(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_2527EA0;
begin
  Result := THiEditMulti(TClassChildForm_2527EA0.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_2527EA0.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_24BA3F0 - Main
  MainForm_24BA3F0 := THIMainForm.Create(_Control);
  with MainForm_24BA3F0 do begin
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
  EditMulti_244C5D0 := THIEditMulti.Create;
  with EditMulti_244C5D0 do begin
    SetLength(Works,15);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_24BA350 := THILabel.Create(MainForm_24BA3F0.Control);
  with Label_24BA350 do begin
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
  Label_24BA490 := THILabel.Create(MainForm_24BA3F0.Control);
  with Label_24BA490 do begin
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
  Image_24BA530 := THIImage.Create(MainForm_24BA3F0.Control);
  with Image_24BA530 do begin
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
  Gif_24AF168 := THIGif.Create;
  with Gif_24AF168 do begin
    _prop_FileName := PChar(#0);
    _prop_X := 0;
    _prop_Y := 0;
    _prop_BkColor := 16777215;
    _prop_DrawSource := 2;
    _prop_AutoAnimation := True;
    _prop_DefaultDelay := 83;
  end;
//Init for MemoryStream;
  MemoryStream_24AF200 := THIMemoryStream.Create;
  with MemoryStream_24AF200 do begin
    _prop_Stream := LoadResStream('STREAM0');
  end;
//Init for Hub;
  Hub_2528160 := THIHub.Create;
  with Hub_2528160 do begin
    _prop_InCount := 2;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_24AF0D0 := THIMemory.Create;
  with Memory_24AF0D0 do begin
    _prop_Default := _DoData(PChar('Store Purchase App'#0));
  end;
//Init for Memory;
  Memory_24AF298 := THIMemory.Create;
  with Memory_24AF298 do begin
    _prop_Default := _DoData(PChar('Desktop App Installer'#0));
  end;
//Init for Memory;
  Memory_24AF330 := THIMemory.Create;
  with Memory_24AF330 do begin
    _prop_Default := _DoData(PChar('Xbox Identity Provider'#0));
  end;
//Init for Memory;
  Memory_24AF3C8 := THIMemory.Create;
  with Memory_24AF3C8 do begin
    _prop_Default := _DoData(PChar('Windows Store'#0));
  end;
//Init for Hub;
  Hub_2528210 := THIHub.Create;
  with Hub_2528210 do begin
    _prop_InCount := 5;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25282C0 := THIHub.Create;
  with Hub_25282C0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528370 := THIHub.Create;
  with Hub_2528370 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528420 := THIHub.Create;
  with Hub_2528420 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25284D0 := THIHub.Create;
  with Hub_25284D0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528580 := THIHub.Create;
  with Hub_2528580 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528630 := THIHub.Create;
  with Hub_2528630 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Memory;
  Memory_24AF460 := THIMemory.Create;
  with Memory_24AF460 do begin
    _prop_Default := _DoData(PChar('Uninstalling'#0));
  end;
//Init for Memory;
  Memory_24AF4F8 := THIMemory.Create;
  with Memory_24AF4F8 do begin
    _prop_Default := _DoData(PChar('Installing'#0));
  end;
//Init for Memory;
  Memory_24AF590 := THIMemory.Create;
  with Memory_24AF590 do begin
    _prop_Default := _DoData(PChar('Libraries'#0));
  end;
  Child := EditMulti_244C5D0;
  EditMulti_244C5D0.MainClass := Self;
  EditMulti_244C5D0.Parent := _parent;
 //Make all connection in scheme
  EditMulti_244C5D0.Works[0]               := _DoEvent(Hub_2528160.doEvent,0);
  EditMulti_244C5D0.Works[1]               := _DoEvent(Hub_25282C0.doEvent,0);
  EditMulti_244C5D0.Works[2]               := _DoEvent(Hub_2528370.doEvent,0);
  EditMulti_244C5D0.Works[3]               := _DoEvent(Hub_2528420.doEvent,0);
  EditMulti_244C5D0.Works[4]               := _DoEvent(Hub_2528580.doEvent,0);
  EditMulti_244C5D0.Works[5]               := _DoEvent(Hub_25284D0.doEvent,0);
  EditMulti_244C5D0.Works[6]               := _DoEvent(Hub_2528160.doEvent,1);
  EditMulti_244C5D0.Works[7]               := _DoEvent(Hub_25282C0.doEvent,1);
  EditMulti_244C5D0.Works[8]               := _DoEvent(Hub_2528370.doEvent,1);
  EditMulti_244C5D0.Works[9]               := _DoEvent(Hub_2528420.doEvent,1);
  EditMulti_244C5D0.Works[10]              := _DoEvent(Hub_2528580.doEvent,1);
  EditMulti_244C5D0.Works[11]              := _DoEvent(Hub_25284D0.doEvent,1);
  EditMulti_244C5D0.Works[12]              := _DoEvent(Memory_24AF460._work_doClear,1);
  EditMulti_244C5D0.Works[13]              := _DoEvent(Memory_24AF4F8._work_doClear,1);
  EditMulti_244C5D0.Works[14]              := _DoEvent(Memory_24AF590._work_doClear,1);
  MainForm_24BA3F0._event_onActivate       := _DoEvent(Gif_24AF168._work_doLoadFromStream,1);
  Gif_24AF168._event_onDraw                := _DoEvent(Image_24BA530._work_doLoad,0);
  Gif_24AF168._data_Stream                 := _DoEvent(MemoryStream_24AF200._var_Stream,0);
  Hub_2528160.onEvent[0]                   := _DoEvent(MainForm_24BA3F0._work_doVisible,4);
  Hub_2528160.onEvent[1]                   := _DoEvent(MainForm_24BA3F0._work_doCenterPos,5);
  Memory_24AF0D0._event_onData             := _DoEvent(Hub_2528210.doEvent,1);
  Memory_24AF298._event_onData             := _DoEvent(Hub_2528210.doEvent,0);
  Memory_24AF330._event_onData             := _DoEvent(Hub_2528210.doEvent,3);
  Memory_24AF3C8._event_onData             := _DoEvent(Hub_2528210.doEvent,2);
  Hub_2528210.onEvent[0]                   := _DoEvent(Label_24BA350._work_doText,0);
  Hub_25282C0.onEvent[0]                   := _DoEvent(MainForm_24BA3F0._work_doClose,3);
  Hub_2528370.onEvent[0]                   := _DoEvent(Memory_24AF298._work_doClear,1);
  Hub_2528420.onEvent[0]                   := _DoEvent(Memory_24AF0D0._work_doClear,1);
  Hub_25284D0.onEvent[0]                   := _DoEvent(Memory_24AF330._work_doClear,1);
  Hub_2528580.onEvent[0]                   := _DoEvent(Memory_24AF3C8._work_doClear,1);
  Hub_2528630.onEvent[0]                   := _DoEvent(Label_24BA490._work_doText,0);
  Memory_24AF460._event_onData             := _DoEvent(Hub_2528630.doEvent,0);
  Memory_24AF4F8._event_onData             := _DoEvent(Hub_2528630.doEvent,1);
  Memory_24AF590._event_onData             := _DoEvent(Hub_2528210.doEvent,4);
  Label_24BA350._prop_HintManager := nil;
  Label_24BA350._prop_Layout := nil;
  MainForm_24BA3F0._prop_HintManager := nil;
  MainForm_24BA3F0._prop_Layout := nil;
  MainForm_24BA3F0._prop_TransparentManager := nil;
  MainForm_24BA3F0._prop_FormFastening := nil;
  Label_24BA490._prop_HintManager := nil;
  Label_24BA490._prop_Layout := nil;
  Image_24BA530._prop_HintManager := nil;
  Image_24BA530._prop_Layout := nil;
  MainForm_24BA3F0.Control.Tabulate;

  ParentElement := MainForm_24BA3F0;
end;

destructor TClassChildForm_2527EA0.Destroy;
begin
  Memory_24AF590.Destroy;
  Memory_24AF4F8.Destroy;
  Memory_24AF460.Destroy;
  Hub_2528630.Destroy;
  Hub_2528580.Destroy;
  Hub_25284D0.Destroy;
  Hub_2528420.Destroy;
  Hub_2528370.Destroy;
  Hub_25282C0.Destroy;
  Hub_2528210.Destroy;
  Memory_24AF3C8.Destroy;
  Memory_24AF330.Destroy;
  Memory_24AF298.Destroy;
  Memory_24AF0D0.Destroy;
  Hub_2528160.Destroy;
  MemoryStream_24AF200.Destroy;
  Gif_24AF168.Destroy;
  Image_24BA530.Destroy;
  Label_24BA490.Destroy;
  Label_24BA350.Destroy;
  EditMulti_244C5D0.Destroy;
  MainForm_24BA3F0.Destroy;
  inherited;
end;


end.
