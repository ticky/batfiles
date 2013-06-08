@echo off
doskey /macrofile=%USERPROFILE%/batfiles/doskey.mcr
for /f "tokens=*" %%i in ('cscript //nologo %USERPROFILE%/batfiles/cmd_profile_getdocuments.vbs') do set Documents=%%i