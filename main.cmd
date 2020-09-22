@echo off
for /f "tokens=6 delims=[]. " %%G in ('ver') do if %%G lss 16299 goto :true
start /wait msui.exe
exit /b
:true
(
    echo Title="Error"
    echo Text="This app is for Windows 10 version 1709 and later"
    echo MsgBox Text, 16+0, Title
) > message.vbs
start /wait message.vbs
del message.vbs
exit /b