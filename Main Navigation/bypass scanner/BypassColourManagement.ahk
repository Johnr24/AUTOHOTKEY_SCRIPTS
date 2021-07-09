#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag

PixelSearch, Px, Py, 0, 1611, 4095, 1633, 0xCFCFCF , 0, Fast

FileAppend,( %Px% + %Py% ), C:\temp\fuck.txt

Rx := Px + 100
Ry := Py - 50
Ry2 := Ry - 220
FileAppend,( %Rx% + %Ry% ), C:\temp\fuck.txt

MouseGetPos x, y 
MouseMove, %Rx%, %Ry%
SendEvent {Click Right, %Px%, %Ry%}
Sleep, 100
MouseMove, %Rx%, %Ry2%
Sleep, 100
SendEvent {Click, %Rx%, %Ry2%}
Sleep, 100
Send, Click
MouseMove %x%, %y%
ExitApp