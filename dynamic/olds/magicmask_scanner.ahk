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
        Goto, mod
    }
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck

CoordMode, Pixel

mod:
if WinActive("ahk_exe Resolve.exe")
CoordMode, Pixel
    PixelGetColor, magicmask_c, %magicmask%, %tby%
    IfEqual, magicmask_c, 0x626262
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe
        FileAppend, on, C:\temp\mt\magicmask.txt
        Goto, lod2
    }
    Else
    {
Goto, resolvecheck
    }


lod2:
if WinActive("ahk_exe Resolve.exe")
CoordMode, Pixel
    PixelGetColor, magicmask_c, %magicmask%, %tby%
IfEqual, magicmask_c, 0x626262
{
    Goto, lod2
}
Else
{
    FileDelete, C:\temp\mt\magicmask.txt
    Goto, resolvecheck
}