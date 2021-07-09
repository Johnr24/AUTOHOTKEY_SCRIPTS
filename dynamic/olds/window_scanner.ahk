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


resolvecheck:
if WinActive("ahk_exe Resolve.exe")
    CoordMode, Pixel
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%

    IfEqual, colourtabcheck, 0x000000
    {
        Goto, windowchecker
    }   
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck

CoordMode, Pixel

windowchecker:
CoordMode, Pixel
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, %tby%
    IfEqual, powerwindow_C, 0x404040
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe
        FileAppend, on, C:\temp\mt\window.txt

        Goto, lod2
    }
    Else
    {
Goto, trackercheck
    }


lod2:
CoordMode, Pixel
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, %tby%
IfEqual, powerwindow_C, 0x404040
{
    Goto, lod2
}
Else
{
    FileDelete, C:\temp\mt\window.txt
    Goto, resolvecheck
}