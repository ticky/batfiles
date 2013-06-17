@echo off
rem Make sure this only executes once per session
IF NOT DEFINED cmdProfileExec (
	set cmdProfileExec=true
	doskey /macrofile=%USERPROFILE%\batfiles\doskey.mcr
	for /f "tokens=*" %%i in ('cscript //nologo %USERPROFILE%\batfiles\cmd_profile_getdocuments.vbs') do set Documents=%%i
)