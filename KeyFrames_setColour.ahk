#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y
SendEvent {Click, 3945, 1668}
SendEvent {Click, 3901, 1706}
SendEvent {Click, 3910, 1760}
Send 0 {Enter}
MouseMove %x%, %y%