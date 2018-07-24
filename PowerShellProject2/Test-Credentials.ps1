# This Script requires a file CSV in the same directory named "passwords.csv" that has in the first line "UserName,Password"
# the rows bellow should have the UPN and password separated by a comma each user to testshoud be in it's row



#Validate if there is a valid Admin Connection
if ($UserCredential -eq "System.Management.Automation.PSCredential"){

}else{

#Define the Path to admin credentials file
$strFileName="c:\365Validation\admins.csv"

#verify if the file exists
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

#Connect to Microsoft Online Service
Connect-MsolService -Credential $UserCredential

#Opens a new session in Microsoft Exchange Online and import it into Powershell
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
Import-PSSession $Session



#Report Arrays initialization
$errorcredentials = @()
$successfullcredentials = @()
$reportcredentials=@("UPN,Success,IfError,IsMigration,IsMoveMailboxes")


#Initialization and CSV Import into $credentialtests array
$credentialtests = Import-Csv c:\365Validation\Upload\passwords.csv

#Error handling
try{

#Run Credential tests in all accounts in the $credentialtests array that have been imported from the .csv file
Foreach ($i in $credentialtests){

#Get the user from the element of the array to the variable $user
$User = $i.UserName

#Connect to MSOLService using admin credentials stored before
Connect-MsolService -Credential $UserCredential

#Get the DisplayName from the current user
$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName
#Convert the password stored in the array for the current user
$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

#Creates an PSCredential Object ($Credential) with the arguments $User and $PWord
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord

#Tests the connection to MSOLService with current element from the array
$testcredentials=Connect-MsolService -Credential $Credential

#Write the value of the default Error variable from the powershell to the $testcredentialserror in order to report if there were any connection problems with the connection from the element
$testcredentialserror = $error.getenumerator()

#Tests if the $testcredentialserror is different than 0
if ($testcredentialserror -ne 0) {

#Prints to the powershell that was occured an error
Write-Host "Error occurred testing credentials of: $user on step: IF"

#Get all the Roles Assigned to the current user
$UserAD = Get-ManagementRoleAssignment -GetEffectiveUsers | Where-Object {$_.EffectiveUserName -eq $EffectiveUserName.DisplayName} | select-object Role

#Save the roles value to the variable $ur
$ur=$UserAD.Role


#Verify if the User have Migration Role
If ($ur -contains "Migration"){
$IsMigration="True"
}Else{
$IsMigration="False"
}

#Verify if the User have Move Mailboxes Role
If ($ur -contains "Move Mailboxes"){
$IsMoveMailboxes="True"
}Else{
$IsMoveMailboxes="False"
}

#Save into the array of the Errors the report for the current user
$errorcredentials += "$user,False,$error,$IsMigration,$IsMoveMailboxes"


#Clear the Powershell default $error variable
$error.clear()

#If the User connect without problems to the MSOLService
}else{ 

#Prints into Powershell that the user successfully connected to MSOLService
Write-Host "The command to test credentials of: $user was executed successfully on step: ELSE"

#Get all the Roles Assigned to the current user
$UserAD = Get-ManagementRoleAssignment -GetEffectiveUsers | Where-Object {$_.EffectiveUserName -eq $EffectiveUserName.DisplayName} | select-object Role

#Save the roles value to the variable $ur
$ur=$UserAD.Role 

#Verify if the User have Migration Role
If ($ur -contains "Migration"){
$IsMigration="True"
}Else{
$IsMigration="False"
}

#Verify if the User have Move Mailboxes Role
If ($ur -contains "Move Mailboxes"){
$IsMoveMailboxes="True"
}Else{
$IsMoveMailboxes="False"
}

#Save into the array of the Success the report for the current user
$successfullcredentials += "$user,True,$error,$IsMigration,$IsMoveMailboxes"

#Clear the Powershell default $error variable
$error.clear()
}
}

#If there were major errors
}catch{

#Comeback to run all the elements of the credetialtests in the array $credentialtest
Foreach ($i in $credentialtests){

#Get the user from the element of the array to the variable $user
$User = $i.UserName

#Get the DisplayName from the current user
$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName

#Convert the password stored in the array for the current user
$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force


#Write the value of the default Error variable from the powershell to the $testcredentialserror in order to report if there were any connection problems with the connection from the element
$testcredentialserror = $error.getenumerator()

#Prints to the powershell that was occured an error
Write-Host "Error occurred testing credentials of: $user on step: CATCH"

#Get all the Roles Assigned to the current user
$UserAD = Get-ManagementRoleAssignment -GetEffectiveUsers | Where-Object {$_.EffectiveUserName -eq $EffectiveUserName.DisplayName} | select-object Role

#Save the roles value to the variable $ur
$ur=$UserAD.Role


#Verify if the User have Migration Role
If ($ur -contains "Migration"){
$IsMigration="True"
}Else{
$IsMigration="False"
}

#Verify if the User have Move Mailboxes Role
If ($ur -contains "Move Mailboxes"){
$IsMoveMailboxes="True"
}Else{
$IsMoveMailboxes="False"
}

#Save into the array of the Errors the report for the current user
$errorcredentials += "$user,False,$error,$IsMigration,$IsMoveMailboxes"


#Clear the Powershell default $error variable
$error.clear()
}
}



#Print to Powershell Console the Report of Credentials Tested Successfully
Write-Host " "
Write-Host "Report of Credentials Tested Successfully"
Write-Host "------------------------------------------ "
Write-Host " "
Write-Host "UPN,Success,IfError,IsMigration,IsMoveMailboxes"
Foreach ($h in $successfullcredentials){
#adds the record to the final report and prints it to the Powershell Console
$reportcredentials+=$h
Write-Host $h
}

#Print to Powershell Console the Report of Credentials with Errors
Write-Host " "
Write-Host "Report of Credentials with Errors"
Write-Host "---------------------------------- "
Write-Host " "
Write-Host "UPN,Success,IfError,IsMigration,IsMoveMailboxes"
Foreach ($g in $errorcredentials){
#adds the record to the final report and prints it to the Powershell Console
$reportcredentials+=$g
Write-Host $g
}

#Print to Powershell Console the Final Credential Report
Write-Host " "
Write-Host "Final Credential Report"
Write-Host "------------------------ "
Foreach ($repline in $reportcredentials){
Write-Host $repline
}

#Export of the report array $successfullcredentials into a .txt file
$successfullcredentials > ReportTestCredentials\successfulltestcredentials.txt

#Export of the report array $errorcredentials into a .txt file
$errorcredentials > ReportTestCredentials\errortestcredentials.txt

#Export of the report array $reportcredentials into a .csv file
$reportcredentials>FinalReports\ReportTestCredentials.csv

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


