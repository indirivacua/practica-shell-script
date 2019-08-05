#!/bin/bash

echo "Ingrese 2 numeros"
read num_1 num_2
echo "$(expr ${num_1} \* ${num_2})"
echo "$(expr ${num_1} + ${num_2})"
echo "$(expr ${num_1} - ${num_2})"
if [ ${num_1} -gt ${num_2} ]
then
	echo ${num_1}
else
	echo ${num_2}
fi
