#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the directory history entry that is one entry prior to the current position.
#>
function Set-LocationBack1 {
    Set-Location -Path - -ErrorAction SilentlyContinue @args
}
