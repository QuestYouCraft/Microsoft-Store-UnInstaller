unit hiChildForm_8CA7F50;

interface

uses 
  Windows,
  hiEditMulti,
  hiLabel,
  hiMainForm,
  hiButton,
  hiWinExec,
  hiHub,
  hiMultiBase,
  kol,Share;

type
TClassChildForm_8CA7F50 = class(TClassMultiBase)
 public
  EditMulti_8BCC450:THIEditMulti;
  Label_8C382D0:THILabel;
  MainForm_8C38370:THIMainForm;
  Label_8C38410:THILabel;
  Button_8C384B0:THIButton;
  Label_8C38550:THILabel;
  Button_8C385F0:THIButton;
  WinExec_8C2E9B0:THIWinExec;
  WinExec_8C2EAE0:THIWinExec;
  Label_8C38730:THILabel;
  Label_8C38C30:THILabel;
  WinExec_8C2EA48:THIWinExec;
  Hub_8CA8000:THIHub;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_8CA7F50(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_8CA7F50;
begin
  Result := THiEditMulti(TClassChildForm_8CA7F50.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_8CA7F50.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_8C38370 - Main
  MainForm_8C38370 := THIMainForm.Create(_Control);
  with MainForm_8C38370 do begin
    ManFlags := 0;
    _prop_Left := 35;
    _prop_Top := 105;
    _prop_Width := 400;
    _prop_Height := 190;
    _prop_Align := caNone;
    _prop_Color := -16777201;
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
    _prop_Caption := PChar('About'#0);
    _prop_BorderStyle := 3;
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
  EditMulti_8BCC450 := THIEditMulti.Create;
  with EditMulti_8BCC450 do begin
    SetLength(Works,1);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_8C382D0 := THILabel.Create(MainForm_8C38370.Control);
  with Label_8C382D0 do begin
    ManFlags := 0;
    _prop_Left := 10;
    _prop_Top := 65;
    _prop_Width := 132;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,204);
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
    _prop_Caption := PChar('Based on Github project:'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for Label;
  Label_8C38410 := THILabel.Create(MainForm_8C38370.Control);
  with Label_8C38410 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 10;
    _prop_Width := 389;
    _prop_Height := 41;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',20,0,0,204);
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
    _prop_Caption := PChar('About program'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for Button;
  Button_8C384B0 := THIButton.Create(MainForm_8C38370.Control);
  with Button_8C384B0 do begin
    ManFlags := 0;
    _prop_Left := 10;
    _prop_Top := 85;
    _prop_Width := 140;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,1);
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
    _prop_Caption := PChar('LTSC-Add-MicrosoftStore'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for Label;
  Label_8C38550 := THILabel.Create(MainForm_8C38370.Control);
  with Label_8C38550 do begin
    ManFlags := 0;
    _prop_Left := 65;
    _prop_Top := 110;
    _prop_Width := 24;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,204);
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
    _prop_Caption := PChar('from'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for Button;
  Button_8C385F0 := THIButton.Create(MainForm_8C38370.Control);
  with Button_8C385F0 do begin
    ManFlags := 0;
    _prop_Left := 45;
    _prop_Top := 130;
    _prop_Width := 65;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,1);
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
    _prop_Caption := PChar('kkkgo'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for WinExec;
  WinExec_8C2E9B0 := THIWinExec.Create;
  with WinExec_8C2E9B0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Async;
  end;
//Init for WinExec;
  WinExec_8C2EAE0 := THIWinExec.Create;
  with WinExec_8C2EAE0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo/LTSC-Add-MicrosoftStore'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Async;
  end;
//Init for Label;
  Label_8C38730 := THILabel.Create(MainForm_8C38370.Control);
  with Label_8C38730 do begin
    ManFlags := 0;
    _prop_Left := 245;
    _prop_Top := 80;
    _prop_Width := 60;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',10,0,0,1);
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
    _prop_Caption := PChar('Coded by'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for Label;
  Label_8C38C30 := THILabel.Create(MainForm_8C38370.Control);
  with Label_8C38C30 do begin
    ManFlags := 0;
    _prop_Left := 205;
    _prop_Top := 105;
    _prop_Width := 150;
    _prop_Height := 34;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',16,1,0,1);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crHandPoint;
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
    _prop_Caption := PChar('QuestYouCraft'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for WinExec;
  WinExec_8C2EA48 := THIWinExec.Create;
  with WinExec_8C2EA48 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/QuestYouCraft'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Async;
  end;
//Init for Hub;
  Hub_8CA8000 := THIHub.Create;
  with Hub_8CA8000 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
  Child := EditMulti_8BCC450;
  EditMulti_8BCC450.MainClass := Self;
  EditMulti_8BCC450.Parent := _parent;
 //Make all connection in scheme
  EditMulti_8BCC450.Works[0]               := _DoEvent(Hub_8CA8000.doEvent,0);
  Button_8C384B0._event_onClick            := _DoEvent(WinExec_8C2EAE0._work_doShellExec,1);
  Button_8C385F0._event_onClick            := _DoEvent(WinExec_8C2E9B0._work_doShellExec,1);
  Label_8C38C30._event_onClick             := _DoEvent(WinExec_8C2EA48._work_doShellExec,1);
  Hub_8CA8000.onEvent[0]                   := _DoEvent(MainForm_8C38370._work_doVisible,4);
  Hub_8CA8000.onEvent[1]                   := _DoEvent(MainForm_8C38370._work_doCenterPos,5);
  Label_8C382D0._prop_HintManager := nil;
  Label_8C382D0._prop_Layout := nil;
  MainForm_8C38370._prop_HintManager := nil;
  MainForm_8C38370._prop_Layout := nil;
  MainForm_8C38370._prop_TransparentManager := nil;
  MainForm_8C38370._prop_FormFastening := nil;
  Label_8C38410._prop_HintManager := nil;
  Label_8C38410._prop_Layout := nil;
  Button_8C384B0._prop_HintManager := nil;
  Button_8C384B0._prop_Layout := nil;
  Label_8C38550._prop_HintManager := nil;
  Label_8C38550._prop_Layout := nil;
  Button_8C385F0._prop_HintManager := nil;
  Button_8C385F0._prop_Layout := nil;
  Label_8C38730._prop_HintManager := nil;
  Label_8C38730._prop_Layout := nil;
  Label_8C38C30._prop_HintManager := nil;
  Label_8C38C30._prop_Layout := nil;
  MainForm_8C38370.Control.Tabulate;

  ParentElement := MainForm_8C38370;
end;

destructor TClassChildForm_8CA7F50.Destroy;
begin
  Hub_8CA8000.Destroy;
  WinExec_8C2EA48.Destroy;
  Label_8C38C30.Destroy;
  Label_8C38730.Destroy;
  WinExec_8C2EAE0.Destroy;
  WinExec_8C2E9B0.Destroy;
  Button_8C385F0.Destroy;
  Label_8C38550.Destroy;
  Button_8C384B0.Destroy;
  Label_8C38410.Destroy;
  Label_8C382D0.Destroy;
  EditMulti_8BCC450.Destroy;
  MainForm_8C38370.Destroy;
  inherited;
end;


end.
