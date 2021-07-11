/*
	Paste by Arcwandx86
	Version 1.0
	
	Pastes a given text, without affecting the clipboard.
*/

Paste(text)
{
	TempClip := ClipboardAll ; saves clipboard to temporary variable
		Clipboard := text	; loads email
		Send ^v				; pastes email
		  Sleep 100 		; ensure that email has been pasted
	Clipboard := TempClip 	; restore clipboard
	TempClip := "" 			; wipe temp variable
}
