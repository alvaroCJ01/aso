Write-Host "¿Quieres una pizza vegetariana?"
Write-Host "1.Si"
Write-Host "2.No"

$opcion = Read-Host "Elige una opcion"
$ingredientes = @("Mozzarella", "Tomate")
if ($opcion -eq "1") {
    Write-Host "Elegiste pizza vegetariana"
    Write-Host "Ingredientes:"
    Write-Host "1.pimiento"
    Write-Host "2.tofu"
    $ingredientelegido = Read-Host "Elige un ingrediente"
    if ($ingredientelegido -eq "1") {
        $ingredientes += "pimiento"
    }elseif ($ingredienteElegido -eq "2") {
        $ingredientes += "tofu"
    }else {
        Write-Host "opcion no válida"
        exit
    }
$tipo = "Vegetariana"
}elseif ($opcion -eq "2") {
    Write-Host "Has elegido pizza no vegetariana"
    Write-Host "Ingredientes disponibles:"
    Write-Host "1.Peperoni"
    Write-Host "2.Jamon"
    Write-Host "3.Salmón"

    $ingredientelegido = Read-Host "Elige un ingrediente"

    if ($ingredientelegido -eq "1") {
        $ingredientes += "Peperoni"
    }elseif ($ingredientelegido -eq "2") {
        $ingredientes += "Jamon"
    }elseif ($ingredientelegido -eq "3") {
        $ingredientes += "Salmon"
    }else {
        Write-Host "Opción no valida"
        exit
    }

$tipo = "No vegetariana"

}else {
    Write-Host "Opcion no valida"
    exit
}

Write-Host "Tu pizza es: $tipo"
Write-Host "Ingredientes: $ingredientes"