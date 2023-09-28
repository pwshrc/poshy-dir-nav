#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the directory history entry that is just after the current position.
#>
function Set-LocationForward1 {
    Set-Location -Path + -ErrorAction SilentlyContinue @args
}
