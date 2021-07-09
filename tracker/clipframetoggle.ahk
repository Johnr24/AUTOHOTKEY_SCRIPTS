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
#include C:\AUTOHOTKEY_SCRIPTS\lib\AutoHotStreamDeck.ahk

#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

on := 0x838383
off := 0xFFFFFF
deckData := {ID: deckNum, Deck: deck, ActiveProfile: 0, CanvasPages: [], ToggleStates: [], SubCanvases: [], PageStart: pageStart}



frametoggle := 000000
cliptoggle := 000000
PixelGetColor, cliptoggle, %clip%, %t_low% 


IfEqual, cliptoggle, 0x171717  
{
    MouseGetPos x, y
    MouseMove, %frame%, %t_low%
    SendEvent {Click , %frame%, %t_low%}
    MouseMove %x%, %y%
    FileAppend, (on), C:\temp\scan\clipactive.txt
    FileDelete, C:\temp\scan\frameactive.txt

Exit
}
Else   ;very important
{   
    MouseGetPos x, y
    MouseMove, %clip%, %t_low%
    SendEvent {Click , %clip%, %t_low%}
    MouseMove %x%, %y%
    FileAppend, (on), C:\temp\scan\frameactive.txt
    FileDelete, C:\temp\scan\clipactive.txt

Exit
}
