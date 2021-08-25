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
  hiEventFromData,
  hiFileTools,
  hiSwitch,
  hiChildForm_25280B0,
  hiChildForm_2528000,
kol,Share;

type
  TClassMainForm_24B82D0 = class
   public
  Image_24B7AB0:THIImage;
  Button_24B7BF0:THIButton;
  MainForm_24B82D0:THIMainForm;
  ChildForm_25280B0:THIChildForm;
  CheckBox_24B9590:THICheckBox;
  CheckBox_24B9630:THICheckBox;
  CheckBox_24B96D0:THICheckBox;
  CheckBox_24B9770:THICheckBox;
  Label_24B9810:THILabel;
  Button_24B98B0:THIButton;
  Message_24AECA8:THIMessage;
  If_else_24AED40:THIIf_else;
  If_else_24AEDD8:THIIf_else;
  If_else_24AEE70:THIIf_else;
  If_else_24AEF08:THIIf_else;
  Hub_2528210:THIHub;
  ChildForm_2528000:THIChildForm;
  If_else_24AF758:THIIf_else;
  Hub_2528840:THIHub;
  If_else_24AF7F0:THIIf_else;
  If_else_24AF888:THIIf_else;
  Hub_25288F0:THIHub;
  Hub_25289A0:THIHub;
  If_else_24AF920:THIIf_else;
  Hub_2528A50:THIHub;
  Hub_2528B00:THIHub;
  Hub_2528BB0:THIHub;
  Hub_2528C60:THIHub;
  Hub_2528D10:THIHub;
  Hub_2528DC0:THIHub;
  Hub_2528E70:THIHub;
  Memory_24AF9B8:THIMemory;
  Memory_24AFA50:THIMemory;
  Hub_2528F20:THIHub;
  WinExec_24AFAE8:THIWinExec;
  WinExec_24AFB80:THIWinExec;
  WinExec_24AFC18:THIWinExec;
  WinExec_24AFCB0:THIWinExec;
  Thread_24AFD48:THIThread;
  Thread_24AFDE0:THIThread;
  Thread_24AFE78:THIThread;
  Thread_24AFF10:THIThread;
  Button_24BB070:THIButton;
  If_else_24AFFA8:THIIf_else;
  If_else_24B0040:THIIf_else;
  If_else_24B00D8:THIIf_else;
  If_else_24B0170:THIIf_else;
  Hub_2528FD0:THIHub;
  Hub_2529080:THIHub;
  If_else_24B0468:THIIf_else;
  If_else_24B0500:THIIf_else;
  If_else_24B0598:THIIf_else;
  If_else_24B0630:THIIf_else;
  WinExec_24B06C8:THIWinExec;
  Thread_24B0760:THIThread;
  Hub_2529130:THIHub;
  Hub_25291E0:THIHub;
  WinExec_24B07F8:THIWinExec;
  Thread_24B0890:THIThread;
  Hub_2529290:THIHub;
  Hub_2529340:THIHub;
  WinExec_24B0928:THIWinExec;
  Thread_24B09C0:THIThread;
  Hub_25293F0:THIHub;
  Thread_24B0A58:THIThread;
  WinExec_24B0AF0:THIWinExec;
  Hub_25294A0:THIHub;
  Hub_2529550:THIHub;
  Hub_2529600:THIHub;
  Hub_25296B0:THIHub;
  Hub_2529760:THIHub;
  Hub_2529810:THIHub;
  Hub_25298C0:THIHub;
  Hub_2529970:THIHub;
  Hub_2529A20:THIHub;
  Hub_2529AD0:THIHub;
  Message_24B0B88:THIMessage;
  Memory_24B0C20:THIMemory;
  If_else_24B0CB8:THIIf_else;
  WinExec_24B0D50:THIWinExec;
  Hub_2529B80:THIHub;
  Thread_24B0DE8:THIThread;
  Hub_2529C30:THIHub;
  Hub_2529CE0:THIHub;
  Hub_2529D90:THIHub;
  Hub_2529E40:THIHub;
  WinExec_24B0E80:THIWinExec;
  If_else_24B0F18:THIIf_else;
  EventFromData_24B0FB0:THIEventFromData;
  Hub_2529EF0:THIHub;
  FileTools_24B10E0:THIFileTools;
  Switch_24B1048:THISwitch;
  Hub_2529FA0:THIHub;
  Message_24B1178:THIMessage;
  Hub_252A050:THIHub;
  Hub_252A100:THIHub;
  FileTools_24B1210:THIFileTools;
  Hub_252A1B0:THIHub;
  EventFromData_24B12A8:THIEventFromData;
  If_else_24B1340:THIIf_else;
  Hub_252A260:THIHub;
  Message_24B13D8:THIMessage;
  FileTools_24B1470:THIFileTools;
  Hub_252A310:THIHub;
  EventFromData_24B1508:THIEventFromData;
  If_else_24B15A0:THIIf_else;
  Hub_252A3C0:THIHub;
  Message_24B1638:THIMessage;
  FileTools_24B16D0:THIFileTools;
  Hub_252A470:THIHub;
  EventFromData_24B1768:THIEventFromData;
  If_else_24B1800:THIIf_else;
  Hub_252A520:THIHub;
  Message_24B1898:THIMessage;
  Hub_252A5D0:THIHub;
  Hub_252A680:THIHub;
  Hub_252A730:THIHub;
  If_else_24B1930:THIIf_else;
  Message_24B19C8:THIMessage;
  Hub_252A7E0:THIHub;
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
    _prop_Width := 530;
    _prop_Height := 227;
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
  ChildForm_25280B0 := THIChildForm.Create(MainForm_24B82D0.Control);
  with ChildForm_25280B0 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for CheckBox;
  CheckBox_24B9590 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9590 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 135;
    _prop_Width := 155;
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
  CheckBox_24B9630 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9630 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 85;
    _prop_Width := 150;
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
  CheckBox_24B96D0 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B96D0 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 110;
    _prop_Width := 140;
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
    _prop_Caption := PChar('Microsoft Store'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_24B9770 := THICheckBox.Create(MainForm_24B82D0.Control);
  with CheckBox_24B9770 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 60;
    _prop_Width := 160;
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
  Label_24B9810 := THILabel.Create(MainForm_24B82D0.Control);
  with Label_24B9810 do begin
    ManFlags := 0;
    _prop_Left := 230;
    _prop_Top := 40;
    _prop_Width := 80;
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
    _prop_Caption := PChar('Components'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    _prop_CaptionOnClick := False;
    Init;
  end;
//Init for Button;
  Button_24B98B0 := THIButton.Create(MainForm_24B82D0.Control);
  with Button_24B98B0 do begin
    ManFlags := 0;
    _prop_Left := 375;
    _prop_Top := 60;
    _prop_Width := 85;
    _prop_Height := 40;
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
  Message_24AECA8 := THIMessage.Create;
  with Message_24AECA8 do begin
    _prop_Message := PChar('You dont select components. Please select.'#0);
    _prop_Caption := PChar(#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
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
//Init for If_else;
  If_else_24AEE70 := THIIf_else.Create;
  with If_else_24AEE70 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_24AEF08 := THIIf_else.Create;
  with If_else_24AEF08 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528210 := THIHub.Create;
  with Hub_2528210 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for ChildForm;
  ChildForm_2528000 := THIChildForm.Create(MainForm_24B82D0.Control);
  with ChildForm_2528000 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for If_else;
  If_else_24AF758 := THIIf_else.Create;
  with If_else_24AF758 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528840 := THIHub.Create;
  with Hub_2528840 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_24AF7F0 := THIIf_else.Create;
  with If_else_24AF7F0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
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
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_24AF920 := THIIf_else.Create;
  with If_else_24AF920 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528A50 := THIHub.Create;
  with Hub_2528A50 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2528B00 := THIHub.Create;
  with Hub_2528B00 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2528BB0 := THIHub.Create;
  with Hub_2528BB0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 4;
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
//Init for Hub;
  Hub_2528DC0 := THIHub.Create;
  with Hub_2528DC0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2528E70 := THIHub.Create;
  with Hub_2528E70 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_24AF9B8 := THIMemory.Create;
  with Memory_24AF9B8 do begin
    _prop_Default := _DoData(1);
  end;
//Init for Memory;
  Memory_24AFA50 := THIMemory.Create;
  with Memory_24AFA50 do begin
    _prop_Default := _DoData(0);
  end;
//Init for Hub;
  Hub_2528F20 := THIHub.Create;
  with Hub_2528F20 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_24AFAE8 := THIWinExec.Create;
  with WinExec_24AFAE8 do begin
    _prop_Param := PChar('/c microsoft_store.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFB80 := THIWinExec.Create;
  with WinExec_24AFB80 do begin
    _prop_Param := PChar('/c xbox_identity_provider.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFC18 := THIWinExec.Create;
  with WinExec_24AFC18 do begin
    _prop_Param := PChar('/c store_purchase_app.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_24AFCB0 := THIWinExec.Create;
  with WinExec_24AFCB0 do begin
    _prop_Param := PChar('/c desktop_app_installer.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
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
//Init for Thread;
  Thread_24AFF10 := THIThread.Create;
  with Thread_24AFF10 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Button;
  Button_24BB070 := THIButton.Create(MainForm_24B82D0.Control);
  with Button_24BB070 do begin
    ManFlags := 0;
    _prop_Left := 355;
    _prop_Top := 115;
    _prop_Width := 120;
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
    _prop_Caption := PChar('Uninstall'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
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
//Init for If_else;
  If_else_24B0170 := THIIf_else.Create;
  with If_else_24B0170 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2528FD0 := THIHub.Create;
  with Hub_2528FD0 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529080 := THIHub.Create;
  with Hub_2529080 do begin
    _prop_InCount := 1;
    _prop_OutCount := 5;
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
//Init for If_else;
  If_else_24B0630 := THIIf_else.Create;
  with If_else_24B0630 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for WinExec;
  WinExec_24B06C8 := THIWinExec.Create;
  with WinExec_24B06C8 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.xboxidentityprovider* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B0760 := THIThread.Create;
  with Thread_24B0760 do begin
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
  WinExec_24B07F8 := THIWinExec.Create;
  with WinExec_24B07F8 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.windowsstore* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B0890 := THIThread.Create;
  with Thread_24B0890 do begin
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
//Init for Hub;
  Hub_2529340 := THIHub.Create;
  with Hub_2529340 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_24B0928 := THIWinExec.Create;
  with WinExec_24B0928 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.storepurchaseapp* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_24B09C0 := THIThread.Create;
  with Thread_24B09C0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_25293F0 := THIHub.Create;
  with Hub_25293F0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_24B0A58 := THIThread.Create;
  with Thread_24B0A58 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for WinExec;
  WinExec_24B0AF0 := THIWinExec.Create;
  with WinExec_24B0AF0 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.desktopappinstaller* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
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
    _prop_OutCount := 2;
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
    _prop_InCount := 1;
    _prop_OutCount := 3;
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
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529A20 := THIHub.Create;
  with Hub_2529A20 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529AD0 := THIHub.Create;
  with Hub_2529AD0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B0B88 := THIMessage.Create;
  with Message_24B0B88 do begin
    _prop_Message := PChar('Do you want to remove all libraries (for running UWP apps)?'#0);
    _prop_Caption := PChar('Remove libraries'#0);
    _prop_Type := 2;
    _prop_Icon := 2;
    _prop_DefButton := 0;
  end;
//Init for Memory;
  Memory_24B0C20 := THIMemory.Create;
//Init for If_else;
  If_else_24B0CB8 := THIIf_else.Create;
  with If_else_24B0CB8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('6'#0));
  end;
//Init for WinExec;
  WinExec_24B0D50 := THIWinExec.Create;
  with WinExec_24B0D50 do begin
    _prop_Param := PChar('/c libraries.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2529B80 := THIHub.Create;
  with Hub_2529B80 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_24B0DE8 := THIThread.Create;
  with Thread_24B0DE8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2529C30 := THIHub.Create;
  with Hub_2529C30 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2529CE0 := THIHub.Create;
  with Hub_2529CE0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2529D90 := THIHub.Create;
  with Hub_2529D90 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2529E40 := THIHub.Create;
  with Hub_2529E40 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for WinExec;
  WinExec_24B0E80 := THIWinExec.Create;
  with WinExec_24B0E80 do begin
    _prop_Param := PChar('/c del *.log'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 0;
    _prop_Action := PChar('open'#0);
  end;
//Init for If_else;
  If_else_24B0F18 := THIIf_else.Create;
  with If_else_24B0F18 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(1);
  end;
//Init for EventFromData;
  EventFromData_24B0FB0 := THIEventFromData.Create;
//Init for Hub;
  Hub_2529EF0 := THIHub.Create;
  with Hub_2529EF0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for FileTools;
  FileTools_24B10E0 := THIFileTools.Create;
  with FileTools_24B10E0 do begin
    _prop_DelToRecycle := 1;
    _prop_FileName := PChar('desktop_app_installer.log'#0);
    _prop_NewFileName := PChar(#0);
  end;
//Init for Switch;
  Switch_24B1048 := THISwitch.Create;
  with Switch_24B1048 do begin
    _prop_DataOn := _DoData(1);
    _prop_DataOff := _DoData(0);
    _prop_Default := 1;
  end;
//Init for Hub;
  Hub_2529FA0 := THIHub.Create;
  with Hub_2529FA0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B1178 := THIMessage.Create;
  with Message_24B1178 do begin
    _prop_Message := PChar('Failed to install Desktop App Installer'#0);
    _prop_Caption := PChar('Error'#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for Hub;
  Hub_252A050 := THIHub.Create;
  with Hub_252A050 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_252A100 := THIHub.Create;
  with Hub_252A100 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for FileTools;
  FileTools_24B1210 := THIFileTools.Create;
  with FileTools_24B1210 do begin
    _prop_DelToRecycle := 1;
    _prop_FileName := PChar('microsoft_store.log'#0);
    _prop_NewFileName := PChar(#0);
  end;
//Init for Hub;
  Hub_252A1B0 := THIHub.Create;
  with Hub_252A1B0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for EventFromData;
  EventFromData_24B12A8 := THIEventFromData.Create;
//Init for If_else;
  If_else_24B1340 := THIIf_else.Create;
  with If_else_24B1340 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(1);
  end;
//Init for Hub;
  Hub_252A260 := THIHub.Create;
  with Hub_252A260 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B13D8 := THIMessage.Create;
  with Message_24B13D8 do begin
    _prop_Message := PChar('Failed to install Microsoft Store'#0);
    _prop_Caption := PChar('Error'#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for FileTools;
  FileTools_24B1470 := THIFileTools.Create;
  with FileTools_24B1470 do begin
    _prop_DelToRecycle := 1;
    _prop_FileName := PChar('store_purchase_app.log'#0);
    _prop_NewFileName := PChar(#0);
  end;
//Init for Hub;
  Hub_252A310 := THIHub.Create;
  with Hub_252A310 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for EventFromData;
  EventFromData_24B1508 := THIEventFromData.Create;
//Init for If_else;
  If_else_24B15A0 := THIIf_else.Create;
  with If_else_24B15A0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(1);
  end;
//Init for Hub;
  Hub_252A3C0 := THIHub.Create;
  with Hub_252A3C0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B1638 := THIMessage.Create;
  with Message_24B1638 do begin
    _prop_Message := PChar('Failed to install Store Purchase App'#0);
    _prop_Caption := PChar('Error'#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for FileTools;
  FileTools_24B16D0 := THIFileTools.Create;
  with FileTools_24B16D0 do begin
    _prop_DelToRecycle := 1;
    _prop_FileName := PChar('xbox_identity_provider.log'#0);
    _prop_NewFileName := PChar(#0);
  end;
//Init for Hub;
  Hub_252A470 := THIHub.Create;
  with Hub_252A470 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for EventFromData;
  EventFromData_24B1768 := THIEventFromData.Create;
//Init for If_else;
  If_else_24B1800 := THIIf_else.Create;
  with If_else_24B1800 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(1);
  end;
//Init for Hub;
  Hub_252A520 := THIHub.Create;
  with Hub_252A520 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_24B1898 := THIMessage.Create;
  with Message_24B1898 do begin
    _prop_Message := PChar('Failed to install Xbox Identity Provider'#0);
    _prop_Caption := PChar('Error'#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for Hub;
  Hub_252A5D0 := THIHub.Create;
  with Hub_252A5D0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_252A680 := THIHub.Create;
  with Hub_252A680 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_252A730 := THIHub.Create;
  with Hub_252A730 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for If_else;
  If_else_24B1930 := THIIf_else.Create;
  with If_else_24B1930 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(0);
  end;
//Init for Message;
  Message_24B19C8 := THIMessage.Create;
  with Message_24B19C8 do begin
    _prop_Message := PChar('Success'#0);
    _prop_Caption := PChar('Success'#0);
    _prop_Type := 0;
    _prop_Icon := 4;
    _prop_DefButton := 0;
  end;
//Init for Hub;
  Hub_252A7E0 := THIHub.Create;
  with Hub_252A7E0 do begin
    _prop_InCount := 3;
    _prop_OutCount := 1;
  end;
 //%multi%
 //Make all connection in scheme
  Button_24B7BF0._event_onClick            := _DoEvent(ChildForm_25280B0.doWork,0);
  MainForm_24B82D0._event_onCreate         := _DoEvent(Hub_252A7E0.doEvent,0);
  Button_24B98B0._event_onClick            := _DoEvent(Hub_2529D90.doEvent,0);
  If_else_24AED40._event_onTrue            := _DoEvent(Hub_2528210.doEvent,3);
  If_else_24AED40._event_onFalse           := _DoEvent(Hub_2529A20.doEvent,0);
  If_else_24AED40._data_Op1                := _DoEvent(CheckBox_24B9590._var_Checked,0);
  If_else_24AEDD8._event_onTrue            := _DoEvent(Hub_2528210.doEvent,2);
  If_else_24AEDD8._event_onFalse           := _DoEvent(If_else_24AED40._work_doCompare,0);
  If_else_24AEDD8._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24AEE70._event_onTrue            := _DoEvent(Hub_2528210.doEvent,1);
  If_else_24AEE70._event_onFalse           := _DoEvent(If_else_24AEDD8._work_doCompare,0);
  If_else_24AEE70._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  If_else_24AEF08._event_onTrue            := _DoEvent(Hub_2528210.doEvent,0);
  If_else_24AEF08._event_onFalse           := _DoEvent(If_else_24AEE70._work_doCompare,0);
  If_else_24AEF08._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  Hub_2528210.onEvent[0]                   := _DoEvent(Hub_2528BB0.doEvent,0);
  If_else_24AF758._event_onTrue            := _DoEvent(Hub_2528DC0.doEvent,0);
  If_else_24AF758._event_onFalse           := _DoEvent(Hub_2528A50.doEvent,0);
  If_else_24AF758._data_Op1                := _DoEvent(CheckBox_24B9590._var_Checked,0);
  Hub_2528840.onEvent[0]                   := _DoEvent(If_else_24AF758._work_doCompare,0);
  If_else_24AF7F0._event_onTrue            := _DoEvent(Hub_2528C60.doEvent,0);
  If_else_24AF7F0._event_onFalse           := _DoEvent(Hub_25288F0.doEvent,0);
  If_else_24AF7F0._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24AF888._event_onTrue            := _DoEvent(Hub_2528D10.doEvent,0);
  If_else_24AF888._event_onFalse           := _DoEvent(Hub_25289A0.doEvent,0);
  If_else_24AF888._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  Hub_25288F0.onEvent[0]                   := _DoEvent(If_else_24AF888._work_doCompare,0);
  Hub_25289A0.onEvent[0]                   := _DoEvent(If_else_24AF920._work_doCompare,0);
  If_else_24AF920._event_onTrue            := _DoEvent(Hub_2528E70.doEvent,0);
  If_else_24AF920._event_onFalse           := _DoEvent(Hub_2528840.doEvent,0);
  If_else_24AF920._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  Hub_2528A50.onEvent[0]                   := _DoEvent(Hub_2528B00.doEvent,0);
  Hub_2528B00.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,1);
  Hub_2528B00.onEvent[1]                   := _DoEvent(Hub_25298C0.doEvent,0);
  Hub_2528B00.onEvent[2]                   := _DoEvent(Hub_2529970.doEvent,1);
  Hub_2528BB0.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,0);
  Hub_2528BB0.onEvent[1]                   := _DoEvent(If_else_24AF7F0._work_doCompare,0);
  Hub_2528BB0.onEvent[2]                   := _DoEvent(Hub_2529810.doEvent,1);
  Hub_2528BB0.onEvent[3]                   := _DoEvent(Hub_2529760.doEvent,1);
  Hub_2528C60.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,2);
  Hub_2528C60.onEvent[1]                   := _DoEvent(Thread_24AFF10._work_doStart,0);
  Hub_2528D10.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,3);
  Hub_2528D10.onEvent[1]                   := _DoEvent(Thread_24AFE78._work_doStart,0);
  Hub_2528DC0.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,5);
  Hub_2528DC0.onEvent[1]                   := _DoEvent(Thread_24AFD48._work_doStart,0);
  Hub_2528E70.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,4);
  Hub_2528E70.onEvent[1]                   := _DoEvent(Thread_24AFDE0._work_doStart,0);
  Memory_24AF9B8._event_onData             := _DoEvent(Hub_2528F20.doEvent,1);
  Memory_24AFA50._event_onData             := _DoEvent(Hub_2528F20.doEvent,0);
  Hub_2528F20.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doEnabled,5);
  WinExec_24AFAE8._event_onExec            := _DoEvent(Hub_252A5D0.doEvent,0);
  WinExec_24AFB80._event_onExec            := _DoEvent(Hub_252A680.doEvent,0);
  WinExec_24AFC18._event_onExec            := _DoEvent(Hub_252A730.doEvent,0);
  WinExec_24AFCB0._event_onExec            := _DoEvent(Hub_2529FA0.doEvent,0);
  Thread_24AFD48._event_onExec             := _DoEvent(WinExec_24AFB80._work_doExec,0);
  Thread_24AFD48._event_onSyncExec         := _DoEvent(Thread_24AFD48._work_doStop,1);
  Thread_24AFDE0._event_onExec             := _DoEvent(WinExec_24AFAE8._work_doExec,0);
  Thread_24AFDE0._event_onSyncExec         := _DoEvent(Thread_24AFDE0._work_doStop,1);
  Thread_24AFE78._event_onExec             := _DoEvent(WinExec_24AFC18._work_doExec,0);
  Thread_24AFE78._event_onSyncExec         := _DoEvent(Thread_24AFE78._work_doStop,1);
  Thread_24AFF10._event_onExec             := _DoEvent(WinExec_24AFCB0._work_doExec,0);
  Thread_24AFF10._event_onSyncExec         := _DoEvent(Thread_24AFF10._work_doStop,1);
  Button_24BB070._event_onClick            := _DoEvent(Hub_2529E40.doEvent,0);
  If_else_24AFFA8._event_onTrue            := _DoEvent(Hub_2528FD0.doEvent,0);
  If_else_24AFFA8._event_onFalse           := _DoEvent(If_else_24B0040._work_doCompare,0);
  If_else_24AFFA8._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24B0040._event_onTrue            := _DoEvent(Hub_2528FD0.doEvent,1);
  If_else_24B0040._event_onFalse           := _DoEvent(If_else_24B00D8._work_doCompare,0);
  If_else_24B0040._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  If_else_24B00D8._event_onTrue            := _DoEvent(Hub_2528FD0.doEvent,2);
  If_else_24B00D8._event_onFalse           := _DoEvent(If_else_24B0170._work_doCompare,0);
  If_else_24B00D8._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24B0170._event_onTrue            := _DoEvent(Hub_2528FD0.doEvent,3);
  If_else_24B0170._event_onFalse           := _DoEvent(Hub_2529A20.doEvent,1);
  If_else_24B0170._data_Op1                := _DoEvent(CheckBox_24B9590._var_Checked,0);
  Hub_2528FD0.onEvent[0]                   := _DoEvent(Hub_2529080.doEvent,0);
  Hub_2529080.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,6);
  Hub_2529080.onEvent[1]                   := _DoEvent(If_else_24B0CB8._work_doCompare,0);
  Hub_2529080.onEvent[2]                   := _DoEvent(Hub_2529810.doEvent,0);
  Hub_2529080.onEvent[3]                   := _DoEvent(Hub_2529760.doEvent,0);
  Hub_2529080.onEvent[4]                   := _DoEvent(ChildForm_2528000.doWork,12);
  If_else_24B0468._event_onTrue            := _DoEvent(Hub_2529550.doEvent,0);
  If_else_24B0468._event_onFalse           := _DoEvent(Hub_25294A0.doEvent,0);
  If_else_24B0468._data_Op1                := _DoEvent(CheckBox_24B9770._var_Checked,0);
  If_else_24B0500._event_onTrue            := _DoEvent(Hub_25293F0.doEvent,0);
  If_else_24B0500._event_onFalse           := _DoEvent(Hub_2529340.doEvent,0);
  If_else_24B0500._data_Op1                := _DoEvent(CheckBox_24B9630._var_Checked,0);
  If_else_24B0598._event_onTrue            := _DoEvent(Hub_2529290.doEvent,0);
  If_else_24B0598._event_onFalse           := _DoEvent(Hub_25291E0.doEvent,0);
  If_else_24B0598._data_Op1                := _DoEvent(CheckBox_24B96D0._var_Checked,0);
  If_else_24B0630._event_onTrue            := _DoEvent(Hub_2529130.doEvent,0);
  If_else_24B0630._event_onFalse           := _DoEvent(Hub_2529600.doEvent,0);
  If_else_24B0630._data_Op1                := _DoEvent(CheckBox_24B9590._var_Checked,0);
  WinExec_24B06C8._event_onExec            := _DoEvent(Hub_2529600.doEvent,1);
  Thread_24B0760._event_onExec             := _DoEvent(WinExec_24B06C8._work_doExec,0);
  Thread_24B0760._event_onSyncExec         := _DoEvent(Thread_24B0760._work_doStop,1);
  Hub_2529130.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,11);
  Hub_2529130.onEvent[1]                   := _DoEvent(Thread_24B0760._work_doStart,0);
  Hub_25291E0.onEvent[0]                   := _DoEvent(If_else_24B0630._work_doCompare,0);
  WinExec_24B07F8._event_onExec            := _DoEvent(Hub_25291E0.doEvent,1);
  Thread_24B0890._event_onExec             := _DoEvent(WinExec_24B07F8._work_doExec,0);
  Thread_24B0890._event_onSyncExec         := _DoEvent(Thread_24B0890._work_doStop,1);
  Hub_2529290.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,10);
  Hub_2529290.onEvent[1]                   := _DoEvent(Thread_24B0890._work_doStart,0);
  Hub_2529340.onEvent[0]                   := _DoEvent(If_else_24B0598._work_doCompare,0);
  WinExec_24B0928._event_onExec            := _DoEvent(Hub_2529340.doEvent,1);
  Thread_24B09C0._event_onExec             := _DoEvent(WinExec_24B0928._work_doExec,0);
  Thread_24B09C0._event_onSyncExec         := _DoEvent(Thread_24B09C0._work_doStop,1);
  Hub_25293F0.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,9);
  Hub_25293F0.onEvent[1]                   := _DoEvent(Thread_24B09C0._work_doStart,0);
  Thread_24B0A58._event_onExec             := _DoEvent(WinExec_24B0AF0._work_doExec,0);
  Thread_24B0A58._event_onSyncExec         := _DoEvent(Thread_24B0A58._work_doStop,1);
  WinExec_24B0AF0._event_onExec            := _DoEvent(Hub_25294A0.doEvent,1);
  Hub_25294A0.onEvent[0]                   := _DoEvent(If_else_24B0500._work_doCompare,0);
  Hub_2529550.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,8);
  Hub_2529550.onEvent[1]                   := _DoEvent(Thread_24B0A58._work_doStart,0);
  Hub_2529600.onEvent[0]                   := _DoEvent(Hub_25296B0.doEvent,0);
  Hub_25296B0.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,7);
  Hub_25296B0.onEvent[1]                   := _DoEvent(Hub_25298C0.doEvent,1);
  Hub_25296B0.onEvent[2]                   := _DoEvent(Hub_2529970.doEvent,0);
  Hub_2529760.onEvent[0]                   := _DoEvent(Memory_24AFA50._work_doClear,1);
  Hub_2529810.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doMinimize,2);
  Hub_25298C0.onEvent[0]                   := _DoEvent(If_else_24B1930._work_doCompare,0);
  Hub_2529970.onEvent[0]                   := _DoEvent(Memory_24AF9B8._work_doClear,1);
  Hub_2529A20.onEvent[0]                   := _DoEvent(Message_24AECA8._work_doMessage,0);
  Hub_2529AD0.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doRestore,1);
  Hub_2529AD0.onEvent[1]                   := _DoEvent(ChildForm_2528000.doWork,13);
  Message_24B0B88._event_onMessage         := _DoEvent(Memory_24B0C20._work_doValue,0);
  Memory_24B0C20._event_onData             := _DoEvent(If_else_24AFFA8._work_doCompare,0);
  If_else_24B0CB8._event_onTrue            := _DoEvent(Hub_2529B80.doEvent,0);
  If_else_24B0CB8._event_onFalse           := _DoEvent(Hub_2529C30.doEvent,0);
  If_else_24B0CB8._data_Op1                := _DoEvent(Memory_24B0C20._var_Value,0);
  WinExec_24B0D50._event_onExec            := _DoEvent(Hub_2529C30.doEvent,1);
  Hub_2529B80.onEvent[0]                   := _DoEvent(ChildForm_2528000.doWork,14);
  Hub_2529B80.onEvent[1]                   := _DoEvent(Thread_24B0DE8._work_doStart,0);
  Thread_24B0DE8._event_onExec             := _DoEvent(WinExec_24B0D50._work_doExec,0);
  Thread_24B0DE8._event_onSyncExec         := _DoEvent(Thread_24B0DE8._work_doStop,1);
  Hub_2529C30.onEvent[0]                   := _DoEvent(If_else_24B0468._work_doCompare,0);
  Hub_2529CE0.onEvent[0]                   := _DoEvent(WinExec_24B0E80._work_doExec,0);
  Hub_2529CE0.onEvent[1]                   := _DoEvent(Switch_24B1048._work_doReset,1);
  Hub_2529D90.onEvent[0]                   := _DoEvent(Hub_252A7E0.doEvent,1);
  Hub_2529D90.onEvent[1]                   := _DoEvent(If_else_24AEF08._work_doCompare,0);
  Hub_2529D90.onEvent[2]                   := _DoEvent(Hub_2529CE0.doEvent,0);
  Hub_2529E40.onEvent[0]                   := _DoEvent(Hub_252A7E0.doEvent,2);
  Hub_2529E40.onEvent[1]                   := _DoEvent(Hub_2529CE0.doEvent,1);
  Hub_2529E40.onEvent[2]                   := _DoEvent(Message_24B0B88._work_doMessage,0);
  If_else_24B0F18._event_onTrue            := _DoEvent(Hub_252A050.doEvent,0);
  If_else_24B0F18._data_Op1                := _DoEvent(EventFromData_24B0FB0._var_GetData,0);
  Hub_2529EF0.onEvent[0]                   := _DoEvent(EventFromData_24B0FB0._work_doData,0);
  Hub_2529EF0.onEvent[1]                   := _DoEvent(If_else_24B0F18._work_doCompare,0);
  FileTools_24B10E0._event_onEnd           := _DoEvent(Hub_2529EF0.doEvent,0);
  Hub_2529FA0.onEvent[0]                   := _DoEvent(FileTools_24B10E0._work_doFileExists,3);
  Hub_2529FA0.onEvent[1]                   := _DoEvent(Hub_25288F0.doEvent,1);
  Hub_252A050.onEvent[0]                   := _DoEvent(Hub_252A100.doEvent,0);
  Hub_252A050.onEvent[1]                   := _DoEvent(Message_24B1178._work_doMessage,0);
  Hub_252A100.onEvent[0]                   := _DoEvent(Switch_24B1048._work_doOn,2);
  FileTools_24B1210._event_onEnd           := _DoEvent(Hub_252A1B0.doEvent,0);
  Hub_252A1B0.onEvent[0]                   := _DoEvent(EventFromData_24B12A8._work_doData,0);
  Hub_252A1B0.onEvent[1]                   := _DoEvent(If_else_24B1340._work_doCompare,0);
  If_else_24B1340._event_onTrue            := _DoEvent(Hub_252A260.doEvent,0);
  If_else_24B1340._data_Op1                := _DoEvent(EventFromData_24B12A8._var_GetData,0);
  Hub_252A260.onEvent[0]                   := _DoEvent(Hub_252A100.doEvent,1);
  Hub_252A260.onEvent[1]                   := _DoEvent(Message_24B13D8._work_doMessage,0);
  FileTools_24B1470._event_onEnd           := _DoEvent(Hub_252A310.doEvent,0);
  Hub_252A310.onEvent[0]                   := _DoEvent(EventFromData_24B1508._work_doData,0);
  Hub_252A310.onEvent[1]                   := _DoEvent(If_else_24B15A0._work_doCompare,0);
  If_else_24B15A0._event_onTrue            := _DoEvent(Hub_252A3C0.doEvent,0);
  If_else_24B15A0._data_Op1                := _DoEvent(EventFromData_24B1508._var_GetData,0);
  Hub_252A3C0.onEvent[0]                   := _DoEvent(Hub_252A100.doEvent,2);
  Hub_252A3C0.onEvent[1]                   := _DoEvent(Message_24B1638._work_doMessage,0);
  FileTools_24B16D0._event_onEnd           := _DoEvent(Hub_252A470.doEvent,0);
  Hub_252A470.onEvent[0]                   := _DoEvent(EventFromData_24B1768._work_doData,0);
  Hub_252A470.onEvent[1]                   := _DoEvent(If_else_24B1800._work_doCompare,0);
  If_else_24B1800._event_onTrue            := _DoEvent(Hub_252A520.doEvent,0);
  If_else_24B1800._data_Op1                := _DoEvent(EventFromData_24B1768._var_GetData,0);
  Hub_252A520.onEvent[0]                   := _DoEvent(Hub_252A100.doEvent,3);
  Hub_252A520.onEvent[1]                   := _DoEvent(Message_24B1898._work_doMessage,0);
  Hub_252A5D0.onEvent[0]                   := _DoEvent(FileTools_24B1210._work_doFileExists,3);
  Hub_252A5D0.onEvent[1]                   := _DoEvent(Hub_2528840.doEvent,1);
  Hub_252A680.onEvent[0]                   := _DoEvent(FileTools_24B16D0._work_doFileExists,3);
  Hub_252A680.onEvent[1]                   := _DoEvent(Hub_2528A50.doEvent,1);
  Hub_252A730.onEvent[0]                   := _DoEvent(FileTools_24B1470._work_doFileExists,3);
  Hub_252A730.onEvent[1]                   := _DoEvent(Hub_25289A0.doEvent,1);
  If_else_24B1930._event_onTrue            := _DoEvent(Message_24B19C8._work_doMessage,0);
  If_else_24B1930._event_onFalse           := _DoEvent(Hub_2529AD0.doEvent,1);
  If_else_24B1930._data_Op1                := _DoEvent(Switch_24B1048._var_State,0);
  Message_24B19C8._event_onMessage         := _DoEvent(Hub_2529AD0.doEvent,0);
  Hub_252A7E0.onEvent[0]                   := _DoEvent(MainForm_24B82D0._work_doCenterPos,4);
  Image_24B7AB0._prop_HintManager := nil;
  Image_24B7AB0._prop_Layout := nil;
  Button_24B7BF0._prop_HintManager := nil;
  Button_24B7BF0._prop_Layout := nil;
  MainForm_24B82D0._prop_HintManager := nil;
  MainForm_24B82D0._prop_Layout := nil;
  MainForm_24B82D0._prop_TransparentManager := nil;
  MainForm_24B82D0._prop_FormFastening := nil;
  ChildForm_25280B0.OnCreate := Create_hiChildForm_25280B0;
  CheckBox_24B9590._prop_HintManager := nil;
  CheckBox_24B9590._prop_Layout := nil;
  CheckBox_24B9630._prop_HintManager := nil;
  CheckBox_24B9630._prop_Layout := nil;
  CheckBox_24B96D0._prop_HintManager := nil;
  CheckBox_24B96D0._prop_Layout := nil;
  CheckBox_24B9770._prop_HintManager := nil;
  CheckBox_24B9770._prop_Layout := nil;
  Label_24B9810._prop_HintManager := nil;
  Label_24B9810._prop_Layout := nil;
  Button_24B98B0._prop_HintManager := nil;
  Button_24B98B0._prop_Layout := nil;
  ChildForm_2528000.OnCreate := Create_hiChildForm_2528000;
  Button_24BB070._prop_HintManager := nil;
  Button_24BB070._prop_Layout := nil;
  MainForm_24B82D0.Control.Tabulate;
end;

destructor TClassMainForm_24B82D0.Destroy;
begin
  Hub_252A7E0.Destroy;
  Message_24B19C8.Destroy;
  If_else_24B1930.Destroy;
  Hub_252A730.Destroy;
  Hub_252A680.Destroy;
  Hub_252A5D0.Destroy;
  Message_24B1898.Destroy;
  Hub_252A520.Destroy;
  If_else_24B1800.Destroy;
  EventFromData_24B1768.Destroy;
  Hub_252A470.Destroy;
  FileTools_24B16D0.Destroy;
  Message_24B1638.Destroy;
  Hub_252A3C0.Destroy;
  If_else_24B15A0.Destroy;
  EventFromData_24B1508.Destroy;
  Hub_252A310.Destroy;
  FileTools_24B1470.Destroy;
  Message_24B13D8.Destroy;
  Hub_252A260.Destroy;
  If_else_24B1340.Destroy;
  EventFromData_24B12A8.Destroy;
  Hub_252A1B0.Destroy;
  FileTools_24B1210.Destroy;
  Hub_252A100.Destroy;
  Hub_252A050.Destroy;
  Message_24B1178.Destroy;
  Hub_2529FA0.Destroy;
  Switch_24B1048.Destroy;
  FileTools_24B10E0.Destroy;
  Hub_2529EF0.Destroy;
  EventFromData_24B0FB0.Destroy;
  If_else_24B0F18.Destroy;
  WinExec_24B0E80.Destroy;
  Hub_2529E40.Destroy;
  Hub_2529D90.Destroy;
  Hub_2529CE0.Destroy;
  Hub_2529C30.Destroy;
  Thread_24B0DE8.Destroy;
  Hub_2529B80.Destroy;
  WinExec_24B0D50.Destroy;
  If_else_24B0CB8.Destroy;
  Memory_24B0C20.Destroy;
  Message_24B0B88.Destroy;
  Hub_2529AD0.Destroy;
  Hub_2529A20.Destroy;
  Hub_2529970.Destroy;
  Hub_25298C0.Destroy;
  Hub_2529810.Destroy;
  Hub_2529760.Destroy;
  Hub_25296B0.Destroy;
  Hub_2529600.Destroy;
  Hub_2529550.Destroy;
  Hub_25294A0.Destroy;
  WinExec_24B0AF0.Destroy;
  Thread_24B0A58.Destroy;
  Hub_25293F0.Destroy;
  Thread_24B09C0.Destroy;
  WinExec_24B0928.Destroy;
  Hub_2529340.Destroy;
  Hub_2529290.Destroy;
  Thread_24B0890.Destroy;
  WinExec_24B07F8.Destroy;
  Hub_25291E0.Destroy;
  Hub_2529130.Destroy;
  Thread_24B0760.Destroy;
  WinExec_24B06C8.Destroy;
  If_else_24B0630.Destroy;
  If_else_24B0598.Destroy;
  If_else_24B0500.Destroy;
  If_else_24B0468.Destroy;
  Hub_2529080.Destroy;
  Hub_2528FD0.Destroy;
  If_else_24B0170.Destroy;
  If_else_24B00D8.Destroy;
  If_else_24B0040.Destroy;
  If_else_24AFFA8.Destroy;
  Button_24BB070.Destroy;
  Thread_24AFF10.Destroy;
  Thread_24AFE78.Destroy;
  Thread_24AFDE0.Destroy;
  Thread_24AFD48.Destroy;
  WinExec_24AFCB0.Destroy;
  WinExec_24AFC18.Destroy;
  WinExec_24AFB80.Destroy;
  WinExec_24AFAE8.Destroy;
  Hub_2528F20.Destroy;
  Memory_24AFA50.Destroy;
  Memory_24AF9B8.Destroy;
  Hub_2528E70.Destroy;
  Hub_2528DC0.Destroy;
  Hub_2528D10.Destroy;
  Hub_2528C60.Destroy;
  Hub_2528BB0.Destroy;
  Hub_2528B00.Destroy;
  Hub_2528A50.Destroy;
  If_else_24AF920.Destroy;
  Hub_25289A0.Destroy;
  Hub_25288F0.Destroy;
  If_else_24AF888.Destroy;
  If_else_24AF7F0.Destroy;
  Hub_2528840.Destroy;
  If_else_24AF758.Destroy;
  ChildForm_2528000.Destroy;
  Hub_2528210.Destroy;
  If_else_24AEF08.Destroy;
  If_else_24AEE70.Destroy;
  If_else_24AEDD8.Destroy;
  If_else_24AED40.Destroy;
  Message_24AECA8.Destroy;
  Button_24B98B0.Destroy;
  Label_24B9810.Destroy;
  CheckBox_24B9770.Destroy;
  CheckBox_24B96D0.Destroy;
  CheckBox_24B9630.Destroy;
  CheckBox_24B9590.Destroy;
  ChildForm_25280B0.Destroy;
  Button_24B7BF0.Destroy;
  Image_24B7AB0.Destroy;
  MainForm_24B82D0.Destroy;
  inherited;
end;

end.
