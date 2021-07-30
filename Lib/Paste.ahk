/*
	Paste by Arcwandx86
	Version 1.0
	
	Pastes a given text, without affecting the clipboard.
*/

Paste(string)
{
	TempClip := ClipboardAll ; saves clipboard to temporary variable
		Clipboard := string	; loads email
		Sleep 50 			; ensure that clipboard is set
		Send ^v				; pastes email
		  Sleep 50 		; ensure that email has been pasted
	Clipboard := TempClip 	; restore clipboard
	TempClip := "" 			; wipe temp variable
}
