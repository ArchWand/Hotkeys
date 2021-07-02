/*
	File Explorer New File by ArcWandx86
	Version 2.0
	
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
newFile := explorer
newFile .= "\NewFile.txt"
if (FileExist(newFile))
{
	Loop
	{
		newFile=%explorer%\Newfile%A_Index%.txt
		if (!FileExist(newFile))
			break
	}
}
FileOpen(newFile, "a")
SendInput {f5}
Return
#IfWinActive
