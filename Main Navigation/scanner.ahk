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

mod:
CoordMode, Pixel
    PixelGetColor, hdr_c, 205, 1665
    FileAppend,%hdr_c%, C:\temp\hdrlog.txt
    IfEqual, hdr_c, 0xFFFFFF
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\hdractive.exe
        Goto, lod2
    }
    Else
    {
Goto, mod
    }


lod2:
CoordMode, Pixel

    PixelGetColor, hdr_c, 205, %tby-%
IfEqual, hdr_C, 0xFFFFFF
{
    Goto, lod2
}
Else
{
    Goto, mod
}