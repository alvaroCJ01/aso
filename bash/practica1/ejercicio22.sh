#!/bin/bash
# Realizar un script que reciba como único parámetro el nombre de un directorio, especificado mediante su nombre de ruta completo. El programa debe mostrar un listado no recursivo de todas las entradas contenidas en ese directorio, indicando para cada una de ellas si se trata de un fichero o de un directorio. Al final, debe mostrarse un mensaje indicando el número total de entradas procesadas.

if [ -z "$1" ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi
d="$1"
if [ ! -d "$d" ]; then
    echo "Error: $d no es un directorio válido."
    exit 1
fi
if [ -d "$d" ]; then
    ls -l $d | wc -l
fi
