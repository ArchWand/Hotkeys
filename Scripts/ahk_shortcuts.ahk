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
#Include media_card.ahk
#Include pin.ahk
#Include visualToggle.ahk


; End script 
Pause::
KeyWait, Pause, U
KeyWait, Pause, D, T0.2
If (ErrorLevel == 1) {
	Return
}
SoundPlay *16
MsgBox, 0x1111,, Quit !Script.ahk?
ifMsgBox OK
{
	WinClose, %A_ScriptDir%\star-run.ahk ahk_class AutoHotkey
	ExitApp
}
else
	Return
