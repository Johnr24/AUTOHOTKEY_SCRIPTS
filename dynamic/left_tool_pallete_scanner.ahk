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
#SingleInstance, Force
#KeyHistory, 0
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

CoordMode, Pixel


resolvecheck: 
    if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%
    IfEqual, colourtabcheck, 0x000000
    {
        Goto, hdrchecker
    }
if not WinActive("ahk_exe Resolve.exe")
    Goto, resolvecheck

hdrchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, hdr_c, %HDR_tools%, %tby%
    IfEqual, hdr_c, 0xFFFFFF
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\hdractive.exe
        Goto, hdrcheckeroff
    }
Else
{
    Goto, resolvecheck ;back to the start expand off this one if need to
}

hdrcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, hdr_c, %HDR_tools%, %tby%
IfEqual, hdr_c, 0xFFFFFF
{
    Goto, hdrcheckeroff
}
Else
{
    Goto, resolvecheck
}