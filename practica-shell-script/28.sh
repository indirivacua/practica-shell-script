#!/bin/bash

#$1 -> Nombre del directorio
if [ $# -eq 1 ]
then
	if [ -e $1 ]
	then
		cant=0
		for i in $(ls -l $1)
		do
			#echo $i
			if [ -f $1/$i ] #Es archivo?
			then
				echo $i
				if [ -w $1/$i ] && [ -r $1/$i ]
				then
					let cant++
				fi
			fi
		done
		echo "${cant}"
	else
		exit 4
	fi
else
	echo "Cantidad de parametros insuficientes"
fi