/*
	Date & Time by ArcWandx86
	Version 1.0
	
	Uses the same shortcuts as spreadsheets. Type the date with ctrl+;, and the time with ctrl+shift+;.
*/
SendMode, Input

^;:: Send %A_DD% %A_MMMM% %A_YYYY%
^+;:: Send %A_Hour%:%A_Min%:%A_Sec%
