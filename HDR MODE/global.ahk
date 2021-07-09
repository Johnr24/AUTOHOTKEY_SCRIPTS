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
#Include %A_ScriptDir%\zoneconfig.ahk

IfExist, C:\temp\tabclosed.txt 
{
    MouseGetPos x, y
    MouseMove 1444, 1700
    SendEvent {Click , 1444, 1700}
    MouseMove 206, %dark%
    SendEvent {Click , 206, %dark%}
    MouseMove 206, %black%
    SendEvent {Click , 206, %black%}
    MouseMove 206, %highlight%
    SendEvent {Click , 206, %highlight%}
    MouseMove 206, %specular%
    SendEvent {Click , 206, %specular%}
    MouseMove 1413, 1704
    SendEvent {Click , 1413, 1704}
    MouseMove %x%, %y%
Exit
}
IfExist, C:\temp\tabopen.txt 
{
    MouseGetPos x, y
    MouseMove, 1742, %black% 
    SendEvent {Click , 1742, %black%}
    MouseMove 1742, %dark%
    SendEvent {Click , 1742, %dark%}
    MouseMove 1742, %highlight%
    SendEvent {Click ,1742, %highlight%}
    MouseMove 1742, %specular%
    SendEvent {Click ,1742, %specular%}
    MouseMove %x%, %y%
Exit
}