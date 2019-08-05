#!/bin/bash

num=(10 3 5 7 9 3 5 4)

function productoria {
	res=1
	for i in ${num[*]}
	do
		echo ${i}
		let res=res*${i}
	done
	echo "El resultado es: ${res}"
	#return ${res} #No se puede porque no se puede asegurar que el valor sea entre 0 y 255
}

productoria
#echo "El resultado es: $?"