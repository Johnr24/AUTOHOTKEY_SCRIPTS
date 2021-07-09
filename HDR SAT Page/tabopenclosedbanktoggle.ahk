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
#Include C:\AUTOHOTKEY_SCRIPTS\HDR MODE\zoneconfig.ahk
bankedornot := 000000 ;0xE88A14
tabexistance := 00000

;HDR pane extension existance
PixelGetColor, tabexistance, %hdr_dot_x%,%lowernavbar_y%

IfEqual, tabexistance, 0x212121
{
FileDelete, C:\temp\tabclosed.txt
FileAppend, (on), C:\temp\tabopen.txt
}
Else
{
FileDelete, C:\temp\tabopen.txt
FileAppend, (on), C:\temp\tabclosed.txt
}


PixelGetColor,bankedornot, %global_orange_x%, %global_orange_y%

IfEqual, bankedornot, 0xE88A14
{
    FileAppend, (on),C:\temp\notbanked.txt
    FileDelete, C:\temp\banked.txt
}
Else
{
    FileDelete, C:\temp\notbanked.txt
    FileAppend, (on),C:\temp\banked.txt
}

IfExist, C:\temp\tabopen.txt 
{
    MouseMove, 3056, 1709
    SendEvent, {Click, 3056, 1709}
    MouseMove, 3056, 1829
    SendEvent, {Click, 3056, 1829}
}

IfExist, C:\temp\tabclosed.txt 
{
    MouseMove, 1517, 1709
    SendEvent, {Click, 1517, 1709}
    MouseMove, 1517, 1829
    SendEvent, {Click, 1517, 1829}    
}
Else
PixelGetColor,bankedornot, %global_orange_x%, %global_orange_y%

IfEqual, bankedornot, 0xE88A14
{
    FileAppend, (on),C:\temp\notbanked.txt
    FileDelete, C:\temp\banked.txt
}
Else
{
    FileDelete, C:\temp\notbanked.txt
    FileAppend, (on),C:\temp\banked.txt
}
Exit