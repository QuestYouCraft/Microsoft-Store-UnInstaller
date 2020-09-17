unit hiChildForm_26D84D0;

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
TClassChildForm_26D84D0 = class(TClassMultiBase)
 public
  EditMulti_25FD1D0:THIEditMulti;
  Label_266F0D0:THILabel;
  MainForm_266F170:THIMainForm;
  Label_266F210:THILabel;
  Button_266F2B0:THIButton;
  Label_266F350:THILabel;
  Button_266F3F0:THIButton;
  WinExec_265EA48:THIWinExec;
  WinExec_265EC10:THIWinExec;
  Label_266F490:THILabel;
  Label_266F5D0:THILabel;
  WinExec_265EAE0:THIWinExec;
  Hub_26D8580:THIHub;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_26D84D0(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_26D84D0;
begin
  Result := THiEditMulti(TClassChildForm_26D84D0.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_26D84D0.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_266F170 - Main
  MainForm_266F170 := THIMainForm.Create(_Control);
  with MainForm_266F170 do begin
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
    _prop_KeyPreview := True;
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
  EditMulti_25FD1D0 := THIEditMulti.Create;
  with EditMulti_25FD1D0 do begin
    SetLength(Works,1);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_266F0D0 := THILabel.Create(MainForm_266F170.Control);
  with Label_266F0D0 do begin
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
    _prop_Caption := PChar('Based on Github project:'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Label;
  Label_266F210 := THILabel.Create(MainForm_266F170.Control);
  with Label_266F210 do begin
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
    _prop_Caption := PChar('About program'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Button;
  Button_266F2B0 := THIButton.Create(MainForm_266F170.Control);
  with Button_266F2B0 do begin
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
    _prop_KeyPreview := True;
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
  Label_266F350 := THILabel.Create(MainForm_266F170.Control);
  with Label_266F350 do begin
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
    _prop_Caption := PChar('from'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Button;
  Button_266F3F0 := THIButton.Create(MainForm_266F170.Control);
  with Button_266F3F0 do begin
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
    _prop_KeyPreview := True;
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
  WinExec_265EA48 := THIWinExec.Create;
  with WinExec_265EA48 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_265EC10 := THIWinExec.Create;
  with WinExec_265EC10 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo/LTSC-Add-MicrosoftStore'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Label;
  Label_266F490 := THILabel.Create(MainForm_266F170.Control);
  with Label_266F490 do begin
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
    _prop_Caption := PChar('Coded by'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Label;
  Label_266F5D0 := THILabel.Create(MainForm_266F170.Control);
  with Label_266F5D0 do begin
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
    _prop_Caption := PChar('QuestYouCraft'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for WinExec;
  WinExec_265EAE0 := THIWinExec.Create;
  with WinExec_265EAE0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/QuestYouCraft'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_26D8580 := THIHub.Create;
  with Hub_26D8580 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
  Child := EditMulti_25FD1D0;
  EditMulti_25FD1D0.MainClass := Self;
  EditMulti_25FD1D0.Parent := _parent;
 //Make all connection in scheme
  EditMulti_25FD1D0.Works[0]               := _DoEvent(Hub_26D8580.doEvent,0);
  Button_266F2B0._event_onClick            := _DoEvent(WinExec_265EC10._work_doShellExec,1);
  Button_266F3F0._event_onClick            := _DoEvent(WinExec_265EA48._work_doShellExec,1);
  Label_266F5D0._event_onClick             := _DoEvent(WinExec_265EAE0._work_doShellExec,1);
  Hub_26D8580.onEvent[0]                   := _DoEvent(MainForm_266F170._work_doVisible,4);
  Hub_26D8580.onEvent[1]                   := _DoEvent(MainForm_266F170._work_doCenterPos,5);
  Label_266F0D0._prop_HintManager := nil;
  Label_266F0D0._prop_Layout := nil;
  MainForm_266F170._prop_HintManager := nil;
  MainForm_266F170._prop_Layout := nil;
  MainForm_266F170._prop_TransparentManager := nil;
  MainForm_266F170._prop_FormFastening := nil;
  Label_266F210._prop_HintManager := nil;
  Label_266F210._prop_Layout := nil;
  Button_266F2B0._prop_HintManager := nil;
  Button_266F2B0._prop_Layout := nil;
  Label_266F350._prop_HintManager := nil;
  Label_266F350._prop_Layout := nil;
  Button_266F3F0._prop_HintManager := nil;
  Button_266F3F0._prop_Layout := nil;
  Label_266F490._prop_HintManager := nil;
  Label_266F490._prop_Layout := nil;
  Label_266F5D0._prop_HintManager := nil;
  Label_266F5D0._prop_Layout := nil;
  MainForm_266F170.Control.Tabulate;

  ParentElement := MainForm_266F170;
end;

destructor TClassChildForm_26D84D0.Destroy;
begin
  Hub_26D8580.Destroy;
  WinExec_265EAE0.Destroy;
  Label_266F5D0.Destroy;
  Label_266F490.Destroy;
  WinExec_265EC10.Destroy;
  WinExec_265EA48.Destroy;
  Button_266F3F0.Destroy;
  Label_266F350.Destroy;
  Button_266F2B0.Destroy;
  Label_266F210.Destroy;
  Label_266F0D0.Destroy;
  EditMulti_25FD1D0.Destroy;
  MainForm_266F170.Destroy;
  inherited;
end;


end.
