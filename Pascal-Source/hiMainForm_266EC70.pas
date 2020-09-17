unit hiMainForm_266EC70;

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
  hiChildForm_26D84D0,
  hiChildForm_26D8370,
kol,Share;

type
  TClassMainForm_266EC70 = class
   public
  Image_266E450:THIImage;
  Button_266E590:THIButton;
  MainForm_266EC70:THIMainForm;
  ChildForm_26D84D0:THIChildForm;
  CheckBox_266FE90:THICheckBox;
  CheckBox_266FF30:THICheckBox;
  CheckBox_266FFD0:THICheckBox;
  CheckBox_2670070:THICheckBox;
  Label_2670110:THILabel;
  Button_26701B0:THIButton;
  Message_265EB78:THIMessage;
  If_else_265ECA8:THIIf_else;
  If_else_265ED40:THIIf_else;
  If_else_265EDD8:THIIf_else;
  If_else_265EE70:THIIf_else;
  Hub_26D8630:THIHub;
  ChildForm_26D8370:THIChildForm;
  Message_265F4F8:THIMessage;
  If_else_265F590:THIIf_else;
  Hub_26D8840:THIHub;
  If_else_265F628:THIIf_else;
  If_else_265F6C0:THIIf_else;
  Hub_26D88F0:THIHub;
  Hub_26D89A0:THIHub;
  If_else_265F758:THIIf_else;
  Hub_26D8A50:THIHub;
  Hub_26D8B00:THIHub;
  Hub_26D8BB0:THIHub;
  Hub_26D8C60:THIHub;
  Hub_26D8D10:THIHub;
  Hub_26D8DC0:THIHub;
  Hub_26D8E70:THIHub;
  Memory_265F7F0:THIMemory;
  Memory_265F888:THIMemory;
  Hub_26D8F20:THIHub;
  WinExec_265F920:THIWinExec;
  WinExec_265F9B8:THIWinExec;
  WinExec_265FA50:THIWinExec;
  WinExec_265FAE8:THIWinExec;
  Thread_265FB80:THIThread;
  Thread_265FC18:THIThread;
  Thread_265FCB0:THIThread;
  Thread_265FD48:THIThread;
    constructor Create;
    destructor Destroy; override;
  end;

var
  ClassMain:TClassMainForm_266EC70;

implementation

constructor TClassMainForm_266EC70.Create;
begin
  inherited;
  ClassMain := self;
 //MainForm_266EC70 - Main
  MainForm_266EC70 := THIMainForm.Create(nil);
  with MainForm_266EC70 do begin
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
    _prop_KeyPreview := False;
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
  Image_266E450 := THIImage.Create(MainForm_266EC70.Control);
  with Image_266E450 do begin
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
  Button_266E590 := THIButton.Create(MainForm_266EC70.Control);
  with Button_266E590 do begin
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
  ChildForm_26D84D0 := THIChildForm.Create(MainForm_266EC70.Control);
  with ChildForm_26D84D0 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for CheckBox;
  CheckBox_266FE90 := THICheckBox.Create(MainForm_266EC70.Control);
  with CheckBox_266FE90 do begin
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
  CheckBox_266FF30 := THICheckBox.Create(MainForm_266EC70.Control);
  with CheckBox_266FF30 do begin
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
  CheckBox_266FFD0 := THICheckBox.Create(MainForm_266EC70.Control);
  with CheckBox_266FFD0 do begin
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
  CheckBox_2670070 := THICheckBox.Create(MainForm_266EC70.Control);
  with CheckBox_2670070 do begin
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
  Label_2670110 := THILabel.Create(MainForm_266EC70.Control);
  with Label_2670110 do begin
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
  Button_26701B0 := THIButton.Create(MainForm_266EC70.Control);
  with Button_26701B0 do begin
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
  Message_265EB78 := THIMessage.Create;
  with Message_265EB78 do begin
    _prop_Message := PChar('You dont select components. Please select.'#0);
    _prop_Caption := PChar(#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_265ECA8 := THIIf_else.Create;
  with If_else_265ECA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_265ED40 := THIIf_else.Create;
  with If_else_265ED40 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_265EDD8 := THIIf_else.Create;
  with If_else_265EDD8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_265EE70 := THIIf_else.Create;
  with If_else_265EE70 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_26D8630 := THIHub.Create;
  with Hub_26D8630 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for ChildForm;
  ChildForm_26D8370 := THIChildForm.Create(MainForm_266EC70.Control);
  with ChildForm_26D8370 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for Message;
  Message_265F4F8 := THIMessage.Create;
  with Message_265F4F8 do begin
    _prop_Message := PChar('Success'#0);
    _prop_Caption := PChar('Success'#0);
    _prop_Type := 0;
    _prop_Icon := 4;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_265F590 := THIIf_else.Create;
  with If_else_265F590 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_26D8840 := THIHub.Create;
  with Hub_26D8840 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_265F628 := THIIf_else.Create;
  with If_else_265F628 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_265F6C0 := THIIf_else.Create;
  with If_else_265F6C0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_26D88F0 := THIHub.Create;
  with Hub_26D88F0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_26D89A0 := THIHub.Create;
  with Hub_26D89A0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_265F758 := THIIf_else.Create;
  with If_else_265F758 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_26D8A50 := THIHub.Create;
  with Hub_26D8A50 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_26D8B00 := THIHub.Create;
  with Hub_26D8B00 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_26D8BB0 := THIHub.Create;
  with Hub_26D8BB0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 4;
  end;
//Init for Hub;
  Hub_26D8C60 := THIHub.Create;
  with Hub_26D8C60 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_26D8D10 := THIHub.Create;
  with Hub_26D8D10 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_26D8DC0 := THIHub.Create;
  with Hub_26D8DC0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_26D8E70 := THIHub.Create;
  with Hub_26D8E70 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_265F7F0 := THIMemory.Create;
  with Memory_265F7F0 do begin
    _prop_Default := _DoData(1);
  end;
//Init for Memory;
  Memory_265F888 := THIMemory.Create;
  with Memory_265F888 do begin
    _prop_Default := _DoData(0);
  end;
//Init for Hub;
  Hub_26D8F20 := THIHub.Create;
  with Hub_26D8F20 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_265F920 := THIWinExec.Create;
  with WinExec_265F920 do begin
    _prop_Param := PChar('/c microsoft_store.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_265F9B8 := THIWinExec.Create;
  with WinExec_265F9B8 do begin
    _prop_Param := PChar('/c xbox_identity_provider.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_265FA50 := THIWinExec.Create;
  with WinExec_265FA50 do begin
    _prop_Param := PChar('/c store_purchase_app.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_265FAE8 := THIWinExec.Create;
  with WinExec_265FAE8 do begin
    _prop_Param := PChar('/c desktop_app_installer.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_265FB80 := THIThread.Create;
  with Thread_265FB80 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_265FC18 := THIThread.Create;
  with Thread_265FC18 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_265FCB0 := THIThread.Create;
  with Thread_265FCB0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_265FD48 := THIThread.Create;
  with Thread_265FD48 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
 //%multi%
 //Make all connection in scheme
  Button_266E590._event_onClick            := _DoEvent(ChildForm_26D84D0.doWork,0);
  MainForm_266EC70._event_onCreate         := _DoEvent(MainForm_266EC70._work_doCenterPos,4);
  Button_26701B0._event_onClick            := _DoEvent(If_else_265EE70._work_doCompare,0);
  If_else_265ECA8._event_onTrue            := _DoEvent(Hub_26D8630.doEvent,3);
  If_else_265ECA8._event_onFalse           := _DoEvent(Message_265EB78._work_doMessage,0);
  If_else_265ECA8._data_Op1                := _DoEvent(CheckBox_266FE90._var_Checked,0);
  If_else_265ED40._event_onTrue            := _DoEvent(Hub_26D8630.doEvent,2);
  If_else_265ED40._event_onFalse           := _DoEvent(If_else_265ECA8._work_doCompare,0);
  If_else_265ED40._data_Op1                := _DoEvent(CheckBox_266FFD0._var_Checked,0);
  If_else_265EDD8._event_onTrue            := _DoEvent(Hub_26D8630.doEvent,1);
  If_else_265EDD8._event_onFalse           := _DoEvent(If_else_265ED40._work_doCompare,0);
  If_else_265EDD8._data_Op1                := _DoEvent(CheckBox_266FF30._var_Checked,0);
  If_else_265EE70._event_onTrue            := _DoEvent(Hub_26D8630.doEvent,0);
  If_else_265EE70._event_onFalse           := _DoEvent(If_else_265EDD8._work_doCompare,0);
  If_else_265EE70._data_Op1                := _DoEvent(CheckBox_2670070._var_Checked,0);
  Hub_26D8630.onEvent[0]                   := _DoEvent(Hub_26D8BB0.doEvent,0);
  Message_265F4F8._event_onMessage         := _DoEvent(MainForm_266EC70._work_doRestore,1);
  If_else_265F590._event_onTrue            := _DoEvent(Hub_26D8DC0.doEvent,0);
  If_else_265F590._event_onFalse           := _DoEvent(Hub_26D8A50.doEvent,0);
  If_else_265F590._data_Op1                := _DoEvent(CheckBox_266FE90._var_Checked,0);
  Hub_26D8840.onEvent[0]                   := _DoEvent(If_else_265F590._work_doCompare,0);
  If_else_265F628._event_onTrue            := _DoEvent(Hub_26D8C60.doEvent,0);
  If_else_265F628._event_onFalse           := _DoEvent(Hub_26D88F0.doEvent,0);
  If_else_265F628._data_Op1                := _DoEvent(CheckBox_2670070._var_Checked,0);
  If_else_265F6C0._event_onTrue            := _DoEvent(Hub_26D8D10.doEvent,0);
  If_else_265F6C0._event_onFalse           := _DoEvent(Hub_26D89A0.doEvent,0);
  If_else_265F6C0._data_Op1                := _DoEvent(CheckBox_266FF30._var_Checked,0);
  Hub_26D88F0.onEvent[0]                   := _DoEvent(If_else_265F6C0._work_doCompare,0);
  Hub_26D89A0.onEvent[0]                   := _DoEvent(If_else_265F758._work_doCompare,0);
  If_else_265F758._event_onTrue            := _DoEvent(Hub_26D8E70.doEvent,0);
  If_else_265F758._event_onFalse           := _DoEvent(Hub_26D8840.doEvent,0);
  If_else_265F758._data_Op1                := _DoEvent(CheckBox_266FFD0._var_Checked,0);
  Hub_26D8A50.onEvent[0]                   := _DoEvent(Hub_26D8B00.doEvent,0);
  Hub_26D8B00.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,1);
  Hub_26D8B00.onEvent[1]                   := _DoEvent(Message_265F4F8._work_doMessage,0);
  Hub_26D8B00.onEvent[2]                   := _DoEvent(Memory_265F7F0._work_doClear,1);
  Hub_26D8BB0.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,0);
  Hub_26D8BB0.onEvent[1]                   := _DoEvent(If_else_265F628._work_doCompare,0);
  Hub_26D8BB0.onEvent[2]                   := _DoEvent(MainForm_266EC70._work_doMinimize,2);
  Hub_26D8BB0.onEvent[3]                   := _DoEvent(Memory_265F888._work_doClear,1);
  Hub_26D8C60.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,2);
  Hub_26D8C60.onEvent[1]                   := _DoEvent(Thread_265FD48._work_doStart,0);
  Hub_26D8D10.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,3);
  Hub_26D8D10.onEvent[1]                   := _DoEvent(Thread_265FCB0._work_doStart,0);
  Hub_26D8DC0.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,5);
  Hub_26D8DC0.onEvent[1]                   := _DoEvent(Thread_265FB80._work_doStart,0);
  Hub_26D8E70.onEvent[0]                   := _DoEvent(ChildForm_26D8370.doWork,4);
  Hub_26D8E70.onEvent[1]                   := _DoEvent(Thread_265FC18._work_doStart,0);
  Memory_265F7F0._event_onData             := _DoEvent(Hub_26D8F20.doEvent,1);
  Memory_265F888._event_onData             := _DoEvent(Hub_26D8F20.doEvent,0);
  Hub_26D8F20.onEvent[0]                   := _DoEvent(MainForm_266EC70._work_doEnabled,5);
  WinExec_265F920._event_onExec            := _DoEvent(Hub_26D8840.doEvent,1);
  WinExec_265F9B8._event_onExec            := _DoEvent(Hub_26D8A50.doEvent,1);
  WinExec_265FA50._event_onExec            := _DoEvent(Hub_26D89A0.doEvent,1);
  WinExec_265FAE8._event_onExec            := _DoEvent(Hub_26D88F0.doEvent,1);
  Thread_265FB80._event_onExec             := _DoEvent(WinExec_265F9B8._work_doExec,0);
  Thread_265FB80._event_onSyncExec         := _DoEvent(Thread_265FB80._work_doStop,1);
  Thread_265FC18._event_onExec             := _DoEvent(WinExec_265F920._work_doExec,0);
  Thread_265FC18._event_onSyncExec         := _DoEvent(Thread_265FC18._work_doStop,1);
  Thread_265FCB0._event_onExec             := _DoEvent(WinExec_265FA50._work_doExec,0);
  Thread_265FCB0._event_onSyncExec         := _DoEvent(Thread_265FCB0._work_doStop,1);
  Thread_265FD48._event_onExec             := _DoEvent(WinExec_265FAE8._work_doExec,0);
  Thread_265FD48._event_onSyncExec         := _DoEvent(Thread_265FD48._work_doStop,1);
  Image_266E450._prop_HintManager := nil;
  Image_266E450._prop_Layout := nil;
  Button_266E590._prop_HintManager := nil;
  Button_266E590._prop_Layout := nil;
  MainForm_266EC70._prop_HintManager := nil;
  MainForm_266EC70._prop_Layout := nil;
  MainForm_266EC70._prop_TransparentManager := nil;
  MainForm_266EC70._prop_FormFastening := nil;
  ChildForm_26D84D0.OnCreate := Create_hiChildForm_26D84D0;
  CheckBox_266FE90._prop_HintManager := nil;
  CheckBox_266FE90._prop_Layout := nil;
  CheckBox_266FF30._prop_HintManager := nil;
  CheckBox_266FF30._prop_Layout := nil;
  CheckBox_266FFD0._prop_HintManager := nil;
  CheckBox_266FFD0._prop_Layout := nil;
  CheckBox_2670070._prop_HintManager := nil;
  CheckBox_2670070._prop_Layout := nil;
  Label_2670110._prop_HintManager := nil;
  Label_2670110._prop_Layout := nil;
  Button_26701B0._prop_HintManager := nil;
  Button_26701B0._prop_Layout := nil;
  ChildForm_26D8370.OnCreate := Create_hiChildForm_26D8370;
  MainForm_266EC70.Control.Tabulate;
end;

destructor TClassMainForm_266EC70.Destroy;
begin
  Thread_265FD48.Destroy;
  Thread_265FCB0.Destroy;
  Thread_265FC18.Destroy;
  Thread_265FB80.Destroy;
  WinExec_265FAE8.Destroy;
  WinExec_265FA50.Destroy;
  WinExec_265F9B8.Destroy;
  WinExec_265F920.Destroy;
  Hub_26D8F20.Destroy;
  Memory_265F888.Destroy;
  Memory_265F7F0.Destroy;
  Hub_26D8E70.Destroy;
  Hub_26D8DC0.Destroy;
  Hub_26D8D10.Destroy;
  Hub_26D8C60.Destroy;
  Hub_26D8BB0.Destroy;
  Hub_26D8B00.Destroy;
  Hub_26D8A50.Destroy;
  If_else_265F758.Destroy;
  Hub_26D89A0.Destroy;
  Hub_26D88F0.Destroy;
  If_else_265F6C0.Destroy;
  If_else_265F628.Destroy;
  Hub_26D8840.Destroy;
  If_else_265F590.Destroy;
  Message_265F4F8.Destroy;
  ChildForm_26D8370.Destroy;
  Hub_26D8630.Destroy;
  If_else_265EE70.Destroy;
  If_else_265EDD8.Destroy;
  If_else_265ED40.Destroy;
  If_else_265ECA8.Destroy;
  Message_265EB78.Destroy;
  Button_26701B0.Destroy;
  Label_2670110.Destroy;
  CheckBox_2670070.Destroy;
  CheckBox_266FFD0.Destroy;
  CheckBox_266FF30.Destroy;
  CheckBox_266FE90.Destroy;
  ChildForm_26D84D0.Destroy;
  Button_266E590.Destroy;
  Image_266E450.Destroy;
  MainForm_266EC70.Destroy;
  inherited;
end;

end.
