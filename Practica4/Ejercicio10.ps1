$ruta_actual = Get-Location
do {
    Write-Host "
    a) Crear una carpeta
    b) Crear un fichero nuevo
    c) Cambiar el nombre de un fichero o carpeta
    d) Borrar un archivo o carpeta
    e) Verificar si existe un fichero o carpeta
    f) Mostrar el contenido de un directorio.
    g) Mostar la fecha y hora actuales
    x) Salir"
    $opt = Read-Host "Introduzca una de la opcion"
        switch ($opt) {
        "a" {
            $carpeta_crear = Read-Host "Introduzca el nombre de la carpeta a crear"
            if ((Test-Path "$ruta_actual\$carpeta_crear" -PathType Container) -eq $false) {
                New-Item -ItemType Directory -Name "$carpeta_crear"
                if ($? -eq $false) {
                    Write-Host "Ha ocurrido un error en la creación de la carpeta."
                } else {
                    Write-Host "Carpeta creada correctamente."
                }
            } else {
                Write-Host "La carpeta ya existe en este directorio."
            }
        }
        "b" {
            $archivo_crear = Read-Host "Introduzca el nombre del archivo a crear"
            if ((Test-Path "$ruta_actual\$archivo_crear" -PathType Leaf) -eq $false) {
                New-Item -ItemType Directory -Path "$ruta_actual\$archivo_crear"
                if ($? -eq $false) {
                    Write-Host "Ha ocurrido un error en la creación del archivo."
                } else {
                    Write-Host "Archivo creado correctamente."
                }
            } else {
                Write-Host "El archivo ya existe en este directorio."
            }
        }
        "c" {
            $item_renombrar = Read-Host "Introduzca el nombre actual del item que quiere renombrar "
            $item_newname = Read-Host "Introduzca el nuevo nombre del item "
            if ((Test-Path "$ruta_actual\$item_renombrar" -PathType any) -eq $true) {
                Rename-Item -Path "$ruta_actual\$item_renombrar" -NewName "$item_newname"
                if ($? -eq $false) {
                    Write-Host "Ha ocurrido un error al renombrar el item."
                } else {
                    Write-Host "Item renombrado correctamente."
                }
            } else {
                Write-Host "El item no existe en este directorio."
            }
        }
        "d" {
            $item_eliminar = Read-Host "Introduzca el nombre del item a eliminar"
            if ((Test-Path "$ruta_actual\$item_eliminar" -PathType Container) -eq $True) {
                Remove-Item "$ruta_actual\$item_eliminar" -Recurse -Force
                if ($? -eq $true) {
                    Write-Host "Directorio eliminado correctamente."
                } else {
                    Write-Host "Ha ocurrido un error al eliminar el directorio"
                }
            } elseif ((Test-Path "$ruta_actual\$item_eliminar" -PathType Leaf) -eq $True) {
                Remove-Item "$ruta_actual\$item_eliminar" 
                if ($? -eq $true) {
                    Write-Host "Archivo eliminado correctamente."
                } else {
                    Write-Host "Ha ocurrido un error al eliminar el archivo."
                }
            } else {
                Write-Host "El item a eliminar no exite."
            }
        }
        "e" {
           $item_test = Read-Host "Introduzca el nombre del item que quiere comprobar" 
           if ((Test-Path "$ruta_actual\$item_test") -eq $true) {
            Write-Host "El item existe en el directorio actual."
           } else {
            Write-Host "El item no existe en el directorio actual."
           }
        }
        "f" {
            $dir_mostrar = Read-Host "Introduzca el nombe del directorio a mostrar"
            if ((Test-Path "$ruta_actual\$dir_mostrar") -eq $True) {
                Get-ChildItem "$ruta_actual\$dir_mostrar"
            } else {
                Write-Host "El directorio no existe."
            }
        }
        "g" {
            Write-Host -NoNewLine "Son las: "
            Get-Date -Format "HH:mm:ss"
            Write-Host -NoNewLine " del"
            Get-Date -Format "dd/MM/yyyy"
        }
    }
}while ($opt -ne "x" )