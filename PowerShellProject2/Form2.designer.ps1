[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.PictureBox]$pictureBox1 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = Invoke-Expression (Get-Content "$PSScriptRoot\Form2.resources.psd1" -Raw)
$pictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$pictureBox1).BeginInit()
$MainForm1.SuspendLayout()
#
#pictureBox1
#
$pictureBox1.Image = ([System.Drawing.Image]$resources.'pictureBox1.Image')
$pictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]182,[System.Int32]12))
$pictureBox1.Name = [System.String]'pictureBox1'
$pictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]194,[System.Int32]201))
$pictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$pictureBox1.TabIndex = [System.Int32]0
$pictureBox1.TabStop = $false
#
#label1
#
$label1.AutoSize = $true
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Underline,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]343))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]82,[System.Int32]15))
$label1.TabIndex = [System.Int32]1
$label1.Text = [System.String]'Developed by:'
$label1.add_Click($label1_Click)
#
#label2
#
$label2.AutoSize = $true
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Underline,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]217,[System.Int32]343))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]15))
$label2.TabIndex = [System.Int32]2
$label2.Text = [System.String]'Tested by:'
#
#label3
#
$label3.AutoSize = $true
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Underline,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]415,[System.Int32]343))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]74,[System.Int32]15))
$label3.TabIndex = [System.Int32]3
$label3.Text = [System.String]'Validated by:'
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]366))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]80,[System.Int32]13))
$label4.TabIndex = [System.Int32]4
$label4.Text = [System.String]'Jose Monteiro'
#
#label5
#
$label5.AutoSize = $true
$label5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]217,[System.Int32]366))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]13))
$label5.TabIndex = [System.Int32]5
$label5.Text = [System.String]'Ricardo Batista'
#
#label6
#
$label6.AutoSize = $true
$label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]217,[System.Int32]388))
$label6.Name = [System.String]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]13))
$label6.TabIndex = [System.Int32]6
$label6.Text = [System.String]'Jorge Rodrigues Lamei'
#
#label7
#
$label7.AutoSize = $true
$label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]415,[System.Int32]366))
$label7.Name = [System.String]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]81,[System.Int32]13))
$label7.TabIndex = [System.Int32]7
$label7.Text = [System.String]'Miguel Batista'
#
#label8
#
$label8.AutoSize = $true
$label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Underline,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]249))
$label8.Name = [System.String]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]15))
$label8.TabIndex = [System.Int32]8
$label8.Text = [System.String]'Purpose:'
#
#label9
#
$label9.AutoSize = $true
$label9.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]274))
$label9.Name = [System.String]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]507,[System.Int32]13))
$label9.TabIndex = [System.Int32]9
$label9.Text = [System.String]'The purpose to this tool is to assist the Modern MVMs validation of the Migration Questionnaire.'
#
#label10
#
$label10.AutoSize = $true
$label10.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]291))
$label10.Name = [System.String]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]520,[System.Int32]13))
$label10.TabIndex = [System.Int32]10
$label10.Text = [System.String]'It was developed to simplify all the process throught the validation of the required pre-requisites to'
#
#label11
#
$label11.AutoSize = $true
$label11.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]307))
$label11.Name = [System.String]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]127,[System.Int32]13))
$label11.TabIndex = [System.Int32]11
$label11.Text = [System.String]'perform the migration. '
#
#MainForm1
#
$MainForm1.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::None
$MainForm1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]562,[System.Int32]434))
$MainForm1.Controls.Add($label11)
$MainForm1.Controls.Add($label10)
$MainForm1.Controls.Add($label9)
$MainForm1.Controls.Add($label8)
$MainForm1.Controls.Add($label7)
$MainForm1.Controls.Add($label6)
$MainForm1.Controls.Add($label5)
$MainForm1.Controls.Add($label4)
$MainForm1.Controls.Add($label3)
$MainForm1.Controls.Add($label2)
$MainForm1.Controls.Add($label1)
$MainForm1.Controls.Add($pictureBox1)
$MainForm1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$MainForm1.MaximizeBox = $false
$MainForm1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]578,[System.Int32]473))
$MainForm1.MinimizeBox = $false
$MainForm1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]578,[System.Int32]473))
$MainForm1.Name = [System.String]'MainForm1'
$MainForm1.Text = [System.String]'MEL Validation - ABOUT'
([System.ComponentModel.ISupportInitialize]$pictureBox1).EndInit()
$MainForm1.ResumeLayout($false)
$MainForm1.PerformLayout()
Add-Member -InputObject $MainForm1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name pictureBox1 -Value $pictureBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $MainForm1 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
