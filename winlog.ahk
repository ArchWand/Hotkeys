/*
	WinLog by Arcwand06
	Version 1.0
	
	A window logger.
*/
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
SoundBeep

logFile=%UserProfile%\Documents\None\logdata.txt

~*LButton::
~*LWin Up::
~*RWin Up::
~*LCtrl Up::
~*RCtrl Up::
~*LAlt Up::
~*RAlt Up::
~*Tab Up::
log := FileOpen(logFile, 2)
WinGetActiveTitle, Title
log.WriteLine(Title . Format(" ({}:{}:{}) ({} {} {})", A_Hour, A_Min, A_Sec, A_DD, A_MMM, A_YYYY))
log.Close()
return
