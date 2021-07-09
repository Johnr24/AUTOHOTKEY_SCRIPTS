resolvecheck:

if WinExist("ahk_exe Resolve.exe")
Goto, mod
    
if not WinExist("ahk_exe Resolve.exe")
Goto, resolvecheck