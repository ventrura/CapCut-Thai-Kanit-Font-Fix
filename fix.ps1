# CapCut PC Thai UI font fix - replaces bundled "CapCut Sans Text" with Kanit (Thai-capable)
param([switch]$Restore)
$ErrorActionPreference = 'Stop'
$here  = Split-Path -Parent $MyInvocation.MyCommand.Path
$fonts = Join-Path $here 'fonts'
$names = 'CapCutSansText-Regular.otf','CapCutSansText-Medium.otf','CapCutSansText-Bold.otf'

$procs = Get-Process | Where-Object { $_.ProcessName -like 'CapCut*' }
if ($procs) {
  Write-Host 'CapCut is running. It must be closed first.' -ForegroundColor Yellow
  $a = Read-Host 'Close CapCut now? (Y/N)'
  if ($a -notmatch '^[Yy]') { Write-Host 'Cancelled.'; exit 1 }
  $procs | Stop-Process -Force; Start-Sleep -Seconds 2
}

$root = Join-Path $env:LOCALAPPDATA 'CapCut'
$dirs = @()
foreach ($base in @($root, (Join-Path $root 'Apps'))) {
  if (Test-Path $base) {
    $dirs += Get-ChildItem $base -Directory | Where-Object {
      $_.Name -match '^\d+(\.\d+)+$' -and (Test-Path (Join-Path $_.FullName 'Resources\Font\SystemFont\CapCutSansText-Regular.otf'))
    }
  }
}
if (-not $dirs) { Write-Host "CapCut not found under $root" -ForegroundColor Red; exit 1 }

foreach ($d in $dirs) {
  $sys = Join-Path $d.FullName 'Resources\Font\SystemFont'
  $bak = Join-Path $d.FullName 'Resources\Font\_backup_original_CapCutSansText'
  Write-Host "`nCapCut version $($d.Name)"
  if ($Restore) {
    if (Test-Path $bak) { foreach ($n in $names) { Copy-Item (Join-Path $bak $n) (Join-Path $sys $n) -Force }; Write-Host '  Restored original fonts.' -ForegroundColor Green }
    else { Write-Host '  No backup found - nothing to restore.' }
    continue
  }
  $same = $true
  foreach ($n in $names) {
    if ((Get-FileHash (Join-Path $sys $n)).Hash -ne (Get-FileHash (Join-Path $fonts $n)).Hash) { $same = $false }
  }
  if ($same) { Write-Host '  Already fixed.' -ForegroundColor Green; continue }
  if (-not (Test-Path $bak)) {
    New-Item -ItemType Directory $bak | Out-Null
    foreach ($n in $names) { Copy-Item (Join-Path $sys $n) (Join-Path $bak $n) }
    Write-Host '  Backed up original fonts.'
  }
  foreach ($n in $names) { Copy-Item (Join-Path $fonts $n) (Join-Path $sys $n) -Force }
  Write-Host '  Fixed! Thai font installed.' -ForegroundColor Green
}
Write-Host "`nDone. Open CapCut again."
