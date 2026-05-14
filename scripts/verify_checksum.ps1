param(
  [string]$Image = ".\dist\firmware.bin",
  [string]$ChecksumFile = ".\dist\checksum.txt"
)

if (-Not (Test-Path $Image) -or -Not (Test-Path $ChecksumFile)) {
  Write-Host "Missing image or checksum file." -ForegroundColor Red
  exit 1
}

$expected = Get-Content $ChecksumFile | ForEach-Object { $_.Split("  ")[0] }
$actual = (Get-FileHash -Algorithm SHA256 $Image).Hash

if ($actual -eq $expected) {
  Write-Host "Checksum OK" -ForegroundColor Green
  exit 0
} else {
  Write-Host "Checksum mismatch" -ForegroundColor Red
  Write-Host "Expected: $expected"
  Write-Host "Actual  : $actual"
  exit 2
}
