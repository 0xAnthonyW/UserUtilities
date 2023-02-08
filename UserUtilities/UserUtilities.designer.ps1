[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$UserUtilities = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.ListBox]$listBox1 = $null
[System.Windows.Forms.TabPage]$Main = $null
[System.Windows.Forms.Button]$NetwrkBtn = $null
[System.Windows.Forms.Button]$RTclockBtn = $null
[System.Windows.Forms.Button]$PWexpireBtn = $null
[System.Windows.Forms.Button]$PWresetBtn = $null
[System.Windows.Forms.TabControl]$tabControl1 = $null
function InitializeComponent
{
$tabControl1 = (New-Object -TypeName System.Windows.Forms.TabControl)
$Main = (New-Object -TypeName System.Windows.Forms.TabPage)
$listBox1 = (New-Object -TypeName System.Windows.Forms.ListBox)
$PWresetBtn = (New-Object -TypeName System.Windows.Forms.Button)
$PWexpireBtn = (New-Object -TypeName System.Windows.Forms.Button)
$RTclockBtn = (New-Object -TypeName System.Windows.Forms.Button)
$NetwrkBtn = (New-Object -TypeName System.Windows.Forms.Button)
$tabControl1.SuspendLayout()
$Main.SuspendLayout()
$UserUtilities.SuspendLayout()
#
#tabControl1
#
$tabControl1.Controls.Add($Main)
$tabControl1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]7,[System.Int32]7))
$tabControl1.Name = [System.String]'tabControl1'
$tabControl1.SelectedIndex = [System.Int32]0
$tabControl1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]463,[System.Int32]250))
$tabControl1.TabIndex = [System.Int32]0
#
#Main
#
$Main.Controls.Add($NetwrkBtn)
$Main.Controls.Add($RTclockBtn)
$Main.Controls.Add($PWexpireBtn)
$Main.Controls.Add($PWresetBtn)
$Main.Controls.Add($listBox1)
$Main.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$Main.Name = [System.String]'Main'
$Main.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$Main.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]455,[System.Int32]224))
$Main.TabIndex = [System.Int32]0
$Main.Text = [System.String]'Main'
$Main.UseVisualStyleBackColor = $true
#
#listBox1
#
$listBox1.FormattingEnabled = $true
$listBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]116,[System.Int32]6))
$listBox1.Name = [System.String]'listBox1'
$listBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]343,[System.Int32]212))
$listBox1.TabIndex = [System.Int32]0
#
#PWresetBtn
#
$PWresetBtn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]6))
$PWresetBtn.Name = [System.String]'PWresetBtn'
$PWresetBtn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]25))
$PWresetBtn.TabIndex = [System.Int32]1
$PWresetBtn.Text = [System.String]'Password Reset'
$PWresetBtn.UseVisualStyleBackColor = $true
#
#PWexpireBtn
#
$PWexpireBtn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]37))
$PWexpireBtn.Name = [System.String]'PWexpireBtn'
$PWexpireBtn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]25))
$PWexpireBtn.TabIndex = [System.Int32]2
$PWexpireBtn.Text = [System.String]'Password Expire'
$PWexpireBtn.UseVisualStyleBackColor = $true
#
#RTclockBtn
#
$RTclockBtn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]68))
$RTclockBtn.Name = [System.String]'RTclockBtn'
$RTclockBtn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]25))
$RTclockBtn.TabIndex = [System.Int32]3
$RTclockBtn.Text = [System.String]'Real Time Clock'
$RTclockBtn.UseVisualStyleBackColor = $true
#
#NetwrkBtn
#
$NetwrkBtn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]99))
$NetwrkBtn.Name = [System.String]'NetwrkBtn'
$NetwrkBtn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]25))
$NetwrkBtn.TabIndex = [System.Int32]4
$NetwrkBtn.Text = [System.String]'Wi-Fi Reset'
$NetwrkBtn.UseVisualStyleBackColor = $true
#
#UserUtilities
#
$UserUtilities.AutoScaleMode = [System.Windows.Forms.AutoScaleMode]::Inherit
$UserUtilities.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]484,[System.Int32]269))
$UserUtilities.Controls.Add($tabControl1)
$UserUtilities.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$UserUtilities.MaximizeBox = $false
$UserUtilities.Name = [System.String]'UserUtilities'
$UserUtilities.Text = [System.String]'User Utilities'
$UserUtilities.add_Load($UserUtilities_Load)
$tabControl1.ResumeLayout($false)
$Main.ResumeLayout($false)
$UserUtilities.ResumeLayout($false)
Add-Member -InputObject $UserUtilities -Name listBox1 -Value $listBox1 -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name Main -Value $Main -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name NetwrkBtn -Value $NetwrkBtn -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name RTclockBtn -Value $RTclockBtn -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name PWexpireBtn -Value $PWexpireBtn -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name PWresetBtn -Value $PWresetBtn -MemberType NoteProperty
Add-Member -InputObject $UserUtilities -Name tabControl1 -Value $tabControl1 -MemberType NoteProperty
}
. InitializeComponent
