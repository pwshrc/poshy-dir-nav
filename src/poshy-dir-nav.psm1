#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


Get-ChildItem -Path "$PSScriptRoot/*.ps1" | ForEach-Object {
    . $_.FullName
}

Export-ModuleMember -Function @(
    "d",
    "jump",
    "Set-LocationBack1",
    "Set-LocationBack2",
    "Set-LocationBack3",
    "Set-LocationBack4",
    "Set-LocationBack5",
    "Set-LocationBack6",
    "Set-LocationBack7",
    "Set-LocationBack8",
    "Set-LocationBack9",
    "Set-LocationDown1",
    "Set-LocationForward1",
    "Set-LocationNewDirectory",
    "Set-LocationUp",
    "Set-LocationUp1",
    "Set-LocationUp2",
    "Set-LocationUp3",
    "Set-LocationUp4",
    "Set-LocationUp5"
)
Export-ModuleMember -Alias @(
    "..",
    "cd..",
    "...",
    "....",
    ".....",
    "......",
    "--",
    "cd-",
    "++",
    "cd+",
    "mcd",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9"
)
