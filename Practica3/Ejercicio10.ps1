[float] $punt=Read-Host "Introduzca su puntuacion"
$dinero=$punt*2400
If ($punt -eq 0.0) {Write-Output "Inaceptable, beneficio=$dinero"}
Elseif ($punt -eq 0.4) {Write-Output "Aceptable, beneficio=$dinero"}
Elseif ($punt -ge 0.6) {Write-Output "Meritorio, beneficio=$dinero"}