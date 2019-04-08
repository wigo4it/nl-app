
Write-Host "`n`nRun this script in Administrator mode." -foregroundcolor cyan
Write-Host "This script will create a database, umbraco tables and demo data for first time use of NL-app." -foregroundcolor cyan

Write-Host "`nNuGet installed ?"
if ((Get-PackageProvider -Name NuGet).version -ge "2.8.5.201") 
{
		Write-Host "NuGet Package provider is already Installed."
}
else 
{
    try 
	{
        Write-Host "NuGet Package provider is not Installed."
		Write-Host "Installing NuGet..."
		Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Confirm:$False -Force 
		Write-Host "NuGet Installed. Version " (Get-PackageProvider -Name NuGet).version 
	}
    catch [Exception]
	{
        $_.message 
        exit
	}
}

Write-Host "`nSQL Server Installed?"

if (Get-Module -ListAvailable -Name SqlServer) 
{
    Write-Host "SQL Server PS Module already Installed."
} 
else 
{
    try 
	{
		Write-Host "SQL Server Module not installed."
		Write-Host "Installing SQL Server Powershell Module..."
        Install-Module -Name SqlServer -AllowClobber -Confirm:$False -Force  
		Write-Host "SQL Server Powershell Module Installed. Version " (Get-Module -name  sqlserver).version
	}
    catch [Exception] 
	{
        $_.message 
        exit
	}
}

Write-Host "`nSQL server name: " -foregroundcolor magenta
$databaseServer = Read-Host
Write-Host "`nSQL server port:: " -foregroundcolor magenta
$databaseServerPort = Read-Host
Write-Host "`nSQL server login: " -foregroundcolor magenta
$databaselogin = Read-Host 
Write-Host "`nSQL server password: " -foregroundcolor magenta
$databasepw = Read-Host -assecurestring
$databasepwPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($databasepw))

 $CreateDatabase = @{
    Server = 'tcp:'+$databaseServer+','+$databaseServerPort
    Username = $databaselogin
    Password = $databasepwPlain
    InputFile = '.\DemoDataScripts\01_NLApp_CreateDatabase.sql'
 }
 
 $CreateTables = @{
    Server = 'tcp:'+$databaseServer+','+$databaseServerPort
    Database = 'NLappDemo'
	Username = $databaselogin
    Password = $databasepwPlain
    InputFile = '.\DemoDataScripts\02_NLApp_CreateTables.sql'
 }
 
 $InsertDemoData = @{
    Server = 'tcp:'+$databaseServer+','+$databaseServerPort
	Database = 'NLappDemo'
    Username = $databaselogin
    Password = $databasepwPlain
    InputFile = '.\DemoDataScripts\03_NLApp_DefaultData.sql'
 }

Write-Host "`nCreate database...(this may take a while)"
Invoke-SqlCmd @CreateDatabase -QueryTimeout 600
[System.Data.SqlClient.SqlConnection]::ClearAllPools()
Write-Host "Database created."

Write-Host "`nCreate tables..."
Start-Sleep -s 1
Invoke-SqlCmd @CreateTables -QueryTimeout 600
[System.Data.SqlClient.SqlConnection]::ClearAllPools()
Write-Host "Tables created."

Write-Host "`nInsert demo data..."
Start-Sleep -s 1
Invoke-SqlCmd @InsertDemoData -DisableVariables -QueryTimeout 600
[System.Data.SqlClient.SqlConnection]::ClearAllPools()
Write-Host "Demo data inserted."