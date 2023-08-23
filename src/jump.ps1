#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


# Jump to directory containing file
function jump() {
    Set-Location (dirname $1)
}
