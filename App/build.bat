:start
cls
@shift /0
@echo off
cls

title CaticerCam Builder
mode con cols=70 lines=20


color f1
echo ----------------------------------------
echo 1- Build app
echo 2- Generate key
echo 3- Sign app with generated key 
echo ----------------------------------------
                      

set /p option=choose: || set option="0"

if /I %option%==1 goto build
if /I %option%==2 goto keygen
if /I %option%==3 goto sign
if /I %option%==4 goto movefile

:build
cls
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
move .\application\dist\MiuiCamera.apk out\MiuiCamera.apk

if exist "out\MiuiCamera.apk" ( echo Build Done.
) else ( echo PROCESS FAILED.. )
pause
goto start

:keygen
cls
set keyname=
SET/P keyname=Please enter file name:
keytool -genkey -v -keystore temp.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias ccam
move temp.keystore %keyname%.keystore
goto start

:sign
cls
move %keyname%.keystore temp.keystore
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore temp.keystore .\out\MiuiCamera.apk ccam
move temp.keystore %keyname%.keystore
goto start
