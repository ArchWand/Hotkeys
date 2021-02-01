/*
	Calc by Arcwand06
	Version 1.0
	
	# Modifies the behavior of the Windows calculator app.
	
	Pressing the calculator key (calc) on the keyboard will now first attempt to activate any existing instances of calculator.
	
	Ctrl+calc creates a new instance of calculator, regardless of whether or not there are any already open.
	
	When in the calculator app, ctrl+w will close it.
*/
SendMode, Input

^;:: Send %A_DD% %A_MMMM% %A_YYYY%
^+;:: Send %A_Hour%:%A_Min%:%A_Sec%
