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
        Goto, blurtoolchecker
    }
if not WinActive("ahk_exe Resolve.exe")
Goto, resolvecheck

CoordMode, Pixel

blurtoolchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, blurtool_c, %blurtool%, %tby%
    IfEqual, blurtool_c, 0x626262
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe
        FileAppend, on, C:\temp\mt\.txt
        Goto, blurtoolcheckeroff
    }
    Else
    {
Goto, keywindowchecker
    }


blurtoolcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, blurtool_c, %blurtool%, %tby%
IfEqual, blurtool_c, 0x626262
{
    Goto, blurtoolcheckeroff
}
Else
{
    FileDelete, C:\temp\mt\.txt
    Goto, resolvecheck
}