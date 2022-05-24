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

tabexistance := 00000

;HDR pane extension existance

PixelGetColor, tabexistance, %hdr_dot_x%,%lowernavbar_y%
;FileAppend, [ %tabexistance%,C:\temp\tab.txt

IfEqual, tabexistance, 0x212121   
{
MouseGetPos x, y
MouseMove 2722, %lowernavbar_y%
SendEvent {Click , 2722, %lowernavbar_y%}
MouseMove %x%, %y%
FileDelete, C:\temp\tabopen.txt
FileAppend, (on), C:\temp\tabclosed.txt
}

Else
{
FileDelete, C:\temp\tabclosed.txt
FileAppend, (on), C:\temp\tabopen.txt
 MouseGetPos x, y
   MouseMove 1283, %lowernavbar_y%
SendEvent {Click , 1283, %lowernavbar_y%}
MouseMove %x%, %y%
}

Exit