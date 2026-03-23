$disk = Get-PSDrive C

$brivs = $disk.Free
$lietots = $disk.Used

$proc = ($brivs / ($brivs + $lietots)) * 100

$logs = "$env:USERPROFILE\Documents\Apkope.log"

$laiks = Get-Date

if ($proc -lt 25) {
Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
"$laiks TĪRĪŠANA VEIKTA" | Out-File $logs -Append
} else {
"$laiks Vieta pietiekama" | Out-File $logs -Append
}