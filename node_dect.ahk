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


PixelSearch, nodeX, nodeY, 3158, 84, 3686, 1486, 0xE64B3D , 30 , Fast
FileAppend, Node X - %NodeX% also NodeY - %NodeY%, C:\temp\fuck.txt
exitapp


old:
    MouseGetPos x, y
    SendEvent {Click, Right, 3500, 656}
    Sleep,  10
    SendEvent {Click, 3550, 922}
    Sleep, 10
    SendEvent {Click, 3693, 942}
    Sleep, 10
    SendEvent,{Click,}
    MouseMove %x%, %y%
    ExitApp