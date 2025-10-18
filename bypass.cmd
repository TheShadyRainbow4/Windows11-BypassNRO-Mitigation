curl -L -o C:\Windows\Panther\unattend.xml https://github.com/TheShadyRainbow4/Windows11-BypassNRO-Mitigation/blob/main/unattend.xml
%WINDIR%\System32\Sysprep\Sysprep.exe /oobe /unattend:C:\Windows\Panther\unattend.xml /reboot
