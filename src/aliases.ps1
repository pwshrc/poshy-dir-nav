#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


Set-Alias -Name ".." -Value Set-LocationUp1       # Go up one directory
Set-Alias -Name "cd.." -Value Set-LocationUp1     # Common misspelling for going up one directory
Set-Alias -Name "..." -Value Set-LocationUp2      # Go up two directories
Set-Alias -Name "...." -Value Set-LocationUp3     # Go up three directories
Set-Alias -Name "....." -Value Set-LocationUp4
Set-Alias -Name "......" -Value Set-LocationUp5
Set-Alias -Name "--" -Value Set-LocationBack1     # Go back
Set-Alias -Name "cd-" -Value Set-LocationBack1    # Go back
Set-Alias -Name "++" -Value Set-LocationForward1  # Go forward
Set-Alias -Name "cd+" -Value Set-LocationForward1 # Go forward

Set-Alias -Name "mcd" -Value Set-LocationNewDirectory

Set-Alias -Name 1 -Value Set-LocationBack1
Set-Alias -Name 2 -Value Set-LocationBack2
Set-Alias -Name 3 -Value Set-LocationBack3
Set-Alias -Name 4 -Value Set-LocationBack4
Set-Alias -Name 5 -Value Set-LocationBack5
Set-Alias -Name 6 -Value Set-LocationBack6
Set-Alias -Name 7 -Value Set-LocationBack7
Set-Alias -Name 8 -Value Set-LocationBack8
Set-Alias -Name 9 -Value Set-LocationBack9

function d () {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [Nulalble[int]] $depth = $null
    )
    if ($depth) {
        foreach ($i in 1..$depth) {
            Pop-Location
        }
    }
    else {
        Get-Location -Stack | Select-Object -First 10
    }
}
