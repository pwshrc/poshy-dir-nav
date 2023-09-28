#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Creates a new directory and changes the current working directory to it.
#>
function Set-LocationNewDirectory {
    $newdir = New-Item -ItemType Directory @args | Out-Null
    Set-Location $newdir
}
