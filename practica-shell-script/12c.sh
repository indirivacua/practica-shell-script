#!/bin/bash
# Invocarlo de la siguiente forma: ./12b.sh param1 param2
if [ $# -eq 2 ]
then
	select variable in Suma Resta Mult Div Exit
	do
		case $variable in # Utilizamos la variable definida y asignada (esto ultimo por el usuario) en la estructura select
		"Suma") #Respetar Mayus y Minus
		echo "$(expr $1 + $2)"
		;;
		"Mult")
		echo "$(expr $1 \* $2)"
		;;
		"Resta")
		echo "$(expr $1 - $2)"
		;;
		"Div")
		echo "$(expr $1 / $2)"
		;;
		"Exit")
		exit 0 #Terminacion Exitosa
		;;
		esac
	done
fi
