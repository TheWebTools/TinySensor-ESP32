Troubleshooting 🛠️
Checksum mismatch

Recompute SHA256 locally:

powershell

(Get-FileHash -Algorithm SHA256 firmware.bin)

Ensure you downloaded the exact firmware.bin from the product ZIP. If mismatch persists, contact support with the checksum output.

Flashing errors

Confirm correct COM port in Device Manager (Windows) or dmesg (Linux). 🔌

Put ESP32 into bootloader mode: hold BOOT, press EN, release EN. 🔁

Try lower baud rate: -Baud 115200 in flash.ps1. 🐢

Save the full esptool output and include it in support requests.

MQTT issues

Ensure broker host in mqtt_sub.py and mqtt_simulator.py is reachable. 🌐

For local testing, use test.mosquitto.org or run a local Mosquitto broker.

If messages do not appear, check firewall and network settings.

Contact support: zzappleplayzz@gmail.com

Provide: OS, steps you ran, exact error output, esptool logs, and the checksum.txt contents.
