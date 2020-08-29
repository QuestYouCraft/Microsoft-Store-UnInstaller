unit hiChildForm_8CA7EA0;

interface

uses 
  Windows,
  hiEditMulti,
  hiMainForm,
  hiLabel,
  hiImage,
  hiGif,
  hiMemoryStream,
  hiHub,
  hiMemory,
  hiMultiBase,
  kol,Share;

type
TClassChildForm_8CA7EA0 = class(TClassMultiBase)
 public
  EditMulti_8BCC510:THIEditMulti;
  MainForm_8C399F0:THIMainForm;
  Label_8C39A90:THILabel;
  Image_8C39B30:THIImage;
  Gif_8C2F168:THIGif;
  MemoryStream_8C2F200:THIMemoryStream;
  Label_8C3A2B0:THILabel;
  Hub_8CA8160:THIHub;
  Memory_8C2F0D0:THIMemory;
  Memory_8C2F298:THIMemory;
  Memory_8C2F330:THIMemory;
  Memory_8C2F3C8:THIMemory;
  Hub_8CA8210:THIHub;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_8CA7EA0(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_8CA7EA0;
begin
  Result := THiEditMulti(TClassChildForm_8CA7EA0.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_8CA7EA0.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_8C399F0 - Main
  MainForm_8C399F0 := THIMainForm.Create(_Control);
  with MainForm_8C399F0 do begin
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
    _prop_KeyPreview := True;
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
  EditMulti_8BCC510 := THIEditMulti.Create;
  with EditMulti_8BCC510 do begin
    SetLength(Works,6);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_8C39A90 := THILabel.Create(MainForm_8C399F0.Control);
  with Label_8C39A90 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 135;
    _prop_Width := 385;
    _prop_Height := 45;
    _prop_Align := caNone;
    _prop_Color := 16777215;
    _prop_Font := hiCreateFont('Segoe UI',24,0,0,204);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
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
    Init;
  end;
//Init for Image;
  Image_8C39B30 := THIImage.Create(MainForm_8C399F0.Control);
  with Image_8C39B30 do begin
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
  Gif_8C2F168 := THIGif.Create;
  with Gif_8C2F168 do begin
    _prop_FileName := PChar(#0);
    _prop_X := 0;
    _prop_Y := 0;
    _prop_BkColor := 16777215;
    _prop_DrawSource := 2;
    _prop_AutoAnimation := True;
    _prop_DefaultDelay := 83;
  end;
//Init for MemoryStream;
  MemoryStream_8C2F200 := THIMemoryStream.Create;
  with MemoryStream_8C2F200 do begin
    _prop_Stream := LoadResStream('STREAM0');
  end;
//Init for Label;
  Label_8C3A2B0 := THILabel.Create(MainForm_8C399F0.Control);
  with Label_8C3A2B0 do begin
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
    Init;
  end;
//Init for Hub;
  Hub_8CA8160 := THIHub.Create;
  with Hub_8CA8160 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_8C2F0D0 := THIMemory.Create;
  with Memory_8C2F0D0 do begin
    _prop_Default := _DoData(PChar('Store Purchase App'#0));
  end;
//Init for Memory;
  Memory_8C2F298 := THIMemory.Create;
  with Memory_8C2F298 do begin
    _prop_Default := _DoData(PChar('Desktop App Installer'#0));
  end;
//Init for Memory;
  Memory_8C2F330 := THIMemory.Create;
  with Memory_8C2F330 do begin
    _prop_Default := _DoData(PChar('Xbox Identity Provider'#0));
  end;
//Init for Memory;
  Memory_8C2F3C8 := THIMemory.Create;
  with Memory_8C2F3C8 do begin
    _prop_Default := _DoData(PChar('Windows Store'#0));
  end;
//Init for Hub;
  Hub_8CA8210 := THIHub.Create;
  with Hub_8CA8210 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
  Child := EditMulti_8BCC510;
  EditMulti_8BCC510.MainClass := Self;
  EditMulti_8BCC510.Parent := _parent;
 //Make all connection in scheme
  EditMulti_8BCC510.Works[0]               := _DoEvent(Hub_8CA8160.doEvent,0);
  EditMulti_8BCC510.Works[1]               := _DoEvent(MainForm_8C399F0._work_doClose,3);
  EditMulti_8BCC510.Works[2]               := _DoEvent(Memory_8C2F298._work_doClear,1);
  EditMulti_8BCC510.Works[3]               := _DoEvent(Memory_8C2F0D0._work_doClear,1);
  EditMulti_8BCC510.Works[4]               := _DoEvent(Memory_8C2F3C8._work_doClear,1);
  EditMulti_8BCC510.Works[5]               := _DoEvent(Memory_8C2F330._work_doClear,1);
  MainForm_8C399F0._event_onActivate       := _DoEvent(Gif_8C2F168._work_doLoadFromStream,1);
  Gif_8C2F168._event_onDraw                := _DoEvent(Image_8C39B30._work_doLoad,0);
  Gif_8C2F168._data_Stream                 := _DoEvent(MemoryStream_8C2F200._var_Stream,0);
  Hub_8CA8160.onEvent[0]                   := _DoEvent(MainForm_8C399F0._work_doVisible,4);
  Hub_8CA8160.onEvent[1]                   := _DoEvent(MainForm_8C399F0._work_doCenterPos,5);
  Memory_8C2F0D0._event_onData             := _DoEvent(Hub_8CA8210.doEvent,1);
  Memory_8C2F298._event_onData             := _DoEvent(Hub_8CA8210.doEvent,0);
  Memory_8C2F330._event_onData             := _DoEvent(Hub_8CA8210.doEvent,3);
  Memory_8C2F3C8._event_onData             := _DoEvent(Hub_8CA8210.doEvent,2);
  Hub_8CA8210.onEvent[0]                   := _DoEvent(Label_8C3A2B0._work_doText,0);
  MainForm_8C399F0._prop_HintManager := nil;
  MainForm_8C399F0._prop_Layout := nil;
  MainForm_8C399F0._prop_TransparentManager := nil;
  MainForm_8C399F0._prop_FormFastening := nil;
  Label_8C39A90._prop_HintManager := nil;
  Label_8C39A90._prop_Layout := nil;
  Image_8C39B30._prop_HintManager := nil;
  Image_8C39B30._prop_Layout := nil;
  Label_8C3A2B0._prop_HintManager := nil;
  Label_8C3A2B0._prop_Layout := nil;
  MainForm_8C399F0.Control.Tabulate;

  ParentElement := MainForm_8C399F0;
end;

destructor TClassChildForm_8CA7EA0.Destroy;
begin
  Hub_8CA8210.Destroy;
  Memory_8C2F3C8.Destroy;
  Memory_8C2F330.Destroy;
  Memory_8C2F298.Destroy;
  Memory_8C2F0D0.Destroy;
  Hub_8CA8160.Destroy;
  Label_8C3A2B0.Destroy;
  MemoryStream_8C2F200.Destroy;
  Gif_8C2F168.Destroy;
  Image_8C39B30.Destroy;
  Label_8C39A90.Destroy;
  EditMulti_8BCC510.Destroy;
  MainForm_8C399F0.Destroy;
  inherited;
end;


end.
