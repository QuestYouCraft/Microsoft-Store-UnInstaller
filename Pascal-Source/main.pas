Program HiAsm;
{$ifdef F_P} {$APPTYPE GUI} {$endif}
{$R allres.res}
uses 
  hiMainForm_8C37F10,
  Windows,
  kol,Share;

begin
if ParamStr(1) = '/ih' then
  begin
    MessageBox(0,'Сделано в HiAsm.','HiAsm Info',MB_OK);
    Halt;
  end;
  ClassMain := TClassMainForm_8C37F10.Create;
  ClassMain.MainForm_8C37F10.Start;
  Run(Applet);
  ClassMain.Destroy;
end.
