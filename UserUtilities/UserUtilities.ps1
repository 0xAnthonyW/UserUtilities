$NetwrkBtn_Click = {
    Restart-NetAdapter -Name "Wi*"
    $output.Items.Add("Restart-NetAdapter")
    $output.Items.Add("Network adapter restarted")
    # Clears Dns Cache
    Clear-DnsClientCache
    Start-Sleep -Seconds 5
    ipconfig /flushdns
    $output.Items.Add("Clear-DnsClientCache")
    $output.Items.Add("ipconfig /flushdns")
    $output.Items.Add("Flushed DNS")
    # Release and Renew the ip configuration
    Start-Sleep -Seconds 5
    ipconfig /Release
    $output.Items.Add("ipconfig /Release")
    Start-Sleep -Seconds 5
    ipconfig /Renew
    $output.Items.Add("ipconfig /Renew")
    $output.Items.Add("IP configuration released & renewed!")
    netsh winsock reset
    $output.Items.Add("netsh winsock reset")
    Start-Sleep -Seconds 5
    netcfg -d
    $output.Items.Add("netcfg -d")
    $output.Items.Add("Network adapter has been Reset")
    Start-Sleep -Seconds 4
    $output.Items.Add("Done. Restarting in 4 Seconds.")
    Restart-Computer -force
}

$RTclockBtn_Click = {
    Set-TimeZone -Name 'Central Standard Time' -PassThru
    $output.Items.Add("Set-TimeZone -Name 'Central Standard Time' -PassThru")
    $output.Items.Add("Done.")
    [System.Windows.Forms.MessageBox]::Show("Timezone has been set to CST")
}

$PWexpireBtn_Click = {
    $user = (Get-LocalUser | Where-Object { $_.Name -like "STU*" }).Name
    Set-LocalUser -Name $user -PasswordNeverExpires $True
    $output.Items.Add("Set-LocalUser -Name $user -PasswordNeverExpires $True")
    $output.Items.Add("Done.")
    [System.Windows.Forms.MessageBox]::Show("Password for $user has been set to not expire")
}

$output_SelectedIndexChanged = {

}

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit
}
$PWresetBtn_Click = {
     $user = (Get-LocalUser | Where-Object { $_.Name -like "STU*" }).Name
     $output.Items.Add("Get-LocalUser $user")
	 #Param([string]$user)
     # Sets the Password Never Expires to false to ensure logonpasswordchg can be set
     Set-LocalUser -Name $user -PasswordNeverExpires $False
     $output.Items.Add("Set-LocalUser -name $user -PasswordNeverExpires $False")
     # Resets the password of the user to 'Student'
     net user $user "Student" /logonpasswordchg:yes
     $output.Items.Add("$user /logonpasswordchg:yes")
     $output.Items.Add("Done.")
     [System.Windows.Forms.MessageBox]::Show("Password for user $user has been reset to 'Student' and set to user must change password at next login")
}

$UserUtilities_Load = {

}

. (Join-Path $PSScriptRoot 'UserUtilities.designer.ps1')

$UserUtilities.ShowDialog()