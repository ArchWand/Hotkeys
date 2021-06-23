/*
	File Explorer New File by ArcWandx86
	Version 1.3
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive ahk_exe Explorer.EXE
#n::SendInput {Down}{Home}^{Space}{AppsKey}wt^a
#IfWinActive
