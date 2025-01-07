#SingleInstance Force
; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Include C:\AUTOHOTKEY_SCRIPTS\Main Navigation\middletoolsconfig.ahk

CoordMode "Pixel"

resolvecheck:
    while !WinActive("ahk_exe Resolve.exe")
        Sleep 100

    PixelGetColor colourtabcheck, colourpage, pagebar
    if (colourtabcheck = 0x000000)
        Goto keysuspend_colour

    PixelGetColor editpagecheck, editpage, pagebar
    if (editpagecheck = 0x000000)
        Goto keysuspend_edit

    Goto resolvecheck



winactivate:
    WinActivate "ahk_exe Resolve.exe"
    Goto resolvecheck

curvescheck:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor curves_c, curves, tby_curves
    if (curves_c = 0x6F6F6F) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe"
        FileAppend "on", "C:\temp\mt\curves.txt"
        if WinActive("Input")
            Goto, resolvecheck
        Else
            WinActivate "ahk_exe Resolve.exe"
            Goto curvescheckeroff
    } else {
        Goto colourwarpercheck ;next one in the chain
    }
}

curvescheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor curves_c, curves, tby_curves
    if (curves_c = 0x6F6F6F) {
        Goto curvescheckeroff
    } else {
        FileDelete "C:\temp\mt\curves.txt"
        Goto resolvecheck
    }
}

colourwarpercheck:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor colourwarper_c, colourwarper, tby_colour_warper
    if (colourwarper_c = 0xD8D8D8) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe"
        FileAppend "on", "C:\temp\mt\colourwarper.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto colourwarpercheckeroff
    } else {
        Goto qualiferchecker
    }
}

colourwarpercheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor colourwarper_c, colourwarper, tby_colour_warper
    if (colourwarper_c = 0xD8D8D8) {
        Goto colourwarpercheckeroff
    } else {
        FileDelete "C:\temp\mt\colourwarper.txt"
        Goto resolvecheck
    }
}

qualiferchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor qualifer_C, qualifer, tby
    if (qualifer_C = 0xFFFFFF) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\keyactive.exe"
        FileAppend "on", "C:\temp\mt\keyer.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto qualifercheckeroff
    } else {
        Goto windowchecker
    }
}

qualifercheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor qualifer_C, qualifer, tby
    if (qualifer_C = 0xFFFFFF) {
        Goto qualifercheckeroff
    } else {
        FileDelete "C:\temp\mt\keyer.txt"
        Goto resolvecheck
    }
}

windowchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor powerwindow_C, powerwindow, 1665
    if (powerwindow_C = 0xFBFBFB) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe"
        FileAppend "on", "C:\temp\mt\window.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto windowcheckeroff
    } else {
        Goto trackerchecker
    }
}

windowcheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor powerwindow_C, powerwindow, 1665
    if (powerwindow_C = 0xFBFBFB) {
        Goto windowcheckeroff
    } else {
        FileDelete "C:\temp\mt\window.txt"
        Goto resolvecheck
    }
}

trackerchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor tracker_c, tracker, 1665
    if (tracker_c = 0x838383) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe"
        FileAppend "on", "C:\temp\mt\tracker.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto trackercheckeroff
    } else {
        Goto magicmaskchecker
    }
}

trackercheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor tracker_c, tracker, 1665
    if (tracker_c = 0x838383) {
        Goto trackercheckeroff
    } else {
        FileDelete "C:\temp\mt\tracker.txt"
        Goto resolvecheck
    }
}

magicmaskchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor magicmask_c, magicmask, tby
    if (magicmask_c = 0xFFFFFF) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe"
        FileAppend "on", "C:\temp\mt\magicmask.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto magicmaskcheckeroff
    } else {
        Goto blurtoolchecker
    }
}

magicmaskcheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor magicmask_c, magicmask, tby
    if (magicmask_c = 0xFFFFFF) {
        Goto magicmaskcheckeroff
    } else {
        FileDelete "C:\temp\mt\magicmask.txt"
        Goto resolvecheck
    }
}

blurtoolchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor blurtool_c, blurtool, tby
    if (blurtool_c = 0xC3C3C3) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\blurtoolactive.exe"
        FileAppend "on", "C:\temp\mt\blur.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto blurtoolcheckeroff
    } else {
        Goto keywindowchecker
    }
}

blurtoolcheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor blurtool_c, blurtool, tby
    if (blurtool_c = 0xC3C3C3) {
        Goto blurtoolcheckeroff
    } else {
        FileDelete "C:\temp\mt\blur.txt"
        Goto resolvecheck
    }
}

keywindowchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor keywindow_c, keytool, tby
    if (keywindow_c = 0xFFFFFF) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\keywindowactive.exe"
        FileAppend "on", "C:\temp\mt\keywindow.txt"
        Goto keywindowcheckeroff
    } else {
        Goto sizingchecker
    }
}

keywindowcheckeroff:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor keywindow_c, keytool, tby
    if (keywindow_c = 0xFFFFFF) {
        Goto keywindowcheckeroff
    } else {
        FileDelete "C:\temp\mt\keywindow.txt"
        Goto resolvecheck
    }
}

sizingchecker:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor key_c, sizing, tby
    if (key_c = 0xD8D8D8) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe"
        FileAppend "on", "C:\temp\mt\sizing.txt"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto sizingchecker2
    } else {
        Goto editcheck
    }
}

sizingchecker2:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor key_c, sizing, tby
    if (key_c = 0xD8D8D8) {
        Goto sizingchecker2
    } else {
        FileDelete "C:\temp\mt\sizing.txt"
        Goto resolvecheck
    }
}

editcheck:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor edit_c, 1827, 2136
    if (edit_c = 0x000000) {
        Run "C:\AUTOHOTKEY_SCRIPTS\exe\editactive.exe"
        ;WinActivate "ahk_exe Resolve.exe"
        Goto editcheckhold
    } else {
        Goto resolvecheck ;CHANGE THIS TO EXPAND
    }
}

editcheckhold:
if WinActive("ahk_exe Resolve.exe") {
    PixelGetColor edit_c, 1827, 2136
    if (edit_c = 0x000000) {
        Goto editcheckhold
    } else {
        Goto resolvecheck
    }
}

keysuspend_colour:
;WinActivate "ahk_exe Resolve.exe"
if FileExist("C:\temp\keysuspend.txt") {
    Goto keysuspend_colour
} else {
    ;WinActivate "ahk_exe Resolve.exe"
    Goto curvescheck
}

keysuspend_edit:
if FileExist("C:\temp\keysuspend.txt") {
    Goto keysuspend_edit
} else {
    Goto editcheck
}