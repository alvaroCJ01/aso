#!/bin/bash
##Comprobacion de parametros

if [ -d "$1" ]; then
    fecha=$(date +%Y-%m-%d)
    nombre_arc=$(basename "$1")
    tar -cf "$fecha-$nombre_arc.tar" "$1"
    gzip -c "$fecha-$nombre_arc.tar" > "$fecha-$nombre_arc.tar.gz"
    rm "$fecha-$nombre_arc.tar"
    echo "Se ha creado el archivo comprimido con el nombre: $fecha-$nombre_arc.tar.gz"
else 
    echo "Introduzca un único parametro (directorio)"
fi