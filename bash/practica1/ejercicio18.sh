#!/bin/bash
y=1
while [[ $y -le 5 ]]; do
    x=
    while [[ $x -le $y ]]; do
        echo -n "$x"
        ((x++))
    done
    ((y++))
    echo
done