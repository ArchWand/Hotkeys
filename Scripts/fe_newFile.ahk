/*
	File Explorer New File by ArcWandx86
	Version 3.1
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive ahk_exe Explorer.EXE

^q::
	explorer := GetActiveExplorerPath()
	newFile=%explorer%\NewFile.txt
	
	if (FileExist(newFile)) {
		Loop
		{
			newFile=%explorer%\NewFile%A_Index%.txt
			if (!FileExist(newFile)) {
				fileNum := A_Index
				break
			}
		}
	}
	
	FileOpen(newFile, "a")
	SendInput {f5}
	
	KeyWait LWin
	KeyWait RWin
	SendInput NewFile%fileNum%
Return

#IfWinActive
