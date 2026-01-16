[int] $num=Read-Host "Introduce un numero"
If ($num % 2 -eq 0) {Write-Output "El numero es par."}
Else {Write-Output "El numero es impar."}