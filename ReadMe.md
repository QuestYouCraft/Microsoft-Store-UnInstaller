# Microsoft Store Un\Installer
## **[[Download Latest Release]](https://github.com/QuestYouCraft/Microsoft-Store-UnInstaller/releases/latest)**
![](https://i2.paste.pics/3eed947063796829e3959cc2f5e3b9ec.png)
## Screenshot
![](https://i2.paste.pics/499bc288cb0a393a5cc283b82a393a82.png)
## What's this?
**M**icrosoft **S**tore **U**n\\**I**nstaller is an [**G**raphic **U**ser **I**nterface]-app (based on GitHub project [LTSC-Add-MicrosoftStore](https://github.com/kkkgo/LTSC-Add-MicrosoftStore) from [kkkgo](https://github.com/kkkgo)) that adds the functionality of installing [**U**niversal **W**indows **P**latform]-apps to Windows 10 (optionally from the Microsoft Store, formerly called the Windows Store), provided that this feature was removed in your version of the Windows assembly, or was absent altogether.
## System requirements
- OS: Windows 10 version 1709 Fall Creators Update and higher
## Description of UWP components
### Required
Components UWP apps can't run without. These components are not displayed in MSUI, because they are installed automatically along with one of your selected components.
#### .NET Native Framework
Structure of UWP applications written in the ".NET Native" programming environment.
#### .NET Native Runtime
Runtime environment for UWP applications written in the ".NET Native" programming environment.
#### Visual C Libraries (VCLibs)
Libraries (packages) of the C++ runtime required for running applications written in C++.
### Non-required
Components that are optional to install, but the absence of some components makes some types of UWP apps inoperable.
#### Desktop App Installer
GUI installer for UWP apps. Optional component, because UWP apps can be installed via PowerShell.
#### Store Purchase App
Part of the UWP app store. This component is required for purchasing (linking, registering) an application or in-application purchases for a Microsoft account. Optional (if you plan to use the store without a Microsoft account), but desirable.
#### Microsoft Store
UWP app store "Microsoft Store".
#### Xbox Identity Provider
Component dedicated to UWP games that use Xbox Live services. Optional, but some UWP games may not work.