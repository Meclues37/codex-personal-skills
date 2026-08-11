[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceRoot = Join-Path $repositoryRoot 'skills'
$codexRoot = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME '.codex' }
$destinationRoot = Join-Path $codexRoot 'skills'

New-Item -ItemType Directory -Path $destinationRoot -Force | Out-Null

Get-ChildItem -LiteralPath $sourceRoot -Directory | ForEach-Object {
    $destination = Join-Path $destinationRoot $_.Name
    Copy-Item -LiteralPath $_.FullName -Destination $destination -Recurse -Force
    Write-Host "Installed $($_.Name)"
}

Write-Host "Skills installed to $destinationRoot"

