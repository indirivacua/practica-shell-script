#!/bin/bash

vector1=(1 80 65 35 2)

vector2=(5 98 3 41 8)

for ((i=0; i < ${#vector1[*]}; i++))
do
	echo "La suma de los elementos de la posición $i de los vectores es $(expr ${vector1[$i]} + ${vector2[$i]})"
done