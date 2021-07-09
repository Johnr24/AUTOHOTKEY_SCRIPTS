#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include %A_ScriptDir%\CONFIG.ahk
SetDefaultMouseSpeed, 1
F24 & Wheeldown
    bx := x_offset + 3852
    by := y_offset + 410

    SendEvent {Click, %bx%, %by%}

    bx := x_offset + bx - slow
    by := y_offset + 410

    SendEvent {Click, %bx%, %by%}

F24 & WheelUp

    bx := x_offset + 3852
    by := y_offset + 410

    SendEvent {Click, %bx%, %by%}

    bx := x_offset + 3852 + slow
    by := y_offset + 410

    SendEvent {Click, %bx%, %by%}
