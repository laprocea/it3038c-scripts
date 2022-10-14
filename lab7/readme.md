/////////

LAPROCEA - LAB: 7 - README

\\\\\\\\\


PURPOSE:
> The purpose behind this lab is the utilization of excel within powershell. That is, 
to export commands ran to an Excel File for retention and further review. 


INSTRUCTION:
> The user is tasked with installing the module associated with exporting excel files
directly from Powershell.

> By typing "Install-Module -name ImportExcel" - one is prompted to accept the risk(s)
associated with the installatiopn of the module. [Accept the risk]

> Create a directory [lab7] to \it3038c-scripts\ to commit files for this demonstration.


EXAMPLES:
> [1] To have an active list of the (existing / current) processes running, a 'get-process' 
command is ran. In this query, we are specifically examining the ProcessName, PM, WS and CPUs. 
	
	Input the following commands:
		> $data = get-process | select ProcessName, PM, WS, CPU
		> $data | export-excel c:\it3038c-scripts\lab7\processes.xlsx

	The file is created revealing the processes with the selected fields.

> [2] Similarly, we will want to review (for future reporting) the local users on the machine. 
ThIs requires a similar process - however, we're in search of only the username, if its enabled,
and the description.

Input the following commands:
		> $data = get-localuser | select name, enabled, description
		> $data | export-excel c:\it3038c-scripts\lab7\users.xlsx

> [3] Now, we want to ensure to maintain file integrity. In order to do so, a hash command will be
necessary. We will add [-append] to the command as we will be creating two hashes (and more as needed)
to this file revealing a hash list. 

	Input the following commands:
		>get-filehash c:\it3038c-scripts\lab7\processes.xlsx | export-excel -append c:\it3038c-scripts\lab7\hash.xlsx
		>get-filehash c:\it3038c-scripts\lab7\users.xlsx | export-excel -append c:\it3038c-scripts\lab7\hash.xlsx

	Reviewing the hash.xlsx file, we can see both have been appropriately hashed.

////////// 