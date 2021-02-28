@echo off 
SETLOCAL
Rem Just in case, uninstall old tulipy and install newtulipy
pip install newtulipy

Rem This block installs the list of used dependencies
set list=numpy requests pandas alpha_vantage scipy beautifulsoup4 websockets deprecated python-dotenv
(for %%a in (%list%) do ( 
   CALL :pip_reinstall %%a 
))

EXIT /B %ERRORLEVEL% 

:pip_reinstall 
echo "about to run pip_reinstall %~1"
pip uninstall %~1
pip install %~1
EXIT /B 0
