$userPath = $env:USERPROFILE
$pathExclusions = New-Object System.Collections.ArrayList
$processExclusions = New-Object System.Collections.ArrayList

$pathExclusions.Add('C:\Program Files (x86)\Overwatch') > $null
$pathExclusions.Add('C:\Program Files (x86)\Battle.net') > $null

$pathExclusions.Add($userPath + '\AppData\Local\Battle.net') > $null
$pathExclusions.Add($userPath + '\Documents\Overwatch') > $null
$pathExclusions.Add($userPath + '\AppData\Local\Blizzard Entertainment') > $null

$processExclusions.Add('Battle.net.exe') > $null
$processExclusions.Add('Overwatch.exe') > $null
#Prolly dont need these, just incase
$processExclusions.Add('Battle.net Launcher.exe') > $null
$processExclusions.Add('Overwatch Launcher.exe') > $null


Write-Host " DISCLAIMER: This script is intended to modify Windows Defender exclusions for Overwatch."
Write-Host " Use this script at your own risk. Adding exclusions can potentially reduce your computer's security."
Write-Host " Ensure you understand the implications and have adequate security measures in place."
Write-Host " Backup your system and data before making any changes."
Write-Host " The authors and distributors of this script are not responsible for any damage or data loss "
Write-Host " resulting from the use of this script."

Write-Host " Procceed with caution."
Write-Host " Yes, i generated the disclaimer above with chatGPT."

$projectsFolder = Read-Host 'What is the path to your Overwatch folder? (example: C:\Program Files (x86)\Overwatch)'

Write-Host ""
Write-Host "Adding Path Exclusion: " $projectsFolder
Add-MpPreference -ExclusionPath $projectsFolder

foreach ($exclusion in $pathExclusions) 
{
    Write-Host "Adding Path Exclusion: " $exclusion
    Add-MpPreference -ExclusionPath $exclusion
}

foreach ($exclusion in $processExclusions)
{
    Write-Host "Adding Process Exclusion: " $exclusion
    Add-MpPreference -ExclusionProcess $exclusion
}

Write-Host ""
Write-Host "Here are ALL of Your Exclusions (not just the ones we just added):"

$prefs = Get-MpPreference
$prefs.ExclusionPath
$prefs.ExclusionProcess

Write-Host ""
Write-Host "Enjoy Smoother OverWatching!"
Write-Host ""
