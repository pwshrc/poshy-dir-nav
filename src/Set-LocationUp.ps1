#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


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
