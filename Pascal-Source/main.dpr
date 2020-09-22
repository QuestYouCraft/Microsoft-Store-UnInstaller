Program HiAsm;
{$ifdef F_P} {$APPTYPE GUI} {$endif}
{$R allres.res}
uses 
  hiMainForm_25182D0,
  Windows,
  kol,Share;

begin
if ParamStr(1) = '/ih' then
  begin
    MessageBox(0,'Сделано в HiAsm.','HiAsm Info',MB_OK);
    Halt;
  end;
  ClassMain := TClassMainForm_25182D0.Create;
  ClassMain.MainForm_25182D0.Start;
  Run(Applet);
  ClassMain.Destroy;
end.
