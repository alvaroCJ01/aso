$nombre = Read-Host "Introduce tu nombre"
$sex = Read-Host "Introduzca su sexo (H/M)"
If (($sex -eq "M" -and $nombre -lt "M") -or ($sex -eq "H" -and $nombre -gt "N")) {Write-Output "Grupo A"}
Else {Write-Output "Grupo B"}