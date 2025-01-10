import pyautogui
import time
import os
import toolcolour
import sys
import psutil
import win32gui
import win32process

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

while True:
    hwnd = win32gui.GetForegroundWindow()
    process_name = get_process_name_from_hwnd(hwnd)
    
    if process_name and process_name.lower() == "resolve.exe":
        # Get the color of the pixel at the specified positions
        curves_pixel_colour = pyautogui.screenshot().getpixel((mtc.curves, mtc.tby))
        colour_warper_colour = pyautogui.screenshot().getpixel((mtc.colourwarper, mtc.tby_colourwarper))
        qualifer_colour = pyautogui.screenshot().getpixel((mtc.qualifer, mtc.tby))
        powerwindow_colour = pyautogui.screenshot().getpixel((mtc.window, mtc.tby))
        tracker_colour = pyautogui.screenshot().getpixel((mtc.tracker, mtc.tby))
        magicmask_colour = pyautogui.screenshot().getpixel((mtc.magicmask, mtc.tby))
        blurtool_colour = pyautogui.screenshot().getpixel((mtc.blurtool, mtc.tby))
        keytool_colour = pyautogui.screenshot().getpixel((mtc.keytool, mtc.tby))
        sizing_colour = pyautogui.screenshot().getpixel((mtc.sizing, mtc.tby))
        print(sizing_colour)
        mouse_x, mouse_y = pyautogui.position()
        print(mouse_x, mouse_y)
        
        # report mouse position
        if curves_pixel_colour == toolcolour.curves:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe")
            while curves_pixel_colour == toolcolour.curves:
                time.sleep(waittime)
                curves_pixel_colour = pyautogui.screenshot().getpixel((mtc.curves, mtc.tby))
        
        if colour_warper_colour == toolcolour.colourwarper:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe")
            while colour_warper_colour == toolcolour.colourwarper:
                time.sleep(waittime)
                colour_warper_colour = pyautogui.screenshot().getpixel((mtc.colourwarper, mtc.tby_colourwarper))

        if qualifer_colour == toolcolour.qualifer:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\qualiferactive.exe")
            while qualifer_colour == toolcolour.qualifer:
                time.sleep(waittime)
                qualifer_colour = pyautogui.screenshot().getpixel((mtc.qualifer, mtc.tby))

        if powerwindow_colour == toolcolour.window:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe")
            while powerwindow_colour == toolcolour.window:
                time.sleep(waittime)
                powerwindow_colour = pyautogui.screenshot().getpixel((mtc.window, mtc.tby))

        if tracker_colour == toolcolour.tracker:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe")
            while tracker_colour == toolcolour.tracker:
                time.sleep(waittime)
                tracker_colour = pyautogui.screenshot().getpixel((mtc.tracker, mtc.tby))

        if magicmask_colour == toolcolour.magicmask:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe")
            while magicmask_colour == toolcolour.magicmask:
                time.sleep(waittime)
                magicmask_colour = pyautogui.screenshot().getpixel((mtc.magicmask, mtc.tby))

        if blurtool_colour == toolcolour.blurtool:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\blurtoolactive.exe")
            while blurtool_colour == toolcolour.blurtool:
                time.sleep(waittime)
                blurtool_colour = pyautogui.screenshot().getpixel((mtc.blurtool, mtc.tby))

        if keytool_colour == toolcolour.keytool:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\keyactive.exe")
            while keytool_colour == toolcolour.keytool:
                time.sleep(waittime)
                keytool_colour = pyautogui.screenshot().getpixel((mtc.keytool, mtc.tby))

        if sizing_colour == toolcolour.sizing:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe")
            while sizing_colour == toolcolour.sizing:
                time.sleep(waittime)
                sizing_colour = pyautogui.screenshot().getpixel((mtc.sizing, mtc.tby))