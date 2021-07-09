#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 5
MouseGetPos x, y
SendEvent {Click, 547, 8}
SendEvent {Click, 547, 41}
SendEvent {Click, 992, 413}
MouseMove %x%, %y%
