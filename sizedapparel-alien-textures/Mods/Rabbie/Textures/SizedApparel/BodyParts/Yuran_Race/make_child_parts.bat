@echo off
cls
Setlocal enabledelayedexpansion

echo "This batch file copies the thin.png files to create a child.png"
echo "current directory is "  %cd%
echo "Are you sure you want to copy it?"

:LOOP
set /p YN=(Y/N)?

if /i "%YN%" == "y" goto YES
if /i "%YN%" == "n" goto NO

echo "Invalid input value. Try again"
goto LOOP


:NO
echo NO
exit

:YES
echo YES


for /r %%a in (*.png) Do (

	echo %%~pa
	echo %%~nxa

    Set "File=%%a"

	Set File=!File:Thin=Child!
    echo "!File!"
    copy "%%a" "!File!"
    echo "!File!"
)



pause