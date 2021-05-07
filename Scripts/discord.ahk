/*
	Discord by Arcwand06
	Version 2.0
	Code by DarkNinja2462
	
	Turns typed text into emojis or reactions on discord.
*/
SoundBeep
SendMode, Input

#IfWinActive ahk_exe Discord.exe

^d::
	str := Clipboard
	str := RegexReplace(str, "U)([a-zC-NP-Z])", ":regional_indicator_$L1:​")
	str := RegexReplace(str, "U)([AB])", ":$L1:")
	str := RegexReplace(str, "U)O", ":o2:")
	Clipboard := str
	Send ^v
Return

^t::
str := ""
	i := 0
	string := clipboard
	Loop, Parse, string
	{
		emoji := "regional_indicator_" . A_LoopField
		Switch A_LoopField
		{
			case "a":
				if (floor(mod(i, 10) / 1) = 1)
					emoji = a
				i += 1
			case "b":
				if (floor(mod(i, 100) / 10) = 1)
					emoji = b
				i += 10
			case "c":
				if (floor(mod(i, 1000) / 100) = 1)
					emoji = star_and_crescent
				i += 100
			case "e":
				if (floor(mod(i, 10000) / 1000) = 1)
					emoji = three
				i += 1000
			case "h":
				if (floor(mod(i, 100000) / 10000) = 1)
					emoji = pisces
				i += 10000
			case "i":
				if (floor(mod(i, 1000000) / 100000) = 1)
					emoji = information_source
				i += 100000
			case "l":
				if (floor(mod(i, 10000000) / 1000000) = 1)
					emoji = one
				i += 1000000
			case "m":
				if (floor(mod(i, 100000000) / 10000000) = 1)
					emoji = m
				else if (floor(mod(i, 100000000) / 10000000) = 2)
					emoji = virgo
				else if (floor(mod(i, 100000000) / 10000000) = 3)
					emoji = scorpius
				i += 10000000
			case "n":
				if (floor(mod(i, 1000000000) / 100000000) = 1)
					emoji = capricorn
				i += 100000000
			case "o":
				if (floor(mod(i, 10000000000) / 1000000000) = 1)
					emoji = o2
				else if (floor(mod(i, 10000000000) / 1000000000) = 2)
					emoji = zero
				else if (floor(mod(i, 10000000000) / 1000000000) = 3)
					emoji = o
				i += 1000000000
			case "p":
				if (floor(mod(i, 100000000000) / 10000000000) = 1)
					emoji = parking
				i += 10000000000
			case "s":
				if (floor(mod(i, 1000000000000) / 100000000000) = 1)
					emoji = five
				i += 100000000000
			case "t":
				if (floor(mod(i, 10000000000000) / 1000000000000) = 1)
					emoji = cross
				else if (floor(mod(i, 10000000000000) / 1000000000000) = 2)
					emoji = orthodox_cross
				i += 1000000000000
			case "u":
				if (floor(mod(i, 100000000000000) / 10000000000000) = 1)
					emoji = ophiuchus
				i += 10000000000000
			case "v":
				if (floor(mod(i, 1000000000000000) / 100000000000000) = 1)
					emoji = aries
				i += 100000000000000
		}
		Send, {Esc}{Esc}f^a{Backspace}
		Sleep, 50
		Send, +=:%emoji%:{Enter}
		Sleep, 150
	}
Return

#IfWinActive
