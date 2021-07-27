/*
	Star-Switcher by ArcWandx86
	Version 1.0
	
	Pressing the star key in a browser, on a google page, causes the user to switch between 0 and 1.
*/

Browser_Favorites::
	; check if in a browser
	if !(WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe firefox.exe") || WinActive("ahk_exe iexplore.exe") || WinActive("ahk_exe msedge.exe"))
		return
	; Clipboard replacement
	TempClip := ClipboardAll ; saves clipboard to temporary variable
		PreviousClip := Clipboard
		SendInput ^l
		  Sleep 200
		SendInput ^c
		  Sleep 100
		if PreviousClip = Clipboard ; check that copying was successful
			return
		
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
			} else if InStr(Clipboard, "docs.google.com") {
				InputBox, SwitchTo, Star Switcher, Enter the user to switch to.,,240,148,,,,7,0
				if (ErrorLevel = 1 || ErrorLevel = 2)
					return
				Clipboard := StrReplace(Clipboard, "/d/", "/u/" . SwitchTo . "/d/")
			}
		SendInput ^v
		  Sleep 200
		SendInput {Enter}
		  Sleep 100
		}
	; restores former clipboard
	Clipboard := TempClip
	TempClip := ""
return
