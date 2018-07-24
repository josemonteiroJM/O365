# Get the ID and security principal of the current user account
$myWindowsID=[System.Security.Principal.WindowsIdentity]::GetCurrent()
$myWindowsPrincipal=new-object System.Security.Principal.WindowsPrincipal($myWindowsID)
 
# Get the security principal for the Administrator role
$adminRole=[System.Security.Principal.WindowsBuiltInRole]::Administrator
 
# Check to see if we are currently running "as Administrator"
if ($myWindowsPrincipal.IsInRole($adminRole))
   {
   # We are running "as Administrator" - so change the title and background color to indicate this
   $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Elevated)"
   clear-host
   }
else
   {
   # We are not running "as Administrator" - so relaunch as administrator
   
   # Create a new process object that starts PowerShell
   $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
   
   # Specify the current script path and name as a parameter
   $newProcess.Arguments = $myInvocation.MyCommand.Definition;
   
   # Indicate that the process should be elevated
   $newProcess.Verb = "runas";
   
   # Start the new process
   [System.Diagnostics.Process]::Start($newProcess);
   
   # Exit from the current, unelevated, process
   exit
   }
 
# Run your code that needs to be elevated here



# Determine script location for PowerShell
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Host "Current script directory is $ScriptDir"

New-Item -ItemType Directory -Force -Path $env:ProgramFiles\MELValidation
takeown /R /F "$env:ProgramFiles\MELValidation"
Copy-Item -path $ScriptDir\Admin-Connect.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form1.designer.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form1.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form1.resources.psd1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form1.resx -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form2.designer.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form2.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form2.resources.psd1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Form2.resx -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\HelpValidation.pdf -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Hide-Powershell.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\icon.ico -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\install.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\microsoft_PNG18.png -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Logo--FTC--MMVM.PNG -Destination $env:ProgramFiles\MELValidation -recurse -force 
Copy-Item -path $ScriptDir\PowerShellProject2.pssproj -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Resources.resx -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Script.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force 
Copy-Item -path $ScriptDir\Test-Credentials.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Test-LocalAdmins.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
Copy-Item -path $ScriptDir\Test-MoveRequest.ps1 -Destination $env:ProgramFiles\MELValidation -recurse -force
	 
Copy-Item -path $ScriptDir\MELValidation.lnk -Destination $env:USERPROFILE\Desktop -recurse -force

New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation
takeown /R /F "$env:USERPROFILE\Documents\MELValidation"
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\FinalReports
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMigrationEndpoints
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestComplexityCredentials
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestMoveRequest
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdminComplexity
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestLocalAdmin
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\ReportTestCredentials
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\Documents\MELValidation\Uploads

takeown /R /F "$env:USERPROFILE\Documents\MELValidation"
takeown /R /F "$env:ProgramFiles\MELValidation"


Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Load assembly
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.Messagebox]::Show("The MELValidation Tool was successfully installed!")


$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
 
Write-Host "Current script directory is $ScriptDir"

