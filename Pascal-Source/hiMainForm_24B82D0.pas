unit hiMainForm_24B82D0;

interface

uses 
  Windows,
  hiImage,
  hiButton,
  hiMainForm,
  hiChildForm,
  hiCheckBox,
  hiLabel,
  hiMessage,
  hiIf_else,
  hiHub,
  hiMemory,
  hiWinExec,
  hiThread,
  hiChildForm_2527F50,
  hiChildForm_2527EA0,
kol,Share;

type
  TClassMainForm_24B82D0 = class
   public
  Image_24B7AB0:THIImage;
  Button_24B7BF0:THIButton;
  MainForm_24B82D0:THIMainForm;
  ChildForm_2527F50:THIChildForm;
  CheckBox_24B9630:THICheckBox;
  CheckBox_24B96D0:THICheckBox;
  CheckBox_24B9770:THICheckBox;
  CheckBox_24B9810:THICheckBox;
  Label_24B98B0:THILabel;
  Button_24B9950:THIButton;
  Message_24AEAE0:THIMessage;
  If_else_24AEC10:THIIf_else;
  If_else_24AECA8:THIIf_else;
  If_else_24AED40:THIIf_else;
  If_else_24AEDD8:THIIf_else;
  Hub_25280B0:THIHub;
  ChildForm_2527EA0:THIChildForm;
  Message_24AF628:THIMessage;
  If_else_24AF6C0:THIIf_else;
  Hub_25286E0:THIHub;
  If_else_24AF758:THIIf_else;
  If_else_24AF7F0:THIIf_else;
  Hub_2528790:THIHub;
  Hub_2528840:THIHub;
  If_else_24AF888:THIIf_else;
  Hub_25288F0:THIHub;
  Hub_25289A0:THIHub;
  Hub_2528A50:THIHub;
  Hub_2528B00:THIHub;
  Hub_2528BB0:THIHub;
  Hub_2528C60:THIHub;
  Hub_2528D10:THIHub;
  Memory_24AF920:THIMemory;
  Memory_24AF9B8:THIMemory;
  Hub_2528DC0:THIHub;
  WinExec_24AFA50:THIWinExec;
  WinExec_24AFAE8:THIWinExec;
  WinExec_24AFB80:THIWinExec;
  WinExec_24AFC18:THIWinExec;
  Thread_24AFCB0:THIThread;
  Thread_24AFD48:THIThread;
  Thread_24AFDE0:THIThread;
  Thread_24AFE78:THIThread;
  Button_24BB110:THIButton;
  If_else_24AFF10:THIIf_else;
  If_else_24AFFA8:THIIf_else;
  If_else_24B0040:THIIf_else;
  If_else_24B00D8:THIIf_else;
  Hub_2528E70:THIHub;
  Hub_2528F20:THIHub;
  If_else_24B03D0:THIIf_else;
  If_else_24B0468:THIIf_else;
  If_else_24B0500:THIIf_else;
  If_else_24B0598:THIIf_else;
  WinExec_24B0630:THIWinExec;
  Thread_24B06C8:THIThread;
  Hub_2528FD0:THIHub;
  Hub_2529080:THIHub;
  WinExec_24B0760:THIWinExec;
  Thread_24B07F8:THIThread;
  Hub_2529130:THIHub;
  Hub_25291E0:THIHub;
  WinExec_24B0890:THIWinExec;
  Thread_24B0928:THIThread;
  Hub_2529290:THIHub;
  Thread_24B09C0:THIThread;
  WinExec_24B0A58:THIWinExec;
  Hub_2529340:THIHub;
  Hub_25293F0:THIHub;
  Hub_25294A0:THIHub;
  Hub_2529550:THIHub;
  Hub_2529600:THIHub;
  Hub_25296B0:THIHub;
  Hub_2529760:THIHub;
  Hub_2529810:THIHub;
  Hub_25298C0:THIHub;
  Hub_2529970:THIHub;
  Message_24B0AF0:THIMessage;
  Memory_24B0B88:THIMemory;
  If_else_24B0C20:THIIf_else;
  WinExec_24B0CB8:THIWinExec;
  Hub_2529A20:THIHub;
  Thread_24B0D50:THIThread;
  Hub_2529AD0:THIHub;
    constructor Create;
    destructor Destroy; override;
  end;

var
  ClassMain:TClassMainForm_24B82D0;

implementation

constructor TClassMainForm_24B82D0.Create;
begin
  inherited;
  ClassMain := self;
 //MainForm_24B82D0 - Main
  MainForm_24B82D0 := THIMainForm.Create(nil);
  with MainForm_24B82D0 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 0;
    _prop_Width := 527;
    _prop_Height := 219;
    _prop_Align := caNone;
    _prop_Color := -16777196;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,204);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_KeyPreview := False;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 1;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_AlphaBlendValue := 255;
    _prop_Caption := PChar('Microsoft Store Un\Installer'#0);
    _prop_BorderStyle := 1;
    _prop_WindowsState := 0;
    _prop_Icon := LoadIcon(hInstance,'ICON0');
    _prop_TaskBar := 0;
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
//Init for Image;
  Image_24B7AB0 := THIImage.Create(MainForm_24B82D0.Control);
  with Image_24B7AB0 do begin
    ManFlags := 0;
    _prop_Left := 20;
    _prop_Top := 20;
    _prop_Width := 155;
    _prop_Height := 154;
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
    _prop_ModeSp := spNone;
    _prop_SizeSp := 4;
    _prop_ColorSp := -16777201;
    _prop_MinOwn := 0;
    _prop_MinRest := 0;
    _prop_AutoSize := False;
    _prop_ViewStyle := ScaleMin;
    _prop_Picture := LoadBitmap(HInstance,'BITMAP0');
    _prop_HalfTone := True;
    _prop_MouseCapture := False;
    Init;
  end;
//Init for Button;
  Button_24B7BF0 := THIButton.Create(MainForm_24B82D0.Control);
  with Button_24B7BF0 do begin
    ManFlags := 0;
    _prop_Left := 465;
    _prop_Top := 165;
    _prop_Width := 50;
    _prop_Height := 20;
    _prop_Align := caNone;
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
    _prop_Caption := PChar('About'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for ChildForm;
  ChildForm_2527F50 := THIChildForm.Create(MainForm_24B82D0.Control);
  with ChildForm_2527F50 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for CheckBox;
  CheckBox_24B9630 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9630 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 135;
    _prop_Width := 135;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Xbox Identity Provider'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_24B96D0 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B96D0 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 85;
    _prop_Width := 120;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Store Purchase App'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_24B9770 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9770 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 110;
    _prop_Width := 100;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Windows Store'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_24B9810 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9810 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 60;
    _prop_Width := 135;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Desktop App Installer'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for Label;
  Label_24B98B0 := THILabel.Create(MainForm_24B82D0.Control);
  with Label_24B98B0 do begin
    ManFlags := 0;
    _prop_Left := 250;
    _prop_Top := 40;
    _prop_Width := 25;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Caption := PChar('Add'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Button;
  Button_24B9950 := THIButton.Create(MainForm_24B82D0.Control);
  with Button_24B9950 do begin
    ManFlags := 0;
    _prop_Left := 365;
    _prop_Top := 60;
    _prop_Width := 75;
    _prop_Height := 30;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',16,0,0,204);
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
    _prop_Caption := PChar('Install'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for Message;
  Message_24AEAE0 := THIMessage.Create;
  with Message_24AEAE0 do begin
    _prop_Message := PChar('You dont select components. Please select.'#0);
    _prop_Caption := PChar(#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_24AEC10 := THIIf_else.Create;
  with If_else_24AEC10 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AECA8 := THIIf_else.Create;
  with If_else_24AECA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AED40 := THIIf_else.Create;
  with If_else_24AED40 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AEDD8 := THIIf_else.Create;
  with If_else_24AEDD8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25280B0 := THIHub.Create;
  with Hub_25280B0 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for ChildForm;
  ChildForm_2527EA0 := THIChildForm.Create(MainForm_24B82D0.Control);
  with ChildForm_2527EA0 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for Message;
  Message_24AF628 := THIMessage.Create;
  with Message_24AF628 do begin
    _prop_Message := PChar('Success'#0);
    _prop_Caption := PChar('Success'#0);
    _prop_Type := 0;
    _prop_Icon := 4;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_24AF6C0 := THIIf_else.Create;
  with If_else_24AF6C0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25286E0 := THIHub.Create;
  with Hub_25286E0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_24AF758 := THIIf_else.Create;
  with If_else_24AF758 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AF7F0 := THIIf_else.Create;
  with If_else_24AF7F0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528790 := THIHub.Create;
  with Hub_2528790 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528840 := THIHub.Create;
  with Hub_2528840 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_24AF888 := THIIf_else.Create;
  with If_else_24AF888 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25288F0 := THIHub.Create;
  with Hub_25288F0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25289A0 := THIHub.Create;
  with Hub_25289A0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2528A50 := THIHub.Create;
  with Hub_2528A50 do begin
    _prop_InCount := 1;
    _prop_OutCount := 4;
  end;
//Init for Hub;
  Hub_2528B00 := THIHub.Create;
  with Hub_2528B00 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2528BB0 := THIHub.Create;
  with Hub_2528BB0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2528C60 := THIHub.Create;
  with Hub_2528C60 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2528D10 := THIHub.Create;
  with Hub_2528D10 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_24AF920 := THIMemory.Create;
  with Memory_24AF920 do begin
    _prop_Default := _DoData(1);
  end;
//Init for Memory;
  Memory_24AF9B8 := THIMemory.Create;
  with Memory_24AF9B8 do begin
    _prop_Default := _DoData(0);
  end;
//Init for Hub;
  Hub_2528DC0 := THIHub.Create;
  with Hub_2528DC0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_24AFA50 := THIWinExec.Create;
  with WinExec_24AFA50 do begin
    _prop_Param := PChar('/c microsoft_store.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFAE8 := THIWinExec.Create;
  with WinExec_24AFAE8 do begin
    _prop_Param := PChar('/c xbox_identity_provider.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFB80 := THIWinExec.Create;
  with WinExec_24AFB80 do begin
    _prop_Param := PChar('/c store_purchase_app.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFC18 := THIWinExec.Create;
  with WinExec_24AFC18 do begin
    _prop_Param := PChar('/c desktop_app_installer.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24AFCB0 := THIThread.Create;
  with Thread_24AFCB0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_24AFD48 := THIThread.Create;
  with Thread_24AFD48 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_24AFDE0 := THIThread.Create;
  with Thread_24AFDE0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_24AFE78 := THIThread.Create;
  with Thread_24AFE78 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Button;
  Button_24BB110 := THIButton.Create(MainForm_24B82D0.Control);
  with Button_24BB110 do begin
    ManFlags := 0;
    _prop_Left := 355;
    _prop_Top := 115;
    _prop_Width := 95;
    _prop_Height := 30;
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
    _prop_Caption := PChar('Uninstall'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for If_else;
  If_else_24AFF10 := THIIf_else.Create;
  with If_else_24AFF10 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AFFA8 := THIIf_else.Create;
  with If_else_24AFFA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24B0040 := THIIf_else.Create;
  with If_else_24B0040 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24B00D8 := THIIf_else.Create;
  with If_else_24B00D8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528E70 := THIHub.Create;
  with Hub_2528E70 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528F20 := THIHub.Create;
  with Hub_2528F20 do begin
    _prop_InCount := 1;
    _prop_OutCount := 5;
  end;
//Init for If_else;
  If_else_24B03D0 := THIIf_else.Create;
  with If_else_24B03D0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24B0468 := THIIf_else.Create;
  with If_else_24B0468 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24B0500 := THIIf_else.Create;
  with If_else_24B0500 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24B0598 := THIIf_else.Create;
  with If_else_24B0598 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for WinExec;
  WinExec_24B0630 := THIWinExec.Create;
  with WinExec_24B0630 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.xboxidentityprovider* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B06C8 := THIThread.Create;
  with Thread_24B06C8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2528FD0 := THIHub.Create;
  with Hub_2528FD0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2529080 := THIHub.Create;
  with Hub_2529080 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_24B0760 := THIWinExec.Create;
  with WinExec_24B0760 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.windowsstore* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B07F8 := THIThread.Create;
  with Thread_24B07F8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2529130 := THIHub.Create;
  with Hub_2529130 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_25291E0 := THIHub.Create;
  with Hub_25291E0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_24B0890 := THIWinExec.Create;
  with WinExec_24B0890 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.storepurchaseapp* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B0928 := THIThread.Create;
  with Thread_24B0928 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2529290 := THIHub.Create;
  with Hub_2529290 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_24B09C0 := THIThread.Create;
  with Thread_24B09C0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for WinExec;
  WinExec_24B0A58 := THIWinExec.Create;
  with WinExec_24B0A58 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.desktopappinstaller* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2529340 := THIHub.Create;
  with Hub_2529340 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25293F0 := THIHub.Create;
  with Hub_25293F0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_25294A0 := THIHub.Create;
  with Hub_25294A0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529550 := THIHub.Create;
  with Hub_2529550 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2529600 := THIHub.Create;
  with Hub_2529600 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25296B0 := THIHub.Create;
  with Hub_25296B0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529760 := THIHub.Create;
  with Hub_2529760 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529810 := THIHub.Create;
  with Hub_2529810 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25298C0 := THIHub.Create;
  with Hub_25298C0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529970 := THIHub.Create;
  with Hub_2529970 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B0AF0 := THIMessage.Create;
  with Message_24B0AF0 do begin
    _prop_Message := PChar('Do you want to remove all libraries (for running UWP apps)?'#0);
    _prop_Caption := PChar('Remove libraries'#0);
    _prop_Type := 2;
    _prop_Icon := 0;
    _prop_DefButton := 0;
  end;
//Init for Memory;
  Memory_24B0B88 := THIMemory.Create;
//Init for If_else;
  If_else_24B0C20 := THIIf_else.Create;
  with If_else_24B0C20 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('6'#0));
  end;
//Init for WinExec;
  WinExec_24B0CB8 := THIWinExec.Create;
  with WinExec_24B0CB8 do begin
    _prop_Param := PChar('/c libraries.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2529A20 := THIHub.Create;
  with Hub_2529A20 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_24B0D50 := THIThread.Create;
  with Thread_24B0D50 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2529AD0 := THIHub.Create;
  with Hub_2529AD0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
 //%multi%
 //Make all connection in scheme
  Button_24B7BF0._event_onClick            := _DoEvent(ChildForm_2527F50.doWork,0);
  MainForm_24B82D0._event_onCreate         := _DoEvent(MainForm_24B82D0._work_doCenterPos,4);
  Button_24B9950._event_onClick            := _DoEvent(If_else_24AEDD8._work_doCompare,0);
  If_else_24AEC10._event_onTrue            := _DoEvent(Hub_25280B0.doEvent,3);
  If_else_24AEC10._event_onFalse           := _DoEvent(Hub_25298C0.doEvent,0);
  If_else_24AEC10._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  If_else_24AECA8._event_onTrue            := _DoEvent(Hub_25280B0.doEvent,2);
  If_else_24AECA8._event_onFalse           := _DoEvent(If_else_24AEC10._work_doCompare,0);
  If_else_24AECA8._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24AED40._event_onTrue            := _DoEvent(Hub_25280B0.doEvent,1);
  If_else_24AED40._event_onFalse           := _DoEvent(If_else_24AECA8._work_doCompare,0);
  If_else_24AED40._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24AEDD8._event_onTrue            := _DoEvent(Hub_25280B0.doEvent,0);
  If_else_24AEDD8._event_onFalse           := _DoEvent(If_else_24AED40._work_doCompare,0);
  If_else_24AEDD8._data_Op1                := _DoEvent(CheckBox_24B9810._var_Checked,0);
  Hub_25280B0.onEvent[0]                   := _DoEvent(Hub_2528A50.doEvent,0);
  Message_24AF628._event_onMessage         := _DoEvent(Hub_2529970.doEvent,0);
  If_else_24AF6C0._event_onTrue            := _DoEvent(Hub_2528C60.doEvent,0);
  If_else_24AF6C0._event_onFalse           := _DoEvent(Hub_25288F0.doEvent,0);
  If_else_24AF6C0._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  Hub_25286E0.onEvent[0]                   := _DoEvent(If_else_24AF6C0._work_doCompare,0);
  If_else_24AF758._event_onTrue            := _DoEvent(Hub_2528B00.doEvent,0);
  If_else_24AF758._event_onFalse           := _DoEvent(Hub_2528790.doEvent,0);
  If_else_24AF758._data_Op1                := _DoEvent(CheckBox_24B9810._var_Checked,0);
  If_else_24AF7F0._event_onTrue            := _DoEvent(Hub_2528BB0.doEvent,0);
  If_else_24AF7F0._event_onFalse           := _DoEvent(Hub_2528840.doEvent,0);
  If_else_24AF7F0._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  Hub_2528790.onEvent[0]                   := _DoEvent(If_else_24AF7F0._work_doCompare,0);
  Hub_2528840.onEvent[0]                   := _DoEvent(If_else_24AF888._work_doCompare,0);
  If_else_24AF888._event_onTrue            := _DoEvent(Hub_2528D10.doEvent,0);
  If_else_24AF888._event_onFalse           := _DoEvent(Hub_25286E0.doEvent,0);
  If_else_24AF888._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  Hub_25288F0.onEvent[0]                   := _DoEvent(Hub_25289A0.doEvent,0);
  Hub_25289A0.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,1);
  Hub_25289A0.onEvent[1]                   := _DoEvent(Hub_2529760.doEvent,0);
  Hub_25289A0.onEvent[2]                   := _DoEvent(Hub_2529810.doEvent,1);
  Hub_2528A50.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,0);
  Hub_2528A50.onEvent[1]                   := _DoEvent(If_else_24AF758._work_doCompare,0);
  Hub_2528A50.onEvent[2]                   := _DoEvent(Hub_25296B0.doEvent,1);
  Hub_2528A50.onEvent[3]                   := _DoEvent(Hub_2529600.doEvent,1);
  Hub_2528B00.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,2);
  Hub_2528B00.onEvent[1]                   := _DoEvent(Thread_24AFE78._work_doStart,0);
  Hub_2528BB0.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,3);
  Hub_2528BB0.onEvent[1]                   := _DoEvent(Thread_24AFDE0._work_doStart,0);
  Hub_2528C60.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,5);
  Hub_2528C60.onEvent[1]                   := _DoEvent(Thread_24AFCB0._work_doStart,0);
  Hub_2528D10.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,4);
  Hub_2528D10.onEvent[1]                   := _DoEvent(Thread_24AFD48._work_doStart,0);
  Memory_24AF920._event_onData             := _DoEvent(Hub_2528DC0.doEvent,1);
  Memory_24AF9B8._event_onData             := _DoEvent(Hub_2528DC0.doEvent,0);
  Hub_2528DC0.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doEnabled,5);
  WinExec_24AFA50._event_onExec            := _DoEvent(Hub_25286E0.doEvent,1);
  WinExec_24AFAE8._event_onExec            := _DoEvent(Hub_25288F0.doEvent,1);
  WinExec_24AFB80._event_onExec            := _DoEvent(Hub_2528840.doEvent,1);
  WinExec_24AFC18._event_onExec            := _DoEvent(Hub_2528790.doEvent,1);
  Thread_24AFCB0._event_onExec             := _DoEvent(WinExec_24AFAE8._work_doExec,0);
  Thread_24AFCB0._event_onSyncExec         := _DoEvent(Thread_24AFCB0._work_doStop,1);
  Thread_24AFD48._event_onExec             := _DoEvent(WinExec_24AFA50._work_doExec,0);
  Thread_24AFD48._event_onSyncExec         := _DoEvent(Thread_24AFD48._work_doStop,1);
  Thread_24AFDE0._event_onExec             := _DoEvent(WinExec_24AFB80._work_doExec,0);
  Thread_24AFDE0._event_onSyncExec         := _DoEvent(Thread_24AFDE0._work_doStop,1);
  Thread_24AFE78._event_onExec             := _DoEvent(WinExec_24AFC18._work_doExec,0);
  Thread_24AFE78._event_onSyncExec         := _DoEvent(Thread_24AFE78._work_doStop,1);
  Button_24BB110._event_onClick            := _DoEvent(Message_24B0AF0._work_doMessage,0);
  If_else_24AFF10._event_onTrue            := _DoEvent(Hub_2528E70.doEvent,0);
  If_else_24AFF10._event_onFalse           := _DoEvent(If_else_24AFFA8._work_doCompare,0);
  If_else_24AFF10._data_Op1                := _DoEvent(CheckBox_24B9810._var_Checked,0);
  If_else_24AFFA8._event_onTrue            := _DoEvent(Hub_2528E70.doEvent,1);
  If_else_24AFFA8._event_onFalse           := _DoEvent(If_else_24B0040._work_doCompare,0);
  If_else_24AFFA8._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24B0040._event_onTrue            := _DoEvent(Hub_2528E70.doEvent,2);
  If_else_24B0040._event_onFalse           := _DoEvent(If_else_24B00D8._work_doCompare,0);
  If_else_24B0040._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24B00D8._event_onTrue            := _DoEvent(Hub_2528E70.doEvent,3);
  If_else_24B00D8._event_onFalse           := _DoEvent(Hub_25298C0.doEvent,1);
  If_else_24B00D8._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  Hub_2528E70.onEvent[0]                   := _DoEvent(Hub_2528F20.doEvent,0);
  Hub_2528F20.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,6);
  Hub_2528F20.onEvent[1]                   := _DoEvent(If_else_24B0C20._work_doCompare,0);
  Hub_2528F20.onEvent[2]                   := _DoEvent(Hub_25296B0.doEvent,0);
  Hub_2528F20.onEvent[3]                   := _DoEvent(Hub_2529600.doEvent,0);
  Hub_2528F20.onEvent[4]                   := _DoEvent(ChildForm_2527EA0.doWork,12);
  If_else_24B03D0._event_onTrue            := _DoEvent(Hub_25293F0.doEvent,0);
  If_else_24B03D0._event_onFalse           := _DoEvent(Hub_2529340.doEvent,0);
  If_else_24B03D0._data_Op1                := _DoEvent(CheckBox_24B9810._var_Checked,0);
  If_else_24B0468._event_onTrue            := _DoEvent(Hub_2529290.doEvent,0);
  If_else_24B0468._event_onFalse           := _DoEvent(Hub_25291E0.doEvent,0);
  If_else_24B0468._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24B0500._event_onTrue            := _DoEvent(Hub_2529130.doEvent,0);
  If_else_24B0500._event_onFalse           := _DoEvent(Hub_2529080.doEvent,0);
  If_else_24B0500._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24B0598._event_onTrue            := _DoEvent(Hub_2528FD0.doEvent,0);
  If_else_24B0598._event_onFalse           := _DoEvent(Hub_25294A0.doEvent,0);
  If_else_24B0598._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  WinExec_24B0630._event_onExec            := _DoEvent(Hub_25294A0.doEvent,1);
  Thread_24B06C8._event_onExec             := _DoEvent(WinExec_24B0630._work_doExec,0);
  Thread_24B06C8._event_onSyncExec         := _DoEvent(Thread_24B06C8._work_doStop,1);
  Hub_2528FD0.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,11);
  Hub_2528FD0.onEvent[1]                   := _DoEvent(Thread_24B06C8._work_doStart,0);
  Hub_2529080.onEvent[0]                   := _DoEvent(If_else_24B0598._work_doCompare,0);
  WinExec_24B0760._event_onExec            := _DoEvent(Hub_2529080.doEvent,1);
  Thread_24B07F8._event_onExec             := _DoEvent(WinExec_24B0760._work_doExec,0);
  Thread_24B07F8._event_onSyncExec         := _DoEvent(Thread_24B07F8._work_doStop,1);
  Hub_2529130.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,10);
  Hub_2529130.onEvent[1]                   := _DoEvent(Thread_24B07F8._work_doStart,0);
  Hub_25291E0.onEvent[0]                   := _DoEvent(If_else_24B0500._work_doCompare,0);
  WinExec_24B0890._event_onExec            := _DoEvent(Hub_25291E0.doEvent,1);
  Thread_24B0928._event_onExec             := _DoEvent(WinExec_24B0890._work_doExec,0);
  Thread_24B0928._event_onSyncExec         := _DoEvent(Thread_24B0928._work_doStop,1);
  Hub_2529290.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,9);
  Hub_2529290.onEvent[1]                   := _DoEvent(Thread_24B0928._work_doStart,0);
  Thread_24B09C0._event_onExec             := _DoEvent(WinExec_24B0A58._work_doExec,0);
  Thread_24B09C0._event_onSyncExec         := _DoEvent(Thread_24B09C0._work_doStop,1);
  WinExec_24B0A58._event_onExec            := _DoEvent(Hub_2529340.doEvent,1);
  Hub_2529340.onEvent[0]                   := _DoEvent(If_else_24B0468._work_doCompare,0);
  Hub_25293F0.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,8);
  Hub_25293F0.onEvent[1]                   := _DoEvent(Thread_24B09C0._work_doStart,0);
  Hub_25294A0.onEvent[0]                   := _DoEvent(Hub_2529550.doEvent,0);
  Hub_2529550.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,7);
  Hub_2529550.onEvent[1]                   := _DoEvent(Hub_2529760.doEvent,1);
  Hub_2529550.onEvent[2]                   := _DoEvent(Hub_2529810.doEvent,0);
  Hub_2529600.onEvent[0]                   := _DoEvent(Memory_24AF9B8._work_doClear,1);
  Hub_25296B0.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doMinimize,2);
  Hub_2529760.onEvent[0]                   := _DoEvent(Message_24AF628._work_doMessage,0);
  Hub_2529810.onEvent[0]                   := _DoEvent(Memory_24AF920._work_doClear,1);
  Hub_25298C0.onEvent[0]                   := _DoEvent(Message_24AEAE0._work_doMessage,0);
  Hub_2529970.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doRestore,1);
  Hub_2529970.onEvent[1]                   := _DoEvent(ChildForm_2527EA0.doWork,13);
  Message_24B0AF0._event_onMessage         := _DoEvent(Memory_24B0B88._work_doValue,0);
  Memory_24B0B88._event_onData             := _DoEvent(If_else_24AFF10._work_doCompare,0);
  If_else_24B0C20._event_onTrue            := _DoEvent(Hub_2529A20.doEvent,0);
  If_else_24B0C20._event_onFalse           := _DoEvent(Hub_2529AD0.doEvent,0);
  If_else_24B0C20._data_Op1                := _DoEvent(Memory_24B0B88._var_Value,0);
  WinExec_24B0CB8._event_onExec            := _DoEvent(Hub_2529AD0.doEvent,1);
  Hub_2529A20.onEvent[0]                   := _DoEvent(ChildForm_2527EA0.doWork,14);
  Hub_2529A20.onEvent[1]                   := _DoEvent(Thread_24B0D50._work_doStart,0);
  Thread_24B0D50._event_onExec             := _DoEvent(WinExec_24B0CB8._work_doExec,0);
  Thread_24B0D50._event_onSyncExec         := _DoEvent(Thread_24B0D50._work_doStop,1);
  Hub_2529AD0.onEvent[0]                   := _DoEvent(If_else_24B03D0._work_doCompare,0);
  Image_24B7AB0._prop_HintManager := nil;
  Image_24B7AB0._prop_Layout := nil;
  Button_24B7BF0._prop_HintManager := nil;
  Button_24B7BF0._prop_Layout := nil;
  MainForm_24B82D0._prop_HintManager := nil;
  MainForm_24B82D0._prop_Layout := nil;
  MainForm_24B82D0._prop_TransparentManager := nil;
  MainForm_24B82D0._prop_FormFastening := nil;
  ChildForm_2527F50.OnCreate := Create_hiChildForm_2527F50;
  CheckBox_24B9630._prop_HintManager := nil;
  CheckBox_24B9630._prop_Layout := nil;
  CheckBox_24B96D0._prop_HintManager := nil;
  CheckBox_24B96D0._prop_Layout := nil;
  CheckBox_24B9770._prop_HintManager := nil;
  CheckBox_24B9770._prop_Layout := nil;
  CheckBox_24B9810._prop_HintManager := nil;
  CheckBox_24B9810._prop_Layout := nil;
  Label_24B98B0._prop_HintManager := nil;
  Label_24B98B0._prop_Layout := nil;
  Button_24B9950._prop_HintManager := nil;
  Button_24B9950._prop_Layout := nil;
  ChildForm_2527EA0.OnCreate := Create_hiChildForm_2527EA0;
  Button_24BB110._prop_HintManager := nil;
  Button_24BB110._prop_Layout := nil;
  MainForm_24B82D0.Control.Tabulate;
end;

destructor TClassMainForm_24B82D0.Destroy;
begin
  Hub_2529AD0.Destroy;
  Thread_24B0D50.Destroy;
  Hub_2529A20.Destroy;
  WinExec_24B0CB8.Destroy;
  If_else_24B0C20.Destroy;
  Memory_24B0B88.Destroy;
  Message_24B0AF0.Destroy;
  Hub_2529970.Destroy;
  Hub_25298C0.Destroy;
  Hub_2529810.Destroy;
  Hub_2529760.Destroy;
  Hub_25296B0.Destroy;
  Hub_2529600.Destroy;
  Hub_2529550.Destroy;
  Hub_25294A0.Destroy;
  Hub_25293F0.Destroy;
  Hub_2529340.Destroy;
  WinExec_24B0A58.Destroy;
  Thread_24B09C0.Destroy;
  Hub_2529290.Destroy;
  Thread_24B0928.Destroy;
  WinExec_24B0890.Destroy;
  Hub_25291E0.Destroy;
  Hub_2529130.Destroy;
  Thread_24B07F8.Destroy;
  WinExec_24B0760.Destroy;
  Hub_2529080.Destroy;
  Hub_2528FD0.Destroy;
  Thread_24B06C8.Destroy;
  WinExec_24B0630.Destroy;
  If_else_24B0598.Destroy;
  If_else_24B0500.Destroy;
  If_else_24B0468.Destroy;
  If_else_24B03D0.Destroy;
  Hub_2528F20.Destroy;
  Hub_2528E70.Destroy;
  If_else_24B00D8.Destroy;
  If_else_24B0040.Destroy;
  If_else_24AFFA8.Destroy;
  If_else_24AFF10.Destroy;
  Button_24BB110.Destroy;
  Thread_24AFE78.Destroy;
  Thread_24AFDE0.Destroy;
  Thread_24AFD48.Destroy;
  Thread_24AFCB0.Destroy;
  WinExec_24AFC18.Destroy;
  WinExec_24AFB80.Destroy;
  WinExec_24AFAE8.Destroy;
  WinExec_24AFA50.Destroy;
  Hub_2528DC0.Destroy;
  Memory_24AF9B8.Destroy;
  Memory_24AF920.Destroy;
  Hub_2528D10.Destroy;
  Hub_2528C60.Destroy;
  Hub_2528BB0.Destroy;
  Hub_2528B00.Destroy;
  Hub_2528A50.Destroy;
  Hub_25289A0.Destroy;
  Hub_25288F0.Destroy;
  If_else_24AF888.Destroy;
  Hub_2528840.Destroy;
  Hub_2528790.Destroy;
  If_else_24AF7F0.Destroy;
  If_else_24AF758.Destroy;
  Hub_25286E0.Destroy;
  If_else_24AF6C0.Destroy;
  Message_24AF628.Destroy;
  ChildForm_2527EA0.Destroy;
  Hub_25280B0.Destroy;
  If_else_24AEDD8.Destroy;
  If_else_24AED40.Destroy;
  If_else_24AECA8.Destroy;
  If_else_24AEC10.Destroy;
  Message_24AEAE0.Destroy;
  Button_24B9950.Destroy;
  Label_24B98B0.Destroy;
  CheckBox_24B9810.Destroy;
  CheckBox_24B9770.Destroy;
  CheckBox_24B96D0.Destroy;
  CheckBox_24B9630.Destroy;
  ChildForm_2527F50.Destroy;
  Button_24B7BF0.Destroy;
  Image_24B7AB0.Destroy;
  MainForm_24B82D0.Destroy;
  inherited;
end;

end.
