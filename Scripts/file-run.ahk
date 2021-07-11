/*
	File-Run by ArcWandx86
	Version 2.0
	
	Pressing ctrl and alt and a particular numberpad key will run something as if from the run prompt, determined by a file. Commands to be run can include things like paths of files or folders, websites, etc.
*/

^!Numpad0::	; Zero
^!NumpadIns:: ; Works when NumLock is off
CreateArray()
modifier := 0
dir := fileDir[modifier]
SetWorkingDir, %dir%
Goto, RunCmd


RunCmd:
	Input, input, L1 T3, {Enter},1,2,3,4,5,6,7,8,9
		; detects the specific folder requested
	if (ErrorLevel = "Match")
	{ ; Opens the correct subject folder
		run := files[input]
		Run, %run%
	} else if (ErrorLevel = "Timeout" || ErrorLevel = "Endkey:Enter")
	{ ; opens main folder given conditions
		Run, %A_WorkingDir%
	} else
	{ ; passes keys through
		SendInput %input%
	}
Return
