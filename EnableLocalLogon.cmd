@Echo "This will create a local User called LocalAdmin"
@Echo "Continue?"
@Pause
@net user LocalAdmin * /add
@net localgroup Administrators LocalAdmin /add

:: Disable the DefaultUser0
@net user defaultuser0 /active:no

:: Hide online account creation screen
@reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideOnlineAccountScreens /t REG_DWORD /d 1 /f
@reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v HideWirelessSetupInOOBE /t REG_DWORD /d 1 /f

:: Reboot the machine
@shutdown /f /r /t 0

