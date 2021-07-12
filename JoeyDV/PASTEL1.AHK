#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0

#include %A_ScriptDir%\CONFIG.ahk

MouseGetPos x, y


bx := x_offset + 333
by := y_offset + 1115
SendEvent {Click, %bx%, %by%}
bx := x_offset + 943
by := y_offset + 1150
SendEvent {Click, %bx%, %by%}
bx := x_offset + 1002
by := y_offset + 1344
SendEvent {Click, %bx%, %by%}

MouseMove %x%, %y%
