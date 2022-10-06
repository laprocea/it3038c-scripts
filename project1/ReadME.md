[Laprocea-Project 1] - Readme

=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\

^
I wanted to be able to conduct a perpetual ping test on my local NAS.
In the event the device would go offline, I wanted a simple notification.

^
Upon learning the ability to send an email through Powershell, I wanted
to incorporate that into this.

^
The idea would be to select a specific IP address that would echo once 
in search of a response. 

^
If the ping returned (successful), the script would continue. If the ping
didn't return, it would fail and notify me (via email) with a predefined message. 
 <"The following IP: X.X.X.X is OFFLINE.">

^
Testing was conducted with a local IP (NAS) [success] against an IP not 
listed in the ARP table [failure]. For the purposes of the 'remote' 
exercise, a local IP would be used [failure] against 8.8.8.8 [success].

^
By using -quiet, I learned that I'm only in search of successful or failed
pings.

\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\

Citation:

Smbridges. (2019, April 4). Test-connection if fail retry, else continue.
	The Spiceworks Community. Retrieved October 5, 2022, from 
	https://community/spiceworks.com/topic/2202644-test-connection-if-fail-retry-else-continue 
	
	
\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\ 

*** Please note - in order to successfully test (with email correspondence), proper email addresses
	must be associated with appropriate security credentials ***