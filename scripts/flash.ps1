param(
  [string]$Port = "COM3",
  [string]$Image = ".\dist\firmware.bin",
  [int]$Baud = 460800
)

Write-Host "Checking esptool..."
python -m pip install --user esptool | Out-Null

Write-Host "Flashing $Image to $Port at $Baud baud..."
python -m esptool --chip esp32 --port $Port --baud $Baud write_flash -z 0x1000 $Image

if ($LASTEXITCODE -eq 0) {
  Write-Host "Flash complete. Reset the board and check MQTT output."
} else {
  Write-Host "Flashing failed with exit code $LASTEXITCODE. Save the output and contact support."
}
