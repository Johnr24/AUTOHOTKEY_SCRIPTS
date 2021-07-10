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
        Goto, curvescheck
    }
    Else
        {
            Goto, editcheck
        }
if not WinActive("ahk_exe Resolve.exe")
    Goto, resolvecheck

curvescheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, curves_c, %curves%, %tby%
    IfEqual, curves_c, 0xFBFBFB
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe
        FileAppend, on, C:\temp\mt\curves.txt
        Goto, curvescheckeroff
    }
Else
{
    Goto, colourwarpercheck ;next one in the chain
}

curvescheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, curves_c, %curves%, %tby%
IfEqual, curves_c, 0xFBFBFB
{
    Goto, curvescheckeroff
}
Else
{
    FileDelete, C:\temp\mt\curves.txt
    Goto, resolvecheck
}
