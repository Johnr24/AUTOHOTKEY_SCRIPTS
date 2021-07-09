#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y
MouseMove 144,1669
SendEvent {Click, 144, 1669}
MouseMove 1510,1746
SendEvent {Click, 1510, 1746}.
MouseMove %x%, %y%
