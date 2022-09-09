function getIP(
    (Get-NetIPAddress).ipv4address | select-string "192"
)
write-host(getip)

$IP = getip
write-host("This machine's IP is $IP")
Write-host("This machine's IP is {0}" -f $IP)