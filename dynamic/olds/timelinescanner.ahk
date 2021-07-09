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


    IfEqual, colourtabcheck, 0x000000
    {
        Goto, mod
    }   
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck


mod:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, timeline_c, %Timeline%, %bigbar_y%
    IfEqual, timeline_c, 0x151515
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\timelineactive.exe
        FileAppend, on, C:\temp\mt\timeline.txt

        Goto, lod2
    }
    Else
    {
Goto, resolvecheck
    }


lod2:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, timeline_c,  %Timeline%, %bigbar_y%
IfEqual, timeline_c, 0x151515
{
    Goto, lod2
}
Else
{
    FileAppend, on, C:\temp\mt\timeline.txt
    Goto, resolvecheck
}