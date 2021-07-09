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
 SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
 SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

on := 0x838383
off := 0xFFFFFF

PixelGetColor, webtoggle, %cw_web%, %cw_selectmenu% 

IfEqual, webtoggle, 0x7C7C7C   

{   
    MouseGetPos x, y
    MouseMove, %cw_grid%, %cw_selectmenu%
    SendEvent {Click , %cw_grid%, %cw_selectmenu%}
    MouseMove %x%, %y%
    Exit
}
Else   ;very important
{
    MouseGetPos x, y
    MouseMove, %cw_web%, %cw_selectmenu%
    SendEvent {Click , %cw_web%, %cw_selectmenu%}
    MouseMove %x%, %y%
    Exit
}
