chcp 1251
if /i "%PROCESSOR_ARCHITECTURE%" equ "AMD64" (set "arch=x64") else (set "arch=x86")
cd /d "%~dp0"
if /i %arch%==x64 (
set "Dep=Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x64__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Framework.2.2_2.2.29512.0.0_x86__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x86__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x64__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x86__8wekyb3d8bbwe.Appx,Microsoft.UI.Xaml.2.4_2.42007.9001.0_x64__8wekyb3d8bbwe.appx,Microsoft.UI.Xaml.2.4_2.42007.9001.0_x86__8wekyb3d8bbwe.appx"
) else (
set "Dep=Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x86__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x86__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x86__8wekyb3d8bbwe.Appx,Microsoft.UI.Xaml.2.4_2.42007.9001.0_x86__8wekyb3d8bbwe.appx"
)
(
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxProvisionedPackage -Online -PackagePath Microsoft.WindowsStore_12107.1001.15.0_neutral___8wekyb3d8bbwe.AppxBundle -DependencyPackagePath %Dep% -LicensePath Microsoft.WindowsStore_8wekyb3d8bbwe.xml
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxPackage -Path %Dep%
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxPackage -Path Microsoft.WindowsStore_12107.1001.15.0_neutral___8wekyb3d8bbwe.AppxBundle
) > microsoft_store.log
if %errorlevel%==0 (
del microsoft_store.log
)
exit /b