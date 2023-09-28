#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the directory history entry that is five entries prior to the current position.
#>
function Set-LocationBack5 {
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
}
