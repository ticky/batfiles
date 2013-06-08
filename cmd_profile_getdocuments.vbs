' Output the current My Documents directory path
Set oShell = CreateObject("Shell.Application")
Set wshShell = CreateObject( "WScript.Shell" )
Set wshSystemEnv = wshShell.Environment( "SYSTEM" )
Set oFolder = oShell.NameSpace(5)
WScript.echo oFolder.Self.Path