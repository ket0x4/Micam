@echo off
echo Downloading Apktool...
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat -q --show-progress
cls
echo Downloading Apktool...
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar -q --show-progress
cls
move apktool_2.4.1.jar apktool.jar
del .wget-hsts
cls
echo Downloading Apktool... done.
echo Building App...
powershell.exe ./apktool.bat b .\application\
echo Building App... done.
mkdir out
move .\application\dist\MiuiCamera.apk out\CaticerCamera.apk
pause