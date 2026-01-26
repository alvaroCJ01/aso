# Crear la OU Raiz y en caso de error, que continue de manera silenciosa, personalmente he hecho que no se proteja de eliminaciones accidentales ya que para este trabajo es más cómodo.
New-ADOrganizationalUnit -Name "Empresa" -Path "DC=empresa,DC=local" -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
# Importar el CSV con el delimitador ;
Import-Csv -Path "C:\Users\Administrador\archivos\departamentos.csv" -Delimiter ";" | ForEach-Object {
    #Crear las OU con el nombre de departamento en la ruta raiz e importando la descripcion.
    New-ADOrganizationalUnit -name $_.departamento -Path "OU=Empresa,DC=empresa,DC=local" -Description $_.descripcion -ErrorAction SilentlyContinue -ProtectedFromAccidentalDeletion $false
    #Crear los grupos con las variables del CSV, también teniendo en cuenta que deben estar dentro de las OU asignadas
    New-ADGroup -name $_.departamento -SamAccountName $_.departamento -GroupScope Global -GroupCategory Security -Path "OU=$($_.departamento),OU=Empresa,DC=empresa,DC=local" -ErrorAction SilentlyContinue
}
# Importar el CSV con el delimitador ;
Import-Csv -Path "C:\Users\Administrador\archivos\empleados.csv" -Delimiter ";" | ForEach-Object {
    #Crear los usuarios con las variables del CSV y asignarle las contraseñas, IMPORTANTE, las contraseñas tienes que cumplir los requisitos del sistema.
    New-ADUser -Name "$($_.nombre) $($_.apellido)" -GivenName $_.nombre -Surname $_.apellido -SamAccountName "$($_.nombre).$($_.apellido)" -Path "OU=$($_.departamento),OU=Empresa,DC=empresa,DC=local" -Department $_.departamento -Enabled $true -AccountPassword (ConvertTo-SecureString "asO.2025" -AsPlainText -Force)
    #Añadir los usuarios a los grupos que hemos creado
    Add-ADGroupMember -Identity $_.departamento -Members "$($_.nombre).$($_.apellido)"
}
Write-Host "Se han creado todos los objetos"