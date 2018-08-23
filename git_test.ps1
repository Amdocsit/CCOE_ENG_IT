#region: Load VMware Snapin or Module (if not already loaded)  
PSModulePath=C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules\
Get-Module -Name VMware* -ListAvailable | Import-Module
if (!(Import-Module -Name VMware.VimAutomation.Core -ErrorAction SilentlyContinue)) {  
    # Error out if loading fails  
    Write-Error "`nERROR: Cannot load the VMware Module. Is the PowerCLI installed?"  
 }
 else{ Write-Output "loaded the VMware COre Module..."}
#endregion
Connect-VIserver -server "ilvciaas2srv.corp.amdocs.com"
Get-cluster |ft
