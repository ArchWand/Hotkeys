/*
	CheckHiddenLevel by Arcwandx86
	Version 1.0
	
	Reads registry keys to figure out the level of hidden file that will be shown.
*/

CheckHiddenLevel()
{
	RegRead, HiddenLevel, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
	RegRead, SuperHidden, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced, ShowSuperHidden
	if (SuperHidden)
		HiddenLevel := 2
	Return HiddenLevel
}
