#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 1
MouseGetPos x, y


IfExist, C:\temp\dvfast.txt
{

bx := x_offset + 790
by := y_offset + 1383

bx1 := x_offset + 790 - fast
by1 := y_offset + 1383
SendEvent {Click, %bx%, %by%, down}{CLick,%bx1%, %by1%,up}
}
else
{

bx := x_offset + 790
by := y_offset + 1383

bx1 := x_offset + 790 - slow
by1 := y_offset + 1383
SendEvent {Click, %bx%, %by%, down}{CLick,%bx1%, %by1%,up}


}
MouseMove %x%, %y%