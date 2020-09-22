unit hiChildForm_2587F50;

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
TClassChildForm_2587F50 = class(TClassMultiBase)
 public
  EditMulti_24AC510:THIEditMulti;
  Label_2518730:THILabel;
  MainForm_25187D0:THIMainForm;
  Label_2518870:THILabel;
  Button_2518910:THIButton;
  Label_25189B0:THILabel;
  Button_2518A50:THIButton;
  WinExec_250E9B0:THIWinExec;
  WinExec_250EB78:THIWinExec;
  Label_2518AF0:THILabel;
  Label_2518C30:THILabel;
  WinExec_250EA48:THIWinExec;
  Hub_2588000:THIHub;
  Label_25193B0:THILabel;

  ParentClass:TObject;

  constructor Create(_parent:pointer; _Control:PControl; _ParentClass:TObject);
  destructor Destroy; override;
 end;

  function Create_hiChildForm_2587F50(_parent:pointer; Control:PControl; _ParentClass:TObject):THiEditMulti;

implementation


function Create_hiChildForm_2587F50;
begin
  Result := THiEditMulti(TClassChildForm_2587F50.Create(_parent, Control, _ParentClass).Child);
end;

constructor TClassChildForm_2587F50.Create;
begin
  inherited;
  ParentClass := _ParentClass;
 //MainForm_25187D0 - Main
  MainForm_25187D0 := THIMainForm.Create(_Control);
  with MainForm_25187D0 do begin
    ManFlags := 0;
    _prop_Left := 35;
    _prop_Top := 105;
    _prop_Width := 400;
    _prop_Height := 208;
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
  EditMulti_24AC510 := THIEditMulti.Create;
  with EditMulti_24AC510 do begin
    SetLength(Works,1);
    SetLength(Vars, 0);
  end;
//Init for Label;
  Label_2518730 := THILabel.Create(MainForm_25187D0.Control);
  with Label_2518730 do begin
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
  Label_2518870 := THILabel.Create(MainForm_25187D0.Control);
  with Label_2518870 do begin
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
  Button_2518910 := THIButton.Create(MainForm_25187D0.Control);
  with Button_2518910 do begin
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
  Label_25189B0 := THILabel.Create(MainForm_25187D0.Control);
  with Label_25189B0 do begin
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
  Button_2518A50 := THIButton.Create(MainForm_25187D0.Control);
  with Button_2518A50 do begin
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
  WinExec_250E9B0 := THIWinExec.Create;
  with WinExec_250E9B0 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_250EB78 := THIWinExec.Create;
  with WinExec_250EB78 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/kkkgo/LTSC-Add-MicrosoftStore'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Label;
  Label_2518AF0 := THILabel.Create(MainForm_25187D0.Control);
  with Label_2518AF0 do begin
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
  Label_2518C30 := THILabel.Create(MainForm_25187D0.Control);
  with Label_2518C30 do begin
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
  WinExec_250EA48 := THIWinExec.Create;
  with WinExec_250EA48 do begin
    _prop_Param := PChar(#0);
    _prop_FileName := PChar('https://github.com/QuestYouCraft'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2588000 := THIHub.Create;
  with Hub_2588000 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Label;
  Label_25193B0 := THILabel.Create(MainForm_25187D0.Control);
  with Label_25193B0 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 160;
    _prop_Width := 390;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := -16777201;
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
    _prop_ModeSp := spNone;
    _prop_SizeSp := 4;
    _prop_ColorSp := -16777201;
    _prop_MinOwn := 0;
    _prop_MinRest := 0;
    _prop_Transparent := False;
    _prop_Caption := PChar('Version: 1.1'#0);
    _prop_AutoSize := False;
    _prop_Alignment := taCenter;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
  Child := EditMulti_24AC510;
  EditMulti_24AC510.MainClass := Self;
  EditMulti_24AC510.Parent := _parent;
 //Make all connection in scheme
  EditMulti_24AC510.Works[0]               := _DoEvent(Hub_2588000.doEvent,0);
  Button_2518910._event_onClick            := _DoEvent(WinExec_250EB78._work_doShellExec,1);
  Button_2518A50._event_onClick            := _DoEvent(WinExec_250E9B0._work_doShellExec,1);
  Label_2518C30._event_onClick             := _DoEvent(WinExec_250EA48._work_doShellExec,1);
  Hub_2588000.onEvent[0]                   := _DoEvent(MainForm_25187D0._work_doVisible,4);
  Hub_2588000.onEvent[1]                   := _DoEvent(MainForm_25187D0._work_doCenterPos,5);
  Label_2518730._prop_HintManager := nil;
  Label_2518730._prop_Layout := nil;
  MainForm_25187D0._prop_HintManager := nil;
  MainForm_25187D0._prop_Layout := nil;
  MainForm_25187D0._prop_TransparentManager := nil;
  MainForm_25187D0._prop_FormFastening := nil;
  Label_2518870._prop_HintManager := nil;
  Label_2518870._prop_Layout := nil;
  Button_2518910._prop_HintManager := nil;
  Button_2518910._prop_Layout := nil;
  Label_25189B0._prop_HintManager := nil;
  Label_25189B0._prop_Layout := nil;
  Button_2518A50._prop_HintManager := nil;
  Button_2518A50._prop_Layout := nil;
  Label_2518AF0._prop_HintManager := nil;
  Label_2518AF0._prop_Layout := nil;
  Label_2518C30._prop_HintManager := nil;
  Label_2518C30._prop_Layout := nil;
  Label_25193B0._prop_HintManager := nil;
  Label_25193B0._prop_Layout := nil;
  MainForm_25187D0.Control.Tabulate;

  ParentElement := MainForm_25187D0;
end;

destructor TClassChildForm_2587F50.Destroy;
begin
  Label_25193B0.Destroy;
  Hub_2588000.Destroy;
  WinExec_250EA48.Destroy;
  Label_2518C30.Destroy;
  Label_2518AF0.Destroy;
  WinExec_250EB78.Destroy;
  WinExec_250E9B0.Destroy;
  Button_2518A50.Destroy;
  Label_25189B0.Destroy;
  Button_2518910.Destroy;
  Label_2518870.Destroy;
  Label_2518730.Destroy;
  EditMulti_24AC510.Destroy;
  MainForm_25187D0.Destroy;
  inherited;
end;


end.
