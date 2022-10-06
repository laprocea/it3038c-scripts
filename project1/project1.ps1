$Device = '192.168.130.200'

    while($True) {
        if(Test-Connection -ComputerName $Device -Quiet -Count 1) {

        }
    
    else {

        (Test-Connection -ComputerName $Device -Quiet -Count 1)
            Write-Host """$Device"""
            Write-Host " is offline"
            BREAK

        }
    }

$to = "elaprocina@gmail.com"
$from = "elaprocina@gmail.com"
$subject = "Unit status OFFLINE"
$body = "The following IP: $Device is no longer responding."
$smtp = "smtp.gmail.com"
$port = "587"

Send-MailMessage -to $To -from $From -Subject $Subject -body $body -Smtpserver $smtp -port $port -useSSL -credential (Get-Credential)
