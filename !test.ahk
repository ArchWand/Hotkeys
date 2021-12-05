SoundBeep
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, C:\WINDOWS\System32\SHELL32.dll, 85
VarFile=%UserProfile%\Documents\Code\Autohotkey\.data\test.var

Hotkeys := ["f10", "WheelDown"]
AssignHotkeyLabels()

FileReadLine, HotkeysStates, %VarFile%, 1
HotkeysStates := SubStr(HotkeysStates, 1, Hotkeys.Length())
while (StrLen(HotkeysStates) < Hotkeys.Length()) {
	HotkeysStates .= "1"
}
SetHotkeysState(HotkeysStates)

Gosub, CreateTestSettingsGUI
SetKeyDelay 100
Return


WheelDown::Click

f10::
SetTimer, Timer, % (timer := !timer) ? "5000" : "Off"
Return

; SetTimer, Timer, % (timer := !timer) ? "1000" : "Off"
Timer:
SendInput y{!}fish{Enter}
SendInput y{!}mine{Enter}
SendInput y{!}chop{Enter}
Return







AssignHotkeyLabels() {
}

SetHotkeysState(HotkeysStates) {
	global Hotkeys
	Loop, Parse, HotkeysStates
	{
		hotkey := Hotkeys[A_Index]
		if (A_LoopField) {
			Hotkey, %hotkey%, On
		} else {
			Hotkey, %hotkey%, Off
		}
	}
}

CreateTestSettingsGUI:
	Gui, TestSettings:New, +AlwaysOnTop +ToolWindow, !test.ahk - Settings
		
	CheckBoxVarName := "HotkeyOnOff"
	PipedHotkeysvNames := ""
	for i, ElementKeys in Hotkeys {
		keyState := SubStr(HotkeysStates, i, 1)
		Gui, Add, CheckBox, xs y+15 Section gUpdateHotkeysState -Tabstop Checked%keyState% v%CheckBoxVarName%%i%
		Gui, Add, Hotkey, ys vHotkey%i% +Disabled, %ElementKeys%
		
		PipedHotkeysvNames .= Format("HotkeyOnOff{1}|Hotkey{1}|", i)
	}
	GuiControl, +Tabstop, HotkeyOnOff1
	
	GroupBox("HotkeyPanel", "Hotkeys", 10, 8, PipedHotkeysvNames)
	Gui, Add, Button, Section vEditHotkeys, Edit &Hotkeys
	
	Gui, Add, Button, w51 y+15 Section +Default vEditScriptButton, &Edit
	Gui, Add, Button, w51 ys -Tabstop, &Reload
	Gui, Add, Button, w51 ys -Tabstop, Stop (&x)
	Gui, TestSettings:Show, x%A_ScreenWidth% y%A_ScreenHeight%
	Gui, TestSettings:Hide
Return


^Esc::
	Gui, TestSettings:Show, Center
Return


UpdateHotkeysState:
	GuiControlGet, state,, %A_GuiControl%
	HotkeysStates := ReplaceAtPos(HotkeysStates, SubStr(A_GuiControl, StrLen(CheckBoxVarName) + 1), state)
	SetHotkeysState(HotkeysStates)
	TF_ReplaceLine("!"VarFile,1,0, HotkeysStates)
Return

TestSettingsButtonEditHotkeys:
	GuiControlGet, EditingHotkeys,, EditHotkeys
	if (Substr(EditingHotkeys, 1, 4) == "Edit") {
		GuiControl,, EditHotkeys, &Save
		GuiControl, Enable, Hotkey1
		GuiControl, Enable, Hotkey2
	} else {
		GuiControl,, EditHotkeys, Edit &Hotkeys
		GuiControl, Disable, Hotkey1
		GuiControl, Disable, Hotkey2
	}
Return

TestSettingsButtonEdit:
	Edit
	Gui, TestSettings:Hide
Return

TestSettingsGuiEscape:
TestSettingsButtonReload:
	Gui, TestSettings:Hide
	Reload
Return

TestSettingsButtonStop(x):
	SoundPlay *48
	Gui, TestSettings:Hide
	ExitApp
Return
