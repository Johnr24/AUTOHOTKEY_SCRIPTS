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

waittime = 0.01

while True:
    hwnd = win32gui.GetForegroundWindow()
    process_name = get_process_name_from_hwnd(hwnd)
    if process_name and process_name.lower() == "resolve.exe":
        # Get the color of the pixel at the specified positions
        curves_pixel_colour = pyautogui.screenshot().getpixel((mtc.curves, mtc.tby_curves))
        colour_warper_colour = pyautogui.screenshot().getpixel((mtc.colourwarper, mtc.tby_colourwarper))
        qualifer_colour = pyautogui.screenshot().getpixel((mtc.qualifer, mtc.tby_qualifer))
        powerwindow_colour = pyautogui.screenshot().getpixel((mtc.window, mtc.tby_qualifer))
        tracker_colour = pyautogui.screenshot().getpixel((mtc.tracker, mtc.tby_qualifer))
        magicmask_colour = pyautogui.screenshot().getpixel((mtc.magicmask, mtc.tby_qualifer))
        blurtool_colour = pyautogui.screenshot().getpixel((mtc.blurtool, mtc.tby_qualifer))
        keytool_colour = pyautogui.screenshot().getpixel((mtc.keytool, mtc.tby_keytool))
        sizing_colour = pyautogui.screenshot().getpixel((mtc.sizing, mtc.tby_sizing))
        #mouse_x, mouse_y = pyautogui.position()
        #print(mouse_x, mouse_y)
        
        # report mouse position
        if curves_pixel_colour == toolcolour.curves:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\curvesactive.exe")
            while curves_pixel_colour == toolcolour.curves:
                time.sleep(waittime)
                print("Curves is active")
                curves_pixel_colour = pyautogui.screenshot().getpixel((mtc.curves, mtc.tby_curves))
        
        if colour_warper_colour == toolcolour.colourwarper:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\cwactive.exe") 
            while colour_warper_colour == toolcolour.colourwarper:
                time.sleep(waittime)
                print("Colour Warper is active")
                colour_warper_colour = pyautogui.screenshot().getpixel((mtc.colourwarper, mtc.tby_colourwarper))

        if qualifer_colour == toolcolour.qualifer:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\qualiferactive.exe")
            while qualifer_colour == toolcolour.qualifer:
                time.sleep(waittime)
                print("Qualifer is active")
                qualifer_colour = pyautogui.screenshot().getpixel((mtc.qualifer, mtc.tby_qualifer))

        if powerwindow_colour == toolcolour.window:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\windowactive.exe")
            while powerwindow_colour == toolcolour.window:
                time.sleep(waittime)
                print("Power Window is active")
                powerwindow_colour = pyautogui.screenshot().getpixel((mtc.window, mtc.tby_qualifer))

        if tracker_colour == toolcolour.tracker:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\trackeractive.exe")
            while tracker_colour == toolcolour.tracker:
                time.sleep(waittime)
                print("Tracker is active")
                tracker_colour = pyautogui.screenshot().getpixel((mtc.tracker, mtc.tby_qualifer))

        if magicmask_colour == toolcolour.magicmask:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\magicmaskactive.exe")
            while magicmask_colour == toolcolour.magicmask:
                time.sleep(waittime)
                print("Magic Mask is active")
                magicmask_colour = pyautogui.screenshot().getpixel((mtc.magicmask, mtc.tby_qualifer))

        if blurtool_colour == toolcolour.blurtool:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\blurtoolactive.exe")
            while blurtool_colour == toolcolour.blurtool:
                time.sleep(waittime)
                blurtool_colour = pyautogui.screenshot().getpixel((mtc.blurtool, mtc.tby_qualifer))
                print("Blur Tool is active")
        if keytool_colour == toolcolour.keytool:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\keyactive.exe")
            while keytool_colour == toolcolour.keytool:
                time.sleep(waittime)
                keytool_colour = pyautogui.screenshot().getpixel((mtc.keytool, mtc.tby_keytool))
                print("Key Tool is active")
        if sizing_colour == toolcolour.sizing:
            os.startfile(r"C:\AUTOHOTKEY_SCRIPTS\exe\sizingactive.exe")
            while sizing_colour == toolcolour.sizing:
                time.sleep(waittime)
                sizing_colour = pyautogui.screenshot().getpixel((mtc.sizing, mtc.tby_sizing))
                print("Sizing is active")