# AHK Custom Shortcuts
This AutoHotKey script creates some custom keyboard shortcuts to make using my computer easier.  
This consists of any shortcuts I finds useful; if I think of any new ones to add, they'll get added.

### [AutoHotkey](https://www.autohotkey.com/) must be downloaded to run these scripts

Made on Windows 10 20H2

## How to use
Download the files, and make sure you have AutoHotkey installed. If you installed as a .zip, you should extract it. Make sure that all the .ahk files are in the same folder (they should be by default). Run `ahk_shortcuts.ahk` to activate. Double press `pause/break` to exit.

If you want this to run automatically at startup, right click it in file explorer and select create shortcut. Press win+R to bring up the run prompt, and type `shell:startup`. Move the shortcut into there.

## List of Shortcuts
### calc
***Modifies the behavior of the Windows calculator app.***  
Pressing the `calculator` key (calc) on the keyboard will now first attempt to activate any existing instances of calculator, instead of creating a new instance.  
`Ctrl`+`calc` creates a new instance of calculator, regardless of whether or not there are any already open.  
When in the calculator app, `ctrl`+`w` will close it.  

### date&time
Inserts the date in DD Month YYYY format when you press `ctrl`+`;`. Inserts the time in HH:MM:SS 24h format when you press `ctrl`+`shift`+`;`. These are the same hotkeys as most spreadsheets.

### easy-menu
Maps the `scroll lock` to the menu key/apps key (application key) for easier right clicking.

### f2-email
Pressing `f2`+`1` or `f2`+`2` will paste in an email address. This can be changed by going into `f2-email.ahk` and changing the parts that contain my email address (either `robert.zhu@k12.wcsdny.org` or `robert.zhu06@gmail.com`) into your email address.

### pin
`Ctrl`+`Win`+`A` will toggle the always on top status of the active window. This means that clicking away won't hide it.

### star-run
`Star`+`Numpad0`, followed by a number opens folders for school in file explorer. This is specific to my hard drive; you can modify it to suit your needs by changing the associated file.

**NOTE:** Requires `Run` command. Incompatible with `star-switcher.ahk`.

### star-switcher
Pressing the star key (`bookmarks`) in a browser on a google page will switch to a different google user.  
This makes it easy to switch between two google users.

**NOTE:** this may not work as intended on certain google pages. Furthermore, this will not work on any other accounts — only google accounts.  
This will not work with more than two accounts. If you have more than two accounts signed in, it will only switch between the first two.  
Incompatible with `star-run.ahk`.

### visualToggle
Adds a visual indicator for the `caps lock` key. This shows as a small box in the corner of the screen when caps lock is on.

This is the only one that is not originally by me; however, future versions of this will be entirely by me.
