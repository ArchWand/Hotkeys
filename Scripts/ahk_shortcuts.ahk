/*
	AHK Shortcuts by Arcwand06
	Version 2.0
	
	Adds several shortcuts. Shortcuts are based on scripts in the same folder.
*/
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On 

SoundBeep ; signals start

Run file-run.ahk
#Include calc.ahk
#Include date&time.ahk
#Include discord.ahk
#Include easy-menu.ahk
#Include f2-email.ahk
#Include fe_newFile.ahk
#Include media_card.ahk
#Include sticky-keys.ahk
#Include pin.ahk
#Include visualToggle.ahk
#Include zero-width.ahk


; End script 
Pause::
KeyWait, Pause, U
KeyWait, Pause, D, T0.2
If (ErrorLevel == 1) {
	Return
}
SoundPlay *16
SetTimer, ChangeButtonNames, 50
MsgBox, 0x1013,, Quit !Script.ahk?
ifMsgBox YES
{
	WinClose, %A_ScriptDir%\file-run.ahk ahk_class AutoHotkey
	ExitApp
}
ifMsgBox NO
{
	WinClose, %A_ScriptDir%\file-run.ahk ahk_class AutoHotkey
	Reload
}
else
	Return


ChangeButtonNames: 
IfWinNotExist, ahk_shortcuts.ahk
	return  ; Keep waiting.
SetTimer, ChangeButtonNames, Off 
WinActivate 
ControlSetText, Button1, Close (&x)
ControlSetText, Button2, &Reload
ControlSetText, Button3, Cancel
return
