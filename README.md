# AHK Custom Shortcuts
This AutoHotKey script creates some custom keyboard shortcuts to make using my computer easier.  
This consists of any shortcuts I finds useful; if I think of any new ones to add, they'll get added.

### [AutoHotkey](https://www.autohotkey.com/) must be downloaded to run these scripts
Made for Windows 10

## How to use
Download the files, and make sure you have AutoHotkey installed. If you installed as a .zip, you should extract it.  
If you want this to run automatically at startup, right click the file in file explorer and select create shortcut. Press `win`+`R` to bring up the run prompt, and type `shell:startup`. This should open another file explorer window into the startup apps folder. Move the shortcut into there.

## Window Logger
This creates a log of all the windows that are open. It is triggered whenever any modifier keys (`ctrl`, `win`, `alt`) or `tab` is pressed.

## Scripts
Make sure that all the .ahk files are in the same folder (they should be by default). Run `ahk_shortcuts.ahk` to activate. Double press `pause/break` to exit.

## List of Shortcuts
### calc
Pressing the `calculator` key (calc) on the keyboard will now first attempt to activate any existing instances of calculator, instead of creating a new instance.  
`Ctrl`+`calc` creates a new instance of calculator, regardless of whether or not there are any already open.  
When in the calculator app, `ctrl`+`w` will close it.  

### date&time
Inserts the date in DD Month YYYY format when you press `ctrl`+`;`. Inserts the time in HH:MM:SS 24h format when you press `ctrl`+`shift`+`;`. These are the same hotkeys as most spreadsheets.

### easy-menu
Maps the `insert` key to the menu key/apps key (application key) for easier right clicking, and the menu key to `insert` so that applications that use the insert key are still useable.

### f2-email
Pressing `f2`+`1` or `f2`+`2` will paste in an email address. This can be changed by going into `f2-email.ahk` and changing the parts that contain my email address into your email address.

### fe_newFile
When in the Windows 10 File Explorer, pressing `ctrl`+`q` will create a new text file. This is done by directly creating a blank file in the open File Explorer directory, and navigating to it using key inputs.

### file-run <sub>_down to update_</sub>
`Ctrl`+`Alt`+`Numpad0`, followed by a number, opens folders for school in file explorer. This is specific to my hard drive; you can modify it to suit your needs by changing the associated file.

### hidden
Cycle through showing the default, showing hidden files, and showing protected system files by pressing `alt`+`shift`+`.`.

### invis-char
Enables the typing of invisible characters.

| Character | Keyboard Shortcut |
| :-------: | :---------------: |
| `U+200B` Zero-width space | `Right ctrl`+`Right alt`+`space`|
| `U+2063` Invisible separator | `Right ctrl`+`Right alt`+`,`|


### media_card.ahk
Pressing the `launch media` key, if you have one, will cause the media card with the pause, skip, and volume controls to pop up. Triggers upon key release.

### pin
`Ctrl`+`Win`+`A` will toggle the always on top status of the active window. This means that clicking away won't hide it.

### star-switcher <sub>_Depracated_</sub>
Pressing the star key (`bookmarks`) in a browser on a google page will switch to a different google user.  
This makes it easy to switch between two google users.

**NOTE:** this may not work as intended on certain google pages. Furthermore, this will not work on any other accounts — only google accounts.  
This will not work with more than two accounts. If you have more than two accounts signed in, it will only switch between the first two.  

### sticky-keys
Toggles sticky keys when you press `ctrl`+`shift`+`\`.

### visualToggle
Adds a visual indicator for the `caps lock` key. This shows as a small box in the corner of the screen when caps lock is on.

##
