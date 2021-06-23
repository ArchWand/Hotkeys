/*
	F2-Email by ArcWandx86
	Version 1.0
	
	Pressing f2+1 or f2+2 will paste in an email.
*/

~f2 & 1::
email = robert.zhu@k12.wcsdny.org
Goto, Paste
Return

~f2 & 2::
email = robert.zhu06@gmail.com
Goto, Paste
Return

~f2 & 3::
email = arcwand06@gmail.com
Goto, Paste
Return

Paste:
	TempClip := ClipboardAll ; saves clipboard to temporary variable
		Clipboard := email	; loads email
		Send ^v				; pastes email
		  Sleep 100 		; ensure that email has been pasted
	Clipboard := TempClip 	; restore clipboard
	TempClip := "" 			; wipe temp variable
Return
