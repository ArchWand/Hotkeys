/*
	File Explorer New File by ArcWandx86
	Version 2.1
	
	Create a new file in the active file explorer folder with `win` + `n`.
*/

GetActiveExplorerPath()
{
	explorerHwnd := WinActive("ahk_class CabinetWClass")
	if (explorerHwnd)
	{
		for window in ComObjCreate("Shell.Application").Windows
		{
			if (window.hwnd==explorerHwnd)
			{
				Return window.Document.Folder.Self.Path
			}
		}
	}
}

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
SendInput {f5}
Sleep 300
SendInput NewFile%fileNum%
Sleep 20
SendInput {f2}
Return
#IfWinActive
