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
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk
PixelSearch, Px, Py, 2000, 1750, 2000, 2100, 0x212121, 0, Fast

FileAppend, (%Px% %Py%), C:\temp\outputvars.txt

2Px := Px + 730
2Py := Py + 25

MouseMove %2Px%, %2Py%
SendEvent,{Click, %2Px%,%2Py%}
FileAppend, %2Px% %2Py%, C:\temp\outputvars.txt

ExitApp


PixelSearch, OutputVarX, OutputVarY, 0, 1605, , Y2, ColorID [, Variation