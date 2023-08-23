#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


function Set-LocationBack1 {
    Set-Location -Path - -ErrorAction SilentlyContinue @args
}
