#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the current directory's parent directory.
#>
function Set-LocationUp1 {
    Set-Location -Path .. -ErrorAction SilentlyContinue @args
}
