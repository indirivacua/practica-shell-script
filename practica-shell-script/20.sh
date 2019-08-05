#!/bin/bash

pila=()

function push { #Importante la sintaxis, tiene que haber un espacio entre nombre_func y el {
	pila[${#pila[*]}]=$1
}

function pop {
	aux=${pila[$(expr ${#pila[*]} - 1)]} #See debe recuperar el elemento con ${}
	unset pila[$(expr ${#pila[*]} - 1)]
	return ${aux} #Nos referimos al valor, no la variable
}

function lenght {
	return ${#pila[*]}
}

function print {
	echo "${pila[*]}"
}

push 5
push 8
push 7
push 9
lenght
echo "El tamaño de la pila es: $?"
pop
echo "Se elimino el elemento $? de la pila"
print
