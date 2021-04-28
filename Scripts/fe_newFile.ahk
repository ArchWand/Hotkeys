/*
	File Explorer New File by Arcwand06
	Version 1.0
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive, ahk_class CabinetWClass
#n::
SendInput {Home}^{Space}{AppsKey}wt
Return
#IfWinActive, ahk_class CabinetWClass
