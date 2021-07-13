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
MouseGetPos x, y
arrowcolour := 0x838383

main:
PixelSearch, rightx, righty, rightarrow_x1, rightarrow_y1, rightarrow_x2,rightarrow_y2, arrowcolour, 0, Fast

2_right_x := rightx 
2_right_y := righty 

MouseMove %2_right_x%, %2_right_y%
SendEvent,{Click, %2_right_x%,%2_right_y%}
MouseMove, %x%, %y% 
ExitApp