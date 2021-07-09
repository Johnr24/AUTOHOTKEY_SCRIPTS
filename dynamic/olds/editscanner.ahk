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
Goto, mod
    
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck

CoordMode, Pixel

mod:
CoordMode, Pixel
    PixelGetColor, edit_c, 1949, 2136
    IfEqual, edit_c, 0x000000
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\editactive.exe
        Goto, lod2
    }
    Else
    {
Goto, resolvecheck
    }


lod2:
CoordMode, Pixel
    PixelGetColor, edit_c, 1949, 2136
IfEqual, edit_c, 0x000000
{
    Goto, lod2
}
Else
{
    Goto, resolvecheck
}