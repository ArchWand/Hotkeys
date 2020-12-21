; Initializes some performance settings
#NoEnv
#Warn
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start

; calculator



; star files
Browser_Favorites & Numpad0::
Input, input, L1 T5, {Enter},1,2,3,4,5,6,7,8,9
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
} else if (ErrorLevel = "Timeout" || ErrorLevel = "Endkey:Enter") {
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
