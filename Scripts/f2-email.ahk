/*
	F2-Email by Arcwand06
	Version 1.0
	
	Pressing f2+1 or f2+2 will paste in an email.
*/

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
