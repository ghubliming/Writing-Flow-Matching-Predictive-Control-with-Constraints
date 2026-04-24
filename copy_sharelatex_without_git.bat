:: filepath: copy69d_no_git.bat
@echo off
setlocal

set "SRC=69d6372b871eb6835b2fd9b1"
set "DST=69d6372b871eb6835b2fd9b1_copied"

:: Remove destination if it exists
if exist "%DST%" rmdir /s /q "%DST%"

:: Copy all files and folders except .git
robocopy "%SRC%" "%DST%" /E /XD ".git"

echo Copy complete. "%SRC%" -> "%DST%" (without .git folder)
endlocal