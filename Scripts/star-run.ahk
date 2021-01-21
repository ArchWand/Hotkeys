/*
	Star-Run by Arcwand06
	Version 2.0
	
	Pressing the star key and a particular numberpad key will run something as if from the command line, determined by a file. Commands to be run can include things like paths of files or folders, websites, etc.
*/

RunFilePath := "C:\Users\bertz\Documents\​none\star-run.txt"
ZeroCmd := []
KeyDirectories := {0 : "C:\Users\bertz\Documents\​​School"}
Loop, Read, %RunFilePath%
{ ; Stores the commands to be run to a local array.
	if (A_LoopReadLine == "<")
		commandsAdd := true
	else if (A_LoopReadLine == ">")
		commandsAdd := false
	else if (commandsAdd)
	{
		ZeroCmd.Push(A_LoopReadLine)
	}
	else IfInString, A_LoopReadLine, ::
	{
		KeyType := StrSplit(A_LoopReadLine, "::",, MaxParts := 2)[1]
	}
}


Browser_Favorites & Numpad0::	; Zero
Browser_Favorites & NumpadIns:: ; Works when NumLock is off
WorkingDir := KeyDirectories[KeyType]
SetWorkingDir, %WorkingDir%
Goto, RunCmd


RunCmd:
	Input, input, L1 T5, {Enter},1,2,3,4,5,6,7,8,9
		; detects the specific folder requested
	if (ErrorLevel = "Match")
	{ ; Opens the correct subject folder
		run := ZeroCmd[input]
		Run, %run%
	} else if (ErrorLevel = "Timeout" || ErrorLevel = "Endkey:Enter")
	{ ; opens main folder given conditions
		Run, %A_WorkingDir%
	} else
	{ ; passes keys through
		SendInput %input%
	}
Return
