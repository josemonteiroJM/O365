


#Validate if there is a valid Admin Connection
if ($UserCredential -eq "System.Management.Automation.PSCredential"){

}else{

$strFileName="c:\365Validation\admins.csv"

if (Test-Path $strFileName){
#Initialization and CSV Import into $admincred array
$admincred = Import-Csv admins.csv

#Get Admin account in the $admincred array that have been imported from the .csv file
Foreach ($ac in $admincred){

#Get the user from the element of the array to the variable $user
$User = $ac.UserName

#Convert the password stored in the array for the current user
$PWord = ConvertTo-SecureString -String $ac.Password -AsPlainText -Force

#Creates an PSCredential Object ($Credential) with the arguments $User and $PWord
$UserCredential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord

#Connects Admin to MSOLService with current element from the array $admincred
$admincred=Connect-MsolService -Credential $UserCredential
}
}else{

#Prompt for credentials and keep them in $UserCredential
$UserCredential = Get-Credential

#Obtain the Username and Password
$GetUserCred = $UserCredential.UserName
$GetPWordCred = $UserCredential.GetNetworkCredential().Password 

#Export Username and Password into array $ExportingCSV
$ExportingCSV = @("UserName,Password")
$ExportingCSV  += "$GetUserCred,$GetPWordCred"

#Connect to MSOLService
$admincred = Connect-MsolService -Credential $UserCredential

#Export Credentials to admins.csv
$ExportingCSV>admins.csv

}}

#Opens a connection to MSOLService
Connect-MsolService -Credential $UserCredential

#Opens a new session in Microsoft Exchange Online and import it into Powershell
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
Import-PSSession $Session

#Imports all the records (PrimarySMTPAddress) inside the identities.csv file
$mailidentities = (Import-Csv c:\365Validation\Upload\identities.csv).PrimarySMTPAddress

#Initialize Reporting Arrays
$erroridentities = @()
$successfullidentities = @()
$reportsidentities=@("PrimarySMTPAddress,Success,IfError")

#For each record in $mailidentities array
Foreach ($i in $mailidentities){
    #Error Handling
	try{
        #Creates a New Move Request with "WhatIF" in order to simulate
		$move = New-MoveRequest -Remote -RemoteHostName mail.mvmlab.org -RemoteCredential $UserCredential -Identity $i -TargetDeliveryDomain MVMlab.mail.onmicrosoft.com -WhatIf
		#Saves the value of the default Powershell variable into $moveerror
        $moveerror = $error.getenumerator()
        #Verifies if $moveerror isn't empty
		if ($moveerror -ne 0) {
            #Prints to Powershell the message that an error as occured
			Write-Host "Error occurred executing the command at identity: $i on step: IF"
            #Adds to $erroridentities array the current record
			$erroridentities += "$i,NO,$error"
        #If $moveerror is empty
		}else{
            #Prints to Powershell the message that the command has executed successfully
			Write-Host "The command was executed successfully at identity: $i on step: ELSE"
            #Adds to $successfullidentities array the current record
			$successfullidentities += "$i,YES,"			
		}
        #Clear the Powershell default $error variable
		$error.clear()
	#If a major error occurred
	}catch{
        #Saves the value of the default Powershell variable into $moveerror
		$moveerror = $error.getenumerator()
        #Prints to Powershell the message that an error as occured
		Write-Host "Error occurred executing the command at identity: $i on step: CATCH"
        #Adds to $erroridentities array the current record
		$erroridentities += "$i,NO,$error"
        #Clear the Powershell default $error variable
		$error.clear()
	}
}


#Exports the $successfullidentities to successfullidentities.txt
$successfullidentities > ReportTestMoveRequest\successfullidentities.txt
#Exports the $erroridentities to erroridentities.txt
$erroridentities > ReportTestMoveRequest\erroridentities.txt


#For each record in $successfullidentities, add it to $reportsidentities array
Foreach ($h in $successfullidentities){
	$reportsidentities+=$h
}

#For each record in $erroridentities, add it to $reportsidentities array
Foreach ($g in $erroridentities){
	$reportsidentities+=$g
}

#Prints to Powershell $reportsidentities array
Write-Host "Report from Move Request Test"
Write-Host "------------------------------"
Foreach ($j in $reportsidentities){
Write-Host $j
}

#export $reportsidentities array into .csv file named reportsidentities
$reportsidentities>FinalReports\ReportTestMoveRequest.csv


#Search all the PSSessions IDs and store them into $sessionsid
$sessionsid = Get-PSSession | select-object id

#Clear the Powershell default $error variable
$error.clear()


#Go through all the elements of the Array $sessionsid
Foreach ($sid in $sessionsid){

#Removes existing PSSessions
Remove-PSSession $sid.id

#Clear the Powershell default $error variable
$error.clear()
}


