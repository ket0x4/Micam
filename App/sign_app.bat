@echo off
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my.keystore .\out\CaticerCamera.apk app
pause