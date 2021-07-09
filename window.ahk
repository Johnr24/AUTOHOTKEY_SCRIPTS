#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed,0
MouseGetPos x, y

SendEvent {Click, 384,7}
Sleep, 40
SendEvent {Click, 424,270}
Sleep, 40
MouseMove 724, 270
Sleep, 40
SendEvent {Click, 724,313}
MouseMove %x%, %y%
