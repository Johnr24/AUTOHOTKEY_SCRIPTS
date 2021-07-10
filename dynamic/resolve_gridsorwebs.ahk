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

ce
resolvecheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%
    IfEqual, colourtabcheck, 0x000000
    {
        Goto, grids_or_webs
    }
if not WinActive("ahk_exe Resolve.exe")
    Goto, resolvecheck

grids_or_webs:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, webcolour, %cw_web%, %cw_selectmenu%
    IfEqual, webcolour, 0xFFFFFF
    {
        FileAppend, (web), C:\temp\cw\web.txt
        FileDelete, C:\temp\cw\grids.txt
        Goto, resolvecheck
    }
    Else
    {
        FileAppend, (grids), C:\temp\cw\grids.txt
        FileDelete, C:\temp\cw\web.txt
        Goto, resolvecheck
    }