; Initializes some performance settings
#NoEnv
#Warn
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

SoundBeep ; signals start


; pin: Sets the active window to be always on top.
^#a:: WinSet, AlwaysOnTop, , A


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
/*
Open school folders using a keyboard shortcut.
*/
Browser_Favorites & Numpad0::	; Main hotkey
Browser_Favorites & NumpadIns:: ; Works when NumLock is off
	Input, input, L1 T5, {Enter},1,2,3,4,5,6,7,8,9
		; detects the specific folder requested
	if (ErrorLevel = "Match")
	{ ; Opens the correct subject folder
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
		default: ; Opens the main folder by default
			; This should never be used.
			Run C:\Users\bertz\Documents\​​School
			Return
		}
	} else if (ErrorLevel = "Timeout" || ErrorLevel = "Endkey:Enter")
	{ ; Opens the main folder if you either wait too long
		; or hit the enter key instead of a number.
		Run C:\Users\bertz\Documents\​​School
	} else
	{ ; If a letter key or such is pressed, it will still show up.
		SendInput %input%
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
