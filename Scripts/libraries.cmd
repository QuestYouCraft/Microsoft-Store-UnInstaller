cd /d "%~dp0"
PowerShell "Get-AppxPackage Microsoft.NET.Native.Framework* | Remove-AppxPackage"
PowerShell "Get-AppxPackage Microsoft.NET.Native.Runtime* | Remove-AppxPackage"
PowerShell "Get-AppxPackage Microsoft.VCLibs* | Remove-AppxPackage"
exit /b