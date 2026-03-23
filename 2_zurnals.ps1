$errors = get-evetlog system -entrytype error -after (get-date).addays(-7)
$file = "$env:userprofile\documents\errors.txt"
if($errors.count -gt 10) {
	"Kritiski" | out-file $file
}else {
	"OK" | out-file $file
}
$errors | out-file $file -append