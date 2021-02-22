/*
	Media_card by Arcwand06
	Version 1.0
	
	Pops up the media card when you press the launch media key.
*/

*Launch_media::
	SoundGet volume
	SendInput {Volume_up}
	SoundSet volume
Return
