unit hiChildForm_26D8370;

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
TClassChildForm_26D8370 = class(TClassMultiBase)
 public
  EditMulti_25FD350:THIEditMulti;
  MainForm_2670A70:THIMainForm;
  Label_2670B10:THILabel;
  Image_2670BB0:THIImage;
  Gif_265F200:THIGif;
  MemoryStream_265F298:THIMemoryStream;
  Label_2671330:THILabel;
  Hub_26D86E0:THIHub;
  Memory_265F168:THIMemory;
  Memory_265F330:THIMemory;
  Memory_265F3C8:THIMemory;
  Memory_265F460:THIMemory;
  Hub_26D8790:THIHub;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_26D8370(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_26D8370;
begin
  Result := THiEditMulti(TClassChildForm_26D8370.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_26D8370.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_2670A70 - Main
  MainForm_2670A70 := THIMainForm.Create(_Control);
  with MainForm_2670A70 do begin
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
  EditMulti_25FD350 := THIEditMulti.Create;
  with EditMulti_25FD350 do begin
    SetLength(Works,6);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_2670B10 := THILabel.Create(MainForm_2670A70.Control);
  with Label_2670B10 do begin
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
  Image_2670BB0 := THIImage.Create(MainForm_2670A70.Control);
  with Image_2670BB0 do begin
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
  Gif_265F200 := THIGif.Create;
  with Gif_265F200 do begin
    _prop_FileName := PChar(#0);
    _prop_X := 0;
    _prop_Y := 0;
    _prop_BkColor := 16777215;
    _prop_DrawSource := 2;
    _prop_AutoAnimation := True;
    _prop_DefaultDelay := 83;
  end;
//Init for MemoryStream;
  MemoryStream_265F298 := THIMemoryStream.Create;
  with MemoryStream_265F298 do begin
    _prop_Stream := LoadResStream('STREAM0');
  end;
//Init for Label;
  Label_2671330 := THILabel.Create(MainForm_2670A70.Control);
  with Label_2671330 do begin
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
//Init for Hub;
  Hub_26D86E0 := THIHub.Create;
  with Hub_26D86E0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_265F168 := THIMemory.Create;
  with Memory_265F168 do begin
    _prop_Default := _DoData(PChar('Store Purchase App'#0));
  end;
//Init for Memory;
  Memory_265F330 := THIMemory.Create;
  with Memory_265F330 do begin
    _prop_Default := _DoData(PChar('Desktop App Installer'#0));
  end;
//Init for Memory;
  Memory_265F3C8 := THIMemory.Create;
  with Memory_265F3C8 do begin
    _prop_Default := _DoData(PChar('Xbox Identity Provider'#0));
  end;
//Init for Memory;
  Memory_265F460 := THIMemory.Create;
  with Memory_265F460 do begin
    _prop_Default := _DoData(PChar('Windows Store'#0));
  end;
//Init for Hub;
  Hub_26D8790 := THIHub.Create;
  with Hub_26D8790 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
  Child := EditMulti_25FD350;
  EditMulti_25FD350.MainClass := Self;
  EditMulti_25FD350.Parent := _parent;
 //Make all connection in scheme
  EditMulti_25FD350.Works[0]               := _DoEvent(Hub_26D86E0.doEvent,0);
  EditMulti_25FD350.Works[1]               := _DoEvent(MainForm_2670A70._work_doClose,3);
  EditMulti_25FD350.Works[2]               := _DoEvent(Memory_265F330._work_doClear,1);
  EditMulti_25FD350.Works[3]               := _DoEvent(Memory_265F168._work_doClear,1);
  EditMulti_25FD350.Works[4]               := _DoEvent(Memory_265F460._work_doClear,1);
  EditMulti_25FD350.Works[5]               := _DoEvent(Memory_265F3C8._work_doClear,1);
  MainForm_2670A70._event_onActivate       := _DoEvent(Gif_265F200._work_doLoadFromStream,1);
  Gif_265F200._event_onDraw                := _DoEvent(Image_2670BB0._work_doLoad,0);
  Gif_265F200._data_Stream                 := _DoEvent(MemoryStream_265F298._var_Stream,0);
  Hub_26D86E0.onEvent[0]                   := _DoEvent(MainForm_2670A70._work_doVisible,4);
  Hub_26D86E0.onEvent[1]                   := _DoEvent(MainForm_2670A70._work_doCenterPos,5);
  Memory_265F168._event_onData             := _DoEvent(Hub_26D8790.doEvent,1);
  Memory_265F330._event_onData             := _DoEvent(Hub_26D8790.doEvent,0);
  Memory_265F3C8._event_onData             := _DoEvent(Hub_26D8790.doEvent,3);
  Memory_265F460._event_onData             := _DoEvent(Hub_26D8790.doEvent,2);
  Hub_26D8790.onEvent[0]                   := _DoEvent(Label_2671330._work_doText,0);
  MainForm_2670A70._prop_HintManager := nil;
  MainForm_2670A70._prop_Layout := nil;
  MainForm_2670A70._prop_TransparentManager := nil;
  MainForm_2670A70._prop_FormFastening := nil;
  Label_2670B10._prop_HintManager := nil;
  Label_2670B10._prop_Layout := nil;
  Image_2670BB0._prop_HintManager := nil;
  Image_2670BB0._prop_Layout := nil;
  Label_2671330._prop_HintManager := nil;
  Label_2671330._prop_Layout := nil;
  MainForm_2670A70.Control.Tabulate;

  ParentElement := MainForm_2670A70;
end;

destructor TClassChildForm_26D8370.Destroy;
begin
  Hub_26D8790.Destroy;
  Memory_265F460.Destroy;
  Memory_265F3C8.Destroy;
  Memory_265F330.Destroy;
  Memory_265F168.Destroy;
  Hub_26D86E0.Destroy;
  Label_2671330.Destroy;
  MemoryStream_265F298.Destroy;
  Gif_265F200.Destroy;
  Image_2670BB0.Destroy;
  Label_2670B10.Destroy;
  EditMulti_25FD350.Destroy;
  MainForm_2670A70.Destroy;
  inherited;
end;


end.
