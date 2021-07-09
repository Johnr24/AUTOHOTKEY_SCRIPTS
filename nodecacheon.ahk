#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 10
MouseGetPos x, y
SendEvent {Click, Right, 3500, 656}
Sleep,  10
SendEvent {Click, 3550, 922}
Sleep, 10
SendEvent {Click, 3693, 942}
Sleep, 10
SendEvent,{Click,}
MouseMove %x%, %y%