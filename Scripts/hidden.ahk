/*
	Hidden by Arcwandx86
	Version 2.0
	
	Use `alt` + `shift` + `.` to cycle the "show hidden" level of file explorer.
	Switches between default, showing hidden, and showing protected system files.
*/

!+.::
HiddenLevel := Mod(HiddenLevel + 1, 3)
CoordMode, ToolTip, Client
SetHiddenLevel(HiddenLevel)
if WinActive("ahk_exe Explorer.EXE")
	SendInput {f5}
SetTimer, HideToolTip, 1500
return

HideToolTip:
ToolTip
return
