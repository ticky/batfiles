@echo off

echo # Geoff's Batfiles
echo https://github.com/geoffstokes/batfiles
echo Setting up...
echo.
for %%x in (%cmdcmdline%) do if /i "%%~x"=="/c" set launchedFromExplorer=1
echo * Installing cmd_profile script...
reg import setup\reg\cmd_profile.reg 2>nul
echo * Setting default colour scheme...
reg import setup\reg\cmd_colours.reg 2>nul
echo * Installing clink scripts...
copy setup\clink\* %LOCALAPPDATA%\clink >nul
if not defined launchedFromExplorer (
	echo * Loading doskey macros...
	doskey /MACROFILE=%USERPROFILE%\batfiles\doskey.mcr
)
echo.
echo Installation complete. Please restart any open Command Prompts.
if defined launchedFromExplorer pause