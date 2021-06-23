/*
	Hidden by Arcwandx86
	Version 1.0
	
	Use `alt` + `shift` + `.` to cycle the "show hidden" level of file explorer.
	Switches between default, showing hidden, and showing protected system files.
*/

!+.::
RegRead, HiddenLevel, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
RegRead, SuperHidden, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden
if (SuperHidden)
	HiddenLevel := 2
HiddenLevel := Mod(HiddenLevel + 1, 3)

CoordMode, ToolTip, Client
Switch HiddenLevel
{
	Case 2:
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 1
		ToolTip, Show super hidden, 10, 5
	Case 1:
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
		ToolTip, Show hidden, 10, 5
	Case 0:
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 0
		RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
		ToolTip, Show default, 10, 5
}
if WinActive("ahk_exe Explorer.EXE")
	SendInput {f5}
SetTimer, HideToolTip, 3000
Return

HideToolTip:
ToolTip
Return
