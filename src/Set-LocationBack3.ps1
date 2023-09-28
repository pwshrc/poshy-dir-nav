#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the directory history entry that is three entries prior to the current position.
#>
function Set-LocationBack3 {
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
}
