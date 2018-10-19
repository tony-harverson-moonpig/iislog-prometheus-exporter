$binPath = $PSScriptRoot + "/bin"
$exePath = $binPath + '/IISLogExporter.exe'
Invoke-Expression 'go get -v'
#iex 'go get gopkg.in/natefinch/lumberjack.v2'
$buildCommand = 'go build  -o ' + $exePath
Invoke-Expression $buildCommand
$copyCommand = 'Copy-Item *.hcl ' + $binPath
Invoke-Expression $copyCommand