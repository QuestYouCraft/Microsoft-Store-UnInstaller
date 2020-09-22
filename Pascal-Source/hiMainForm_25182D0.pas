unit hiMainForm_25182D0;

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
  hiChildForm_2587F50,
  hiChildForm_2587EA0,
kol,Share;

type
  TClassMainForm_25182D0 = class
   public
  Image_2517AB0:THIImage;
  Button_2517BF0:THIButton;
  MainForm_25182D0:THIMainForm;
  ChildForm_2587F50:THIChildForm;
  CheckBox_2519630:THICheckBox;
  CheckBox_25196D0:THICheckBox;
  CheckBox_2519770:THICheckBox;
  CheckBox_2519810:THICheckBox;
  Label_25198B0:THILabel;
  Button_2519950:THIButton;
  Message_250EAE0:THIMessage;
  If_else_250EC10:THIIf_else;
  If_else_250ECA8:THIIf_else;
  If_else_250ED40:THIIf_else;
  If_else_250EDD8:THIIf_else;
  Hub_25880B0:THIHub;
  ChildForm_2587EA0:THIChildForm;
  Message_250F628:THIMessage;
  If_else_250F6C0:THIIf_else;
  Hub_25886E0:THIHub;
  If_else_250F758:THIIf_else;
  If_else_250F7F0:THIIf_else;
  Hub_2588790:THIHub;
  Hub_2588840:THIHub;
  If_else_250F888:THIIf_else;
  Hub_25888F0:THIHub;
  Hub_25889A0:THIHub;
  Hub_2588A50:THIHub;
  Hub_2588B00:THIHub;
  Hub_2588BB0:THIHub;
  Hub_2588C60:THIHub;
  Hub_2588D10:THIHub;
  Memory_250F920:THIMemory;
  Memory_250F9B8:THIMemory;
  Hub_2588DC0:THIHub;
  WinExec_250FA50:THIWinExec;
  WinExec_250FAE8:THIWinExec;
  WinExec_250FB80:THIWinExec;
  WinExec_250FC18:THIWinExec;
  Thread_250FCB0:THIThread;
  Thread_250FD48:THIThread;
  Thread_250FDE0:THIThread;
  Thread_250FE78:THIThread;
  Button_251B110:THIButton;
  If_else_250FF10:THIIf_else;
  If_else_250FFA8:THIIf_else;
  If_else_2510040:THIIf_else;
  If_else_25100D8:THIIf_else;
  Hub_2588E70:THIHub;
  Hub_2588F20:THIHub;
  If_else_25103D0:THIIf_else;
  If_else_2510468:THIIf_else;
  If_else_2510500:THIIf_else;
  If_else_2510598:THIIf_else;
  WinExec_2510630:THIWinExec;
  Thread_25106C8:THIThread;
  Hub_2588FD0:THIHub;
  Hub_2589080:THIHub;
  WinExec_2510760:THIWinExec;
  Thread_25107F8:THIThread;
  Hub_2589130:THIHub;
  Hub_25891E0:THIHub;
  WinExec_2510890:THIWinExec;
  Thread_2510928:THIThread;
  Hub_2589290:THIHub;
  Thread_25109C0:THIThread;
  WinExec_2510A58:THIWinExec;
  Hub_2589340:THIHub;
  Hub_25893F0:THIHub;
  Hub_25894A0:THIHub;
  Hub_2589550:THIHub;
  Hub_2589600:THIHub;
  Hub_25896B0:THIHub;
  Hub_2589760:THIHub;
  Hub_2589810:THIHub;
  Hub_25898C0:THIHub;
  Hub_2589970:THIHub;
  Message_2510AF0:THIMessage;
  Memory_2510B88:THIMemory;
  If_else_2510C20:THIIf_else;
  WinExec_2510CB8:THIWinExec;
  Hub_2589A20:THIHub;
  Thread_2510D50:THIThread;
  Hub_2589AD0:THIHub;
    constructor Create;
    destructor Destroy; override;
  end;

var
  ClassMain:TClassMainForm_25182D0;

implementation

constructor TClassMainForm_25182D0.Create;
begin
  inherited;
  ClassMain := self;
 //MainForm_25182D0 - Main
  MainForm_25182D0 := THIMainForm.Create(nil);
  with MainForm_25182D0 do begin
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
  Image_2517AB0 := THIImage.Create(MainForm_25182D0.Control);
  with Image_2517AB0 do begin
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
  Button_2517BF0 := THIButton.Create(MainForm_25182D0.Control);
  with Button_2517BF0 do begin
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
  ChildForm_2587F50 := THIChildForm.Create(MainForm_25182D0.Control);
  with ChildForm_2587F50 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for CheckBox;
  CheckBox_2519630 := THICheckBox.Create(MainForm_25182D0.Control);
  with CheckBox_2519630 do begin
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
  CheckBox_25196D0 := THICheckBox.Create(MainForm_25182D0.Control);
  with CheckBox_25196D0 do begin
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
  CheckBox_2519770 := THICheckBox.Create(MainForm_25182D0.Control);
  with CheckBox_2519770 do begin
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
  CheckBox_2519810 := THICheckBox.Create(MainForm_25182D0.Control);
  with CheckBox_2519810 do begin
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
  Label_25198B0 := THILabel.Create(MainForm_25182D0.Control);
  with Label_25198B0 do begin
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
  Button_2519950 := THIButton.Create(MainForm_25182D0.Control);
  with Button_2519950 do begin
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
  Message_250EAE0 := THIMessage.Create;
  with Message_250EAE0 do begin
    _prop_Message := PChar('You dont select components. Please select.'#0);
    _prop_Caption := PChar(#0);
    _prop_Type := 0;
    _prop_Icon := 1;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_250EC10 := THIIf_else.Create;
  with If_else_250EC10 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_250ECA8 := THIIf_else.Create;
  with If_else_250ECA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_250ED40 := THIIf_else.Create;
  with If_else_250ED40 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_250EDD8 := THIIf_else.Create;
  with If_else_250EDD8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25880B0 := THIHub.Create;
  with Hub_25880B0 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for ChildForm;
  ChildForm_2587EA0 := THIChildForm.Create(MainForm_25182D0.Control);
  with ChildForm_2587EA0 do begin
    _prop_FirstUsage := True;
    Init;
    ParentClass := Self;
    SetLength(Events,0);
    SetLength(Datas, 0);
  end;
//Init for Message;
  Message_250F628 := THIMessage.Create;
  with Message_250F628 do begin
    _prop_Message := PChar('Success'#0);
    _prop_Caption := PChar('Success'#0);
    _prop_Type := 0;
    _prop_Icon := 4;
    _prop_DefButton := 0;
  end;
//Init for If_else;
  If_else_250F6C0 := THIIf_else.Create;
  with If_else_250F6C0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25886E0 := THIHub.Create;
  with Hub_25886E0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_250F758 := THIIf_else.Create;
  with If_else_250F758 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_250F7F0 := THIIf_else.Create;
  with If_else_250F7F0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2588790 := THIHub.Create;
  with Hub_2588790 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588840 := THIHub.Create;
  with Hub_2588840 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for If_else;
  If_else_250F888 := THIIf_else.Create;
  with If_else_250F888 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_25888F0 := THIHub.Create;
  with Hub_25888F0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25889A0 := THIHub.Create;
  with Hub_25889A0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2588A50 := THIHub.Create;
  with Hub_2588A50 do begin
    _prop_InCount := 1;
    _prop_OutCount := 4;
  end;
//Init for Hub;
  Hub_2588B00 := THIHub.Create;
  with Hub_2588B00 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2588BB0 := THIHub.Create;
  with Hub_2588BB0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2588C60 := THIHub.Create;
  with Hub_2588C60 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2588D10 := THIHub.Create;
  with Hub_2588D10 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Memory;
  Memory_250F920 := THIMemory.Create;
  with Memory_250F920 do begin
    _prop_Default := _DoData(1);
  end;
//Init for Memory;
  Memory_250F9B8 := THIMemory.Create;
  with Memory_250F9B8 do begin
    _prop_Default := _DoData(0);
  end;
//Init for Hub;
  Hub_2588DC0 := THIHub.Create;
  with Hub_2588DC0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_250FA50 := THIWinExec.Create;
  with WinExec_250FA50 do begin
    _prop_Param := PChar('/c microsoft_store.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_250FAE8 := THIWinExec.Create;
  with WinExec_250FAE8 do begin
    _prop_Param := PChar('/c xbox_identity_provider.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_250FB80 := THIWinExec.Create;
  with WinExec_250FB80 do begin
    _prop_Param := PChar('/c store_purchase_app.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for WinExec;
  WinExec_250FC18 := THIWinExec.Create;
  with WinExec_250FC18 do begin
    _prop_Param := PChar('/c desktop_app_installer.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_250FCB0 := THIThread.Create;
  with Thread_250FCB0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_250FD48 := THIThread.Create;
  with Thread_250FD48 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_250FDE0 := THIThread.Create;
  with Thread_250FDE0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Thread;
  Thread_250FE78 := THIThread.Create;
  with Thread_250FE78 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Button;
  Button_251B110 := THIButton.Create(MainForm_25182D0.Control);
  with Button_251B110 do begin
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
  If_else_250FF10 := THIIf_else.Create;
  with If_else_250FF10 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_250FFA8 := THIIf_else.Create;
  with If_else_250FFA8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_2510040 := THIIf_else.Create;
  with If_else_2510040 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_25100D8 := THIIf_else.Create;
  with If_else_25100D8 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for Hub;
  Hub_2588E70 := THIHub.Create;
  with Hub_2588E70 do begin
    _prop_InCount := 4;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2588F20 := THIHub.Create;
  with Hub_2588F20 do begin
    _prop_InCount := 1;
    _prop_OutCount := 5;
  end;
//Init for If_else;
  If_else_25103D0 := THIIf_else.Create;
  with If_else_25103D0 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_2510468 := THIIf_else.Create;
  with If_else_2510468 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_2510500 := THIIf_else.Create;
  with If_else_2510500 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for If_else;
  If_else_2510598 := THIIf_else.Create;
  with If_else_2510598 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('1'#0));
  end;
//Init for WinExec;
  WinExec_2510630 := THIWinExec.Create;
  with WinExec_2510630 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.xboxidentityprovider* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_25106C8 := THIThread.Create;
  with Thread_25106C8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2588FD0 := THIHub.Create;
  with Hub_2588FD0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_2589080 := THIHub.Create;
  with Hub_2589080 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_2510760 := THIWinExec.Create;
  with WinExec_2510760 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.windowsstore* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_25107F8 := THIThread.Create;
  with Thread_25107F8 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2589130 := THIHub.Create;
  with Hub_2589130 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_25891E0 := THIHub.Create;
  with Hub_25891E0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for WinExec;
  WinExec_2510890 := THIWinExec.Create;
  with WinExec_2510890 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.storepurchaseapp* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Thread;
  Thread_2510928 := THIThread.Create;
  with Thread_2510928 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2589290 := THIHub.Create;
  with Hub_2589290 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_25109C0 := THIThread.Create;
  with Thread_25109C0 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for WinExec;
  WinExec_2510A58 := THIWinExec.Create;
  with WinExec_2510A58 do begin
    _prop_Param := PChar('-command get-appxpackage microsoft.desktopappinstaller* | remove-appxpackage'#0);
    _prop_FileName := PChar('powershell'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2589340 := THIHub.Create;
  with Hub_2589340 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25893F0 := THIHub.Create;
  with Hub_25893F0 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Hub;
  Hub_25894A0 := THIHub.Create;
  with Hub_25894A0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2589550 := THIHub.Create;
  with Hub_2589550 do begin
    _prop_InCount := 1;
    _prop_OutCount := 3;
  end;
//Init for Hub;
  Hub_2589600 := THIHub.Create;
  with Hub_2589600 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25896B0 := THIHub.Create;
  with Hub_25896B0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2589760 := THIHub.Create;
  with Hub_2589760 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2589810 := THIHub.Create;
  with Hub_2589810 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_25898C0 := THIHub.Create;
  with Hub_25898C0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
//Init for Hub;
  Hub_2589970 := THIHub.Create;
  with Hub_2589970 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Message;
  Message_2510AF0 := THIMessage.Create;
  with Message_2510AF0 do begin
    _prop_Message := PChar('Do you want to remove all libraries (for running UWP apps)?'#0);
    _prop_Caption := PChar('Remove libraries'#0);
    _prop_Type := 2;
    _prop_Icon := 2;
    _prop_DefButton := 0;
  end;
//Init for Memory;
  Memory_2510B88 := THIMemory.Create;
//Init for If_else;
  If_else_2510C20 := THIIf_else.Create;
  with If_else_2510C20 do begin
    _prop_Type := 0;
    _prop_Op2 := _DoData(PChar('6'#0));
  end;
//Init for WinExec;
  WinExec_2510CB8 := THIWinExec.Create;
  with WinExec_2510CB8 do begin
    _prop_Param := PChar('/c libraries.cmd'#0);
    _prop_FileName := PChar('cmd'#0);
    _prop_WorkingDir := PChar(#0);
    _prop_Mode := 0;
    _prop_RunEvent := 1;
    _prop_Action := PChar('open'#0);
  end;
//Init for Hub;
  Hub_2589A20 := THIHub.Create;
  with Hub_2589A20 do begin
    _prop_InCount := 1;
    _prop_OutCount := 2;
  end;
//Init for Thread;
  Thread_2510D50 := THIThread.Create;
  with Thread_2510D50 do begin
    _prop_Delay := 0;
    _prop_FastStop := True;
    _prop_BusyEvent := 0;
  end;
//Init for Hub;
  Hub_2589AD0 := THIHub.Create;
  with Hub_2589AD0 do begin
    _prop_InCount := 2;
    _prop_OutCount := 1;
  end;
 //%multi%
 //Make all connection in scheme
  Button_2517BF0._event_onClick            := _DoEvent(ChildForm_2587F50.doWork,0);
  MainForm_25182D0._event_onCreate         := _DoEvent(MainForm_25182D0._work_doCenterPos,4);
  Button_2519950._event_onClick            := _DoEvent(If_else_250EDD8._work_doCompare,0);
  If_else_250EC10._event_onTrue            := _DoEvent(Hub_25880B0.doEvent,3);
  If_else_250EC10._event_onFalse           := _DoEvent(Hub_25898C0.doEvent,0);
  If_else_250EC10._data_Op1                := _DoEvent(CheckBox_2519630._var_Checked,0);
  If_else_250ECA8._event_onTrue            := _DoEvent(Hub_25880B0.doEvent,2);
  If_else_250ECA8._event_onFalse           := _DoEvent(If_else_250EC10._work_doCompare,0);
  If_else_250ECA8._data_Op1                := _DoEvent(CheckBox_2519770._var_Checked,0);
  If_else_250ED40._event_onTrue            := _DoEvent(Hub_25880B0.doEvent,1);
  If_else_250ED40._event_onFalse           := _DoEvent(If_else_250ECA8._work_doCompare,0);
  If_else_250ED40._data_Op1                := _DoEvent(CheckBox_25196D0._var_Checked,0);
  If_else_250EDD8._event_onTrue            := _DoEvent(Hub_25880B0.doEvent,0);
  If_else_250EDD8._event_onFalse           := _DoEvent(If_else_250ED40._work_doCompare,0);
  If_else_250EDD8._data_Op1                := _DoEvent(CheckBox_2519810._var_Checked,0);
  Hub_25880B0.onEvent[0]                   := _DoEvent(Hub_2588A50.doEvent,0);
  Message_250F628._event_onMessage         := _DoEvent(Hub_2589970.doEvent,0);
  If_else_250F6C0._event_onTrue            := _DoEvent(Hub_2588C60.doEvent,0);
  If_else_250F6C0._event_onFalse           := _DoEvent(Hub_25888F0.doEvent,0);
  If_else_250F6C0._data_Op1                := _DoEvent(CheckBox_2519630._var_Checked,0);
  Hub_25886E0.onEvent[0]                   := _DoEvent(If_else_250F6C0._work_doCompare,0);
  If_else_250F758._event_onTrue            := _DoEvent(Hub_2588B00.doEvent,0);
  If_else_250F758._event_onFalse           := _DoEvent(Hub_2588790.doEvent,0);
  If_else_250F758._data_Op1                := _DoEvent(CheckBox_2519810._var_Checked,0);
  If_else_250F7F0._event_onTrue            := _DoEvent(Hub_2588BB0.doEvent,0);
  If_else_250F7F0._event_onFalse           := _DoEvent(Hub_2588840.doEvent,0);
  If_else_250F7F0._data_Op1                := _DoEvent(CheckBox_25196D0._var_Checked,0);
  Hub_2588790.onEvent[0]                   := _DoEvent(If_else_250F7F0._work_doCompare,0);
  Hub_2588840.onEvent[0]                   := _DoEvent(If_else_250F888._work_doCompare,0);
  If_else_250F888._event_onTrue            := _DoEvent(Hub_2588D10.doEvent,0);
  If_else_250F888._event_onFalse           := _DoEvent(Hub_25886E0.doEvent,0);
  If_else_250F888._data_Op1                := _DoEvent(CheckBox_2519770._var_Checked,0);
  Hub_25888F0.onEvent[0]                   := _DoEvent(Hub_25889A0.doEvent,0);
  Hub_25889A0.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,1);
  Hub_25889A0.onEvent[1]                   := _DoEvent(Hub_2589760.doEvent,0);
  Hub_25889A0.onEvent[2]                   := _DoEvent(Hub_2589810.doEvent,1);
  Hub_2588A50.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,0);
  Hub_2588A50.onEvent[1]                   := _DoEvent(If_else_250F758._work_doCompare,0);
  Hub_2588A50.onEvent[2]                   := _DoEvent(Hub_25896B0.doEvent,1);
  Hub_2588A50.onEvent[3]                   := _DoEvent(Hub_2589600.doEvent,1);
  Hub_2588B00.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,2);
  Hub_2588B00.onEvent[1]                   := _DoEvent(Thread_250FE78._work_doStart,0);
  Hub_2588BB0.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,3);
  Hub_2588BB0.onEvent[1]                   := _DoEvent(Thread_250FDE0._work_doStart,0);
  Hub_2588C60.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,5);
  Hub_2588C60.onEvent[1]                   := _DoEvent(Thread_250FCB0._work_doStart,0);
  Hub_2588D10.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,4);
  Hub_2588D10.onEvent[1]                   := _DoEvent(Thread_250FD48._work_doStart,0);
  Memory_250F920._event_onData             := _DoEvent(Hub_2588DC0.doEvent,1);
  Memory_250F9B8._event_onData             := _DoEvent(Hub_2588DC0.doEvent,0);
  Hub_2588DC0.onEvent[0]                   := _DoEvent(MainForm_25182D0._work_doEnabled,5);
  WinExec_250FA50._event_onExec            := _DoEvent(Hub_25886E0.doEvent,1);
  WinExec_250FAE8._event_onExec            := _DoEvent(Hub_25888F0.doEvent,1);
  WinExec_250FB80._event_onExec            := _DoEvent(Hub_2588840.doEvent,1);
  WinExec_250FC18._event_onExec            := _DoEvent(Hub_2588790.doEvent,1);
  Thread_250FCB0._event_onExec             := _DoEvent(WinExec_250FAE8._work_doExec,0);
  Thread_250FCB0._event_onSyncExec         := _DoEvent(Thread_250FCB0._work_doStop,1);
  Thread_250FD48._event_onExec             := _DoEvent(WinExec_250FA50._work_doExec,0);
  Thread_250FD48._event_onSyncExec         := _DoEvent(Thread_250FD48._work_doStop,1);
  Thread_250FDE0._event_onExec             := _DoEvent(WinExec_250FB80._work_doExec,0);
  Thread_250FDE0._event_onSyncExec         := _DoEvent(Thread_250FDE0._work_doStop,1);
  Thread_250FE78._event_onExec             := _DoEvent(WinExec_250FC18._work_doExec,0);
  Thread_250FE78._event_onSyncExec         := _DoEvent(Thread_250FE78._work_doStop,1);
  Button_251B110._event_onClick            := _DoEvent(Message_2510AF0._work_doMessage,0);
  If_else_250FF10._event_onTrue            := _DoEvent(Hub_2588E70.doEvent,0);
  If_else_250FF10._event_onFalse           := _DoEvent(If_else_250FFA8._work_doCompare,0);
  If_else_250FF10._data_Op1                := _DoEvent(CheckBox_2519810._var_Checked,0);
  If_else_250FFA8._event_onTrue            := _DoEvent(Hub_2588E70.doEvent,1);
  If_else_250FFA8._event_onFalse           := _DoEvent(If_else_2510040._work_doCompare,0);
  If_else_250FFA8._data_Op1                := _DoEvent(CheckBox_25196D0._var_Checked,0);
  If_else_2510040._event_onTrue            := _DoEvent(Hub_2588E70.doEvent,2);
  If_else_2510040._event_onFalse           := _DoEvent(If_else_25100D8._work_doCompare,0);
  If_else_2510040._data_Op1                := _DoEvent(CheckBox_2519770._var_Checked,0);
  If_else_25100D8._event_onTrue            := _DoEvent(Hub_2588E70.doEvent,3);
  If_else_25100D8._event_onFalse           := _DoEvent(Hub_25898C0.doEvent,1);
  If_else_25100D8._data_Op1                := _DoEvent(CheckBox_2519630._var_Checked,0);
  Hub_2588E70.onEvent[0]                   := _DoEvent(Hub_2588F20.doEvent,0);
  Hub_2588F20.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,6);
  Hub_2588F20.onEvent[1]                   := _DoEvent(If_else_2510C20._work_doCompare,0);
  Hub_2588F20.onEvent[2]                   := _DoEvent(Hub_25896B0.doEvent,0);
  Hub_2588F20.onEvent[3]                   := _DoEvent(Hub_2589600.doEvent,0);
  Hub_2588F20.onEvent[4]                   := _DoEvent(ChildForm_2587EA0.doWork,12);
  If_else_25103D0._event_onTrue            := _DoEvent(Hub_25893F0.doEvent,0);
  If_else_25103D0._event_onFalse           := _DoEvent(Hub_2589340.doEvent,0);
  If_else_25103D0._data_Op1                := _DoEvent(CheckBox_2519810._var_Checked,0);
  If_else_2510468._event_onTrue            := _DoEvent(Hub_2589290.doEvent,0);
  If_else_2510468._event_onFalse           := _DoEvent(Hub_25891E0.doEvent,0);
  If_else_2510468._data_Op1                := _DoEvent(CheckBox_25196D0._var_Checked,0);
  If_else_2510500._event_onTrue            := _DoEvent(Hub_2589130.doEvent,0);
  If_else_2510500._event_onFalse           := _DoEvent(Hub_2589080.doEvent,0);
  If_else_2510500._data_Op1                := _DoEvent(CheckBox_2519770._var_Checked,0);
  If_else_2510598._event_onTrue            := _DoEvent(Hub_2588FD0.doEvent,0);
  If_else_2510598._event_onFalse           := _DoEvent(Hub_25894A0.doEvent,0);
  If_else_2510598._data_Op1                := _DoEvent(CheckBox_2519630._var_Checked,0);
  WinExec_2510630._event_onExec            := _DoEvent(Hub_25894A0.doEvent,1);
  Thread_25106C8._event_onExec             := _DoEvent(WinExec_2510630._work_doExec,0);
  Thread_25106C8._event_onSyncExec         := _DoEvent(Thread_25106C8._work_doStop,1);
  Hub_2588FD0.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,11);
  Hub_2588FD0.onEvent[1]                   := _DoEvent(Thread_25106C8._work_doStart,0);
  Hub_2589080.onEvent[0]                   := _DoEvent(If_else_2510598._work_doCompare,0);
  WinExec_2510760._event_onExec            := _DoEvent(Hub_2589080.doEvent,1);
  Thread_25107F8._event_onExec             := _DoEvent(WinExec_2510760._work_doExec,0);
  Thread_25107F8._event_onSyncExec         := _DoEvent(Thread_25107F8._work_doStop,1);
  Hub_2589130.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,10);
  Hub_2589130.onEvent[1]                   := _DoEvent(Thread_25107F8._work_doStart,0);
  Hub_25891E0.onEvent[0]                   := _DoEvent(If_else_2510500._work_doCompare,0);
  WinExec_2510890._event_onExec            := _DoEvent(Hub_25891E0.doEvent,1);
  Thread_2510928._event_onExec             := _DoEvent(WinExec_2510890._work_doExec,0);
  Thread_2510928._event_onSyncExec         := _DoEvent(Thread_2510928._work_doStop,1);
  Hub_2589290.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,9);
  Hub_2589290.onEvent[1]                   := _DoEvent(Thread_2510928._work_doStart,0);
  Thread_25109C0._event_onExec             := _DoEvent(WinExec_2510A58._work_doExec,0);
  Thread_25109C0._event_onSyncExec         := _DoEvent(Thread_25109C0._work_doStop,1);
  WinExec_2510A58._event_onExec            := _DoEvent(Hub_2589340.doEvent,1);
  Hub_2589340.onEvent[0]                   := _DoEvent(If_else_2510468._work_doCompare,0);
  Hub_25893F0.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,8);
  Hub_25893F0.onEvent[1]                   := _DoEvent(Thread_25109C0._work_doStart,0);
  Hub_25894A0.onEvent[0]                   := _DoEvent(Hub_2589550.doEvent,0);
  Hub_2589550.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,7);
  Hub_2589550.onEvent[1]                   := _DoEvent(Hub_2589760.doEvent,1);
  Hub_2589550.onEvent[2]                   := _DoEvent(Hub_2589810.doEvent,0);
  Hub_2589600.onEvent[0]                   := _DoEvent(Memory_250F9B8._work_doClear,1);
  Hub_25896B0.onEvent[0]                   := _DoEvent(MainForm_25182D0._work_doMinimize,2);
  Hub_2589760.onEvent[0]                   := _DoEvent(Message_250F628._work_doMessage,0);
  Hub_2589810.onEvent[0]                   := _DoEvent(Memory_250F920._work_doClear,1);
  Hub_25898C0.onEvent[0]                   := _DoEvent(Message_250EAE0._work_doMessage,0);
  Hub_2589970.onEvent[0]                   := _DoEvent(MainForm_25182D0._work_doRestore,1);
  Hub_2589970.onEvent[1]                   := _DoEvent(ChildForm_2587EA0.doWork,13);
  Message_2510AF0._event_onMessage         := _DoEvent(Memory_2510B88._work_doValue,0);
  Memory_2510B88._event_onData             := _DoEvent(If_else_250FF10._work_doCompare,0);
  If_else_2510C20._event_onTrue            := _DoEvent(Hub_2589A20.doEvent,0);
  If_else_2510C20._event_onFalse           := _DoEvent(Hub_2589AD0.doEvent,0);
  If_else_2510C20._data_Op1                := _DoEvent(Memory_2510B88._var_Value,0);
  WinExec_2510CB8._event_onExec            := _DoEvent(Hub_2589AD0.doEvent,1);
  Hub_2589A20.onEvent[0]                   := _DoEvent(ChildForm_2587EA0.doWork,14);
  Hub_2589A20.onEvent[1]                   := _DoEvent(Thread_2510D50._work_doStart,0);
  Thread_2510D50._event_onExec             := _DoEvent(WinExec_2510CB8._work_doExec,0);
  Thread_2510D50._event_onSyncExec         := _DoEvent(Thread_2510D50._work_doStop,1);
  Hub_2589AD0.onEvent[0]                   := _DoEvent(If_else_25103D0._work_doCompare,0);
  Image_2517AB0._prop_HintManager := nil;
  Image_2517AB0._prop_Layout := nil;
  Button_2517BF0._prop_HintManager := nil;
  Button_2517BF0._prop_Layout := nil;
  MainForm_25182D0._prop_HintManager := nil;
  MainForm_25182D0._prop_Layout := nil;
  MainForm_25182D0._prop_TransparentManager := nil;
  MainForm_25182D0._prop_FormFastening := nil;
  ChildForm_2587F50.OnCreate := Create_hiChildForm_2587F50;
  CheckBox_2519630._prop_HintManager := nil;
  CheckBox_2519630._prop_Layout := nil;
  CheckBox_25196D0._prop_HintManager := nil;
  CheckBox_25196D0._prop_Layout := nil;
  CheckBox_2519770._prop_HintManager := nil;
  CheckBox_2519770._prop_Layout := nil;
  CheckBox_2519810._prop_HintManager := nil;
  CheckBox_2519810._prop_Layout := nil;
  Label_25198B0._prop_HintManager := nil;
  Label_25198B0._prop_Layout := nil;
  Button_2519950._prop_HintManager := nil;
  Button_2519950._prop_Layout := nil;
  ChildForm_2587EA0.OnCreate := Create_hiChildForm_2587EA0;
  Button_251B110._prop_HintManager := nil;
  Button_251B110._prop_Layout := nil;
  MainForm_25182D0.Control.Tabulate;
end;

destructor TClassMainForm_25182D0.Destroy;
begin
  Hub_2589AD0.Destroy;
  Thread_2510D50.Destroy;
  Hub_2589A20.Destroy;
  WinExec_2510CB8.Destroy;
  If_else_2510C20.Destroy;
  Memory_2510B88.Destroy;
  Message_2510AF0.Destroy;
  Hub_2589970.Destroy;
  Hub_25898C0.Destroy;
  Hub_2589810.Destroy;
  Hub_2589760.Destroy;
  Hub_25896B0.Destroy;
  Hub_2589600.Destroy;
  Hub_2589550.Destroy;
  Hub_25894A0.Destroy;
  Hub_25893F0.Destroy;
  Hub_2589340.Destroy;
  WinExec_2510A58.Destroy;
  Thread_25109C0.Destroy;
  Hub_2589290.Destroy;
  Thread_2510928.Destroy;
  WinExec_2510890.Destroy;
  Hub_25891E0.Destroy;
  Hub_2589130.Destroy;
  Thread_25107F8.Destroy;
  WinExec_2510760.Destroy;
  Hub_2589080.Destroy;
  Hub_2588FD0.Destroy;
  Thread_25106C8.Destroy;
  WinExec_2510630.Destroy;
  If_else_2510598.Destroy;
  If_else_2510500.Destroy;
  If_else_2510468.Destroy;
  If_else_25103D0.Destroy;
  Hub_2588F20.Destroy;
  Hub_2588E70.Destroy;
  If_else_25100D8.Destroy;
  If_else_2510040.Destroy;
  If_else_250FFA8.Destroy;
  If_else_250FF10.Destroy;
  Button_251B110.Destroy;
  Thread_250FE78.Destroy;
  Thread_250FDE0.Destroy;
  Thread_250FD48.Destroy;
  Thread_250FCB0.Destroy;
  WinExec_250FC18.Destroy;
  WinExec_250FB80.Destroy;
  WinExec_250FAE8.Destroy;
  WinExec_250FA50.Destroy;
  Hub_2588DC0.Destroy;
  Memory_250F9B8.Destroy;
  Memory_250F920.Destroy;
  Hub_2588D10.Destroy;
  Hub_2588C60.Destroy;
  Hub_2588BB0.Destroy;
  Hub_2588B00.Destroy;
  Hub_2588A50.Destroy;
  Hub_25889A0.Destroy;
  Hub_25888F0.Destroy;
  If_else_250F888.Destroy;
  Hub_2588840.Destroy;
  Hub_2588790.Destroy;
  If_else_250F7F0.Destroy;
  If_else_250F758.Destroy;
  Hub_25886E0.Destroy;
  If_else_250F6C0.Destroy;
  Message_250F628.Destroy;
  ChildForm_2587EA0.Destroy;
  Hub_25880B0.Destroy;
  If_else_250EDD8.Destroy;
  If_else_250ED40.Destroy;
  If_else_250ECA8.Destroy;
  If_else_250EC10.Destroy;
  Message_250EAE0.Destroy;
  Button_2519950.Destroy;
  Label_25198B0.Destroy;
  CheckBox_2519810.Destroy;
  CheckBox_2519770.Destroy;
  CheckBox_25196D0.Destroy;
  CheckBox_2519630.Destroy;
  ChildForm_2587F50.Destroy;
  Button_2517BF0.Destroy;
  Image_2517AB0.Destroy;
  MainForm_25182D0.Destroy;
  inherited;
end;

end.
