﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  destination   = "$toolsDir"

  file          = "$toolsDir\tcl-8.6.9-installer-1.9.1-x86.msi"
  filetype      = "MSI"
  file64        = "$toolsDir\tcl-8.6.9-installer-1.9.1-x64.msi"
  filetype64    = "MSI"

  silentArgs	= "/qn /norestart /l*v $env:Temp\$env:ChocolateyPackageName.MsiInstall.log"
}

Install-ChocolateyInstallPackage @packageArgs