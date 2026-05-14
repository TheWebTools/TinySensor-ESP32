param(
  [string]$Image = ".\dist\firmware.bin",
  [string]$Out = ".\dist\checksum.txt"
)

if (-Not (Test-Path $Image)) {
  Write-Host "Image not found: $Image" -ForegroundColor Red
  exit 1
}

Get-FileHash -Algorithm SHA256 $Image | ForEach-Object {
  "$($_.Hash)  $Image" | Out-File -FilePath $Out -Encoding ascii
}
Write-Host "Checksum written to $Out"
