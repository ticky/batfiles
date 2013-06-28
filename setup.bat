@echo off

echo # Geoff's Batfiles
echo https://github.com/geoffstokes/batfiles
echo Setting up...
echo.
echo * Installing cmd_profile script...
echo.
reg import setup\reg\cmd_profile.reg
echo.
echo * Setting default colour scheme...
echo.
reg import setup\reg\cmd_colours.reg
echo.
echo * Installing clink scripts...
echo.
copy setup\clink\* %LOCALAPPDATA%\clink
echo.
echo Installation complete. Please restart your Command Prompt.
pause>nul