

#Validate if there is a valid Admin Connection
if ($UserCredential -eq "System.Management.Automation.PSCredential"){
    Write-Host "PSCredentials already exists"
}else{

#Define the Path to admin credentials file
$strFileName="c:\365Validation\admins.csv"

#verify if the file exists
if (Test-Path $strFileName){

#Delete old File
Remove-Item –path $strFileName –recurse 

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

#Connect to Microsoft Online Service
Connect-MsolService -Credential $UserCredential

#Opens a new session in Microsoft Exchange Online and import it into Powershell
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
Import-PSSession $Session

#Clear the Powershell default $error variable
$error.clear()

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


