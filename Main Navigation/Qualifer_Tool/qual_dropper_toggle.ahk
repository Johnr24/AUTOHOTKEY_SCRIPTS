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

PixelGetColor, droppercolour, %qual_dropper%, %qual_select_y% 
PixelGetColor, qualpluscolour, %qual_plus%, %qual_select_y% 

qual_droppercheck:
IfEqual, droppercolour, 0xFFFFFF   
{
    Goto, clickminus
}
Else
{
    Goto, clickpluscheck
}

clickpluscheck:
IfEqual, qualpluscolour, 0xFFFFFF
{
    Goto, clickminus
}
Else
{
    Goto, clickplus
}

clickminus:
{
    MouseGetPos x, y 
    MouseMove, %qual_minus%, %qual_select_y%
    SendEvent {Click, %qual_minus%, %qual_select_y%}
    MouseMove %x%, %y%
    ExitApp, 
}

clickplus:
{
    MouseGetPos x, y 
    MouseMove, %qual_plus%, %qual_select_y%
    SendEvent {Click, %qual_plus%, %qual_select_y%}
    MouseMove %x%, %y%
    ExitApp, 
}
