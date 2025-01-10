import psutil
import win32gui
import win32process
import time

def get_process_name_from_hwnd(hwnd):
    try:
        _, pid = win32process.GetWindowThreadProcessId(hwnd)
        process = psutil.Process(pid)
        return process.name()
    except Exception as e:
        return None

while True:
    hwnd = win32gui.GetForegroundWindow()
    process_name = get_process_name_from_hwnd(hwnd)
    print(f"Active window handle: {hwnd}, Process name: {process_name}")
    time.sleep(1)