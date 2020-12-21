; Initializes some performance settings
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start


; calculator


; star files


; f2 mail, passwords


; End script 
Browser_Favorites & Pause::
SoundPlay *16
MsgBox, 4369,, Quit !Script.ahk?
ifMsgBox OK
	ExitApp
else
	Return
