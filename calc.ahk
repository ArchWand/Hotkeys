/*
	Calc by Arcwand06
	Version 1.0
	
	# Modifies the behavior of the Windows calculator app.
	
	Pressing the calculator key (calc) on the keyboard will now first attempt to activate any existing instances of calculator.
	
	Ctrl+calc creates a new instance of calculator, regardless of whether or not there are any already open.
	
	When in the calculator app, ctrl+w will close it.
*/


Launch_App2::
	if WinExist("Calculator")
	{ ; tests if there is an open instance of calculator
		WinActivate, Calculator
	} else {
		Run calc
	}
Return 


; Pressing ctrl and the calc key creates a new calc.
^Launch_App2:: Run calc 


; Ctrl+w closes calculator
#ifWinActive Calculator
	~^w:: WinClose, A
#ifWinActive
