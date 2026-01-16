$contr="PePito"
$usercontr= Read-Host "Introduce la contraseña."
If ($usercontr -eq $contr) {Write-Output "Contraseña correcta."}
Else {Write-Output "Contraseña incorrecta"}