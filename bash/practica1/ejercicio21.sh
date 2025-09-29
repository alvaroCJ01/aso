#!/bin/bash

ganador=(($RANDOM % 100) + 1)
num=-1

echo $ganador
while (( num -ne ganador )); do
    read -p "Adivina el número (1-100) o introduce 0 para rendirte: " num
    if (( num -eq ganador )); then
        echo "Enhorabuena, has adivinado el número $ganador"
    elif ((num -eq 0)); then
        echo "Te has rendido. El número era $ganador"
    fi
done