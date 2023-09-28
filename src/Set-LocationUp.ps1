#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the current directory's parent directory.
#>
function Set-LocationUp {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [ValidateRange(1, [int]::MaxValue)]
        [int] $Levels
    )
    $params = $PSBoundParameters.GetEnumerator() | Where-Object { $_.Key -ne "Levels" }
    for ($i = 0; $i -lt $Levels; $i++) {
        Set-Location .. -ErrorAction SilentlyContinue @params
    }
}
