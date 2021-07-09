#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 5
MouseGetPos x, y
SendEvent, {Click, 4090,92}
SendEvent, {Click, 4090,92}
SendEvent, {Click, 4090,92}
Send, +s 
sleep 300
MouseClickDrag, left, 3750,483,3596,900
sleep 300 

MouseMove %x%, %y%