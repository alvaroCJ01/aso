[int] $edad=Read-Host "Introduce tu edad"
If ($edad -ge 18) {Write-Output "Eres mayor de edad."}
Else {Write-Output "Eres menor de edad"}