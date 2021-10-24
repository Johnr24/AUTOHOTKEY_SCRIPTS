#SingleInstance, Force
#KeyHistory, 0
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 2 ; no re-entrant hotkey handling
  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Include, C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

CoordMode, Pixel


resolvecheck:
if not WinActive("ahk_exe Resolve.exe")
    Goto, resolvecheck
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourtabcheck, %colourpage%, %pagebar%
    IfEqual, colourtabcheck, 0x000000
    {
        Goto, keysuspend_colour
    }
    Else
    {
        PixelGetColor, editpagecheck, %editpage%, %pagebar%
        IfEqual, editpagecheck, 0x000000
        {
            Goto, keysuspend_edit
        }
        Else
        {
            Goto, resolvecheck
        }
    }
curvescheck:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, curves_c, %curves%, %tby%
    IfEqual, curves_c, 0xFBFBFB
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe
        FileAppend, on, C:\temp\mt\curves.txt
        WinActivate, ahk_exe Resolve.exe
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
    IfEqual, colourwarper_c, 0xD8D8D8
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe
        FileAppend, on, C:\temp\mt\colourwarper.txt
        WinActivate, ahk_exe Resolve.exe
        Goto, colourwarpercheckeroff
    }
    Else
    {
Goto, qualiferchecker
    }


colourwarpercheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, colourwarper_c, %colourwarper%, %tby%
IfEqual, colourwarper_c, 0xD8D8D8
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
        WinActivate, ahk_exe Resolve.exe
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
    PixelGetColor, powerwindow_C, %powerwindow%, 1667
    IfEqual, powerwindow_C, 0x666666
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe
        FileAppend, on, C:\temp\mt\window.txt
        WinActivate, ahk_exe Resolve.exe
        Goto, windowcheckeroff
    }
    Else
    {
Goto, trackerchecker
    }


windowcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, powerwindow_C, %powerwindow%, 1667
IfEqual, powerwindow_C, 0x666666
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
    IfEqual, tracker_c, 0x404040
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe
        FileAppend, on, C:\temp\mt\tracker.txt
        WinActivate, ahk_exe Resolve.exe
        Goto, trackercheckeroff
    }
    Else
    {
Goto, magicmaskchecker
    }


trackercheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, tracker_c, %tracker%, 1667
IfEqual, tracker_c, 0x404040
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
    IfEqual, magicmask_c, 0xFFFFFF
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe
        FileAppend, on, C:\temp\mt\magicmask.txt
        WinActivate, ahk_exe Resolve.exe
        Goto, magicmaskcheckeroff
    }
    Else
    {
Goto, blurtoolchecker
    }


magicmaskcheckeroff:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, magicmask_c, %magicmask%, %tby%
IfEqual, magicmask_c, 0xFFFFFF
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
        FileAppend, on, C:\temp\mt\blur.txt
        WinActivate, ahk_exe Resolve.exe
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
    FileDelete, C:\temp\mt\blur.txt
    Goto, resolvecheck
}
keywindowchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, keywindow_c, %keytool%, %tby%
    IfEqual, keywindow_c, 0xFFFFFF
    {
            Run, C:\AUTOHOTKEY_SCRIPTS\exe\keywindowactive.exe
            FileAppend, on, C:\temp\mt\keywindow.txt
            Goto, keywindowcheckeroff
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

sizingchecker:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, key_c, %sizing%, %tby%
    IfEqual, key_c, 0x484848
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe
        FileAppend, on, C:\temp\mt\sizing.txt
        WinActivate, ahk_exe Resolve.exe
        Goto, sizingchecker2
    }
    Else
    {
Goto, editcheck 
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
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, edit_c, 1949, 2136
    IfEqual, edit_c, 0x000000
    {
        Run, C:\AUTOHOTKEY_SCRIPTS\exe\editactive.exe
        WinActivate, ahk_exe Resolve.exe
        Goto, editcheckhold
    }
    Else
    {
Goto, resolvecheck ;CHANGE THIS TO EXPAND
    }


editcheckhold:
if WinActive("ahk_exe Resolve.exe")
    PixelGetColor, edit_c, 1949, 2136
IfEqual, edit_c, 0x000000
{
    Goto, editcheckhold  
}
Else
{
    Goto, resolvecheck
}


keysuspend_colour:
WinActivate, ahk_exe Resolve.exe
IfExist, C:\temp\keysuspend.txt
{    
    Goto, keysuspend_colour
}
Else
{
    WinActivate, ahk_exe Resolve.exe
    Goto, curvescheck
}


keysuspend_edit:
IfExist, C:\temp\keysuspend.txt
{    
    Goto, keysuspend_edit
}
Else
{
    Goto, editcheck
}