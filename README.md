# TinySensor ESP32 — Prebuilt Firmware Package 🚀

**What this is**  
A prebuilt ESP32 firmware image that publishes JSON sensor data to MQTT. This package is for buyers who want a ready-to-flash binary and verification tools without needing to compile or record hardware demos.

**Included files**
- **firmware.bin** — compiled ESP32 firmware (SHA256 verified) 🔒
- **checksum.txt** — SHA256 checksum for firmware.bin ✅
- **demo.log** — simulated device output showing expected MQTT messages 📝
- **flash.ps1** and **flash.sh** — flashing scripts for Windows and Linux/macOS 💾
- **mqtt_sub.py** and **mqtt_simulator.py** — subscriber and simulator scripts 🔁
- **README.md** — this file 📘
- **docs/troubleshooting.md** — troubleshooting and support steps 🛠️

**Quick start**
1. Unzip the package and confirm checksum:
   ```powershell
   Get-FileHash -Algorithm SHA256 firmware.bin
Compare the output to checksum.txt.

To preview expected MQTT output (no hardware):

powershell
python scripts/mqtt_simulator.py
To view messages (subscribe):

powershell
python scripts/mqtt_sub.py
To flash an ESP32 (when you have one):

Windows:

powershell
.\scripts\flash.ps1 -Port COM3 -Image .\dist\firmware.bin
Linux/macOS:

bash
./scripts/flash.sh /dev/ttyUSB0 dist/firmware.bin

Support and refund policy  
Email support for 7 days after purchase. Full refund within 48 hours if the binary fails on supported hardware and buyer provides logs and esptool output. ✉️

U Can Email Support At This Email: (zzappleplayzz@gmail.com) 