@echo off
::--------------------------------------------------------------------------------------
:: Script: bypass.cmd (EliteSoftware OOBE Bypass Utility)
::--------------------------------------------------------------------------------------

:: 1. Warning and Pause
color 0C
echo.
echo WARNING! THIS SCRIPT WILL REBOOT YOUR PC AND BYPASS WINDOWS 11 OOBE.
echo Press any key to continue, or close the window to cancel.
echo.
pause > nul

:: 2. Download unattend.xml
color 0B
echo Downloading configuration file...
curl -L -o C:\Windows\Panther\unattend.xml https://raw.githubusercontent.com/TheShadyRainbow4/Windows11-BypassNRO-Mitigation/refs/heads/main/unattend.xml

:: 3. Error Check and Execution
if errorlevel 1 (
    color 04
    echo.
    echo ERROR: Download failed. Check network connection.
    echo.
    pause
    exit /b 1
)

color 0A
echo File downloaded. Executing Sysprep and rebooting...
%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot

:: Fallback if Sysprep fails (will not execute on success)
pause
