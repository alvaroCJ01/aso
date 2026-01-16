[int] $edad=Read-Host "Introduzca su edad"
If ($edad -lt 4) {Write-Output "La entrada es gratuita."}
ElseIf ($edad -ge 4 -and $edad -lt 18) {Write-Output "La entrada cuesta 5€"}
ElseIf ($edad -ge 18) {Write-Output "La entrada cuesta 10€"}