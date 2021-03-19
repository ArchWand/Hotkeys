/*
	Zero-widt by Arcwand06
	Version 1.0
	
	Pressing right ctrl+right alt+space types a zero-width space, and copies it to clipboard.
*/

>!>^Space::
	Send {U+200B}
	Clipboard := "​"
Return