#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


function Set-LocationBack2 {
    Set-Location -Path - -ErrorAction SilentlyContinue @args
    Set-Location -Path - -ErrorAction SilentlyContinue @args
}
