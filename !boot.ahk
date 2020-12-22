/*
	Script by Arcwand06
	Last modified 22 December 2020
	Version 1.0
	
	Runs all ahk scripts in a GitHub repository.
*/
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force

loop, Files, C:\Users\%A_UserName%\Documents\GitHub\Hotkeys\*.ahk
{
   run, %a_loopfilefullpath%
}
SoundPlay *-1
MsgBox, Finished
