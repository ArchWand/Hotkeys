/*
	Paste by Arcwandx86
	Version 1.1
	
	Pastes a given text, without affecting the clipboard.
*/

Paste(string)
{
	TempClip := ClipboardAll
	Sleep 50
	Clipboard := string
	Sleep 50
	Send ^v
	Sleep 50
	Clipboard := TempClip
	TempClip := ""
}
