unit hiMainForm_8C37F10;

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
  hiChildForm_8CA7F50,
  hiChildForm_8CA7EA0,
kol,Share;

type
  TClassMainForm_8C37F10 = class
   public
  Image_8C376F0:THIImage;
  Button_8C37830:THIButton;
  MainForm_8C37F10:THIMainForm;
  ChildForm_8CA7F50:THIChildForm;
  CheckBox_8C38E10:THICheckBox;
  CheckBox_8C38EB0:THICheckBox;
  CheckBox_8C38F50:THICheckBox;
  CheckBox_8C38FF0:THICheckBox;
  Label_8C39090:THILabel;
  Button_8C39130:THIButton;
  Message_8C2EB78:THIMessage;
  If_else_8C2EC10:THIIf_else;
  If_else_8C2ECA8:THIIf_else;
  If_else_8C2ED40:THIIf_else;
  If_else_8C2EDD8:THIIf_else;
  Hub_8CA80B0:THIHub;
  ChildForm_8CA7EA0:THIChildForm;
  Message_8C2F460:THIMessage;
  If_else_8C2F4F8:THIIf_else;
  Hub_8CA82C0:THIHub;
  If_else_8C2F590:THIIf_else;
  If_else_8C2F628:THIIf_else;
  Hub_8CA8370:THIHub;
  Hub_8CA8420:THIHub;
  If_else_8C2F6C0:THIIf_else;
  Hub_8CA84D0:THIHub;
  Hub_8CA8580:THIHub;
  Hub_8CA8630:THIHub;
  Hub_8CA86E0:THIHub;
  Hub_8CA8790:THIHub;
  Hub_8CA8840:THIHub;
  Hub_8CA88F0:THIHub;
  Memory_8C2F758:THIMemory;
  Memory_8C2F7F0:THIMemory;
  Hub_8CA89A0:THIHub;
  WinExec_8C2F888:THIWinExec;
  WinExec_8C2F920:THIWinExec;
  WinExec_8C2F9B8:THIWinExec;
  WinExec_8C2FA50:THIWinExec;
  Thread_8C2FAE8:THIThread;
  Thread_8C2FB80:THIThread;
  Thread_8C2FC18:THIThread;
  Thread_8C2FCB0:THIThread;
    constructor Create;
    destructor Destroy; override;
  end;

var
  ClassMain:TClassMainForm_8C37F10;

implementation

constructor TClassMainForm_8C37F10.Create;
begin
  inherited;
  ClassMain := self;
 //MainForm_8C37F10 - Main
  MainForm_8C37F10 := THIMainForm.Create(nil);
  with MainForm_8C37F10 do begin
    ManFlags := 0;
    _prop_Left := 0;
    _prop_Top := 0;
    _prop_Width := 560;
    _prop_Height := 233;
    _prop_Align := caNone;
    _prop_Color := -16777196;
    _prop_Font := hiCreateFont('Segoe UI',8,0,0,204);
    _prop_ParentFont := False;
    _prop_Visible := True;
    _prop_Enabled := True;
    _prop_Cursor := crDefault;
    _prop_TabOrder := 0;
    _prop_Ctl3D := 1;
    _prop_WinStyle := 1;
    _prop_Name := PChar(#0);
    _prop_Hint := PChar(#0);
    _prop_WidthScale := 0;
    _prop_HeightScale := 0;
    _prop_AlphaBlendValue := 255;
    _prop_Caption := PChar('Microsoft Store Installer'#0);
    _prop_BorderStyle := 1;
    _prop_WindowsState := 0;
    _prop_Icon := LoadIcon(hInstance,'ICON0');
    _prop_TaskBar := 0;
    _prop_DragForm := False;
    _prop_KeyPreview := False;
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
  Image_8C376F0 := THIImage.Create(MainForm_8C37F10.Control);
  with Image_8C376F0 do begin
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
  Button_8C37830 := THIButton.Create(MainForm_8C37F10.Control);
  with Button_8C37830 do begin
    ManFlags := 0;
    _prop_Left := 385;
    _prop_Top := 125;
    _prop_Width := 75;
    _prop_Height := 30;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',16,0,0,204);
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
    _prop_Caption := PChar('About'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for ChildForm;
  ChildForm_8CA7F50 := THIChildForm.Create(MainForm_8C37F10.Control);
  with ChildForm_8CA7F50 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for CheckBox;
  CheckBox_8C38E10 := THICheckBox.Create(MainForm_8C37F10.Control);
  with CheckBox_8C38E10 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 140;
    _prop_Width := 135;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Xbox Identity Provider'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_8C38EB0 := THICheckBox.Create(MainForm_8C37F10.Control);
  with CheckBox_8C38EB0 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 90;
    _prop_Width := 120;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Store Purchase App'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_8C38F50 := THICheckBox.Create(MainForm_8C37F10.Control);
  with CheckBox_8C38F50 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 115;
    _prop_Width := 100;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Windows Store'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for CheckBox;
  CheckBox_8C38FF0 := THICheckBox.Create(MainForm_8C37F10.Control);
  with CheckBox_8C38FF0 do begin
    ManFlags := 0;
    _prop_Left := 195;
    _prop_Top := 65;
    _prop_Width := 135;
    _prop_Height := 20;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Transparent := False;
    _prop_Checked := 0;
    _prop_Caption := PChar('Desktop App Installer'#0);
    _prop_Flat := True;
    Init;
  end;
//Init for Label;
  Label_8C39090 := THILabel.Create(MainForm_8C37F10.Control);
  with Label_8C39090 do begin
    ManFlags := 0;
    _prop_Left := 250;
    _prop_Top := 45;
    _prop_Width := 25;
    _prop_Height := 17;
    _prop_Align := caNone;
    _prop_Color := 16777215;
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
    _prop_Caption := PChar('Add'#0);
    _prop_AutoSize := True;
    _prop_Alignment := taLeft;
    _prop_ColorHover := 0;
    _prop_Underline := False;
    Init;
  end;
//Init for Button;
  Button_8C39130 := THIButton.Create(MainForm_8C37F10.Control);
  with Button_8C39130 do begin
    ManFlags := 0;
    _prop_Left := 385;
    _prop_Top := 60;
    _prop_Width := 75;
    _prop_Height := 30;
    _prop_Align := caNone;
    _prop_Font := hiCreateFont('Segoe UI',16,0,0,204);
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
    _prop_Caption := PChar('Install'#0);
    _prop_Flat := True;
    _prop_DefaultBtn := False;
    Init;
  end;
//Init for Message;
  Message_8C2EB78 := THIMessage.Create;
  with Message_8C2EB78 do begin
    _prop_Message := PChar('You dont select components. Please select.'#0);
    _prop_Caption := PChar(#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_8C2EC10 := THIIf_else.Create;
  with If_else_8C2EC10 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_8C2ECA8 := THIIf_else.Create;
  with If_else_8C2ECA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_8C2ED40 := THIIf_else.Create;
  with If_else_8C2ED40 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_8C2EDD8 := THIIf_else.Create;
  with If_else_8C2EDD8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_8CA80B0 := THIHub.Create;
  with Hub_8CA80B0 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for ChildForm;
  ChildForm_8CA7EA0 := THIChildForm.Create(MainForm_8C37F10.Control);
  with ChildForm_8CA7EA0 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for Message;
  Message_8C2F460 := THIMessage.Create;
  with Message_8C2F460 do begin
    _prop_Message := PChar('Success'#0);
    _prop_Caption := PChar('Success'#0);
    _prop_Type := 0;
    _prop_Icon := 4;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_8C2F4F8 := THIIf_else.Create;
  with If_else_8C2F4F8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_8CA82C0 := THIHub.Create;
  with Hub_8CA82C0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_8C2F590 := THIIf_else.Create;
  with If_else_8C2F590 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_8C2F628 := THIIf_else.Create;
  with If_else_8C2F628 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_8CA8370 := THIHub.Create;
  with Hub_8CA8370 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_8CA8420 := THIHub.Create;
  with Hub_8CA8420 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_8C2F6C0 := THIIf_else.Create;
  with If_else_8C2F6C0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_8CA84D0 := THIHub.Create;
  with Hub_8CA84D0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_8CA8580 := THIHub.Create;
  with Hub_8CA8580 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_8CA8630 := THIHub.Create;
  with Hub_8CA8630 do begin
    _prop_InCount := 1;
    _prop_OutCount := 4;
  end;
//Init for Hub;
  Hub_8CA86E0 := THIHub.Create;
  with Hub_8CA86E0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_8CA8790 := THIHub.Create;
  with Hub_8CA8790 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_8CA8840 := THIHub.Create;
  with Hub_8CA8840 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_8CA88F0 := THIHub.Create;
  with Hub_8CA88F0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_8C2F758 := THIMemory.Create;
  with Memory_8C2F758 do begin
    _prop_Default := _DoData(1);
  end;
//Init for Memory;
  Memory_8C2F7F0 := THIMemory.Create;
  with Memory_8C2F7F0 do begin
    _prop_Default := _DoData(0);
  end;
//Init for Hub;
  Hub_8CA89A0 := THIHub.Create;
  with Hub_8CA89A0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_8C2F888 := THIWinExec.Create;
  with WinExec_8C2F888 do begin
    _prop_Param := PChar('/c microsoft_store.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Wait;
  end;
//Init for WinExec;
  WinExec_8C2F920 := THIWinExec.Create;
  with WinExec_8C2F920 do begin
    _prop_Param := PChar('/c xbox_identity_provider.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Wait;
  end;
//Init for WinExec;
  WinExec_8C2F9B8 := THIWinExec.Create;
  with WinExec_8C2F9B8 do begin
    _prop_Param := PChar('/c store_purchase_app.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Wait;
  end;
//Init for WinExec;
  WinExec_8C2FA50 := THIWinExec.Create;
  with WinExec_8C2FA50 do begin
    _prop_Param := PChar('/c desktop_app_installer.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_Mode := 0;
    _prop_RunEvent := Wait;
  end;
//Init for Thread;
  Thread_8C2FAE8 := THIThread.Create;
  with Thread_8C2FAE8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_8C2FB80 := THIThread.Create;
  with Thread_8C2FB80 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_8C2FC18 := THIThread.Create;
  with Thread_8C2FC18 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_8C2FCB0 := THIThread.Create;
  with Thread_8C2FCB0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
 //%multi%
 //Make all connection in scheme
  Button_8C37830._event_onClick            := _DoEvent(ChildForm_8CA7F50.doWork,0);
  MainForm_8C37F10._event_onCreate         := _DoEvent(MainForm_8C37F10._work_doCenterPos,4);
  Button_8C39130._event_onClick            := _DoEvent(If_else_8C2EDD8._work_doCompare,0);
  If_else_8C2EC10._event_onTrue            := _DoEvent(Hub_8CA80B0.doEvent,3);
  If_else_8C2EC10._event_onFalse           := _DoEvent(Message_8C2EB78._work_doMessage,0);
  If_else_8C2EC10._data_Op1                := _DoEvent(CheckBox_8C38E10._var_Checked,0);
  If_else_8C2ECA8._event_onTrue            := _DoEvent(Hub_8CA80B0.doEvent,2);
  If_else_8C2ECA8._event_onFalse           := _DoEvent(If_else_8C2EC10._work_doCompare,0);
  If_else_8C2ECA8._data_Op1                := _DoEvent(CheckBox_8C38F50._var_Checked,0);
  If_else_8C2ED40._event_onTrue            := _DoEvent(Hub_8CA80B0.doEvent,1);
  If_else_8C2ED40._event_onFalse           := _DoEvent(If_else_8C2ECA8._work_doCompare,0);
  If_else_8C2ED40._data_Op1                := _DoEvent(CheckBox_8C38EB0._var_Checked,0);
  If_else_8C2EDD8._event_onTrue            := _DoEvent(Hub_8CA80B0.doEvent,0);
  If_else_8C2EDD8._event_onFalse           := _DoEvent(If_else_8C2ED40._work_doCompare,0);
  If_else_8C2EDD8._data_Op1                := _DoEvent(CheckBox_8C38FF0._var_Checked,0);
  Hub_8CA80B0.onEvent[0]                   := _DoEvent(Hub_8CA8630.doEvent,0);
  Message_8C2F460._event_onMessage         := _DoEvent(MainForm_8C37F10._work_doRestore,1);
  If_else_8C2F4F8._event_onTrue            := _DoEvent(Hub_8CA8840.doEvent,0);
  If_else_8C2F4F8._event_onFalse           := _DoEvent(Hub_8CA84D0.doEvent,0);
  If_else_8C2F4F8._data_Op1                := _DoEvent(CheckBox_8C38E10._var_Checked,0);
  Hub_8CA82C0.onEvent[0]                   := _DoEvent(If_else_8C2F4F8._work_doCompare,0);
  If_else_8C2F590._event_onTrue            := _DoEvent(Hub_8CA86E0.doEvent,0);
  If_else_8C2F590._event_onFalse           := _DoEvent(Hub_8CA8370.doEvent,0);
  If_else_8C2F590._data_Op1                := _DoEvent(CheckBox_8C38FF0._var_Checked,0);
  If_else_8C2F628._event_onTrue            := _DoEvent(Hub_8CA8790.doEvent,0);
  If_else_8C2F628._event_onFalse           := _DoEvent(Hub_8CA8420.doEvent,0);
  If_else_8C2F628._data_Op1                := _DoEvent(CheckBox_8C38EB0._var_Checked,0);
  Hub_8CA8370.onEvent[0]                   := _DoEvent(If_else_8C2F628._work_doCompare,0);
  Hub_8CA8420.onEvent[0]                   := _DoEvent(If_else_8C2F6C0._work_doCompare,0);
  If_else_8C2F6C0._event_onTrue            := _DoEvent(Hub_8CA88F0.doEvent,0);
  If_else_8C2F6C0._event_onFalse           := _DoEvent(Hub_8CA82C0.doEvent,0);
  If_else_8C2F6C0._data_Op1                := _DoEvent(CheckBox_8C38F50._var_Checked,0);
  Hub_8CA84D0.onEvent[0]                   := _DoEvent(Hub_8CA8580.doEvent,0);
  Hub_8CA8580.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,1);
  Hub_8CA8580.onEvent[1]                   := _DoEvent(Message_8C2F460._work_doMessage,0);
  Hub_8CA8580.onEvent[2]                   := _DoEvent(Memory_8C2F758._work_doClear,1);
  Hub_8CA8630.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,0);
  Hub_8CA8630.onEvent[1]                   := _DoEvent(If_else_8C2F590._work_doCompare,0);
  Hub_8CA8630.onEvent[2]                   := _DoEvent(MainForm_8C37F10._work_doMinimize,2);
  Hub_8CA8630.onEvent[3]                   := _DoEvent(Memory_8C2F7F0._work_doClear,1);
  Hub_8CA86E0.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,2);
  Hub_8CA86E0.onEvent[1]                   := _DoEvent(Thread_8C2FCB0._work_doStart,0);
  Hub_8CA8790.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,3);
  Hub_8CA8790.onEvent[1]                   := _DoEvent(Thread_8C2FC18._work_doStart,0);
  Hub_8CA8840.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,5);
  Hub_8CA8840.onEvent[1]                   := _DoEvent(Thread_8C2FAE8._work_doStart,0);
  Hub_8CA88F0.onEvent[0]                   := _DoEvent(ChildForm_8CA7EA0.doWork,4);
  Hub_8CA88F0.onEvent[1]                   := _DoEvent(Thread_8C2FB80._work_doStart,0);
  Memory_8C2F758._event_onData             := _DoEvent(Hub_8CA89A0.doEvent,1);
  Memory_8C2F7F0._event_onData             := _DoEvent(Hub_8CA89A0.doEvent,0);
  Hub_8CA89A0.onEvent[0]                   := _DoEvent(MainForm_8C37F10._work_doEnabled,5);
  WinExec_8C2F888._event_onExec            := _DoEvent(Hub_8CA82C0.doEvent,1);
  WinExec_8C2F920._event_onExec            := _DoEvent(Hub_8CA84D0.doEvent,1);
  WinExec_8C2F9B8._event_onExec            := _DoEvent(Hub_8CA8420.doEvent,1);
  WinExec_8C2FA50._event_onExec            := _DoEvent(Hub_8CA8370.doEvent,1);
  Thread_8C2FAE8._event_onExec             := _DoEvent(WinExec_8C2F920._work_doExec,0);
  Thread_8C2FAE8._event_onSyncExec         := _DoEvent(Thread_8C2FAE8._work_doStop,1);
  Thread_8C2FB80._event_onExec             := _DoEvent(WinExec_8C2F888._work_doExec,0);
  Thread_8C2FB80._event_onSyncExec         := _DoEvent(Thread_8C2FB80._work_doStop,1);
  Thread_8C2FC18._event_onExec             := _DoEvent(WinExec_8C2F9B8._work_doExec,0);
  Thread_8C2FC18._event_onSyncExec         := _DoEvent(Thread_8C2FC18._work_doStop,1);
  Thread_8C2FCB0._event_onExec             := _DoEvent(WinExec_8C2FA50._work_doExec,0);
  Thread_8C2FCB0._event_onSyncExec         := _DoEvent(Thread_8C2FCB0._work_doStop,1);
  Image_8C376F0._prop_HintManager := nil;
  Image_8C376F0._prop_Layout := nil;
  Button_8C37830._prop_HintManager := nil;
  Button_8C37830._prop_Layout := nil;
  MainForm_8C37F10._prop_HintManager := nil;
  MainForm_8C37F10._prop_Layout := nil;
  MainForm_8C37F10._prop_TransparentManager := nil;
  MainForm_8C37F10._prop_FormFastening := nil;
  ChildForm_8CA7F50.OnCreate := Create_hiChildForm_8CA7F50;
  CheckBox_8C38E10._prop_HintManager := nil;
  CheckBox_8C38E10._prop_Layout := nil;
  CheckBox_8C38EB0._prop_HintManager := nil;
  CheckBox_8C38EB0._prop_Layout := nil;
  CheckBox_8C38F50._prop_HintManager := nil;
  CheckBox_8C38F50._prop_Layout := nil;
  CheckBox_8C38FF0._prop_HintManager := nil;
  CheckBox_8C38FF0._prop_Layout := nil;
  Label_8C39090._prop_HintManager := nil;
  Label_8C39090._prop_Layout := nil;
  Button_8C39130._prop_HintManager := nil;
  Button_8C39130._prop_Layout := nil;
  ChildForm_8CA7EA0.OnCreate := Create_hiChildForm_8CA7EA0;
  MainForm_8C37F10.Control.Tabulate;
end;

destructor TClassMainForm_8C37F10.Destroy;
begin
  Thread_8C2FCB0.Destroy;
  Thread_8C2FC18.Destroy;
  Thread_8C2FB80.Destroy;
  Thread_8C2FAE8.Destroy;
  WinExec_8C2FA50.Destroy;
  WinExec_8C2F9B8.Destroy;
  WinExec_8C2F920.Destroy;
  WinExec_8C2F888.Destroy;
  Hub_8CA89A0.Destroy;
  Memory_8C2F7F0.Destroy;
  Memory_8C2F758.Destroy;
  Hub_8CA88F0.Destroy;
  Hub_8CA8840.Destroy;
  Hub_8CA8790.Destroy;
  Hub_8CA86E0.Destroy;
  Hub_8CA8630.Destroy;
  Hub_8CA8580.Destroy;
  Hub_8CA84D0.Destroy;
  If_else_8C2F6C0.Destroy;
  Hub_8CA8420.Destroy;
  Hub_8CA8370.Destroy;
  If_else_8C2F628.Destroy;
  If_else_8C2F590.Destroy;
  Hub_8CA82C0.Destroy;
  If_else_8C2F4F8.Destroy;
  Message_8C2F460.Destroy;
  ChildForm_8CA7EA0.Destroy;
  Hub_8CA80B0.Destroy;
  If_else_8C2EDD8.Destroy;
  If_else_8C2ED40.Destroy;
  If_else_8C2ECA8.Destroy;
  If_else_8C2EC10.Destroy;
  Message_8C2EB78.Destroy;
  Button_8C39130.Destroy;
  Label_8C39090.Destroy;
  CheckBox_8C38FF0.Destroy;
  CheckBox_8C38F50.Destroy;
  CheckBox_8C38EB0.Destroy;
  CheckBox_8C38E10.Destroy;
  ChildForm_8CA7F50.Destroy;
  Button_8C37830.Destroy;
  Image_8C376F0.Destroy;
  MainForm_8C37F10.Destroy;
  inherited;
end;

end.
