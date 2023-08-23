#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


# Create a directory and cd into it
function Set-LocationNewDirectory {
    $newdir = New-Item -ItemType Directory @args | Out-Null
    Set-Location $newdir
}
