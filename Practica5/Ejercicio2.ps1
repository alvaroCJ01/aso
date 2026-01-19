$alumnos = import-Csv usuarios.csv
foreach ($alumno in $alumnos) {
    Write-Host "Nombre: $($alumno.nombre) Apellido: $($alumno.apellidos) Grupo: $($alumno.grupo)"
}