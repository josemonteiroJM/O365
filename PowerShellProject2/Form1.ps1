

##############################################################################################################################
##																															##
##										MEL Validation Tool - Modern MVM													##
##																															##
##									Version 0.9 - Credits to Modern MVM Team												##
##																															##
##############################################################################################################################
##########################################		GLOBAL OBJECTS			######################################################
##############################################################################################################################



. (Join-Path $PSScriptRoot 'Form1.designer.ps1')

$MainForm.ShowDialog()




$error.clear()

$Global:UserCredential = $null
$global:inputTestCredentials = $null
$global:inputTestMoveRequestb6 = $null
$Global:strFileName = "$env:ProgramFiles\MELValidation\admins.csv"

#On loading the Form
$MainForm_Load = {
	
	#Setting $ErrorActionPreference to Silently Continue
	$ErrorActionPreference = "silentlycontinue"

	#Setting $WarningPreference to Silently Continue
	$WarningPreference = "silentlycontinue"

}

#On closing the Form
$MainForm_FormClosing = {
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

}

##############################################################################################################################
############################################	GENERAL STRIP MENU		######################################################
##############################################################################################################################

########################################	FILE - GENERAL STRIP MENU		##################################################

$exitToolStripMenuItem_Click = {
	
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
	
	#Clear the Powershell default $error variable
	$error.clear()

	#Close The program
	$MainForm.Close()
}

$resetToolStripMenuItem_Click = {
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

	[System.Windows.MessageBox]::Show('You have reseted the application!')
	$label2.Text = ""
	$button2.Text = "Sign In to Office 365"
	$signInToOffice365ToolStripMenuItem.Text = "Sign In to Office 365"

	if ($textBox1.Enabled -eq "True"){
		$selectFileToolStripMenuItem.Enabled = "False"
		$testComplexityToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem.Enabled = "False"
		$selectFileToolStripMenuItem1.Enabled = "False"
		$performTestToolStripMenuItem1.Enabled = "False"
		$getMigrationEndpointsToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem2.Enabled = "False"
		$testComplexityToolStripMenuItem1.Enabled = "False"
		$testLocalAdminToolStripMenuItem.Enabled = "False"
		$button8.Enabled = "False"
		$button6.Enabled = "False"
		$button14.Enabled = "False"
		$button3.Enabled = "False"
		$button7.Enabled = "False"
		$textBox1.Enabled = "False"
		$textBox2.Enabled = "False"
		$button12.Enabled = "False"
		$button13.Enabled = "False"
		$button5.Enabled = "False"
		$label8.Text = ""
		$label15.Text = ""
		$listBox1.Items.Remove($listBox1.items)
		$textbox1.Text = ""
		$textBox1.Enabled = "False"
		$textbox2.Text = ""
		$textBox2.Enabled = "False"
		$button9.Enabled = "False"
	}


	$Global:UserCredential = $null

	if(![System.IO.File]::Exists($strFileName)){
	  
	}else{

		#Delete old File
		Remove-Item –path $strFileName –recurse -force

	}

	#Clear the Powershell default $error variable
	$error.clear()
}

$openUploadFolderToolStripMenuItem_Click = {
	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		ii $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain
	}
}

#######################################	  OPERATIONS - GENERAL STRIP MENU	  ################################################

$openReportsFolderToolStripMenuItem_Click = {
	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		ii $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain
	}
}

########################################	WINDOW - GENERAL STRIP MENU		##################################################

$minimizeToolStripMenuItem_Click = {
	$MainForm.WindowState = "Minimized"
}

$maximizeToolStripMenuItem_Click = {
	$MainForm.WindowState = "Maximized"
}

$closeToolStripMenuItem_Click = {
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
	
	#Clear the Powershell default $error variable
	$error.clear()

	#Close The program
	$MainForm.Close()
}

########################################	HELP - GENERAL STRIP MENU		##################################################

$aboutMELValidationToolToolStripMenuItem_Click = {
	$progressBar1.Show()
	$progressBar1.Value = "10"
	write-host "The script is currently running at $PSScriptRoot."
	$progressBar1.Value = "30"
	$ScriptToRun= $PSScriptRoot+"\Form2.ps1"
	$progressBar1.Value = "70"
	write-host "We are opening the About window in $ScriptToRun..."
	Invoke-Expression "$ScriptToRun"
	$progressBar1.Value = "100"
	$progressBar1.Value = "0"
	$progressBar1.Hide()
}

$viewHelpToolStripMenuItem_Click = {
	$progressBar1.Show()
	$progressBar1.Value = "10"
	write-host "The script is currently running at $PSScriptRoot."
	$progressBar1.Value = "30"
	$FileToOpen= $PSScriptRoot+"\HelpValidation.pdf"
	$progressBar1.Value = "70"
	write-host "We are opening the help file in $FileToOpen..."
	Invoke-Item "$FileToOpen"
	$progressBar1.Value = "100"
	$progressBar1.Value = "0"
	$progressBar1.Hide()
}

$reportAProblemToolStripMenuItem_Click = {
	$progressBar1.Show()
	$progressBar1.Value = "10"
	$Outlook = New-Object -ComObject Outlook.Application
	$Mail = $Outlook.CreateItem(0)
	$Mail.To = "v-jomont@microsoft.com"
	$progressBar1.Value = "30"
	$Mail.Subject = "MELValidation Tool - Problem Report"
	$Mail.Body ="Please Contact Me! I want to report a problem related to the MELValidation Tool!"
	$progressBar1.Value = "70"
	$Mail.Send()
	$progressBar1.Value = "100"
	[System.Windows.MessageBox]::Show('Your problem report was Successfully Sent to the Tool developpers! We will reach you soon!','Report Sent')
	$progressBar1.Value = "0"
	$progressBar1.Hide()
}

$provideASugestionToolStripMenuItem_Click = {
	$progressBar1.Show()
	$progressBar1.Value = "10"
	$Outlook = New-Object -ComObject Outlook.Application
	$Mail = $Outlook.CreateItem(0)
	$Mail.To = "v-jomont@microsoft.com"
	$progressBar1.Value = "30"
	$Mail.Subject = "MELValidation Tool - Sugestion"
	$Mail.Body ="Please Contact Me! I want to make a sugestion related to the MELValidation Tool!"
	$progressBar1.Value = "70"
	$Mail.Send()
	$progressBar1.Value = "100"
	[System.Windows.MessageBox]::Show('Your sugestion was Successfully Sent to the Tool developpers! We will reach you soon!','Sugestion Sent')
	$progressBar1.Value = "0"
	$progressBar1.Hide()
}


##############################################################################################################################
#########################################		Office 365 LOGIN			##################################################
##############################################################################################################################

#On clicking AdminLogin button
$AdminLogin = {

	#Define the Path to admin credentials file
	$strFileName=$Global:strFileName
	
	#validate if the User is LoggedOn
	if ($label2.Text -eq ""){
		#Shows the progress bar
		$progressBar1.Visible = "True"

		#Validate if there is a valid Admin Connection
		if ($Global:UserCredential -eq "System.Management.Automation.PSCredential"){
			#Prints the Message to powershell prompt
			Write-Host "PSCredentials already exists"
		}else{
			
			#verify if the file exists
			if (Test-Path $strFileName){

				$progressBar1.Value = "10"
				$MainForm.Cursor = "AppStarting"
				#Delete old File
				Remove-Item –path $strFileName –recurse 

				Clear-Host
				#Prompt for credentials and keep them in $UserCredential
				$UserCredential = Get-Credential -Message "Please Provide Customer Office 365 Admin Account"

				$Global:UserCredential = $UserCredential

				#Obtain the Username and Password
				$GetUserCred = $UserCredential.UserName
				$GetPWordCred = $UserCredential.GetNetworkCredential().Password 
				$progressBar1.Value = "30"

				#Export Username and Password into array $ExportingCSV
				$ExportingCSV = @("UserName,Password")
				$ExportingCSV  += "$GetUserCred,$GetPWordCred"

				#Connect to MSOLService
				$admincred = Connect-MsolService -Credential $UserCredential

				$progressBar1.Value = "50"

				#Export Credentials to admins.csv
				$ExportingCSV > $Global:strFileName

				#Clear the Powershell default $error variable
				$error.clear()

			}else{

				$progressBar1.Value = "10"
				#Prompt for credentials and keep them in $UserCredential
				$UserCredential = Get-Credential -Message "Please Provide Customer Office 365 Admin Account"
				
				$Global:UserCredential = $UserCredential

				#Obtain the Username and Password
				$GetUserCred = $UserCredential.UserName
				$GetPWordCred = $UserCredential.GetNetworkCredential().Password 
				$progressBar1.Value = "30"
				#Export Username and Password into array $ExportingCSV
				$ExportingCSV = @("UserName,Password")
				$ExportingCSV  += "$GetUserCred,$GetPWordCred"

				#Connect to MSOLService
				$admincred = Connect-MsolService -Credential $UserCredential

				$progressBar1.Value = "50"
				#Export Credentials to admins.csv
				$ExportingCSV >  $Global:strFileName 

				#Clear the Powershell default $error variable
				$error.clear()
			}
		}

		#Connect to Microsoft Online Service
		Connect-MsolService -Credential $UserCredential
		$progressBar1.Value = "70"

	
		#Opens a new session in Microsoft Exchange Online and import it into Powershell
		$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
		Import-PSSession $Session

		$global:Session = $Session

		if ($Session -like "*PSSession*"){

			$progressBar1.Value = "100"
			$MainForm.Cursor = "Arrow"
			[System.Windows.MessageBox]::Show('Your Loggin to Office 365 occurred Successfully!','Login Success')
			$label2.Text = "You are Logged In with the account $GetUserCred"
			$signInToOffice365ToolStripMenuItem.Text = "Sign Out"
			$button2.Text = "Sign Out"
			$stringGetUserCred = $GetUserCred

			$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\LocalAdmins
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdmin\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMigrationEndpoints\$GetDomain

			$button8.Enabled = "True"
			$button6.Enabled = "True"
			$button14.Enabled = "True"
			$button3.Enabled = "True"
			$button7.Enabled = "True"
			$textBox1.Enabled = "True"
			$textBox2.Enabled = "True"
			$openReportsFolderToolStripMenuItem.Enabled = "True" 
			$selectFileToolStripMenuItem.Enabled = "True"
			$selectFileToolStripMenuItem1.Enabled = "True"
			$getMigrationEndpointsToolStripMenuItem.Enabled = "True"
			$testComplexityToolStripMenuItem1.Enabled = "True"
			$testLocalAdminToolStripMenuItem.Enabled = "True"
		}else{

			$MainForm.Cursor = "Arrow"
			[System.Windows.MessageBox]::Show('Error occurred while trying to connect to Office 365. Please Try again!','Login Failed')

		}

		$progressBar1.Value = "0"
		$progressBar1.Hide()
		$MainForm.Cursor = "Default"
		
	}else{
		
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

		[System.Windows.MessageBox]::Show('You are now, Logged Out!')
		$label2.Text = ""
		$button2.Text = "Sign In to Office 365"
		$signInToOffice365ToolStripMenuItem.Text = "Sign In to Office 365"
		$selectFileToolStripMenuItem.Enabled = "False"
		$testComplexityToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem.Enabled = "False"
		$selectFileToolStripMenuItem1.Enabled = "False"
		$performTestToolStripMenuItem1.Enabled = "False"
		$getMigrationEndpointsToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem2.Enabled = "False"
		$testComplexityToolStripMenuItem1.Enabled = "False"
		$testLocalAdminToolStripMenuItem.Enabled = "False"
		$openReportsFolderToolStripMenuItem.Enabled = "False" 
		$button8.Enabled = "False"
		$button6.Enabled = "False"
		$button14.Enabled = "False"
		$button3.Enabled = "False"
		$button7.Enabled = "False"
		$textBox1.Enabled = "False"
		$textBox2.Enabled = "False"
		$button12.Enabled = "False"
		$button13.Enabled = "False"
		$button5.Enabled = "False"
		$label8.Text = ""
		$label15.Text = ""
		$listBox1.Items.Remove($listBox1.items)
		$button9.Enabled = "False"

		$Global:UserCredential = $null

		#Delete old File
		Remove-Item –path $strFileName –recurse -force

		#Clear the Powershell default $error variable
		$error.clear()
	}

	#Clear the Powershell default $error variable
	$error.clear()
}	

$signInToOffice365ToolStripMenuItem_Click = {
	

	#Define the Path to admin credentials file
	$strFileName=$Global:strFileName
	
	#validate if the User is LoggedOn
	if ($label2.Text -eq ""){
		#Shows the progress bar
		$progressBar1.Visible = "True"

		#Validate if there is a valid Admin Connection
		if ($Global:UserCredential -eq "System.Management.Automation.PSCredential"){
			#Prints the Message to powershell prompt
			Write-Host "PSCredentials already exists"
		}else{
			
			#verify if the file exists
			if (Test-Path $strFileName){

				$progressBar1.Value = "10"
				$MainForm.Cursor = "AppStarting"
				#Delete old File
				Remove-Item –path $strFileName –recurse 

				Clear-Host
				#Prompt for credentials and keep them in $UserCredential
				$UserCredential = Get-Credential -Message "Please Provide Customer Office 365 Admin Account"

				$Global:UserCredential = $UserCredential

				#Obtain the Username and Password
				$GetUserCred = $UserCredential.UserName
				$GetPWordCred = $UserCredential.GetNetworkCredential().Password 
				$progressBar1.Value = "30"

				#Export Username and Password into array $ExportingCSV
				$ExportingCSV = @("UserName,Password")
				$ExportingCSV  += "$GetUserCred,$GetPWordCred"

				#Connect to MSOLService
				$admincred = Connect-MsolService -Credential $UserCredential

				$progressBar1.Value = "50"

				#Export Credentials to admins.csv
				$ExportingCSV > $Global:strFileName

				#Clear the Powershell default $error variable
				$error.clear()

			}else{

				$progressBar1.Value = "10"
				#Prompt for credentials and keep them in $UserCredential
				$UserCredential = Get-Credential -Message "Please Provide Customer Office 365 Admin Account"
				
				$Global:UserCredential = $UserCredential

				#Obtain the Username and Password
				$GetUserCred = $UserCredential.UserName
				$GetPWordCred = $UserCredential.GetNetworkCredential().Password 
				$progressBar1.Value = "30"
				#Export Username and Password into array $ExportingCSV
				$ExportingCSV = @("UserName,Password")
				$ExportingCSV  += "$GetUserCred,$GetPWordCred"

				#Connect to MSOLService
				$admincred = Connect-MsolService -Credential $UserCredential

				$progressBar1.Value = "50"
				#Export Credentials to admins.csv
				$ExportingCSV >  $Global:strFileName 

				#Clear the Powershell default $error variable
				$error.clear()
			}
		}

		#Connect to Microsoft Online Service
		Connect-MsolService -Credential $UserCredential
		$progressBar1.Value = "70"

		#Opens a new session in Microsoft Exchange Online and import it into Powershell
		$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
		Import-PSSession $Session

		$global:Session = $Session

		if ($Session -like "*PSSession*"){

			$progressBar1.Value = "100"
			$MainForm.Cursor = "Arrow"
			[System.Windows.MessageBox]::Show('Your Loggin to Office 365 occurred Successfully!')
			$label2.Text = "You are Logged In with the account $GetUserCred"
			$signInToOffice365ToolStripMenuItem.Text = "Sign Out"
			$button2.Text = "Sign Out"
			$stringGetUserCred = $GetUserCred

			$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\LocalAdmins
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdmin\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain
			New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMigrationEndpoints\$GetDomain

			$button8.Enabled = "True"
			$button6.Enabled = "True"
			$button14.Enabled = "True"
			$button3.Enabled = "True"
			$button7.Enabled = "True"
			$textBox1.Enabled = "True"
			$textBox2.Enabled = "True"
			$openReportsFolderToolStripMenuItem.Enabled = "True" 
			$selectFileToolStripMenuItem.Enabled = "True"
			$selectFileToolStripMenuItem1.Enabled = "True"
			$getMigrationEndpointsToolStripMenuItem.Enabled = "True"
			$testComplexityToolStripMenuItem1.Enabled = "True"
			$testLocalAdminToolStripMenuItem.Enabled = "True"
		}else{

			$MainForm.Cursor = "Arrow"
			[System.Windows.MessageBox]::Show('Error occurred while trying to connect to Office 365. Please Try again!')

		}

		$progressBar1.Value = "0"
		$progressBar1.Hide()
		$MainForm.Cursor = "Default"
		
	}else{
		
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

		[System.Windows.MessageBox]::Show('You are now, Logged Out!')
		$label2.Text = ""
		$button2.Text = "Sign In to Office 365"
		$signInToOffice365ToolStripMenuItem.Text = "Sign In to Office 365"
		$selectFileToolStripMenuItem.Enabled = "False"
		$testComplexityToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem.Enabled = "False"
		$selectFileToolStripMenuItem1.Enabled = "False"
		$performTestToolStripMenuItem1.Enabled = "False"
		$getMigrationEndpointsToolStripMenuItem.Enabled = "False"
		$performTestToolStripMenuItem2.Enabled = "False"
		$testComplexityToolStripMenuItem1.Enabled = "False"
		$testLocalAdminToolStripMenuItem.Enabled = "False"
		$openReportsFolderToolStripMenuItem.Enabled = "False" 
		$button8.Enabled = "False"
		$button6.Enabled = "False"
		$button14.Enabled = "False"
		$button3.Enabled = "False"
		$button7.Enabled = "False"
		$textBox1.Enabled = "False"
		$textBox2.Enabled = "False"
		$button12.Enabled = "False"
		$button13.Enabled = "False"
		$button5.Enabled = "False"
		$label8.Text = ""
		$label15.Text = ""
		$listBox1.Items.Remove($listBox1.items)
		$button9.Enabled = "False"

		$Global:UserCredential = $null

		#Delete old File
		Remove-Item –path $strFileName –recurse -force

		#Clear the Powershell default $error variable
		$error.clear()
	}

	#Clear the Powershell default $error variable
	$error.clear()

}

#When leaving "Sign In to Office 365"
$button2_MouseLeave = {
	#Turns the cursor to defualt arrow when leaving button 2
	$MainForm.Cursor = "Default"
}

##############################################################################################################################
####################################		Test Office 365 Credentials			##############################################
##############################################################################################################################

#When leaving "Perform Test" button
$button4_MouseLeave = {
	#Turns the cursor to defualt arrow when leaving button 4
	$MainForm.Cursor = "Default"
}

#When Pressing "Perform Test" button
$button4_Click = {
	
	#Report Arrays initialization
	$errorcredentials = @()
	$successfullcredentials = @()
	$reportcredentials=@("UPN,Success,IfError,IsMigration,IsMoveMailboxes")

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"

	#Initialization and CSV Import into $credentialtests array
	$credentialtests = Import-Csv $global:inputTestCredentials
	$progressBar1.Value = "30"
	#Error handling
	try{

		#Run Credential tests in all accounts in the $credentialtests array that have been imported from the .csv file
		Foreach ($i in $credentialtests){

			#Get the user from the element of the array to the variable $user
			$User = $i.UserName

			$progressBar1.Value = "40"

			#Connect to MSOLService using admin credentials stored before
			Connect-MsolService -Credential $UserCredential

			#Get the DisplayName from the current user
			$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName
			
			$progressBar1.Value = "50"

			#Convert the password stored in the array for the current user
			$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

			#Creates an PSCredential Object ($Credential) with the arguments $User and $PWord
			$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord

			$progressBar1.Value = "60"

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

				$progressBar1.Value = "70"			

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

				$progressBar1.Value = "80"

				#If the User connect without problems to the MSOLService
			}else{ 

				#Prints into Powershell that the user successfully connected to MSOLService
				Write-Host "The command to test credentials of: $user was executed successfully on step: ELSE"

				$progressBar1.Value = "70"

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

				$progressBar1.Value = "70"
			}
		}

	#If there were major errors
	}catch{

		$progressBar1.Value = "40"

		#Comeback to run all the elements of the credetialtests in the array $credentialtest
		Foreach ($i in $credentialtests){

			#Get the user from the element of the array to the variable $user
			$User = $i.UserName

			#Get the DisplayName from the current user
			$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName

			$progressBar1.Value = "50"

			#Convert the password stored in the array for the current user
			$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

			#Write the value of the default Error variable from the powershell to the $testcredentialserror in order to report if there were any connection problems with the connection from the element
			$testcredentialserror = $error.getenumerator()

			#Prints to the powershell that was occured an error
			Write-Host "Error occurred testing credentials of: $user on step: CATCH"

			#Get all the Roles Assigned to the current user
			$UserAD = Get-ManagementRoleAssignment -GetEffectiveUsers | Where-Object {$_.EffectiveUserName -eq $EffectiveUserName.DisplayName} | select-object Role

			$progressBar1.Value = "60"

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

			$progressBar1.Value = "70"

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

	$progressBar1.Value = "80"

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

	$progressBar1.Value = "90"

	#Print to Powershell Console the Final Credential Report
	Write-Host " "
	Write-Host "Final Credential Report"
	Write-Host "------------------------ "
	Foreach ($repline in $reportcredentials){
		Write-Host $repline
	}


	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}

	#Export of the report array $successfullcredentials into a .txt file
	$successfullcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain\successfulltestcredentials.txt

	#Export of the report array $errorcredentials into a .txt file
	$errorcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain\errortestcredentials.txt

	#Export of the report array $reportcredentials into a .csv file
	$reportcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestCredentials.csv

	[System.Windows.MessageBox]::Show("We've finished the Office 365 Credentials Test, please check the report!")

	$progressBar1.Value = "100"
	$progressBar1.Value = "0"
	$progressBar1.Hide()
}

$performTestToolStripMenuItem_Click = {
	
	
	#Report Arrays initialization
	$errorcredentials = @()
	$successfullcredentials = @()
	$reportcredentials=@("UPN,Success,IfError,IsMigration,IsMoveMailboxes")

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"

	#Initialization and CSV Import into $credentialtests array
	$credentialtests = Import-Csv $global:inputTestCredentials
	$progressBar1.Value = "30"
	#Error handling
	try{

		#Run Credential tests in all accounts in the $credentialtests array that have been imported from the .csv file
		Foreach ($i in $credentialtests){

			#Get the user from the element of the array to the variable $user
			$User = $i.UserName

			$progressBar1.Value = "40"

			#Connect to MSOLService using admin credentials stored before
			Connect-MsolService -Credential $UserCredential

			#Get the DisplayName from the current user
			$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName
			
			$progressBar1.Value = "50"

			#Convert the password stored in the array for the current user
			$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

			#Creates an PSCredential Object ($Credential) with the arguments $User and $PWord
			$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User, $PWord

			$progressBar1.Value = "60"

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

				$progressBar1.Value = "70"			

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

				$progressBar1.Value = "80"

				#If the User connect without problems to the MSOLService
			}else{ 

				#Prints into Powershell that the user successfully connected to MSOLService
				Write-Host "The command to test credentials of: $user was executed successfully on step: ELSE"

				$progressBar1.Value = "70"

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

				$progressBar1.Value = "70"
			}
		}

	#If there were major errors
	}catch{

		$progressBar1.Value = "40"

		#Comeback to run all the elements of the credetialtests in the array $credentialtest
		Foreach ($i in $credentialtests){

			#Get the user from the element of the array to the variable $user
			$User = $i.UserName

			#Get the DisplayName from the current user
			$EffectiveUserName = Get-MsolUser -UserPrincipalName $User | select DisplayName

			$progressBar1.Value = "50"

			#Convert the password stored in the array for the current user
			$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

			#Write the value of the default Error variable from the powershell to the $testcredentialserror in order to report if there were any connection problems with the connection from the element
			$testcredentialserror = $error.getenumerator()

			#Prints to the powershell that was occured an error
			Write-Host "Error occurred testing credentials of: $user on step: CATCH"

			#Get all the Roles Assigned to the current user
			$UserAD = Get-ManagementRoleAssignment -GetEffectiveUsers | Where-Object {$_.EffectiveUserName -eq $EffectiveUserName.DisplayName} | select-object Role

			$progressBar1.Value = "60"

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

			$progressBar1.Value = "70"

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

	$progressBar1.Value = "80"

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

	$progressBar1.Value = "90"

	#Print to Powershell Console the Final Credential Report
	Write-Host " "
	Write-Host "Final Credential Report"
	Write-Host "------------------------ "
	Foreach ($repline in $reportcredentials){
		Write-Host $repline
	}


	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}

	#Export of the report array $successfullcredentials into a .txt file
	$successfullcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain\successfulltestcredentials.txt

	#Export of the report array $errorcredentials into a .txt file
	$errorcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials\$GetDomain\errortestcredentials.txt

	#Export of the report array $reportcredentials into a .csv file
	$reportcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestCredentials.csv


	$progressBar1.Value = "100"
	[System.Windows.MessageBox]::Show("We've finished the Office 365 Credentials Test, please check the report!")
	$progressBar1.Value = "0"
	$progressBar1.Hide()

}


#When Pressing "Test Complexity" button
$button11_Click = {


	#Clear the Powershell default $error variable
	$error.clear()

	#Report Arrays initialization
	$errorComplexcredentials = @()
	$successComplexfullcredentials = @()
	$reportComplexcredentials=@("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"

	#Initialization and CSV Import into $credentialtests array
	$credentialComplextests = Import-Csv $global:inputTestCredentials
	$progressBar1.Value = "30"
	

	#Run Credential tests in all accounts in the $credentialtests array that have been imported from the .csv file
	Foreach ($i in $credentialComplextests){

		#Get the user from the element of the array to the variable $user
		$UserComplex = $i.UserName


		$progressBar1.Value = "40"

		#Convert the password stored in the array for the current user
		$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

		$pass = $PWord
		$passLength = 15
		$isLength = "false"
		if ($pass.Length -ge $passLength){
			$isLength = "true"
			$pw2test = $pass
			$isGood = 0
			$isSpecial = 0
			$Has3Special = "false"
			$progressBar1.Value = "50"
			$HasLower = "false"
			$HasUpper = "false"
			$HasNumber = "false"
			$pl = $pass.Length
			$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass)
			$passclean = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
			write-host "The length of the password you've inserted is: $pl"
			for ($i = 0; $i -lt $pass.length; $i++) {
				$passchars = $passclean.Chars($i)
				
				If ($passchars -match "[^a-zA-Z0-9]"){
					write-host "one special"
					$isSpecial++
					If ($isSpecial -ge 3){
						$isGood++ 
						$Has3Special = "true"
					}
				}
				Write-host "We have found $isSpecial Special Chars"
				$progressBar1.Value = "60"
			}If ($passclean -cmatch "[0-9]"){ 
				write-host "yes 0-9"
				$isGood++ 
				$HasNumber = "true"
			}If ($pw2test -cmatch "[a-z]"){ 
				write-host "yes a-z"
				$isGood++ 
				$HasLower = "true"
			}If ($pw2test -cmatch "[A-Z]"){ 
				write-host "yes A-Z"
				$isGood++ 
				$HasUpper = "true"
			}If ($isGood -ge 4){ 
				$testreport = "$pw2test is a good password" 
				Write-Host "$testreport"
				
				#Success Report
				#Save into the array of the Errors the report for the current user
				$successComplexfullcredentials += "$UserComplex,Success,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"

				$progressBar1.Value = "70"
			}Else{ 
				$testreport = "$pw2test is not a good password"
				Write-Host "$testreport"
				
				#FAIL Report
				#Save into the array of the Errors the report for the current user
				$errorComplexcredentials += "$UserComplex,Failed,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"
				
				$progressBar1.Value = "70"
			}
		}Else{
			$testreport = "$pass is not long enough - Passwords must be at least $passLength characters long"
			Write-Host "$testreport"

			$progressBar1.Value = "70"
		
			#FAIL Report Length
			$errorComplexcredentials += "$UserComplex,Failed,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"
		}	
	}

	#Print to Powershell Console the Report of Credentials Tested Successfully
	Write-Host " "
	Write-Host "Report of Credentials Complexity Tested Successfully"
	Write-Host "------------------------------------------ "
	Write-Host " "
	Write-Host "UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength"
	Foreach ($h in $successComplexfullcredentials){
		#adds the record to the final report and prints it to the Powershell Console
		$reportComplexcredentials+=$h
		Write-Host $h
	}

	$progressBar1.Value = "80"

	#Print to Powershell Console the Report of Credentials with Errors
	Write-Host " "
	Write-Host "Report of Credentials Complexity with Errors"
	Write-Host "---------------------------------- "
	Write-Host " "
	Write-Host "UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength"
	Foreach ($g in $errorComplexcredentials){
		#adds the record to the final report and prints it to the Powershell Console
		$reportComplexcredentials+=$g
		Write-Host $g
	}

	$progressBar1.Value = "90"

	#Print to Powershell Console the Final Credential Report
	Write-Host " "
	Write-Host "Final Credential Report"
	Write-Host "------------------------ "
	Foreach ($repline in $reportComplexcredentials){
		Write-Host $repline
	}


	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}


	#Export of the report array $successfullcredentials into a .txt file
	$successComplexfullcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain\successfulltestComplexitycredentials.txt

	#Export of the report array $errorcredentials into a .txt file
	$errorComplexcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain\errortestComplexitycredentials.txt

	#Export of the report array $reportcredentials into a .csv file
	$reportComplexcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestComplexityCredentials.csv

	$progressBar1.Value = "100"
	[System.Windows.MessageBox]::Show("We've finished the Office 365 Credentials Complexity Test, please check the report!")
	$progressBar1.Value = "0"
	$progressBar1.Hide()

}

$testComplexityToolStripMenuItem_Click = {
	

	#Clear the Powershell default $error variable
	$error.clear()

	#Report Arrays initialization
	$errorComplexcredentials = @()
	$successComplexfullcredentials = @()
	$reportComplexcredentials=@("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"

	#Initialization and CSV Import into $credentialtests array
	$credentialComplextests = Import-Csv $global:inputTestCredentials
	$progressBar1.Value = "30"
	

	#Run Credential tests in all accounts in the $credentialtests array that have been imported from the .csv file
	Foreach ($i in $credentialComplextests){

		#Get the user from the element of the array to the variable $user
		$UserComplex = $i.UserName


		$progressBar1.Value = "40"

		#Convert the password stored in the array for the current user
		$PWord = ConvertTo-SecureString -String $i.Password -AsPlainText -Force

		$pass = $PWord
		$passLength = 15
		$isLength = "false"
		if ($pass.Length -ge $passLength){
			$isLength = "true"
			$pw2test = $pass
			$isGood = 0
			$isSpecial = 0
			$Has3Special = "false"
			$progressBar1.Value = "50"
			$HasLower = "false"
			$HasUpper = "false"
			$HasNumber = "false"
			$pl = $pass.Length
			$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass)
			$passclean = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
			write-host "The length of the password you've inserted is: $pl"
			for ($i = 0; $i -lt $pass.length; $i++) {
				$passchars = $passclean.Chars($i)
				
				If ($passchars -match "[^a-zA-Z0-9]"){
					write-host "one special"
					$isSpecial++
					If ($isSpecial -ge 3){
						$isGood++ 
						$Has3Special = "true"
					}
				}
				Write-host "We have found $isSpecial Special Chars"
				$progressBar1.Value = "60"
			}If ($passclean -cmatch "[0-9]"){ 
				write-host "yes 0-9"
				$isGood++ 
				$HasNumber = "true"
			}If ($pw2test -cmatch "[a-z]"){ 
				write-host "yes a-z"
				$isGood++ 
				$HasLower = "true"
			}If ($pw2test -cmatch "[A-Z]"){ 
				write-host "yes A-Z"
				$isGood++ 
				$HasUpper = "true"
			}If ($isGood -ge 4){ 
				$testreport = "$pw2test is a good password" 
				Write-Host "$testreport"
				
				#Success Report
				#Save into the array of the Errors the report for the current user
				$successComplexfullcredentials += "$UserComplex,Success,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"

				$progressBar1.Value = "70"
			}Else{ 
				$testreport = "$pw2test is not a good password"
				Write-Host "$testreport"
				
				#FAIL Report
				#Save into the array of the Errors the report for the current user
				$errorComplexcredentials += "$UserComplex,Failed,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"
				
				$progressBar1.Value = "70"
			}
		}Else{
			$testreport = "$pass is not long enough - Passwords must be at least $passLength characters long"
			Write-Host "$testreport"

			$progressBar1.Value = "70"
		
			#FAIL Report Length
			$errorComplexcredentials += "$UserComplex,Failed,$Has3Special,$HasUpper,$HasLower,$HasNumber,$isLength"
		}	
	}

	#Print to Powershell Console the Report of Credentials Tested Successfully
	Write-Host " "
	Write-Host "Report of Credentials Complexity Tested Successfully"
	Write-Host "------------------------------------------ "
	Write-Host " "
	Write-Host "UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength"
	Foreach ($h in $successComplexfullcredentials){
		#adds the record to the final report and prints it to the Powershell Console
		$reportComplexcredentials+=$h
		Write-Host $h
	}

	$progressBar1.Value = "80"

	#Print to Powershell Console the Report of Credentials with Errors
	Write-Host " "
	Write-Host "Report of Credentials Complexity with Errors"
	Write-Host "---------------------------------- "
	Write-Host " "
	Write-Host "UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength"
	Foreach ($g in $errorComplexcredentials){
		#adds the record to the final report and prints it to the Powershell Console
		$reportComplexcredentials+=$g
		Write-Host $g
	}

	$progressBar1.Value = "90"

	#Print to Powershell Console the Final Credential Report
	Write-Host " "
	Write-Host "Final Credential Report"
	Write-Host "------------------------ "
	Foreach ($repline in $reportComplexcredentials){
		Write-Host $repline
	}


	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}


	#Export of the report array $successfullcredentials into a .txt file
	$successComplexfullcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain\successfulltestComplexitycredentials.txt

	#Export of the report array $errorcredentials into a .txt file
	$errorComplexcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials\$GetDomain\errortestComplexitycredentials.txt

	#Export of the report array $reportcredentials into a .csv file
	$reportComplexcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestComplexityCredentials.csv

	$progressBar1.Value = "100"
	[System.Windows.MessageBox]::Show("We've finished the Office 365 Credentials Complexity Test, please check the report!")
	$progressBar1.Value = "0"
	$progressBar1.Hide()

}


#When Pressing "Select File" button
$button10_Click = {
	$button12.Enabled = "False"
	$button13.Enabled = "False"
	$testComplexityToolStripMenuItem.Enabled = "False"
	$performTestToolStripMenuItem.Enabled = "False"
	
	#Creating the Object for File Dialog
	$dialogouthost = [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Host   
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	
	#Setting File Dialog Initial Directory
    $OpenFileDialog.initialDirectory = $env:USERPROFILE

	#Setting File Dialog Filter for .CSV files
    $OpenFileDialog.filter = "CSV (*.csv)| *.csv"

	#Open File Dialog
    $OpenFileDialog.ShowDialog() | Out-Host

	#Saving File Name / File Path
    $OpenFileDialog.filename

	#Showing File Name / File Path in the Form label
	$label15.Text = $OpenFileDialog.filename

	#Saving File Name / File Path into $inputTestMoveRequestb6 variable
	$inputTestCredentials=$OpenFileDialog.filename

	Write-Host $inputTestCredentials

	#Saving to global variable $global:inputTestCredentials
	$global:inputTestCredentials=$inputTestCredentials

	if ($OpenFileDialog.filename -ne ""){
		$button12.Enabled = "True"
		$button13.Enabled = "True"
		$testComplexityToolStripMenuItem.Enabled = "True"
		$performTestToolStripMenuItem.Enabled = "True"
		Copy-Item -path $OpenFileDialog.filename -Destination $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain\ -recurse -force
	}else{
		[System.Windows.MessageBox]::Show("Please provide a valid source file!")
	}	
}

$selectFileToolStripMenuItem_Click = {
	
	$button12.Enabled = "False"
	$button13.Enabled = "False"
	$testComplexityToolStripMenuItem.Enabled = "False"
	$performTestToolStripMenuItem.Enabled = "False"
	
	#Creating the Object for File Dialog
	$dialogouthost = [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Host   
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	
	#Setting File Dialog Initial Directory
    $OpenFileDialog.initialDirectory = $env:USERPROFILE

	#Setting File Dialog Filter for .CSV files
    $OpenFileDialog.filter = "CSV (*.csv)| *.csv"

	#Open File Dialog
    $OpenFileDialog.ShowDialog() | Out-Host

	#Saving File Name / File Path
    $OpenFileDialog.filename

	#Showing File Name / File Path in the Form label
	$label15.Text = $OpenFileDialog.filename

	#Saving File Name / File Path into $inputTestMoveRequestb6 variable
	$inputTestCredentials=$OpenFileDialog.filename

	Write-Host $inputTestCredentials

	#Saving to global variable $global:inputTestCredentials
	$global:inputTestCredentials=$inputTestCredentials

	if ($OpenFileDialog.filename -ne ""){
		$button12.Enabled = "True"
		$button13.Enabled = "True"
		$testComplexityToolStripMenuItem.Enabled = "True"
		$performTestToolStripMenuItem.Enabled = "True"
		Copy-Item -path $OpenFileDialog.filename -Destination $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain\ -recurse -force
	}else{
		[System.Windows.MessageBox]::Show("Please provide a valid source file!")
	}	

}


##############################################################################################################################
#######################################				Test Move Request			##############################################
##############################################################################################################################

#When Pressing "Perform Test" button
$button5_Click = {

	$error.clear()

	$inputTestMoveRequestb6 = $global:inputTestMoveRequestb6
	$UserCredential = $Global:UserCredential

	#Imports all the records (PrimarySMTPAddress) inside the identities.csv file
	$mailidentities = (Import-Csv $inputTestMoveRequestb6).PrimarySMTPAddress
	
	$error.clear()

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"
	
	#Initialize Reporting Arrays
	$erroridentities = @()
	$successfullidentities = @()
	$reportsidentities=@("PrimarySMTPAddress,Success,IfError")

	#For each record in $mailidentities array
	Foreach ($i in $mailidentities){
		#Error Handling
		try{
			$progressBar1.Value = "20"

			#Get Migration Endpoint Identities
			$migendpoint=Get-MigrationEndpoint | Select-Object identity

			#Initiate $endpointsare array
			$endpointsare=@("Identity")

			$progressBar1.Value = "30"

			#Runs trought all the result of Migration Endpoints $migendpoint
			foreach ($endp in $migendpoint){
				#saves the value of the Endpoint Identity
				$endpidentity = $endp.identity
			}

			#Search witch is the TargetDeliveryDomain
			$TargetDeliveryDomain = Get-AcceptedDomain | Where-Object {$_.DomainName -like "*mail.onmicrosoft.com*"}
			
			$progressBar1.Value = "40"

			#Saves the value of the Domain Name
			$targetDomain = $TargetDeliveryDomain.DomainName
			Write-Host $targetDomain

			#Creates a New Move Request with "WhatIF" in order to simulate
			$move = New-MoveRequest -Remote -RemoteHostName $endpidentity -RemoteCredential $UserCredential -Identity $i -TargetDeliveryDomain $targetDomain -WhatIf
		
			$progressBar1.Value = "50"

			#Saves the value of the default Powershell variable into $moveerror
			$moveerror = $error.getenumerator()
			
			#Verifies if $moveerror isn't empty
			if ($moveerror -ne 0) {
				#Prints to Powershell the message that an error as occured
				Write-Host "Error occurred executing the command at identity: $i on step: IF"
				$progressBar1.Value = "60"
				#Adds to $erroridentities array the current record
				$erroridentities += "$i,NO,$error"
        
			#If $moveerror is empty
			}else{
				#Prints to Powershell the message that the command has executed successfully
				Write-Host "The command was executed successfully at identity: $i on step: ELSE"
				
				$progressBar1.Value = "60"
				
				#Adds to $successfullidentities array the current record
				$successfullidentities += "$i,YES,"			
			}
			
			#Clear the Powershell default $error variable
			$error.clear()
			$progressBar1.Value = "70"
		#If a major error occurred
		}catch{
			$progressBar1.Value = "20"
			#Saves the value of the default Powershell variable into $moveerror
			$moveerror = $error.getenumerator()

			#Prints to Powershell the message that an error as occured
			Write-Host "Error occurred executing the command at identity: $i on step: CATCH"
			$progressBar1.Value = "45"
			#Adds to $erroridentities array the current record
			$erroridentities += "$i,NO,$error"
        
			#Clear the Powershell default $error variable
			$error.clear()
			$progressBar1.Value = "70"
		}
	}

	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}


	$progressBar1.Value = "80"
	#Exports the $successfullidentities to successfullidentities.txt
	$successfullidentities > $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain\successfullidentities.txt

	#Exports the $erroridentities to erroridentities.txt
	$erroridentities > $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain\erroridentities.txt

	$progressBar1.Value = "90"
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
	$reportsidentities > $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestMoveRequest.csv
	$progressBar1.Value = "100"
	$progressBar1.Value = "0"
	$progressBar1.Hide()

	[System.Windows.MessageBox]::Show("We have completed the Test Move Request")

	$error.clear()
}

$performTestToolStripMenuItem1_Click = {
	

	$error.clear()

	$inputTestMoveRequestb6 = $global:inputTestMoveRequestb6
	$UserCredential = $Global:UserCredential

	#Imports all the records (PrimarySMTPAddress) inside the identities.csv file
	$mailidentities = (Import-Csv $inputTestMoveRequestb6).PrimarySMTPAddress
	
	$error.clear()

	#Shows the progress bar
	$progressBar1.Visible = "True"
	$progressBar1.Value = "10"
	
	#Initialize Reporting Arrays
	$erroridentities = @()
	$successfullidentities = @()
	$reportsidentities=@("PrimarySMTPAddress,Success,IfError")

	#For each record in $mailidentities array
	Foreach ($i in $mailidentities){
		#Error Handling
		try{
			$progressBar1.Value = "20"

			#Get Migration Endpoint Identities
			$migendpoint=Get-MigrationEndpoint | Select-Object identity

			#Initiate $endpointsare array
			$endpointsare=@("Identity")

			$progressBar1.Value = "30"

			#Runs trought all the result of Migration Endpoints $migendpoint
			foreach ($endp in $migendpoint){
				#saves the value of the Endpoint Identity
				$endpidentity = $endp.identity
			}

			#Search witch is the TargetDeliveryDomain
			$TargetDeliveryDomain = Get-AcceptedDomain | Where-Object {$_.DomainName -like "*mail.onmicrosoft.com*"}
			
			$progressBar1.Value = "40"

			#Saves the value of the Domain Name
			$targetDomain = $TargetDeliveryDomain.DomainName
			Write-Host $targetDomain

			#Creates a New Move Request with "WhatIF" in order to simulate
			$move = New-MoveRequest -Remote -RemoteHostName $endpidentity -RemoteCredential $UserCredential -Identity $i -TargetDeliveryDomain $targetDomain -WhatIf
		
			$progressBar1.Value = "50"

			#Saves the value of the default Powershell variable into $moveerror
			$moveerror = $error.getenumerator()
			
			#Verifies if $moveerror isn't empty
			if ($moveerror -ne 0) {
				#Prints to Powershell the message that an error as occured
				Write-Host "Error occurred executing the command at identity: $i on step: IF"
				$progressBar1.Value = "60"
				#Adds to $erroridentities array the current record
				$erroridentities += "$i,NO,$error"
        
			#If $moveerror is empty
			}else{
				#Prints to Powershell the message that the command has executed successfully
				Write-Host "The command was executed successfully at identity: $i on step: ELSE"
				
				$progressBar1.Value = "60"
				
				#Adds to $successfullidentities array the current record
				$successfullidentities += "$i,YES,"			
			}
			
			#Clear the Powershell default $error variable
			$error.clear()
			$progressBar1.Value = "70"
		#If a major error occurred
		}catch{
			$progressBar1.Value = "20"
			#Saves the value of the default Powershell variable into $moveerror
			$moveerror = $error.getenumerator()

			#Prints to Powershell the message that an error as occured
			Write-Host "Error occurred executing the command at identity: $i on step: CATCH"
			$progressBar1.Value = "45"
			#Adds to $erroridentities array the current record
			$erroridentities += "$i,NO,$error"
        
			#Clear the Powershell default $error variable
			$error.clear()
			$progressBar1.Value = "70"
		}
	}

	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}


	$progressBar1.Value = "80"
	#Exports the $successfullidentities to successfullidentities.txt
	$successfullidentities > $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain\successfullidentities.txt

	#Exports the $erroridentities to erroridentities.txt
	$erroridentities > $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest\$GetDomain\erroridentities.txt

	$progressBar1.Value = "90"
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
	$reportsidentities > $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestMoveRequest.csv
	$progressBar1.Value = "100"
	$progressBar1.Value = "0"
	$progressBar1.Hide()

	[System.Windows.MessageBox]::Show("We have completed the Test Move Request")

	$error.clear()

}


#When Pressing "Select File" button
$button6_Click = {

	$button5.Enabled = "False"
	$performTestToolStripMenuItem1.Enabled = "False"

	#Creating the Object for File Dialog
	[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null    
    $OpenFileDialogb6 = New-Object System.Windows.Forms.OpenFileDialog

	#Setting File Dialog Initial Directory
    $OpenFileDialogb6.initialDirectory = $initialDirectoryb6

	#Setting File Dialog Filter for .CSV files
    $OpenFileDialogb6.filter = "CSV (*.csv)| *.csv"

	#Open File Dialog
    $OpenFileDialogb6.ShowDialog() | Out-Null

	#Saving File Name / File Path
    $OpenFileDialogb6.filename

	#Showing File Name / File Path in the Form label
	$label8.Text = $OpenFileDialogb6.filename

	#Saving File Name / File Path into $inputTestMoveRequestb6 variable
	$inputTestMoveRequestb6=$OpenFileDialogb6.filename

	#Saving to global variable $global:inputTestMoveRequestb6
	$global:inputTestMoveRequestb6=$inputTestMoveRequestb6

	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}
	
	if ($OpenFileDialog.filename -ne ""){
		$button5.Enabled = "True"
		$performTestToolStripMenuItem1.Enabled = "True"
		Copy-Item -path $OpenFileDialog.filename -Destination $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain\ -recurse -force
	}else{
		[System.Windows.MessageBox]::Show("Please provide a valid source file in order to perform the test!")
	}	
}

$selectFileToolStripMenuItem1_Click = {
	

	$button5.Enabled = "False"
	$performTestToolStripMenuItem1.Enabled = "False"

	#Creating the Object for File Dialog
	[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null    
    $OpenFileDialogb6 = New-Object System.Windows.Forms.OpenFileDialog

	#Setting File Dialog Initial Directory
    $OpenFileDialogb6.initialDirectory = $initialDirectoryb6

	#Setting File Dialog Filter for .CSV files
    $OpenFileDialogb6.filter = "CSV (*.csv)| *.csv"

	#Open File Dialog
    $OpenFileDialogb6.ShowDialog() | Out-Null

	#Saving File Name / File Path
    $OpenFileDialogb6.filename

	#Showing File Name / File Path in the Form label
	$label8.Text = $OpenFileDialogb6.filename

	#Saving File Name / File Path into $inputTestMoveRequestb6 variable
	$inputTestMoveRequestb6=$OpenFileDialogb6.filename

	#Saving to global variable $global:inputTestMoveRequestb6
	$global:inputTestMoveRequestb6=$inputTestMoveRequestb6

	if ($global:Session -like "*PSSession*"){
		$GetUserCred = $UserCredential.UserName
		$stringGetUserCred = $GetUserCred
		$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
	}
	
	if ($OpenFileDialog.filename -ne ""){
		$button5.Enabled = "True"
		$performTestToolStripMenuItem1.Enabled = "True"
		Copy-Item -path $OpenFileDialog.filename -Destination $env:USERPROFILE\Documents\MELValidation\Uploads\$GetDomain\ -recurse -force
	}else{
		[System.Windows.MessageBox]::Show("Please provide a valid source file in order to perform the test!")
	}	

}

##############################################################################################################################
#######################################			Test Migration Endpoint			##############################################
##############################################################################################################################

#When Pressing "Get Migration Endpoints" button
$button8_Click = {

	$button9.Enabled = "False"
	$performTestToolStripMenuItem2.Enabled = "False"
	$listBox1.Items.Remove($listBox1.items)

	#Get Migration Endpoint Identities
	$migendpoint=Get-MigrationEndpoint | Select-Object identity

	foreach ($endp in $migendpoint){
		#saves the value of the Endpoint Identity
		$endpidentity = $endp.identity
		$listBox1.Items.Add($endpidentity)
	}
	if ($listBox1.items.count -eq "0"){
		[System.Windows.MessageBox]::Show("We weren't able to find any Migration Endpoint!")
	}else{
		$button9.Enabled = "True"
		$performTestToolStripMenuItem2.Enabled = "True"
	}	
}

$getMigrationEndpointsToolStripMenuItem_Click = {
	
	$button9.Enabled = "False"
	$performTestToolStripMenuItem2.Enabled = "False"
	$listBox1.Items.Remove($listBox1.items)

	#Get Migration Endpoint Identities
	$migendpoint=Get-MigrationEndpoint | Select-Object identity

	foreach ($endp in $migendpoint){
		#saves the value of the Endpoint Identity
		$endpidentity = $endp.identity
		$listBox1.Items.Add($endpidentity)
	}
	if ($listBox1.items.count = 0){
		[System.Windows.MessageBox]::Show("We weren't able to find any Migration Endpoint!")
	}else{
		$button9.Enabled = "True"
		$performTestToolStripMenuItem2.Enabled = "True"
	}	
}

#When Pressing "Perform Test" button
$button9_Click = {
	
	if ($listBox1.SelectedItem -eq $null){
	
		#show a message asking to select the endpoint from the list
		[System.Windows.MessageBox]::Show("Please select an endpoint to test from the list!")

	}else{

		#Ask to the user what endpoint to test
		$inputendpid = $listBox1.SelectedItem.ToString()

		Write-host ""

		$reportsmigendpoint=@("MigrationEndpoint,Success,IfError")

		#Prints the Migration Endpoint that was selected
		Write-Host "You've selected Endpoint '$inputendpid'"
		Write-host ""

		#Set-UP $migrationendpoint with the value of $inputendpid
		$migrationendpoint = $inputendpid

		$User = $textBox1.text
		$PWord = $textBox2.text

		if ($User -eq $null -and $PWord -eq $null -or $User -eq $null -or $PWord -eq $null -or $user -eq "" -or $pword -eq ""){

			#show a message to fullfil the local admin account credentials
			[System.Windows.MessageBox]::Show("Please provide the local admin account credentials!")
		}else{

			#convert password field to secure string
			$secpasswd = ConvertTo-SecureString -String $PWord -AsPlainText -Force
	
			#Prompt the user to insert the local admin credentials
			$local= New-Object -TypeName System.Management.Automation.PSCredential $User, $secpasswd

			#prints to powershell prompt the endpoint that you are testing
			Write-host ""
			Write-Host "We are testing the Endpoint '$migrationendpoint'..."
			Write-host "...."
			$testmigrationserveravailability = Test-MigrationServerAvailability -ExchangeRemoteMove -RemoteServer $migrationendpoint -Credentials $local | Select-Object "Result"
			Write-host "...."
			$testmigrationserveravailabilityresult = $testmigrationserveravailability.result
			Write-host "...."
			Write-host "...."
			write-host "The result is $testmigrationserveravailabilityresult!"
			Write-host ""

			if ($testmigrationserveravailability -like "*@{Result=*"){
				if ($testmigrationserveravailabilityresult -eq "Success"){
					$reportsmigendpoint += "$migrationendpoint,Yes,$error"
					[System.Windows.MessageBox]::Show("Your test to $migrationendpoint resulted in $testmigrationserveravailabilityresult!")
				}else{
					$reportsmigendpoint += "$migrationendpoint,NO,$error"
					[System.Windows.MessageBox]::Show("Your test to $migrationendpoint resulted in $testmigrationserveravailabilityresult! Make sure that you've inserted the correct credentials!")
				}
			}else{
				$reportsmigendpoint += "$migrationendpoint,NO,$error"
				#show message to fullfil the local admin account with valid credentials
				[System.Windows.MessageBox]::Show("Please provide valid Local Admin Credentials!")
			}

			if ($global:Session -like "*PSSession*"){
				$GetUserCred = $UserCredential.UserName
				$stringGetUserCred = $GetUserCred
				$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
			}

			$reportsmigendpoint > $env:USERPROFILE\Documents\MELValidation\ReportTestMigrationEndpoints\$GetDomain\ReportTestMigrationEndpoint.csv
			$reportsmigendpoint > $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestMigrationEndpoint.csv
			
		}
	}
}

$performTestToolStripMenuItem2_Click = {
	
	
	if ($listBox1.SelectedItem -eq $null){
	
		#show a message asking to select the endpoint from the list
		[System.Windows.MessageBox]::Show("Please select an endpoint to test from the list!")

	}else{

		#Ask to the user what endpoint to test
		$inputendpid = $listBox1.SelectedItem.ToString()

		Write-host ""

		$reportsmigendpoint=@("MigrationEndpoint,Success,IfError")

		#Prints the Migration Endpoint that was selected
		Write-Host "You've selected Endpoint '$inputendpid'"
		Write-host ""

		#Set-UP $migrationendpoint with the value of $inputendpid
		$migrationendpoint = $inputendpid

		$User = $textBox1.text
		$PWord = $textBox2.text

		if ($User -eq $null -and $PWord -eq $null -or $User -eq $null -or $PWord -eq $null -or $user -eq "" -or $pword -eq ""){

			#show a message to fullfil the local admin account credentials
			[System.Windows.MessageBox]::Show("Please provide the local admin account credentials!")
		}else{

			#convert password field to secure string
			$secpasswd = ConvertTo-SecureString -String $PWord -AsPlainText -Force
	
			#Prompt the user to insert the local admin credentials
			$local= New-Object -TypeName System.Management.Automation.PSCredential $User, $secpasswd

			#prints to powershell prompt the endpoint that you are testing
			Write-host ""
			Write-Host "We are testing the Endpoint '$migrationendpoint'..."
			Write-host "...."
			$testmigrationserveravailability = Test-MigrationServerAvailability -ExchangeRemoteMove -RemoteServer $migrationendpoint -Credentials $local | Select-Object "Result"
			Write-host "...."
			$testmigrationserveravailabilityresult = $testmigrationserveravailability.result
			Write-host "...."
			Write-host "...."
			write-host "The result is $testmigrationserveravailabilityresult!"
			Write-host ""

			if ($testmigrationserveravailability -like "*@{Result=*"){
				if ($testmigrationserveravailabilityresult -eq "Success"){
					$reportsmigendpoint += "$migrationendpoint,Yes,$error"
					[System.Windows.MessageBox]::Show("Your test to $migrationendpoint resulted in $testmigrationserveravailabilityresult!")
				}else{
					$reportsmigendpoint += "$migrationendpoint,NO,$error"
					[System.Windows.MessageBox]::Show("Your test to $migrationendpoint resulted in $testmigrationserveravailabilityresult! Make sure that you've inserted the correct credentials!")
				}
			}else{
				$reportsmigendpoint += "$migrationendpoint,NO,$error"
				#show message to fullfil the local admin account with valid credentials
				[System.Windows.MessageBox]::Show("Please provide valid Local Admin Credentials!")
			}

			if ($global:Session -like "*PSSession*"){
				$GetUserCred = $UserCredential.UserName
				$stringGetUserCred = $GetUserCred
				$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
			}

			$reportsmigendpoint > $env:USERPROFILE\Documents\MELValidation\ReportTestMigrationEndpoints\$GetDomain\ReportTestMigrationEndpoint.csv
			$reportsmigendpoint > $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\ReportTestMigrationEndpoint.csv
			
		}
	}

}

##############################################################################################################################
########################################	      Local Admin Account			##############################################
##############################################################################################################################

#When pressing "Test Local Admin" button
$button7_Click = {
	if ($textBox2.text -eq "" -or $textBox1.text -eq ""){
		$testreport = "Please provide Local Admin Credentials!"
		Write-Host "$testreport"
		[System.Windows.MessageBox]::Show($testreport)
	}else{

		if ($listBox1.SelectedItem -eq $null){

			[System.Windows.MessageBox]::Show("Please select the Endpoint to test the Local Admin Credentials!")

		}else{
			$remoteserver = $listBox1.SelectedItem

			$User = $textBox1.text
			$PWord = $textBox2.text
			#convert password field to secure string
			$secpasswd = ConvertTo-SecureString -String $PWord -AsPlainText -Force
	
			#Prompt the user to insert the local admin credentials
			$local= New-Object -TypeName System.Management.Automation.PSCredential $User, $secpasswd

			#prints to powershell prompt the endpoint that you are testing
			Write-host ""
			Write-Host "We are testing the Endpoint '$migrationendpoint'..."
			$testmigrationserveravailability = Test-MigrationServerAvailability -ExchangeRemoteMove -RemoteServer $remoteserver -Credentials $local | Select-Object "Result"
		}
	}
}

$testLocalAdminToolStripMenuItem_Click = {
	
	if ($textBox2.text -eq "" -or $textBox1.text -eq ""){
		$testreport = "Please provide Local Admin Credentials!"
		Write-Host "$testreport"
		[System.Windows.MessageBox]::Show($testreport)
	}else{

		if ($listBox1.SelectedItem -eq $null){

			[System.Windows.MessageBox]::Show("Please select the Endpoint to test the Local Admin Credentials!")

		}else{
			$remoteserver = $listBox1.SelectedItem

			$User = $textBox1.text
			$PWord = $textBox2.text
			#convert password field to secure string
			$secpasswd = ConvertTo-SecureString -String $PWord -AsPlainText -Force
	
			#Prompt the user to insert the local admin credentials
			$local= New-Object -TypeName System.Management.Automation.PSCredential $User, $secpasswd

			#prints to powershell prompt the endpoint that you are testing
			Write-host ""
			Write-Host "We are testing the Endpoint '$migrationendpoint'..."
			$testmigrationserveravailability = Test-MigrationServerAvailability -ExchangeRemoteMove -RemoteServer $remoteserver -Credentials $local | Select-Object "Result"
		}
	}

}

#when pressing "Test Complexity" button
$button3_Click = {

	#Clear the Powershell default $error variable
	$error.clear()

	#Report Arrays initialization
	$successComplexLocalcredentials = @("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")
	$errorComplexLocalcredentials = @("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")
	$reportComplexLocalcredentials=@("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")

	if ($textBox2.text -eq "" -or $textBox1.text -eq ""){
		$testreport = "Please provide Local Admin Credentials!"
		Write-Host "$testreport"
		[System.Windows.MessageBox]::Show($testreport)
	}else{
		$pass = $textBox2.text
		$passLength = 15
		if ($pass.Length -ge $passLength){
			$pw2test = $pass
			$isGood = 0
			$isSpecial = 0
			$pl = $pass.Length
			write-host "The length of the password you've inserted is: $pl"
			for ($i = 0; $i -lt $pass.length; $i++) {
				$passchars += @( $pass.Chars($i))
				$passwordCheckArray += "$i, $pass.Chars($i)"
				If ($pass.Chars($i) -match "[^a-zA-Z0-9]"){
					write-host "one special"
					$isSpecial++
					If ($isSpecial -ge 3){
						$isGood++ 
					}
				}
				Write-host "We have found $isSpecial Special Chars"
			}	
			If ($pw2test -match "[0-9]"){ 
				write-host "yes 0-9"
				$isGood++ 
			}If ($pw2test -cmatch "[a-z]"){ 
				write-host "yes a-z"
				$isGood++ 
			}If ($pw2test -cmatch "[A-Z]"){ 
				write-host "yes A-Z"
				$isGood++ 
			}If ($isGood -ge 4){ 
				$testreport = "The tested password is a valid password!" 
				Write-Host "$testreport"
				[System.Windows.MessageBox]::Show($testreport)
				$successComplexLocalcredentials
			}Else{ 
				$testreport = "The tested password isn´t a valid password! Please reset the password following the password complexity rules!"
				Write-Host "$testreport"
				[System.Windows.MessageBox]::Show($testreport)
				$errorComplexLocalcredentials
			}
		}Else{
			$testreport = "The tested password isn´t a valid password! Please reset the password following the password complexity rules!"
			Write-Host "$testreport"
			[System.Windows.MessageBox]::Show($testreport)
			$errorComplexLocalcredentials
		}

		if ($global:Session -like "*PSSession*"){
			$GetUserCred = $UserCredential.UserName
			$stringGetUserCred = $GetUserCred
			$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		}

		$localuser = $textBox1.text

		#Export of the report array $successfullcredentials into a .txt file
		$successComplexLocalcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain\$localuser.txt

		#Export of the report array $errorcredentials into a .txt file
		$errorComplexLocalcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain\$localuser.txt

		#Export of the report array $reportcredentials into a .csv file
		$reportComplexLocalcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\LocalAdmins\$localuser.csv
	}
}

$testComplexityToolStripMenuItem1_Click = {
	

	#Clear the Powershell default $error variable
	$error.clear()

	#Report Arrays initialization
	$successComplexLocalcredentials = @("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")
	$errorComplexLocalcredentials = @("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")
	$reportComplexLocalcredentials=@("UPN,ComplexityTest,Has3Special,HasUpper,HasLower,HasNumber,isLength")

	if ($textBox2.text -eq "" -or $textBox1.text -eq ""){
		$testreport = "Please provide Local Admin Credentials!"
		Write-Host "$testreport"
		[System.Windows.MessageBox]::Show($testreport)
	}else{
		$pass = $textBox2.text
		$passLength = 15
		if ($pass.Length -ge $passLength){
			$pw2test = $pass
			$isGood = 0
			$isSpecial = 0
			$pl = $pass.Length
			write-host "The length of the password you've inserted is: $pl"
			for ($i = 0; $i -lt $pass.length; $i++) {
				$passchars += @( $pass.Chars($i))
				$passwordCheckArray += "$i, $pass.Chars($i)"
				If ($pass.Chars($i) -match "[^a-zA-Z0-9]"){
					write-host "one special"
					$isSpecial++
					If ($isSpecial -ge 3){
						$isGood++ 
					}
				}
				Write-host "We have found $isSpecial Special Chars"
			}	
			If ($pw2test -match "[0-9]"){ 
				write-host "yes 0-9"
				$isGood++ 
			}If ($pw2test -cmatch "[a-z]"){ 
				write-host "yes a-z"
				$isGood++ 
			}If ($pw2test -cmatch "[A-Z]"){ 
				write-host "yes A-Z"
				$isGood++ 
			}If ($isGood -ge 4){ 
				$testreport = "The tested password is a valid password!" 
				Write-Host "$testreport"
				[System.Windows.MessageBox]::Show($testreport)
				$successComplexLocalcredentials
			}Else{ 
				$testreport = "The tested password isn´t a valid password! Please reset the password following the password complexity rules!"
				Write-Host "$testreport"
				[System.Windows.MessageBox]::Show($testreport)
				$errorComplexLocalcredentials
			}
		}Else{
			$testreport = "The tested password isn´t a valid password! Please reset the password following the password complexity rules!"
			Write-Host "$testreport"
			[System.Windows.MessageBox]::Show($testreport)
			$errorComplexLocalcredentials
		}

		if ($global:Session -like "*PSSession*"){
			$GetUserCred = $UserCredential.UserName
			$stringGetUserCred = $GetUserCred
			$GetUSR, $GetDomain = $stringGetUserCred.Split("@")
		}

		$localuser = $textBox1.text

		#Export of the report array $successfullcredentials into a .txt file
		$successComplexLocalcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain\$localuser.txt

		#Export of the report array $errorcredentials into a .txt file
		$errorComplexLocalcredentials > $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity\$GetDomain\$localuser.txt

		#Export of the report array $reportcredentials into a .csv file
		$reportComplexLocalcredentials >  $env:USERPROFILE\Documents\MELValidation\FinalReports\$GetDomain\LocalAdmins\$localuser.csv
	}

}

