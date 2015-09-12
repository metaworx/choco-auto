$packageName = 'praatcon'
$url = 'http://www.fon.hum.uva.nl/praat/praatcon5416_win32.zip'
$url64 = 'http://www.fon.hum.uva.nl/praat/praatcon5416_win64.zip'
$destdir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
Install-ChocolateyZipPackage "$packageName" "$url" "$destdir" "$url64"
Install-ChocolateyEnvironmentVariable "PRAATCON" $destdir