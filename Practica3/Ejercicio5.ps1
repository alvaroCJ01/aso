$direc=Read-Host "Introduzca el nombre de un directorio o fichero"
If (Test-Path $direc) {Write-Output "El directorio o fichero existe."}
Else {Write-Output "El direcotrio o fichero no existe."}