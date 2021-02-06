@echo off
echo Removing old builds
if exist "out\CaticerCamera.apk" del "out\CaticerCamera.apk"

if not exist "out\" mkdir "out\"

if not exist apktool.bat echo apktool.bat not found. downloading... & wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat -q --show-progress
echo -
if not exist apktool.jar echo apktool.jar not found. downloading... & wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.1.jar -q --show-progress
cls

move apktool*.jar apktool.jar
del .wget-hsts
cls

echo Building App...
powershell.exe ./apktool.bat b .\application\
echo Building App... done.
move .\application\dist\MiuiCamera.apk out\CaticerCamera.apk

if exist "out\CaticerCamera.apk" ( echo Build Done.
) else ( echo PROCESS FAILED.. )
pause