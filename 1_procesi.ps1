process | where-object {$_.processname -ne "svchost"} | sort-object workimgset -desceding | select-object -first 5
$koparam = ($procesi | mesure-object workingset -sum / 1Mb
write-output "top 5 porces total ram:"