#!/bin/bash

select variable in Listar DondeEstoy QuienEsta Exit
do
	case $variable in
	"Listar")
	echo "$(ls -l)"
	;;
	"DondeEstoy")
	echo "$(pwd)"
	;;
	"QuienEsta")
	echo "$(who)"
	;;
	"Exit")
	exit 0
	;;
	esac
done