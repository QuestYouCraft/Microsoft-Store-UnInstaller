Program HiAsm;
{$ifdef F_P} {$APPTYPE GUI} {$endif}
{$R allres.res}
uses 
  hiMainForm_266EC70,
  Windows,
  kol,Share;

begin
if ParamStr(1) = '/ih' then
  begin
    MessageBox(0,'Сделано в HiAsm.','HiAsm Info',MB_OK);
    Halt;
  end;
  ClassMain := TClassMainForm_266EC70.Create;
  ClassMain.MainForm_266EC70.Start;
  Run(Applet);
  ClassMain.Destroy;
end.
