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

;MouseGetPos x, y
;MouseMove 200, 1666
;SendEvent {Click , 200, 1666}
;MouseMove %x%, %y%
;HDR pane extension existance
tabexistance := 00000
PixelGetColor, tabexistance, 1415, %lowernavbar_y%, 
IfEqual, tabexistance, 0x212121   
{
MouseGetPos x, y
FileDelete, C:\temp\tabopen.txt
FileAppend, (on), C:\temp\tabclosed.txt
MouseMove %x%, %y%
Exit
}
Else
{
FileDelete, C:\temp\tabclosed.txt
FileAppend, (on), C:\temp\tabopen.txt
MouseMove %x%, %y%
Exit
}
Exit