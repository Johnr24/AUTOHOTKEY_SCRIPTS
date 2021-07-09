#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
FileAppend, (on), C:\temp\keysuspend.txt
SetDefaultMouseSpeed, 0
MouseGetPos x, y
SendEvent {Click, 2195, 1664}
Sleep 10
SendEvent {Click, 2841, 1911}
SendEvent {Click, 2841, 1911}
Send 0.50 {Enter}
SendEvent {Click, 1902, 1667}

MouseMove %x%, %y%
FileDelete, C:\temp\keysuspend.txt
exitapp