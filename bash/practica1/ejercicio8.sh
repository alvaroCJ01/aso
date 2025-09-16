#!/bin/bash

echo "Dame un numero"
read x
echo "Dame otro numero"
read y


if [ "$x" -gt "$y" ]; then
    echo "$x es mayor que $y"
elif [ "$x" -lt "$y" ]; then
    echo "$x es menor que $y"
elif [ "$x" -eq "$y" ]; then
    echo "Ambos numero son iguales."
else
    echo "Ha ocurrido un error inesperado."
fi