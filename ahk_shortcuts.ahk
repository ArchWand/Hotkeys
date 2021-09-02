/*
	AHK Shortcuts by ArcWandx86
	Version 3.0.2
	
	Adds several shortcuts. Shortcuts are based on scripts in the same folder.
*/
#NoEnv
#SingleInstance Force
SendMode Input
DetectHiddenWindows, On 
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start

; Initialization code
SetCapsLockState, Off
width := A_ScreenWidth - 202
height := A_ScreenHeight - 70
HiddenLevel := CheckHiddenLevel()

#Include %A_ScriptDir%\Scripts
#Include calc.ahk
#Include date&time.ahk
#Include discord.ahk
#Include easy-menu.ahk
#Include f2-email.ahk
#Include fe_newFile.ahk
#Include hidden.ahk
#Include invis-char.ahk
#Include media_card.ahk
#Include pin.ahk
#Include sticky-keys.ahk
#Include visualToggle.ahk


; End script 
Pause::
KeyWait, Pause, U
KeyWait, Pause, D, T0.2
If (ErrorLevel == 1) {
	SendInput {Pause}
	Return
}
SoundPlay *16
SetTimer, ChangeButtonNames, 50
MsgBox, 0x1013,, Quit !Script.ahk?
ifMsgBox YES
{
	ExitApp
}
ifMsgBox NO
{
	Reload
}
else
	Return


ChangeButtonNames: 
IfWinNotExist, ahk_shortcuts.ahk
	Return  ; Keep waiting.
SetTimer, ChangeButtonNames, Off 
WinActivate 
ControlSetText, Button1, Close (&x)
ControlSetText, Button2, &Reload
ControlSetText, Button3, Cancel
Return