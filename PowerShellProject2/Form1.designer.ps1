[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')

$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.ProgressBar]$progressBar1 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.PictureBox]$pictureBox1 = $null
[System.Windows.Forms.OpenFileDialog]$openFileDialog1 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.MenuStrip]$menuStrip1 = $null
[System.Windows.Forms.ToolStripMenuItem]$fileToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$viewToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$helpToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem2 = $null
[System.Windows.Forms.ToolStripMenuItem]$resetToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem3 = $null
[System.Windows.Forms.ToolStripMenuItem]$exitToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$viewHelpToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$sendFeedbackToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$reportAProblemToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$provideASugestionToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem1 = $null
[System.Windows.Forms.ToolStripMenuItem]$aboutMELValidationToolToolStripMenuItem = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.Button]$button5 = $null
[System.Windows.Forms.Button]$button6 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.GroupBox]$groupBox3 = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.GroupBox]$groupBox4 = $null
[System.Windows.Forms.Button]$button7 = $null
[System.Windows.Forms.Button]$button9 = $null
[System.Windows.Forms.ListBox]$listBox1 = $null
[System.Windows.Forms.Button]$button8 = $null
[System.Windows.Forms.ToolStripMenuItem]$testOffice365CredentialsReportsToolStripMenuItem = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Button]$button4 = $null
[System.Windows.Forms.Button]$button10 = $null
[System.Windows.Forms.Button]$button11 = $null
[System.Windows.Forms.PictureBox]$pictureBox2 = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Button]$button3 = $null
[System.Windows.Forms.GroupBox]$groupBox5 = $null
[System.Windows.Forms.Button]$button12 = $null
[System.Windows.Forms.Button]$button13 = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.Button]$button14 = $null
[System.Windows.Forms.Label]$label15 = $null
[System.Windows.Forms.ToolStripMenuItem]$operationsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$signInToOffice365ToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem4 = $null
[System.Windows.Forms.ToolStripMenuItem]$testOffice365CredentialsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$selectFileToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$testComplexityToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$performTestToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$testMoveRequestToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$selectFileToolStripMenuItem1 = $null
[System.Windows.Forms.ToolStripMenuItem]$performTestToolStripMenuItem1 = $null
[System.Windows.Forms.ToolStripMenuItem]$testMigrationEndpointToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$getMigrationEndpointsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$performTestToolStripMenuItem2 = $null
[System.Windows.Forms.ToolStripMenuItem]$testLocalAdminAccountToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$testComplexityToolStripMenuItem1 = $null
[System.Windows.Forms.ToolStripMenuItem]$testLocalAdminToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem5 = $null
[System.Windows.Forms.ToolStripMenuItem]$openReportsFolderToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$minimizeToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$maximizeToolStripMenuItem = $null
[System.Windows.Forms.ToolStripSeparator]$toolStripMenuItem6 = $null
[System.Windows.Forms.ToolStripMenuItem]$closeToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$openUploadFolderToolStripMenuItem = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = Invoke-Expression (Get-Content "$PSScriptRoot\Form1.resources.psd1" -Raw)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$progressBar1 = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$pictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$openFileDialog1 = (New-Object -TypeName System.Windows.Forms.OpenFileDialog)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$menuStrip1 = (New-Object -TypeName System.Windows.Forms.MenuStrip)
$fileToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$openUploadFolderToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem2 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$resetToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem3 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$exitToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$operationsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$signInToOffice365ToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem4 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$testOffice365CredentialsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$selectFileToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testComplexityToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$performTestToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testMoveRequestToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$selectFileToolStripMenuItem1 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$performTestToolStripMenuItem1 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testMigrationEndpointToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$getMigrationEndpointsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$performTestToolStripMenuItem2 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testLocalAdminAccountToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testComplexityToolStripMenuItem1 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$testLocalAdminToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem5 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$openReportsFolderToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$viewToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$minimizeToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$maximizeToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem6 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$closeToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$helpToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$viewHelpToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$sendFeedbackToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$reportAProblemToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$provideASugestionToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$toolStripMenuItem1 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$aboutMELValidationToolToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$button11 = (New-Object -TypeName System.Windows.Forms.Button)
$button4 = (New-Object -TypeName System.Windows.Forms.Button)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$button10 = (New-Object -TypeName System.Windows.Forms.Button)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$button5 = (New-Object -TypeName System.Windows.Forms.Button)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$button6 = (New-Object -TypeName System.Windows.Forms.Button)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$groupBox3 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$button3 = (New-Object -TypeName System.Windows.Forms.Button)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$button7 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$groupBox4 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$button9 = (New-Object -TypeName System.Windows.Forms.Button)
$listBox1 = (New-Object -TypeName System.Windows.Forms.ListBox)
$button8 = (New-Object -TypeName System.Windows.Forms.Button)
$testOffice365CredentialsReportsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$pictureBox2 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox5 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$button12 = (New-Object -TypeName System.Windows.Forms.Button)
$button13 = (New-Object -TypeName System.Windows.Forms.Button)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$button14 = (New-Object -TypeName System.Windows.Forms.Button)
$label15 = (New-Object -TypeName System.Windows.Forms.Label)
$label16 = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$pictureBox1).BeginInit()
$menuStrip1.SuspendLayout()
$groupBox1.SuspendLayout()
$groupBox2.SuspendLayout()
$groupBox3.SuspendLayout()
$groupBox4.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$pictureBox2).BeginInit()
$groupBox5.SuspendLayout()
$MainForm.SuspendLayout()
#
#button2
#
$button2.BackColor = [System.Drawing.SystemColors]::ControlLight
$button2.Cursor = [System.Windows.Forms.Cursors]::Hand
$button2.FlatAppearance.BorderSize = [System.Int32]0
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]109))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]23))
$button2.TabIndex = [System.Int32]0
$button2.Text = [System.String]'Sign In to Office 365'
$button2.UseVisualStyleBackColor = $false
$button2.add_Click($AdminLogin)
$button2.add_MouseLeave($button2_MouseLeave)
#
#label2
#
$label2.AutoSize = $true
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]28,[System.Int32]140))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]13))
$label2.TabIndex = [System.Int32]2
$label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$label2.add_Click($label2_Click)
#
#progressBar1
#
$progressBar1.ForeColor = [System.Drawing.Color]::LimeGreen
$progressBar1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]164))
$progressBar1.Name = [System.String]'progressBar1'
$progressBar1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]499,[System.Int32]23))
$progressBar1.Step = [System.Int32]1
$progressBar1.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$progressBar1.TabIndex = [System.Int32]3
$progressBar1.Visible = $false
#
#label3
#
$label3.AutoSize = $true
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]80,[System.Int32]61))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]237,[System.Int32]21))
$label3.TabIndex = [System.Int32]4
$label3.Text = [System.String]'MEL Questionnaire Validation'
$label3.add_Click($label3_Click)
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]80,[System.Int32]40))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]134,[System.Int32]21))
$label4.TabIndex = [System.Int32]6
$label4.Text = [System.String]'FastTrack Center'
#
#pictureBox1
#
$pictureBox1.Image = ([System.Drawing.Image]$resources.'pictureBox1.Image')
$pictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]40))
$pictureBox1.Name = [System.String]'pictureBox1'
$pictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]42))
$pictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$pictureBox1.TabIndex = [System.Int32]7
$pictureBox1.TabStop = $false
#
#openFileDialog1
#
$openFileDialog1.FileName = [System.String]'openFileDialog1'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]70))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]13))
$label5.TabIndex = [System.Int32]10
#
#menuStrip1
#
$menuStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($fileToolStripMenuItem,$operationsToolStripMenuItem,$viewToolStripMenuItem,$helpToolStripMenuItem))
$menuStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$menuStrip1.Name = [System.String]'menuStrip1'
$menuStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]940,[System.Int32]24))
$menuStrip1.TabIndex = [System.Int32]13
$menuStrip1.Text = [System.String]'menuStrip1'
#
#fileToolStripMenuItem
#
$fileToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($openUploadFolderToolStripMenuItem,$toolStripMenuItem2,$resetToolStripMenuItem,$toolStripMenuItem3,$exitToolStripMenuItem))
$fileToolStripMenuItem.Name = [System.String]'fileToolStripMenuItem'
$fileToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]37,[System.Int32]20))
$fileToolStripMenuItem.Text = [System.String]'File'
#
#openUploadFolderToolStripMenuItem
#
$openUploadFolderToolStripMenuItem.Name = [System.String]'openUploadFolderToolStripMenuItem'
$openUploadFolderToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]22))
$openUploadFolderToolStripMenuItem.Text = [System.String]'Open Upload Folder'
$openUploadFolderToolStripMenuItem.add_Click($openUploadFolderToolStripMenuItem_Click)
#
#toolStripMenuItem2
#
$toolStripMenuItem2.Name = [System.String]'toolStripMenuItem2'
$toolStripMenuItem2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]177,[System.Int32]6))
#
#resetToolStripMenuItem
#
$resetToolStripMenuItem.Name = [System.String]'resetToolStripMenuItem'
$resetToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]22))
$resetToolStripMenuItem.Text = [System.String]'Reset'
$resetToolStripMenuItem.add_Click($resetToolStripMenuItem_Click)
#
#toolStripMenuItem3
#
$toolStripMenuItem3.Name = [System.String]'toolStripMenuItem3'
$toolStripMenuItem3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]177,[System.Int32]6))
#
#exitToolStripMenuItem
#
$exitToolStripMenuItem.Name = [System.String]'exitToolStripMenuItem'
$exitToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]22))
$exitToolStripMenuItem.Text = [System.String]'Exit'
$exitToolStripMenuItem.add_Click($exitToolStripMenuItem_Click)
#
#operationsToolStripMenuItem
#
$operationsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($signInToOffice365ToolStripMenuItem,$toolStripMenuItem4,$testOffice365CredentialsToolStripMenuItem,$testMoveRequestToolStripMenuItem,$testMigrationEndpointToolStripMenuItem,$testLocalAdminAccountToolStripMenuItem,$toolStripMenuItem5,$openReportsFolderToolStripMenuItem))
$operationsToolStripMenuItem.Name = [System.String]'operationsToolStripMenuItem'
$operationsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]20))
$operationsToolStripMenuItem.Text = [System.String]'Operations'
#
#signInToOffice365ToolStripMenuItem
#
$signInToOffice365ToolStripMenuItem.Name = [System.String]'signInToOffice365ToolStripMenuItem'
$signInToOffice365ToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$signInToOffice365ToolStripMenuItem.Text = [System.String]'Sign In to Office 365'
$signInToOffice365ToolStripMenuItem.add_Click($signInToOffice365ToolStripMenuItem_Click)
#
#toolStripMenuItem4
#
$toolStripMenuItem4.Name = [System.String]'toolStripMenuItem4'
$toolStripMenuItem4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]6))
#
#testOffice365CredentialsToolStripMenuItem
#
$testOffice365CredentialsToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($selectFileToolStripMenuItem,$testComplexityToolStripMenuItem,$performTestToolStripMenuItem))
$testOffice365CredentialsToolStripMenuItem.Name = [System.String]'testOffice365CredentialsToolStripMenuItem'
$testOffice365CredentialsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$testOffice365CredentialsToolStripMenuItem.Text = [System.String]'Test Office 365 Credentials'
$testOffice365CredentialsToolStripMenuItem.add_Click($testOffice365CredentialsToolStripMenuItem_Click)
#
#selectFileToolStripMenuItem
#
$selectFileToolStripMenuItem.Enabled = $false
$selectFileToolStripMenuItem.Name = [System.String]'selectFileToolStripMenuItem'
$selectFileToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]158,[System.Int32]22))
$selectFileToolStripMenuItem.Text = [System.String]'Select File'
$selectFileToolStripMenuItem.add_Click($selectFileToolStripMenuItem_Click)
#
#testComplexityToolStripMenuItem
#
$testComplexityToolStripMenuItem.Enabled = $false
$testComplexityToolStripMenuItem.Name = [System.String]'testComplexityToolStripMenuItem'
$testComplexityToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]158,[System.Int32]22))
$testComplexityToolStripMenuItem.Text = [System.String]'Test Complexity'
$testComplexityToolStripMenuItem.add_Click($testComplexityToolStripMenuItem_Click)
#
#performTestToolStripMenuItem
#
$performTestToolStripMenuItem.Enabled = $false
$performTestToolStripMenuItem.Name = [System.String]'performTestToolStripMenuItem'
$performTestToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]158,[System.Int32]22))
$performTestToolStripMenuItem.Text = [System.String]'Perform Test'
$performTestToolStripMenuItem.add_Click($performTestToolStripMenuItem_Click)
#
#testMoveRequestToolStripMenuItem
#
$testMoveRequestToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($selectFileToolStripMenuItem1,$performTestToolStripMenuItem1))
$testMoveRequestToolStripMenuItem.Name = [System.String]'testMoveRequestToolStripMenuItem'
$testMoveRequestToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$testMoveRequestToolStripMenuItem.Text = [System.String]'Test Move Request'
#
#selectFileToolStripMenuItem1
#
$selectFileToolStripMenuItem1.Enabled = $false
$selectFileToolStripMenuItem1.Name = [System.String]'selectFileToolStripMenuItem1'
$selectFileToolStripMenuItem1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]141,[System.Int32]22))
$selectFileToolStripMenuItem1.Text = [System.String]'Select File'
$selectFileToolStripMenuItem1.add_Click($selectFileToolStripMenuItem1_Click)
#
#performTestToolStripMenuItem1
#
$performTestToolStripMenuItem1.Enabled = $false
$performTestToolStripMenuItem1.Name = [System.String]'performTestToolStripMenuItem1'
$performTestToolStripMenuItem1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]141,[System.Int32]22))
$performTestToolStripMenuItem1.Text = [System.String]'Perform Test'
$performTestToolStripMenuItem1.add_Click($performTestToolStripMenuItem1_Click)
#
#testMigrationEndpointToolStripMenuItem
#
$testMigrationEndpointToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($getMigrationEndpointsToolStripMenuItem,$performTestToolStripMenuItem2))
$testMigrationEndpointToolStripMenuItem.Name = [System.String]'testMigrationEndpointToolStripMenuItem'
$testMigrationEndpointToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$testMigrationEndpointToolStripMenuItem.Text = [System.String]'Test Migration Endpoint'
#
#getMigrationEndpointsToolStripMenuItem
#
$getMigrationEndpointsToolStripMenuItem.Enabled = $false
$getMigrationEndpointsToolStripMenuItem.Name = [System.String]'getMigrationEndpointsToolStripMenuItem'
$getMigrationEndpointsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]22))
$getMigrationEndpointsToolStripMenuItem.Text = [System.String]'Get Migration Endpoints'
$getMigrationEndpointsToolStripMenuItem.add_Click($getMigrationEndpointsToolStripMenuItem_Click)
#
#performTestToolStripMenuItem2
#
$performTestToolStripMenuItem2.Enabled = $false
$performTestToolStripMenuItem2.Name = [System.String]'performTestToolStripMenuItem2'
$performTestToolStripMenuItem2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]22))
$performTestToolStripMenuItem2.Text = [System.String]'Perform Test'
$performTestToolStripMenuItem2.add_Click($performTestToolStripMenuItem2_Click)
#
#testLocalAdminAccountToolStripMenuItem
#
$testLocalAdminAccountToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($testComplexityToolStripMenuItem1,$testLocalAdminToolStripMenuItem))
$testLocalAdminAccountToolStripMenuItem.Name = [System.String]'testLocalAdminAccountToolStripMenuItem'
$testLocalAdminAccountToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$testLocalAdminAccountToolStripMenuItem.Text = [System.String]'Test Local Admin Account'
#
#testComplexityToolStripMenuItem1
#
$testComplexityToolStripMenuItem1.Enabled = $false
$testComplexityToolStripMenuItem1.Name = [System.String]'testComplexityToolStripMenuItem1'
$testComplexityToolStripMenuItem1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]165,[System.Int32]22))
$testComplexityToolStripMenuItem1.Text = [System.String]'Test Complexity'
$testComplexityToolStripMenuItem1.add_Click($testComplexityToolStripMenuItem1_Click)
#
#testLocalAdminToolStripMenuItem
#
$testLocalAdminToolStripMenuItem.Enabled = $false
$testLocalAdminToolStripMenuItem.Name = [System.String]'testLocalAdminToolStripMenuItem'
$testLocalAdminToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]165,[System.Int32]22))
$testLocalAdminToolStripMenuItem.Text = [System.String]'Test Local Admin'
$testLocalAdminToolStripMenuItem.add_Click($testLocalAdminToolStripMenuItem_Click)
#
#toolStripMenuItem5
#
$toolStripMenuItem5.Name = [System.String]'toolStripMenuItem5'
$toolStripMenuItem5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]6))
#
#openReportsFolderToolStripMenuItem
#
$openReportsFolderToolStripMenuItem.Enabled = $false
$openReportsFolderToolStripMenuItem.Name = [System.String]'openReportsFolderToolStripMenuItem'
$openReportsFolderToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]213,[System.Int32]22))
$openReportsFolderToolStripMenuItem.Text = [System.String]'Open Reports Folder'
$openReportsFolderToolStripMenuItem.add_Click($openReportsFolderToolStripMenuItem_Click)
#
#viewToolStripMenuItem
#
$viewToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($minimizeToolStripMenuItem,$maximizeToolStripMenuItem,$toolStripMenuItem6,$closeToolStripMenuItem))
$viewToolStripMenuItem.Name = [System.String]'viewToolStripMenuItem'
$viewToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]63,[System.Int32]20))
$viewToolStripMenuItem.Text = [System.String]'Window'
$viewToolStripMenuItem.add_Click($viewToolStripMenuItem_Click)
#
#minimizeToolStripMenuItem
#
$minimizeToolStripMenuItem.Name = [System.String]'minimizeToolStripMenuItem'
$minimizeToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]22))
$minimizeToolStripMenuItem.Text = [System.String]'Minimize'
$minimizeToolStripMenuItem.add_Click($minimizeToolStripMenuItem_Click)
#
#maximizeToolStripMenuItem
#
$maximizeToolStripMenuItem.Name = [System.String]'maximizeToolStripMenuItem'
$maximizeToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]22))
$maximizeToolStripMenuItem.Text = [System.String]'Maximize'
$maximizeToolStripMenuItem.add_Click($maximizeToolStripMenuItem_Click)
#
#toolStripMenuItem6
#
$toolStripMenuItem6.Name = [System.String]'toolStripMenuItem6'
$toolStripMenuItem6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]6))
#
#closeToolStripMenuItem
#
$closeToolStripMenuItem.Name = [System.String]'closeToolStripMenuItem'
$closeToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]22))
$closeToolStripMenuItem.Text = [System.String]'Close'
$closeToolStripMenuItem.add_Click($closeToolStripMenuItem_Click)
#
#helpToolStripMenuItem
#
$helpToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($viewHelpToolStripMenuItem,$sendFeedbackToolStripMenuItem,$toolStripMenuItem1,$aboutMELValidationToolToolStripMenuItem))
$helpToolStripMenuItem.Name = [System.String]'helpToolStripMenuItem'
$helpToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]20))
$helpToolStripMenuItem.Text = [System.String]'Help'
#
#viewHelpToolStripMenuItem
#
$viewHelpToolStripMenuItem.Name = [System.String]'viewHelpToolStripMenuItem'
$viewHelpToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]22))
$viewHelpToolStripMenuItem.Text = [System.String]'View Help'
$viewHelpToolStripMenuItem.add_Click($viewHelpToolStripMenuItem_Click)
#
#sendFeedbackToolStripMenuItem
#
$sendFeedbackToolStripMenuItem.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($reportAProblemToolStripMenuItem,$provideASugestionToolStripMenuItem))
$sendFeedbackToolStripMenuItem.Name = [System.String]'sendFeedbackToolStripMenuItem'
$sendFeedbackToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]22))
$sendFeedbackToolStripMenuItem.Text = [System.String]'Send Feedback'
#
#reportAProblemToolStripMenuItem
#
$reportAProblemToolStripMenuItem.Name = [System.String]'reportAProblemToolStripMenuItem'
$reportAProblemToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]178,[System.Int32]22))
$reportAProblemToolStripMenuItem.Text = [System.String]'Report a problem'
$reportAProblemToolStripMenuItem.add_Click($reportAProblemToolStripMenuItem_Click)
#
#provideASugestionToolStripMenuItem
#
$provideASugestionToolStripMenuItem.Name = [System.String]'provideASugestionToolStripMenuItem'
$provideASugestionToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]178,[System.Int32]22))
$provideASugestionToolStripMenuItem.Text = [System.String]'Provide a Sugestion'
$provideASugestionToolStripMenuItem.add_Click($provideASugestionToolStripMenuItem_Click)
#
#toolStripMenuItem1
#
$toolStripMenuItem1.Name = [System.String]'toolStripMenuItem1'
$toolStripMenuItem1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]211,[System.Int32]6))
#
#aboutMELValidationToolToolStripMenuItem
#
$aboutMELValidationToolToolStripMenuItem.Name = [System.String]'aboutMELValidationToolToolStripMenuItem'
$aboutMELValidationToolToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]214,[System.Int32]22))
$aboutMELValidationToolToolStripMenuItem.Text = [System.String]'About MEL Validation Tool'
$aboutMELValidationToolToolStripMenuItem.add_Click($aboutMELValidationToolToolStripMenuItem_Click)
#
#groupBox1
#
$groupBox1.Controls.Add($button11)
$groupBox1.Controls.Add($button4)
$groupBox1.Controls.Add($label1)
$groupBox1.Controls.Add($label6)
$groupBox1.Controls.Add($button10)
$groupBox1.Controls.Add($label5)
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]204))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]888,[System.Int32]100))
$groupBox1.TabIndex = [System.Int32]12
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Test Office 365 Credentials'
$groupBox1.add_Enter($groupBox1_Enter)
#
#button11
#
$button11.BackColor = [System.Drawing.SystemColors]::ControlLight
$button11.Cursor = [System.Windows.Forms.Cursors]::Hand
$button11.FlatAppearance.BorderSize = [System.Int32]0
$button11.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]30))
$button11.Name = [System.String]'button11'
$button11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button11.TabIndex = [System.Int32]16
$button11.Text = [System.String]'Test Complexity'
$button11.UseVisualStyleBackColor = $false
$button11.add_Click($button11_Click)
#
#button4
#
$button4.BackColor = [System.Drawing.SystemColors]::ControlLight
$button4.Cursor = [System.Windows.Forms.Cursors]::Hand
$button4.FlatAppearance.BorderSize = [System.Int32]0
$button4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]30))
$button4.Name = [System.String]'button4'
$button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button4.TabIndex = [System.Int32]13
$button4.Text = [System.String]'Perform Test'
$button4.UseVisualStyleBackColor = $false
$button4.add_Click($button4_Click)
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]42))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]398,[System.Int32]13))
$label1.TabIndex = [System.Int32]12
$label1.Text = [System.String]'NOTE: To preview the instructions to fill the file correctly please check the help file.'
#
#label6
#
$label6.AutoSize = $true
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]24))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]396,[System.Int32]13))
$label6.TabIndex = [System.Int32]10
$label6.Text = [System.String]'Please, select a .csv file properly formated for these test and then perform the test. '
#
#button10
#
$button10.BackColor = [System.Drawing.SystemColors]::ControlLight
$button10.Cursor = [System.Windows.Forms.Cursors]::Hand
$button10.FlatAppearance.BorderSize = [System.Int32]0
$button10.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]232,[System.Int32]30))
$button10.Name = [System.String]'button10'
$button10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]85,[System.Int32]23))
$button10.TabIndex = [System.Int32]12
$button10.Text = [System.String]'Select File'
$button10.UseVisualStyleBackColor = $false
$button10.add_Click($button10_Click)
#
#groupBox2
#
$groupBox2.Controls.Add($label7)
$groupBox2.Controls.Add($button5)
$groupBox2.Controls.Add($label12)
$groupBox2.Controls.Add($button6)
$groupBox2.Controls.Add($label8)
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]313))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]888,[System.Int32]100))
$groupBox2.TabIndex = [System.Int32]13
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Test Move Request'
$groupBox2.add_Enter($groupBox2_Enter)
#
#label7
#
$label7.AutoSize = $true
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]411,[System.Int32]40))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]398,[System.Int32]13))
$label7.TabIndex = [System.Int32]18
$label7.Text = [System.String]'NOTE: To preview the instructions to fill the file correctly please check the help file.'
#
#button5
#
$button5.BackColor = [System.Drawing.SystemColors]::ControlLight
$button5.Cursor = [System.Windows.Forms.Cursors]::Hand
$button5.Enabled = $false
$button5.FlatAppearance.BorderSize = [System.Int32]0
$button5.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]31))
$button5.Name = [System.String]'button5'
$button5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button5.TabIndex = [System.Int32]8
$button5.Text = [System.String]'Perform Test'
$button5.UseVisualStyleBackColor = $false
$button5.add_Click($button5_Click)
#
#label12
#
$label12.AutoSize = $true
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]411,[System.Int32]22))
$label12.Name = [System.String]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]396,[System.Int32]13))
$label12.TabIndex = [System.Int32]17
$label12.Text = [System.String]'Please, select a .csv file properly formated for these test and then perform the test. '
#
#button6
#
$button6.BackColor = [System.Drawing.SystemColors]::ControlLight
$button6.Cursor = [System.Windows.Forms.Cursors]::Hand
$button6.Enabled = $false
$button6.FlatAppearance.BorderSize = [System.Int32]0
$button6.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]31))
$button6.Name = [System.String]'button6'
$button6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]85,[System.Int32]23))
$button6.TabIndex = [System.Int32]9
$button6.Text = [System.String]'Select File'
$button6.UseVisualStyleBackColor = $false
$button6.add_Click($button6_Click)
#
#label8
#
$label8.AutoSize = $true
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]69))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]13))
$label8.TabIndex = [System.Int32]10
#
#textBox2
#
$textBox2.Enabled = $false
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]110,[System.Int32]57))
$textBox2.Name = [System.String]'textBox2'
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]20))
$textBox2.TabIndex = [System.Int32]2
$textBox2.UseSystemPasswordChar = $true
#
#groupBox3
#
$groupBox3.Controls.Add($button3)
$groupBox3.Controls.Add($label10)
$groupBox3.Controls.Add($label9)
$groupBox3.Controls.Add($button7)
$groupBox3.Controls.Add($textBox1)
$groupBox3.Controls.Add($textBox2)
$groupBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]530,[System.Int32]452))
$groupBox3.Name = [System.String]'groupBox3'
$groupBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]382,[System.Int32]128))
$groupBox3.TabIndex = [System.Int32]14
$groupBox3.TabStop = $false
$groupBox3.Text = [System.String]'Local Admin Account'
#
#button3
#
$button3.BackColor = [System.Drawing.SystemColors]::ControlLight
$button3.Cursor = [System.Windows.Forms.Cursors]::Hand
$button3.Enabled = $false
$button3.FlatAppearance.BorderSize = [System.Int32]0
$button3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]255,[System.Int32]87))
$button3.Name = [System.String]'button3'
$button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button3.TabIndex = [System.Int32]4
$button3.Text = [System.String]'Test Complexity'
$button3.UseVisualStyleBackColor = $false
$button3.add_Click($button3_Click)
#
#label10
#
$label10.AutoSize = $true
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]32,[System.Int32]60))
$label10.Name = [System.String]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]13))
$label10.TabIndex = [System.Int32]16
$label10.Text = [System.String]'Password'
#
#label9
#
$label9.AutoSize = $true
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]30,[System.Int32]31))
$label9.Name = [System.String]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]13))
$label9.TabIndex = [System.Int32]15
$label9.Text = [System.String]'Username'
$label9.add_Click($label9_Click)
#
#button7
#
$button7.BackColor = [System.Drawing.SystemColors]::ControlLight
$button7.Cursor = [System.Windows.Forms.Cursors]::Hand
$button7.Enabled = $false
$button7.FlatAppearance.BorderSize = [System.Int32]0
$button7.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]110,[System.Int32]87))
$button7.Name = [System.String]'button7'
$button7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]139,[System.Int32]23))
$button7.TabIndex = [System.Int32]3
$button7.Text = [System.String]'Test Local Admin'
$button7.UseVisualStyleBackColor = $false
$button7.add_Click($button7_Click)
#
#textBox1
#
$textBox1.Enabled = $false
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]110,[System.Int32]28))
$textBox1.Name = [System.String]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]251,[System.Int32]20))
$textBox1.TabIndex = [System.Int32]1
#
#groupBox4
#
$groupBox4.Controls.Add($button9)
$groupBox4.Controls.Add($listBox1)
$groupBox4.Controls.Add($button8)
$groupBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]452))
$groupBox4.Name = [System.String]'groupBox4'
$groupBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]485,[System.Int32]128))
$groupBox4.TabIndex = [System.Int32]15
$groupBox4.TabStop = $false
$groupBox4.Text = [System.String]'Test Migration Endpoint'
#
#button9
#
$button9.BackColor = [System.Drawing.SystemColors]::ControlLight
$button9.Cursor = [System.Windows.Forms.Cursors]::Hand
$button9.Enabled = $false
$button9.FlatAppearance.BorderSize = [System.Int32]0
$button9.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]74))
$button9.Name = [System.String]'button9'
$button9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]36))
$button9.TabIndex = [System.Int32]12
$button9.Text = [System.String]'Perform Test'
$button9.UseVisualStyleBackColor = $false
$button9.add_Click($button9_Click)
#
#listBox1
#
$listBox1.FormattingEnabled = $true
$listBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]28))
$listBox1.Name = [System.String]'listBox1'
$listBox1.ScrollAlwaysVisible = $true
$listBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]328,[System.Int32]82))
$listBox1.TabIndex = [System.Int32]10
#
#button8
#
$button8.BackColor = [System.Drawing.SystemColors]::ControlLight
$button8.Cursor = [System.Windows.Forms.Cursors]::Hand
$button8.Enabled = $false
$button8.FlatAppearance.BorderSize = [System.Int32]0
$button8.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]355,[System.Int32]28))
$button8.Name = [System.String]'button8'
$button8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]40))
$button8.TabIndex = [System.Int32]11
$button8.Text = [System.String]'Get Migration Endpoints'
$button8.UseVisualStyleBackColor = $false
$button8.add_Click($button8_Click)
#
#testOffice365CredentialsReportsToolStripMenuItem
#
$testOffice365CredentialsReportsToolStripMenuItem.Name = [System.String]'testOffice365CredentialsReportsToolStripMenuItem'
$testOffice365CredentialsReportsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]256,[System.Int32]22))
$testOffice365CredentialsReportsToolStripMenuItem.Text = [System.String]'Test Office 365 Credentials Reports'
#
#pictureBox2
#
$pictureBox2.Image = ([System.Drawing.Image]$resources.'pictureBox2.Image')
$pictureBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]757,[System.Int32]40))
$pictureBox2.Name = [System.String]'pictureBox2'
$pictureBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]134,[System.Int32]130))
$pictureBox2.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$pictureBox2.TabIndex = [System.Int32]16
$pictureBox2.TabStop = $false
#
#label11
#
$label11.AutoSize = $true
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]344,[System.Int32]594))
$label11.Name = [System.String]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]233,[System.Int32]13))
$label11.TabIndex = [System.Int32]17
$label11.Text = [System.String]'This tool was developed by Modern MVM Team'
#
#groupBox5
#
$groupBox5.Controls.Add($button12)
$groupBox5.Controls.Add($button13)
$groupBox5.Controls.Add($label13)
$groupBox5.Controls.Add($label14)
$groupBox5.Controls.Add($button14)
$groupBox5.Controls.Add($label15)
$groupBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]204))
$groupBox5.Name = [System.String]'groupBox5'
$groupBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]888,[System.Int32]100))
$groupBox5.TabIndex = [System.Int32]12
$groupBox5.TabStop = $false
$groupBox5.Text = [System.String]'Test Office 365 Credentials'
$groupBox5.add_Enter($groupBox1_Enter)
#
#button12
#
$button12.BackColor = [System.Drawing.SystemColors]::ControlLight
$button12.Cursor = [System.Windows.Forms.Cursors]::Hand
$button12.Enabled = $false
$button12.FlatAppearance.BorderSize = [System.Int32]0
$button12.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]30))
$button12.Name = [System.String]'button12'
$button12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button12.TabIndex = [System.Int32]6
$button12.Text = [System.String]'Test Complexity'
$button12.UseVisualStyleBackColor = $false
$button12.add_Click($button11_Click)
#
#button13
#
$button13.BackColor = [System.Drawing.SystemColors]::ControlLight
$button13.Cursor = [System.Windows.Forms.Cursors]::Hand
$button13.Enabled = $false
$button13.FlatAppearance.BorderSize = [System.Int32]0
$button13.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]20,[System.Int32]30))
$button13.Name = [System.String]'button13'
$button13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$button13.TabIndex = [System.Int32]5
$button13.Text = [System.String]'Perform Test'
$button13.UseVisualStyleBackColor = $false
$button13.add_Click($button4_Click)
#
#label13
#
$label13.AutoSize = $true
$label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]42))
$label13.Name = [System.String]'label13'
$label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]398,[System.Int32]13))
$label13.TabIndex = [System.Int32]12
$label13.Text = [System.String]'NOTE: To preview the instructions to fill the file correctly please check the help file.'
#
#label14
#
$label14.AutoSize = $true
$label14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]409,[System.Int32]24))
$label14.Name = [System.String]'label14'
$label14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]396,[System.Int32]13))
$label14.TabIndex = [System.Int32]10
$label14.Text = [System.String]'Please, select a .csv file properly formated for these test and then perform the test. '
#
#button14
#
$button14.BackColor = [System.Drawing.SystemColors]::ControlLight
$button14.Cursor = [System.Windows.Forms.Cursors]::Hand
$button14.Enabled = $false
$button14.FlatAppearance.BorderSize = [System.Int32]0
$button14.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]232,[System.Int32]30))
$button14.Name = [System.String]'button14'
$button14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]85,[System.Int32]23))
$button14.TabIndex = [System.Int32]7
$button14.Text = [System.String]'Select File'
$button14.UseVisualStyleBackColor = $false
$button14.add_Click($button10_Click)
#
#label15
#
$label15.AutoSize = $true
$label15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]70))
$label15.Name = [System.String]'label15'
$label15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]13))
$label15.TabIndex = [System.Int32]10
#
#label16
#
$label16.AutoSize = $true
$label16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]21,[System.Int32]425))
$label16.Name = [System.String]'label16'
$label16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]768,[System.Int32]13))
$label16.TabIndex = [System.Int32]19
$label16.Text = [System.String]'NOTE: To preview the instructions to fill the file correctly please check the help file. If the customer did not provide Local Admin Accounts ignore the following tests.'
#
#MainForm
#
$MainForm.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::None
$MainForm.AutoScroll = $true
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]940,[System.Int32]629))
$MainForm.Controls.Add($label16)
$MainForm.Controls.Add($label11)
$MainForm.Controls.Add($groupBox4)
$MainForm.Controls.Add($groupBox3)
$MainForm.Controls.Add($groupBox2)
$MainForm.Controls.Add($groupBox5)
$MainForm.Controls.Add($groupBox1)
$MainForm.Controls.Add($pictureBox1)
$MainForm.Controls.Add($label4)
$MainForm.Controls.Add($label3)
$MainForm.Controls.Add($progressBar1)
$MainForm.Controls.Add($label2)
$MainForm.Controls.Add($button2)
$MainForm.Controls.Add($menuStrip1)
$MainForm.Controls.Add($pictureBox2)
$MainForm.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MainForm.MainMenuStrip = $menuStrip1
$MainForm.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]956,[System.Int32]636))
$MainForm.Name = [System.String]'MainForm'
$MainForm.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
$MainForm.Text = [System.String]'MEL Validation'
$MainForm.WindowState = [System.Windows.Forms.FormWindowState]::Maximized
$MainForm.add_FormClosing($MainForm_FormClosing)
$MainForm.add_Load($MainForm_Load)
([System.ComponentModel.ISupportInitialize]$pictureBox1).EndInit()
$menuStrip1.ResumeLayout($false)
$menuStrip1.PerformLayout()
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$groupBox3.ResumeLayout($false)
$groupBox3.PerformLayout()
$groupBox4.ResumeLayout($false)
([System.ComponentModel.ISupportInitialize]$pictureBox2).EndInit()
$groupBox5.ResumeLayout($false)
$groupBox5.PerformLayout()
$MainForm.ResumeLayout($false)
$MainForm.PerformLayout()
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name progressBar1 -Value $progressBar1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name pictureBox1 -Value $pictureBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name openFileDialog1 -Value $openFileDialog1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name menuStrip1 -Value $menuStrip1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name fileToolStripMenuItem -Value $fileToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name viewToolStripMenuItem -Value $viewToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name helpToolStripMenuItem -Value $helpToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem2 -Value $toolStripMenuItem2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name resetToolStripMenuItem -Value $resetToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem3 -Value $toolStripMenuItem3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name exitToolStripMenuItem -Value $exitToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name viewHelpToolStripMenuItem -Value $viewHelpToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name sendFeedbackToolStripMenuItem -Value $sendFeedbackToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name reportAProblemToolStripMenuItem -Value $reportAProblemToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name provideASugestionToolStripMenuItem -Value $provideASugestionToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem1 -Value $toolStripMenuItem1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name aboutMELValidationToolToolStripMenuItem -Value $aboutMELValidationToolToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button5 -Value $button5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button6 -Value $button6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name groupBox3 -Value $groupBox3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name groupBox4 -Value $groupBox4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button7 -Value $button7 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button9 -Value $button9 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name listBox1 -Value $listBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button8 -Value $button8 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testOffice365CredentialsReportsToolStripMenuItem -Value $testOffice365CredentialsReportsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button4 -Value $button4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button10 -Value $button10 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button11 -Value $button11 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name pictureBox2 -Value $pictureBox2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button3 -Value $button3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name groupBox5 -Value $groupBox5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button12 -Value $button12 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button13 -Value $button13 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button14 -Value $button14 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name operationsToolStripMenuItem -Value $operationsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name signInToOffice365ToolStripMenuItem -Value $signInToOffice365ToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem4 -Value $toolStripMenuItem4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testOffice365CredentialsToolStripMenuItem -Value $testOffice365CredentialsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name selectFileToolStripMenuItem -Value $selectFileToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testComplexityToolStripMenuItem -Value $testComplexityToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name performTestToolStripMenuItem -Value $performTestToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testMoveRequestToolStripMenuItem -Value $testMoveRequestToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name selectFileToolStripMenuItem1 -Value $selectFileToolStripMenuItem1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name performTestToolStripMenuItem1 -Value $performTestToolStripMenuItem1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testMigrationEndpointToolStripMenuItem -Value $testMigrationEndpointToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name getMigrationEndpointsToolStripMenuItem -Value $getMigrationEndpointsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name performTestToolStripMenuItem2 -Value $performTestToolStripMenuItem2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testLocalAdminAccountToolStripMenuItem -Value $testLocalAdminAccountToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testComplexityToolStripMenuItem1 -Value $testComplexityToolStripMenuItem1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name testLocalAdminToolStripMenuItem -Value $testLocalAdminToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem5 -Value $toolStripMenuItem5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name openReportsFolderToolStripMenuItem -Value $openReportsFolderToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name minimizeToolStripMenuItem -Value $minimizeToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name maximizeToolStripMenuItem -Value $maximizeToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripMenuItem6 -Value $toolStripMenuItem6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name closeToolStripMenuItem -Value $closeToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name openUploadFolderToolStripMenuItem -Value $openUploadFolderToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
