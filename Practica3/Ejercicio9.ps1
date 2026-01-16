[int] $dinero=Read-Host "Introduzca su renta anual"
If ($dinero -lt 10000) {Write-Output "Tipo impositivo: 5%"}
ElseIf ($dinero -ge 10000 -and $dinero -lt 20000) {Write-Output "Tipo impositivo: 15%"}
ElseIf ($dinero -ge 20000 -and $dinero -lt 35000) {Write-Output "Tipo impositivo: 20%"}
ElseIf ($dinero -ge 35000 -and $dinero -lt 60000) {Write-Output "Tipo impositivo: 30%"}
ElseIf ($dinero -gt 60000) {Write-Output "Tipo impositivo: 45%"}