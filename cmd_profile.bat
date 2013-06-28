@echo off

rem Make sure this only executes once per session
IF NOT DEFINED cmdProfileExec (

	set cmdProfileExec=true
	doskey /macrofile=%USERPROFILE%\batfiles\doskey.mcr
	
)