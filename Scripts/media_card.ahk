/*
	Media_card by Arcwand06
	Version 1.1
	
	Pops up the media card when you press the launch media key.
*/

*Launch_media::
	SoundGet volume
	Send {Volume_up}{Volume_down}
	Sleep 50
	SoundSet volume
Return
