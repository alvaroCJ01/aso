#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo 'Error en el uso del script, uso correcto: ./ejercicio11.sh [archivo a copiar] [nombre de la copia]'
elif [[ -e $1 ]]; then
    echo 'bien'
    if [[ -e $2 ]]; then
        echo 'Error en le segundo parametro, especifique un nombre que no exista'
    else
        cp -r $1 $2
        if [[ -e $2 ]]; then
            echo "La copia has sido creada exitosamente."
        else
            echo "Ha ocurrido un error inesperado."
        fi
    fi
else
    echo 'Especifique un archivo existente en el primer parametro.'
fi