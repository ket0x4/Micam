@echo off
powershell Compress-Archive -Path module\* debug.zip
echo Done!
pause