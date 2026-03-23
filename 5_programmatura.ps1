$update = winget upgrade
$apps = $update | where-object {$_ -match '^\S'}
$tik = $apps.count - 3
write-output "sistema ir $tik programmas, kuras vajag atjaunat."
$apps
