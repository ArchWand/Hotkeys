/*
	AHK Shortcuts by Arcwand06
	Version 2.0
	
	Adds several shortcuts. Shortcuts are based on scripts in the same folder.
*/
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start

#Include calc.ahk
#Include easy-menu.ahk
#Include f2-email.ahk
#Include pin.ahk
#Include star-files.ahk
#Include star-switcher.ahk
#Include visualToggle.ahk


; End script 
Browser_Favorites & Pause::
SoundPlay *16
MsgBox, 0x1111,, Quit !Script.ahk?
ifMsgBox OK
	ExitApp
else
	Return
