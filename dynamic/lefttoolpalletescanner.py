import pyautogui
import time
import os
import sys
import psutil
import win32gui
import win32process
import toolcolour

# Add the directory containing middletoolsconfig.py to the Python path
sys.path.append(r"C:\AUTOHOTKEY_SCRIPTS\Main Navigation")

# Now you can import the module
import middletoolsconfig as mtc

def get_process_name_from_hwnd(hwnd):
    try:
        _, pid = win32process.GetWindowThreadProcessId(hwnd)
        process = psutil.Process(pid)
        return process.name()
    except Exception as e:
        return None

waittime = 0.05

def check_resolve():
    while True:
        hwnd = win32gui.GetForegroundWindow()
        process_name = get_process_name_from_hwnd(hwnd)
        
        if process_name and process_name.lower() == "resolve.exe":
            colourtabcheck = pyautogui.screenshot().getpixel((mtc.colourpage, mtc.pagebar))
            if colourtabcheck == toolcolour.pagetab:
                check_hdr()
        time.sleep(waittime)

def check_hdr():
    while True:
        hwnd = win32gui.GetForegroundWindow()
        process_name = get_process_name_from_hwnd(hwnd)
        
        if process_name and process_name.lower() == "resolve.exe":
            hdr_c = pyautogui.screenshot().getpixel((mtc.HDR_tools, mtc.tby))
            if hdr_c == toolcolour.hdr_c:
                os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\hdractive.exe")
                with open(r"C:\temp\hdractive.txt", "w") as f:
                    f.write("(on)")
                check_hdr_off()
        else:
            check_resolve()
        time.sleep(waittime)

def check_hdr_off():
    while True:
        hwnd = win32gui.GetForegroundWindow()
        process_name = get_process_name_from_hwnd(hwnd)
        
        if process_name and process_name.lower() == "resolve.exe":
            hdr_c = pyautogui.screenshot().getpixel((mtc.HDR_tools, mtc.tby))
            if hdr_c != toolcolour.hdr_c:
                os.remove(r"C:\temp\hdractive.txt")
                check_resolve()
        time.sleep(waittime)

mtc.tby = mtc.tby - 10
check_resolve()