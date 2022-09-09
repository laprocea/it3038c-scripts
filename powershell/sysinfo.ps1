$to = "elaprocina@gmail.com"
$from = "elaprocina@gmail.com"
$subject = "IT3038c Windows SysInfo"
$body = "this is a test"
$smtp = "smtp.gmail.com"
$port = "587"

Send-MailMessage -to $to -from $from -subject $subject -body $body -smtpserver $smtp -port $port -useSSL -credential (get-credential)