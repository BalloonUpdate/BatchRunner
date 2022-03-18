@echo off
cls
cd %_lw_exedir%

SET file_name=updater-script.bat
SET file_path=%file_name%

if not exist %file_path% (
    SET file_path=".minecraft/updater-script.bat"
)

if not exist %file_path% (
    SET file_path=".minecraft/updater/updater-script.bat"
)

if exist %file_path% (
    call %file_path%
) else (
    echo %file_name% was found in one of the paths below:
    echo   - %cd%/%file_name%
    echo   - %cd%.minecraft/%file_name%
    echo   - %cd%.minecraft/updater/%file_name%
    ping 127.0.0.1 -n 5 > nul
)