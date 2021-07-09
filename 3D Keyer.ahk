#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
SendEvent {Click, 1956, 1664}.
SendEvent {Click, 2170, 1710}. 
Send 0 {Enter}
MouseMove %x%, %y%