#!/bin/bash
i=1
while [[ i -le 1000 ]]; do
    resultado=$((i + resultado))
    ((i++))
done
echo $resultado

for (( i=1; i<=1000; i++)); do
    resultado2=$((i + resultado2))
done
echo $resultado2

x=1
until [[ $x -gt 1000 ]] ; do
    resultado3=$((x + resultado3))
    ((x++))
done
echo $resultado3