chcp 1251
net session >nul 2>&1
if %errorLevel% == 0 (
goto next
) else (
echo No administrator privileges > libraries.log
exit /b
)
:next
cd /d "%~dp0"
(
PowerShell "Get-AppxPackage Microsoft.NET.Native.Framework* | Remove-AppxPackage"
PowerShell "Get-AppxPackage Microsoft.NET.Native.Runtime* | Remove-AppxPackage"
PowerShell "Get-AppxPackage Microsoft.VCLibs* | Remove-AppxPackage"
) > libraries.log
if %errorlevel%==0 (
del libraries.log
)
exit /b