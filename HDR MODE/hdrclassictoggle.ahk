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

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

on := 0x838383
off := 0xFFFFFF
deckData := {ID: deckNum, Deck: deck, ActiveProfile: 0, CanvasPages: [], ToggleStates: [], SubCanvases: [], PageStart: pageStart}



hdrtoggle := 000000
primariestoggle := 000000
PixelGetColor, hdrtoggle, %hdr_tools%, %tby% 
PixelGetColor, primariestoggle, %primaries%, 1667 


IfEqual, primariestoggle, 0xFFFFFF   
{
    MouseGetPos x, y
    MouseMove, %hdr_tools%, %tby%
    SendEvent {Click , %hdr_tools%, %tby%}
    MouseMove %x%, %y%
    FileAppend, (on), C:\temp\scan\hactive.txt
    FileDelete, C:\temp\scan\pactive.txt

Exit
}
Else   ;very important
{   
    MouseGetPos x, y
    MouseMove, %primaries%, %tby%
    SendEvent {Click , %primaries%, %tby%}
    MouseMove %x%, %y%
    FileAppend, (on), C:\temp\scan\pactive.txt
    FileDelete, C:\temp\scan\hactive.txt

Exit
}
