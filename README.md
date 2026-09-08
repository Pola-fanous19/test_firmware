# ESP32 NodeMCU Flat LED

Minimal ESP-IDF firmware for a classic ESP32 NodeMCU board. It holds the onboard LED on GPIO 2 continuously on.
## Build and flash

Open PowerShell in this folder:

```powershell
. .\activate-idf.ps1
idf.py set-target esp32
idf.py build
idf.py -p COM7 flash monitor
```

Replace `COM7` with the board's serial port. Press `Ctrl+]` to exit the serial monitor.

Some NodeMCU clones use a different LED pin or have no onboard LED. If GPIO 2 does not turn on, change `LED_GPIO` in `main/main.c` to the board's LED pin.

## Watch the boot ROM

The project is configured for 115200 baud. In VS Code, run the task `ESP-IDF: Monitor COM10 at 115200`, then hold the board's `BOOT` button and press `EN`/`RESET`. The ROM should print `waiting for download`. Release `BOOT` afterward. Press `Ctrl+]` to exit the monitor.
