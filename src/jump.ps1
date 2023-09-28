#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


<#
.SYNOPSIS
    Changes the current working directory to the directory which contains the specified file or directory.
.PARAMETER Path
    The path to the file or directory whose parent directory will become the current working directory.
.PARAMETER InputObject
    The file or directory whose parent directory will become the current working directory.
#>
function jump {
    param (
        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = "Path")]
        [ValidateNotNullOrEmpty()]
        [string] $Path,

        [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = "InputObject")]
        [System.IO.FileSystemInfo] $InputObject
    )
    if ($Path) {
        Set-Location (Split-Path -Path $Path -Parent)
    } elseif ($InputObject) {
        Set-Location $InputObject.Parent.FullName
    }
}
