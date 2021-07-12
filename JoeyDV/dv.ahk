#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 1


MouseGetPos x, y

;MouseClickDrag, left,790,1230,791,1230

SendEvent {Click, 790, 1230, down}{CLick,810,1230,up}

MouseMove %x%, %y%