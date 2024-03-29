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


IfExist, C:\temp\cw\web.txt
    {
    MouseGetPos x, y 
    MouseMove, %cw_mouse%, %cw_tools_y%
    SendEvent {Click, %cw_mouse%, %cw_tools_y%}
    MouseMove %x%, %y%
    ExitApp
    }
Else
    {
    MouseGetPos x, y 
    MouseMove, %cw_mouse%, %cw_tools_y_2%
    SendEvent {Click, %cw_mouse%, %cw_tools_y_2%}
    MouseMove %x%, %y%
    ExitApp
    }   