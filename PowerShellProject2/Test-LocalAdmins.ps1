
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

#Get Migration Endpoint Identities
$migendpoint=Get-MigrationEndpoint | Select-Object identity

#Initiate $endpointsare array
$endpointsare=@("Identity")

#Runs trought all the result of Migration Endpoints $migendpoint
foreach ($endp in $migendpoint){

#saves the value of the Endpoint Identity
$endpidentity = $endp.identity

#saves the value of the Endpoint Identity into $endpointsare array
$endpointsare+="$endpidentity"
}

#Prints to Powershell the report of the Migration Endpoints found
Write-host "-----------------------------------"
Write-host ""
Write-host ""
Write-host "-----------------------------------"
Write-host "We've Found the following Endpoints"
Write-host "-----------------------------------"

#prints each Migration Endpoint
foreach ($printendp in $endpointsare){
Write-host $printendp
}
Write-host "-----------------------------------"
Write-host ""
Write-host ""

#Ask to the user what endpoint to test
$inputendpid = Read-Host "Please insert the endpoint to use in the next Test"
Write-host ""

#Prints the Migration Endpoint that was selected
Write-Host "You've selected Endpoint '$inputendpid'"
Write-host ""

#Set-UP $migrationendpoint with the value of $inputendpid
$migrationendpoint = $inputendpid


#Prompt the user to insert the local admin credentials
$local=get-credential

Write-host ""
Write-Host "We are testing the Endpoint '$migrationendpoint'..."
Test-MigrationServerAvailability -ExchangeRemoteMove -RemoteServer $migrationendpoint -Credentials $local | Select-Object "Result"

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


