#!/bin/bash

echo "Introduzca un numero para saber si es par o impar: "
read x
z=$(("$x" % 2))

if [ $z -ne 0 ]; then
    echo "El número es impar"
elif [ $z -eq 0 ]; then
    echo "El númeo es par"
else
    echo "Ha ocurrido un error inesperado."
fi