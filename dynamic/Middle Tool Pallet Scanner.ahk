#SingleInstance, Force
#KeyHistory, 0
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
  ; Recommended for performance and compatibility with future AutoHotkey releases.
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
        Goto, curves_stopcheck
    }
Else
{
    Goto, colourwarpercheck ;next one in the chain
}

curves_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, curves_c, %curves%, %tby%
IfEqual, curves_c, 0xFBFBFB
{
    Goto, curves_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\curves.txt
    Goto, resolvecheck
}

colourwarpercheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourwarper_c, %colourwarper%, %tby%
    IfEqual, colourwarper_c, 0x6E6E6E
    {
        Goto, colourwarper_stopcheck
    }
    Else
    {
Goto, qualiferchecker
    }


colourwarper_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourwarper_c, %colourwarper%, %tby%
IfEqual, colourwarper_c, 0x6E6E6E
{
    Goto, colourwarper_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\colourwarper.txt
    Goto, resolvecheck
}

qualiferchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, qualifer_C, %qualifer%, %tby%
    IfEqual, qualifer_C, 0xFFFFFF
    {

        Goto, qualifer_stopcheck
    }
    Else
    {
Goto, windowchecker
    }

qualifer_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, qualifer_C, %qualifer%, %tby%
IfEqual, qualifer_C, 0xFFFFFF
{
    Goto, qualifer_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\keyer.txt
    Goto, resolvecheck
}

windowchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, %tby%
    IfEqual, powerwindow_C, 0x404040
    {

        Goto, window_stopcheck
    }
    Else
    {
Goto, trackerchecker
    }


window_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, %tby%
IfEqual, powerwindow_C, 0x404040
{
    Goto, window_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\window.txt
    Goto, resolvecheck
}

trackerchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, tracker_c, %tracker%, 1667
    IfEqual, tracker_c, 0xFFFFFF
    {

        Goto, tracker_stopcheck
    }
    Else
    {
Goto, magicmaskchecker
    }


tracker_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, tracker_c, %tracker%, 1667
IfEqual, tracker_c, 0xFFFFFF
{
    Goto, tracker_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\tracker.txt
    Goto, resolvecheck
 
}

magicmaskchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, magicmask_c, %magicmask%, %tby%
    IfEqual, magicmask_c, 0x626262
    {
        Goto, magicmask_stopcheck
    }
    Else
    {
Goto, blurtoolchecker
    }


magicmask_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, magicmask_c, %magicmask%, %tby%
IfEqual, magicmask_c, 0x626262
{
    Goto, magicmask_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\magicmask.txt
    Goto, resolvecheck
}

blurtoolchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, blurtool_c, %blurtool%, %tby%
    IfEqual, blurtool_c, 0xFFFFFF
    {
        Goto, blurtool_stopcheck
    }
    Else
    {
Goto, keywindowchecker
    }


blurtool_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, blurtool_c, %blurtool%, %tby%
IfEqual, blurtool_c, 0xFFFFFF
{
    Goto, blurtool_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\blur.txt
    Goto, resolvecheck
}
keywindowchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c, %keytool%, %tby%
    IfEqual, keywindow_c, 0xFFFFFF
    {
        Goto, keystopcheck
    }
    Else
    {
Goto, sizingchecker
    }


keywindow_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c,  %keytool%, %tby%
IfEqual, keywindow_c, 0xFFFFFF
{
    Goto, keywindow_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\keywindow.txt
    Goto, resolvecheck
}

keystopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{

    Goto, resolvecheck
}
Else
Goto, keywindowdoublecheck
keywindowdoublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\keywindowactive.exe
            FileAppend, on, C:\temp\mt\keywindow.txt
            Goto, keywindow_checkeroff

sizingchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
    IfEqual, key_c, 0x484848
    {
        Goto, sizing_stopchecker
    }
    Else
    {
Goto, resolvecheck ;CHANGE THIS TO EXPAND 
    }


sizing_checkeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
IfEqual, key_c, 0x484848
{
    Goto, sizing_checkeroff
}
Else
{
    FileDelete, C:\temp\mt\sizing.txt
    Goto, resolvecheck
}
    
editcheck:
    PixelGetColor, edit_c, 1949, 2136
    IfEqual, edit_c, 0x000000
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\editactive.exe
        Goto, editcheckhold
    }
    Else
    {
Goto, resolvecheck
    }


editcheckhold:
    PixelGetColor, edit_c, 1949, 2136
IfEqual, edit_c, 0x000000
{
    Goto, editcheckhold
}
Else
{
    Goto, resolvecheck
}

curves_stopcheck:
    IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, curves_doublecheck
curves_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe
            FileAppend, on, C:\temp\mt\curves.txt
            Goto, curves_checkeroff
}

magicmask_stopcheck:
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, magicmask_doublecheck
magicmask_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe
            FileAppend, on, C:\temp\mt\magicmask.txt
            Goto, magicmask_checkeroff
}

sizing_stopchecker:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, sizing_doublecheck
sizing_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe
            FileAppend, on, C:\temp\mt\sizing.txt
            Goto, sizing_checkeroff
}

colourwarper_stopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, colourwarper_doublecheck
colourwarper_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe
            FileAppend, on, C:\temp\mt\colourwarper.txt
            Goto, colourwarper_checkeroff
}

tracker_stopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, tracker_doublecheck
tracker_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe
            FileAppend, on, C:\temp\mt\tracker.txt
            Goto, tracker_checkeroff
}

qualifer_stopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, qualifer_doublecheck
qualifer_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\keyactive.exe
            FileAppend, on, C:\temp\mt\keyer.txt
            Goto, qualifer_checkeroff
}

blurtool_stopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{
    Goto, resolvecheck
}
Else
{
Goto, blurtool_doublecheck
blurtool_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\blurtoolactive.exe
            FileAppend, on, C:\temp\mt\blur.txt
            Goto, blurtool_checkeroff
}

window_stopcheck:
if WinActive("ahk_exe Resolve.exe")
IfExist, C:\temp\keysuspend.txt
{

    Goto, resolvecheck
}
Else
{
Goto, window_doublecheck
window_doublecheck:
    if WinActive("ahk_exe Resolve.exe")
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe
            FileAppend, on, C:\temp\mt\window.txt
            Goto, window_checkeroff
}