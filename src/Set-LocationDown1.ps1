#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the first child directory of the current working directory.
#>
function Set-LocationDown1 {
    $firstChild = Get-ChildItem -LiteralPath $PWD -Directory | Select-Object -First 1
    if ($firstChild) {
        Set-Location -LiteralPath $firstChild
    }
}
