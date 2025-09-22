#!/bin/bash
y=0
while [[ $y -le 5 ]]; do
    x=1
    while [[ $x -le $y ]]; do
        echo -n "$y"
        ((x++))
    done
    ((y++))
    echo
done