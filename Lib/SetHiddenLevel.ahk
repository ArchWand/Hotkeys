/*
	SetHiddenLevel by Arcwandx86
	Version 1.0
	
	Sets registry keys to configure the level of hidden file that will be shown.
*/

SetHiddenLevel(HiddenLevel)
{
	Switch HiddenLevel
	{
		Case 2:
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 1
			ToolTip, Show super hidden, 10, 5
		Case 1:
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
			ToolTip, Show hidden, 10, 5
		Case 0:
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 0
			RegWrite, REG_DWORD, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden, 0
			ToolTip, Show default, 10, 5
	}
}
