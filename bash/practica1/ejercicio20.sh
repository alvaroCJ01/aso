#!/bin/bash
read -p "Introduce un número: " num

for (( i=num; i>=1; i-- )); do

    if (( num % i == 0 )); then
        x=$(($x+1)) 
    fi
done

if (( x == 2 )); then
    echo "El número $num es primo"
else
    echo "El número $num no es primo"
fi