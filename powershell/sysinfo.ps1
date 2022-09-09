function getIP{
    (Get-NetIPAddress).ipv4address | select-string "192*"
}
Write-Host(getIP)


function getLocalUser{
    (Get-LocalUser "*Administrator*").name
}
Write-output(getLocalUser)


function getPCName{
    hostname
}
Write-output(getPCName)


function getVersion{
    get-host | Select-Object version
}
Write-host(getVersion)


function getDate{
    Get-Date -format "dddd MM/dd/yyyy HH:mm"
}
write-host(getDate)


$IP = getIP
$USER = getLocalUser
$PC = getPCName
$VERSION = getVersion
$DATE = getDate
$to = "elaprocina@gmail.com"
$from = "elaprocina@gmail.com"
$subject = "IT3038c Windows SysInfo"
$body = "This machine's IP is $IP. User is $USER. Hostname is $PC. Powershell Version $VERSION. Today's date is $DATE."
$smtp = "smtp.gmail.com"
$port = "587"

Send-MailMessage -to $to -from $from -subject $subject -body $body -smtpserver $smtp -port $port -useSSL -credential (get-credential)