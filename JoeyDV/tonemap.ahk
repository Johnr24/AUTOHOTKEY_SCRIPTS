#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
MouseGetPos x, y

#include %A_ScriptDir%\CONFIG.ahk



bx := x_offset + 333
by := y_offset + 1115
SendEvent {Click, %bx%, %by%}
bx := x_offset + 41
by := y_offset + 1390
SendEvent {Click, %bx%, %by%}

MouseMove %x%, %y%
