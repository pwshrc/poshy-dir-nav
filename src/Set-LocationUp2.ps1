#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the ancestor directory that is two levels above the current directory.
#>
function Set-LocationUp2 {
    Set-Location -Path .. -ErrorAction SilentlyContinue @args
    Set-Location -Path .. -ErrorAction SilentlyContinue @args
}
