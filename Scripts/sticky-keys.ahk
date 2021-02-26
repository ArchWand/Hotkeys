/*
	Sticky Keys by SwagFag (u=75383)
	Version 1.0
	
	Toggles sticky keys when ctrl+shift+\ is pressed.
*/

^+\::toggleStickyKeys(toggle := !toggle)

toggleStickyKeys(enableStickyKeys := true) {
	static SPI_GETSTICKYKEYS := 0x003A
		 , SPI_SETSTICKYKEYS := 0x003B
		 , SIZE_STICKYKEYS := 8
		 , SKF_STICKYKEYSON := 0x00000001
		 , SPIF_UPDATEINIFILE := 0x0001
		 , SPIF_SENDCHANGE := 0x0002

	VarSetCapacity(SK, SIZE_STICKYKEYS, 0)
	NumPut(SIZE_STICKYKEYS, &SK, 0, "UInt")

	DllCall("SystemParametersInfo", "UInt", SPI_GETSTICKYKEYS, "UInt", SIZE_STICKYKEYS, "Ptr", &SK, "UInt", 0)

	dwFlags := NumGet(&SK, 4, "UInt")

	if enableStickyKeys
		dwFlags |= SKF_STICKYKEYSON
	else
		dwFlags &= ~SKF_STICKYKEYSON

	NumPut(dwFlags, &SK, 4, "UInt")

	DllCall("SystemParametersInfo", "UInt", SPI_SETSTICKYKEYS, "UInt", SIZE_STICKYKEYS, "Ptr", &SK, "UInt", SPIF_UPDATEINIFILE | SPIF_SENDCHANGE)
}