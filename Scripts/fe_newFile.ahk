/*
	File Explorer New File by Arcwand06
	Version 1.2
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive ahk_exe Explorer.EXE
#n::SendInput {Down}{Home}^{Space}{AppsKey}wt
#IfWinActive
