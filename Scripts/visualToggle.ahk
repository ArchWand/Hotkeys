/*
	visualToggle by TuxRocks
	Source: 
	Version 1.0
	
	Adds a visual indicator for the caps lock key.
*/
SetCapsLockState, Off
width := A_ScreenWidth - 202
height := A_ScreenHeight - 70
 
~*CapsLock::

Sleep, 100
if GetKeyState("CapsLock", "T") {
	Progress, B1 W200 H28 WS900 x%width% y%height% ZH0 FS11 CTFF0000, CAPS LOCK ON
} else {
	Progress, off
}
return