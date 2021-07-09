#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y
SendEvent {Click, 2195, 1664}
Sleep 10
SendEvent {Click, 2841, 1911}
SendEvent {Click, 2841, 1911}
Send 1 {Enter}
SendEvent {Click, 1902, 1667}

MouseMove %x%, %y%

