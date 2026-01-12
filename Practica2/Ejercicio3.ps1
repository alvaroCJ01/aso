[int] $horas=Read-Host "Escribe el numero de horas trabajadas"
[int] $coste=Read-Host "Escribe el precio de la hora"
$sueldo= $horas * $coste
Write-Output "Tu salario es de: $sueldo"