[int] $num1=Read-Host "Introduce el primer numero."
[int] $num2=Read-Host "Introduce el segundo numero."
If ($num1 -gt $num2) {Write-Output "$num1 es mayor que $num2"}
ElseIf ($num1 -lt $num2) {Write-Output "$num1 es menor que $num2"}
Else {Write-Output "$num1 es igual a $num2"}