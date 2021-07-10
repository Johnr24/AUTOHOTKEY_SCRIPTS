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

PixelGetColor, personfeaturestoggle, %mm_faster%, %mm_quality_y% 

IfEqual, personfeaturestoggle, 0x171717   

{   
    MouseGetPos x, y
    MouseMove, %mm_better%, %mm_quality_y%
    SendEvent {Click , %mm_better%, %mm_quality_y%}
    MouseMove %x%, %y%
    Exit
}
Else   ;very important
{
    MouseGetPos xa, ya
    MouseMove, %mm_faster%, %mm_quality_y%
    SendEvent {Click , %mm_faster%, %mm_quality_y%}
    MouseMove %xa%, %ya%
    Exit
}
