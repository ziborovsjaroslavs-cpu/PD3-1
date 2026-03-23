$status = get-mpcomputerstatus
if (-not $status.realtimeprotectionenabled -or $statusquickscanage -gt 3) {
	write-host "sistema ir apdraudeta!"
} else {
	write-host "sistema ir droša"