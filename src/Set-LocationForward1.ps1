#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


function Set-LocationForward1 {
    Set-Location -Path + -ErrorAction SilentlyContinue @args
}
