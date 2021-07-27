/*
	visualToggle by TuxRocks
	Source: 
	Version 1.0
	
	Adds a visual indicator for the caps lock key.
*/
 
~*CapsLock::
CoordMode Mouse, Screen
Sleep, 100
if GetKeyState("CapsLock", "T") {
	Progress, B1 W200 H28 WS900 x0 y0 ZH0 FS11 CTFF0000, CAPS LOCK ON
} else {
	Progress, off
}
return
