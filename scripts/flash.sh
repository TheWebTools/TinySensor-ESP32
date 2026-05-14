#!/usr/bin/env bash
PORT=${1:-/dev/ttyUSB0}
IMAGE=${2:-dist/firmware.bin}
python3 -m pip install --user esptool
python3 -m esptool --chip esp32 --port "$PORT" write_flash -z 0x1000 "$IMAGE"
