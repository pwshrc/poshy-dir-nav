#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


function Set-LocationDown1 {
    $firstChild = Get-ChildItem -LiteralPath $PWD -Directory | Select-Object -First 1
    if ($firstChild) {
        Set-Location -LiteralPath $firstChild
    }
}
