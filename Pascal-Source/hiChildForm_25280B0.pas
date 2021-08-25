unit hiChildForm_25280B0;

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
TClassChildForm_25280B0 = class(TClassMultiBase)
 public
  EditMulti_244C510:THIEditMulti;
  Label_24B8730:THILabel;
  MainForm_24B87D0:THIMainForm;
  Label_24B8870:THILabel;
  Button_24B8910:THIButton;
  WinExec_24AE9B0:THIWinExec;
  WinExec_24AEB78:THIWinExec;
  Label_24B89B0:THILabel;
  Label_24B8AF0:THILabel;
  WinExec_24AEA48:THIWinExec;
  Hub_2528160:THIHub;
  Label_24B9270:THILabel;
  WinExec_24AEAE0:THIWinExec;
  Button_24B9310:THIButton;
  WinExec_24AEC10:THIWinExec;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_25280B0(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_25280B0;
begin
  Result := THiEditMulti(TClassChildForm_25280B0.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_25280B0.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_24B87D0 - Main
  MainForm_24B87D0 := THIMainForm.Create(_Control);
  with MainForm_24B87D0 do begin
    ManFlags := 0;
    _prop_Left := 35;
    _prop_Top := 105;
    _prop_Width := 400;
    _prop_Height := 215;
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
  EditMulti_244C510 := THIEditMulti.Create;
  with EditMulti_244C510 do begin
    SetLength(Works,1);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_24B8730 := THILabel.Create(MainForm_24B87D0.Control);
  with Label_24B8730 do begin
    ManFlags := 0;
    _prop_Left := 10;
    _prop_Top := 65;
    _prop_Width := 162;
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
  Label_24B8870 := THILabel.Create(MainForm_24B87D0.Control);
  with Label_24B8870 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 10;
    _prop_Width := 389;
    _prop_Height := 46;
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
  Button_24B8910 := THIButton.Create(MainForm_24B87D0.Control);
  with Button_24B8910 do begin
    ManFlags := 0;
    _prop_Left := 10;
    _prop_Top := 85;
    _prop_Width := 160;
    _prop_Height := 25;
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
//Init for WinExec;
  WinExec_24AE9B0 := THIWinExec.Create;
  with WinExec_24AE9B0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AEB78 := THIWinExec.Create;
  with WinExec_24AEB78 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo/LTSC-Add-MicrosoftStore'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Label;
  Label_24B89B0 := THILabel.Create(MainForm_24B87D0.Control);
  with Label_24B89B0 do begin
    ManFlags := 0;
    _prop_Left := 245;
    _prop_Top := 80;
    _prop_Width := 80;
    _prop_Height := 25;
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
  Label_24B8AF0 := THILabel.Create(MainForm_24B87D0.Control);
  with Label_24B8AF0 do begin
    ManFlags := 0;
    _prop_Left := 190;
    _prop_Top := 105;
    _prop_Width := 190;
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
  WinExec_24AEA48 := THIWinExec.Create;
  with WinExec_24AEA48 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/QuestYouCraft'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2528160 := THIHub.Create;
  with Hub_2528160 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Label;
  Label_24B9270 := THILabel.Create(MainForm_24B87D0.Control);
  with Label_24B9270 do begin
    ManFlags := 0;
    _prop_Left := 160;
    _prop_Top := 160;
    _prop_Width := 80;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := -16777201;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,1);
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
    _prop_Caption := PChar('Version: 2.0'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for WinExec;
  WinExec_24AEAE0 := THIWinExec.Create;
  with WinExec_24AEAE0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/QuestYouCraft/Microsoft-Store-UnInstaller'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Button;
  Button_24B9310 := THIButton.Create(MainForm_24B87D0.Control);
  with Button_24B9310 do begin
    ManFlags := 0;
    _prop_Left := 25;
    _prop_Top := 115;
    _prop_Width := 130;
    _prop_Height := 40;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',16,0,0,1);
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
    _prop_Caption := PChar('Donate'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for WinExec;
  WinExec_24AEC10 := THIWinExec.Create;
  with WinExec_24AEC10 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://questyoucraft.cf/donate'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
  Child := EditMulti_244C510;
  EditMulti_244C510.MainClass := Self;
  EditMulti_244C510.Parent := _parent;
 //Make all connection in scheme
  EditMulti_244C510.Works[0]               := _DoEvent(Hub_2528160.doEvent,0);
  Button_24B8910._event_onClick            := _DoEvent(WinExec_24AEB78._work_doShellExec,1);
  Label_24B8AF0._event_onClick             := _DoEvent(WinExec_24AEA48._work_doShellExec,1);
  Hub_2528160.onEvent[0]                   := _DoEvent(MainForm_24B87D0._work_doVisible,4);
  Hub_2528160.onEvent[1]                   := _DoEvent(MainForm_24B87D0._work_doCenterPos,5);
  Label_24B9270._event_onClick             := _DoEvent(WinExec_24AEAE0._work_doShellExec,1);
  Button_24B9310._event_onClick            := _DoEvent(WinExec_24AEC10._work_doShellExec,1);
  Label_24B8730._prop_HintManager := nil;
  Label_24B8730._prop_Layout := nil;
  MainForm_24B87D0._prop_HintManager := nil;
  MainForm_24B87D0._prop_Layout := nil;
  MainForm_24B87D0._prop_TransparentManager := nil;
  MainForm_24B87D0._prop_FormFastening := nil;
  Label_24B8870._prop_HintManager := nil;
  Label_24B8870._prop_Layout := nil;
  Button_24B8910._prop_HintManager := nil;
  Button_24B8910._prop_Layout := nil;
  Label_24B89B0._prop_HintManager := nil;
  Label_24B89B0._prop_Layout := nil;
  Label_24B8AF0._prop_HintManager := nil;
  Label_24B8AF0._prop_Layout := nil;
  Label_24B9270._prop_HintManager := nil;
  Label_24B9270._prop_Layout := nil;
  Button_24B9310._prop_HintManager := nil;
  Button_24B9310._prop_Layout := nil;
  MainForm_24B87D0.Control.Tabulate;

  ParentElement := MainForm_24B87D0;
end;

destructor TClassChildForm_25280B0.Destroy;
begin
  WinExec_24AEC10.Destroy;
  Button_24B9310.Destroy;
  WinExec_24AEAE0.Destroy;
  Label_24B9270.Destroy;
  Hub_2528160.Destroy;
  WinExec_24AEA48.Destroy;
  Label_24B8AF0.Destroy;
  Label_24B89B0.Destroy;
  WinExec_24AEB78.Destroy;
  WinExec_24AE9B0.Destroy;
  Button_24B8910.Destroy;
  Label_24B8870.Destroy;
  Label_24B8730.Destroy;
  EditMulti_244C510.Destroy;
  MainForm_24B87D0.Destroy;
  inherited;
end;


end.
