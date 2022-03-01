@echo off
cls
cd %_lw_exedir%

SET file_name="updater-script.bat"

if exist %file_name% (
    call %file_name%
) else (
    echo %file_name% was found in directory %cd%
    pause
)