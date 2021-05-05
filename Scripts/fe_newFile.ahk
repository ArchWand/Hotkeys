/*
	File Explorer New File by Arcwand06
	Version 1.1
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive, ahk_exe Explorer.EXE
#n::
SendInput {Down}{Home}^{Space}{AppsKey}wt
Return
#IfWinActive, ahk_exe Explorer.EXEn
