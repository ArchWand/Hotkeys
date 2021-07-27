/*
	File Explorer New File by ArcWandx86
	Version 3.0
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

#IfWinActive ahk_exe Explorer.EXE

#n::
	explorer := GetActiveExplorerPath()
	newFile=%explorer%\NewFile.txt
	
	if (FileExist(newFile))
	{
		Loop
		{
			newFile=%explorer%\NewFile%A_Index%.txt
			if (!FileExist(newFile))
			{
				fileNum := A_Index
				break
			}
		}
	}
	
	FileOpen(newFile, "a")
	Sleep 500
	
	SendInput {f5}
	Sleep 500
	SendInput NewFile%fileNum%
	Sleep 20
	SendInput {f2}
return

#IfWinActive
