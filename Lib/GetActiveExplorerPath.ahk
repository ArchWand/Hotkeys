/*
	GetActiveExplorerPath by [AlexV](https://www.autohotkey.com/boards/viewtopic.php?t=69925)
	Version 1.0
	
	returns the path of the active File Explorer window.
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
				return window.Document.Folder.Self.Path
			}
		}
	}
}