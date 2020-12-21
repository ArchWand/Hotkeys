; Initializes some performance settings
#NoEnv
#Warn
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start

; calculator
Launch_App2:: ; Main hotkey — Calculator button
	if WinExist("Calculator")
	{ ; tests if there is an open instance of calculator
		WinActivate, Calculator
	} else {
	^Launch_App2:: ; Holding control launchs calculator regardless.
		Run calc
	Return
	}
Return

~^w:: ; Ctrl+w closes calculator
if WinActive("Calculator") {
	WinClose, A
}
Return



; star files
Browser_Favorites & Numpad0::
Input, input, L1 T5, ,1,2,3,4,5,6,7,8,9
if (ErrorLevel = "Match") {
	switch input {
	case 1:
		Run "C:\Users\bertz\Documents\​​School\1) Orchestra"
		Return
	case 2:
		Run "C:\Users\bertz\Documents\​​School\2) US History"
		Return
	case 3:
		Run "C:\Users\bertz\Documents\​​School\3) AP Lang"
		Return
	case 4:
		Run "C:\Users\bertz\Documents\​​School\4) DCC Precalc"
		Return
	case 5:
		Run "C:\Users\bertz\Documents\​​School\5) French 4"
		Return
	case 6:
		Run "C:\Users\bertz\Documents\​​School\6) AP CompSci A"
		Return
	case 7:
		Run "C:\Users\bertz\Documents\​​School\7) Physics"
		Return
	case 8:
		Run C:\Users\bertz\Documents\​​School\Scioly
		Return
	case 9:
		Run C:\Users\bertz\Documents\​​School\Robotics
		Return
	default:
		SendInput %input%
		Return
	}
} else if (ErrorLevel = "Timeout") {
	Run C:\Users\bertz\Documents\​​School
}
Return


; f2 mail, passwords



; End script 
Browser_Favorites & Pause::
SoundPlay *16
MsgBox, 0x1111,, Quit !Script.ahk?
ifMsgBox OK
	ExitApp
else
	Return
