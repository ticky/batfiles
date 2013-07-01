@echo off

echo # Geoff's Batfiles
echo https://github.com/geoffstokes/batfiles
echo Setting up...
echo.
echo * Installing cmd_profile script...
reg import setup\reg\cmd_profile.reg 2>nul
echo * Setting default colour scheme...
reg import setup\reg\cmd_colours.reg 2>nul
echo * Installing clink scripts...
copy setup\clink\* %LOCALAPPDATA%\clink >nul
echo * Setting PowerShell execution policy...
powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned}"
echo.
echo Installation complete. Please restart your Command Prompt.
pause>nul