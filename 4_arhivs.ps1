$date = get-date -format "yyyy-MM-dd"
$name = "Atskaite" + $date + ".zip"

Compress-Archive -path
"$env:A251759JZ\Documents\Errors.txt" -DestinationPath $name

write-output "Archive izveidots"
