# ahk-scripts

A collection of AutoHotkey scripts for everyday Windows use.

## Scripts

| Script | Description |
|---|---|
| [Symbols](symbols/) | Type Greek letters, units, math symbols and arrows using short trigger words (`alphasym` → α) |
| [Paste Plain Text](paste-plain-text/) | Paste copied text without formatting using `Ctrl + Shift + V` |
 
Each script has its own folder with a README explaining how to use it.

## Requirements

- Windows
- [AutoHotkey v2](https://www.autohotkey.com/)

Every script starts with a `#Requires AutoHotkey v2.0` line, so AutoHotkey shows a clear message if you run it with the wrong version.

## Running a script

1. Install AutoHotkey v2.
2. Download the `.ahk` file you want from its folder (or clone the whole repository).
3. Double-click the `.ahk` file. A green **H** icon appears in the system tray while it's running.

To pause or stop a script, right-click its tray icon and choose *Suspend Hotkeys* or *Exit*.

### Start automatically with Windows

1. Press `Win + R`, type `shell:startup` and press Enter.
2. Put a shortcut to the `.ahk` file in the folder that opens.

Do this for each script you want running all the time.