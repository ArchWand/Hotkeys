/*
	Star-Files by Arcwand06
	Version 1.0
	
	Star+Numpad0, followed by a number on the numpad, opens folders for school in file explorer.
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
	{ ; opens main folder given conditions
		Run C:\Users\bertz\Documents\​​School
	} else
	{ ; passes keys through
		SendInput %input%
	}
Return
