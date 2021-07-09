#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
MouseGetPos x, y
SetDefaultMouseSpeed, 0
SendEvent {Click, 1956, 1664}.
SendEvent {Click, 2327, 1708}.
SendEvent {Click, 1785, 1751}.
SendEvent {Click, 1778, 1771}.
MouseMove %x%, %y%