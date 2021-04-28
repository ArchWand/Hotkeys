# Changelog
### Scripts 2.3.0 | 27 April 2021
Added `fe_newFile.ahk`, which creates a hotkey for making files in Windows 10 file explorer.

### WinLog 1.0.0 | 01 April 2021
Created winlog.ahk

### Scripts 2.2.1 | 20 March 2021
`zero-width.ahk` no longer copies the zero-width space to the clipboard.

### Scripts 2.2.0 | 18 March 2021
Added `zero-width.ahk`

### Scripts 2.1.1 | 12 March 2021
`media_card.ahk` no longer unmutes media when triggered.

### Scripts 2.1.0 | 26 February 2021
Added `sticky-keys.ahk`.

### Scripts 2.0.2 | 22 February 2021
Maps the existing menu key to insert, so that it is still possible to use the insert key.

Fixed documentation on `date&time.ahk`, `discord.ahk`.

### Scripts 2.0.1 | 22 February 2021
Fixes bug where spamming the media card key would cause volume to increase.

### Scripts 2.0.0 | 18 February 2021
Made some keybinds play nicer with the Logitech Wireless K350 keyboard. Added `media_card.ahk` and an option to reload the script from the pause menu.

### Scripts 1.3.1 | 10 February 2021
Fixed a bug where `calc.ahk` would look at other virtual desktops to check for open calculators.

### Scripts 1.3.0 | 10 February 2021
Added discord text keys, with code from @DarkNinja2462.

### Scripts 1.2.0 | 01 February 2021
Added a hotkey for date and time. Uses standard spreadsheet hotkeys.

### Scripts 1.1.2 | 01 February 2021
Restructured `star-run` and `f2-email`. No difference in usage, but `star-run` is now better prepared for future updates. Fixed bug with `ahk_shortcuts` in which it was not possible to exit; close button has been remapped to double-tap `pause/break`.

### Scripts 1.1.1 | 21 January 2021
Fixed how `star-run` is executed, using a `Run` instead of `#Include`. Also removed `star-switcher` due to its incompatibility with `star-run`.

### Scripts 1.1.0 | 21 January 2021
Completely changed the way `star-file` works. It's been renamed to `star-run`, and now pulls from a text file instead of an internal switch.

### Scripts 1.0.0 | 26 December 2020
Created the changelog.

### Scripts 0.2.2 | 25 December 2020
Added visualToggle.ahk. First script taken from outside sources.

### Scripts 0.2.1 | 22 December 2020
Added easy-menu.ahk.

### Scripts 0.2.0 | 22 December 2020
Split the hotkeys into separate files. This majorly changed the way it worked, and drastically improved readability.

### Scripts 0.1.1 | 21 December 2020
Added pin hotkey.

### Scripts 0.1.0 | 21 December 2020
Initial release. Came with:
- calc
- f2-email
- star-files
- star-switcher
