/* 
	CreateFileRunArray by ArcWandx86
	Version 1.0
	
	Initializes an array for file-run.ahk
*/

CreateFileRunArray()
{
	RunFilePath := "C:\Users\bertz\Documents\None\file-run.txt"
	fileDir := {}
	modType := []
	files := []
	Loop, Read, %RunFilePath%
	{ ; Stores the commands to be run to a local array.
		if (A_LoopReadLine == "<")
			commandsAdd := true
		else if (A_LoopReadLine == ">")
			commandsAdd := false
		else if (commandsAdd)
		{
			files.Push(A_LoopReadLine)
		}
		else IfInString, A_LoopReadLine, ::
		{
			temp := StrSplit(A_LoopReadLine, "::",, MaxParts := 3)
			modType.Push(temp[1])
			fileDir[temp[2]] := temp[3]
		}
	}
}