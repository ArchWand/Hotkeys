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
		Run calc
	}
Return 

; Holding control always launchs calculator.
^Launch_App2:: Run calc 

; Ctrl+w closes calculator
#ifWinActive Calculator
	~^w:: WinClose, A
#ifWinActive


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

; user-switch
Browser_Favorites::
	; check if in a browser
	if !(WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe firefox.exe") || WinActive("ahk_exe iexplore.exe") || WinActive("ahk_exe msedge.exe"))
		Return
	; Clipboard replacement
	TempClip := ClipboardAll
		PreviousClip := Clipboard
		SendInput ^l
		  Sleep 200
		SendInput ^c
		  Sleep 100
		if PreviousClip = Clipboard ; check that copying was successful
			Return
		
		; process what to do with the string
		if InStr(Clipboard, ".google.com") {
			if InStr(Clipboard, "/u/0/") {
				Clipboard := StrReplace(Clipboard, "/u/0/", "/u/1/")
			} else if InStr(Clipboard, "/u/1/") {
				Clipboard := StrReplace(Clipboard, "/u/1/", "/u/0/")
			} else if InStr(Clipboard, "?authuser=0") {
				Clipboard := StrReplace(Clipboard, "?authuser=0", "?authuser=1")
			} else if InStr(Clipboard, "?authuser=1") {
				Clipboard := StrReplace(Clipboard, "?authuser=1", "?authuser=0")
			} else if InStr(Clipboard, "hangouts.google.com") {
				Clipboard .= "u/1/"
			}
		}
		SendInput ^v
		  Sleep 200
		SendInput {Enter}
		  Sleep 100
	; Clipboard replacement
	Clipboard := TempClip
	TempClip := ""
Return


; f2 mail, 
~f2 & 1::
	TempClip := ClipboardAll ; saves clipboard to temporary variable
		Clipboard := "robert.zhu@k12.wcsdny.org" ; loads email
		Send ^v ; pastes email
		  Sleep 100 ; ensure that email has been pasted
	Clipboard := TempClip ; restore clipboard
	TempClip := "" ; wipe temp variable
Return

~f2 & 2::
	TempClip := ClipboardAll
		Clipboard := "robert.zhu06@gmail.com"
		Send ^v
		  Sleep 100
	Clipboard := TempClip
	TempClip := ""
Return


;f2 passwords
/*  There's nothing here.  */


; End script 
Browser_Favorites & Pause::
SoundPlay *16
MsgBox, 0x1111,, Quit !Script.ahk?
ifMsgBox OK
	ExitApp
else
	Return
