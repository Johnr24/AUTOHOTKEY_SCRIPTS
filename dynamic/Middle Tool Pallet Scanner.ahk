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

colourwarpercheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourwarper_c, %colourwarper%, %tby%
    IfEqual, colourwarper_c, 0x6E6E6E
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe
        FileAppend, on, C:\temp\mt\colourwarper.txt
        Goto, colourwarpercheckeroff
    }
    Else
    {
Goto, qualiferchecker
    }


colourwarpercheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourwarper_c, %colourwarper%, %tby%
IfEqual, colourwarper_c, 0x6E6E6E
{
    Goto, colourwarpercheckeroff
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
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\keyactive.exe
        FileAppend, on, C:\temp\mt\keyer.txt
        Goto, qualifercheckeroff
    }
    Else
    {
Goto, windowchecker
    }

qualifercheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, qualifer_C, %qualifer%, %tby%
IfEqual, qualifer_C, 0xFFFFFF
{
    Goto, qualifercheckeroff
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
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe
        FileAppend, on, C:\temp\mt\window.txt
        Goto, windowcheckeroff
    }
    Else
    {
Goto, trackerchecker
    }


windowcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, %tby%
IfEqual, powerwindow_C, 0x404040
{
    Goto, windowcheckeroff
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
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe
        FileAppend, on, C:\temp\mt\tracker.txt
        Goto, trackercheckeroff
    }
    Else
    {
Goto, magicmaskchecker
    }


trackercheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, tracker_c, %tracker%, 1667
IfEqual, tracker_c, 0xFFFFFF
{
    Goto, trackercheckeroff
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
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe
        FileAppend, on, C:\temp\mt\magicmask.txt
        Goto, magicmaskcheckeroff
    }
    Else
    {
Goto, blurtoolchecker
    }


magicmaskcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, magicmask_c, %magicmask%, %tby%
IfEqual, magicmask_c, 0x626262
{
    Goto, magicmaskcheckeroff
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
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\blurtoolactive.exe
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
IfEqual, blurtool_c, 0xFFFFFF
{
    Goto, blurtoolcheckeroff
}
Else
{
    FileDelete, C:\temp\mt\.txt
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


keywindowcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c,  %keytool%, %tby%
IfEqual, keywindow_c, 0xFFFFFF
{
    Goto, keywindowcheckeroff
}
Else
{
    FileDelete, C:\temp\mt\keywindow.txt
    Goto, resolvecheck
}

keystopcheck:
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
            Goto, keywindowcheckeroff

sizingchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
    IfEqual, key_c, 0x484848
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe
        FileAppend, on, C:\temp\mt\sizing.txt

        Goto, sizingchecker2
    }
    Else
    {
Goto, resolvecheck ;CHANGE THIS TO EXPAND 
    }


sizingchecker2:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
IfEqual, key_c, 0x484848
{
    Goto, sizingchecker2
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


