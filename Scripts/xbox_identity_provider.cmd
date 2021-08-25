chcp 1251
if /i "%PROCESSOR_ARCHITECTURE%" equ "AMD64" (set "arch=x64") else (set "arch=x86")
cd /d "%~dp0"
if /i %arch%==x64 (
set "Dep=Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x64__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Framework.2.2_2.2.29512.0.0_x86__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x86__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x64__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x86__8wekyb3d8bbwe.Appx"
) else (
set "Dep=Microsoft.NET.Native.Framework.2.2_2.2.29512.0_x86__8wekyb3d8bbwe.Appx,Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x86__8wekyb3d8bbwe.Appx,Microsoft.VCLibs.140.00_14.0.30035.0_x86__8wekyb3d8bbwe.Appx"
)
(
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxProvisionedPackage -Online -PackagePath Microsoft.XboxIdentityProvider_12.80.11001.0_neutral___8wekyb3d8bbwe.AppxBundle -DependencyPackagePath %Dep% -LicensePath Microsoft.XboxIdentityProvider_8wekyb3d8bbwe.xml
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxPackage -Path %Dep%
PowerShell -NoLogo -NoProfile -NonInteractive -InputFormat None -ExecutionPolicy Bypass Add-AppxPackage -Path Microsoft.XboxIdentityProvider_12.80.11001.0_neutral___8wekyb3d8bbwe.AppxBundle
) > xbox_identity_provider.log
if %errorlevel%==0 (
del xbox_identity_provider.log
)
exit /b