#!/bin/bash

#prueba deberia ser bin
if [ -e $HOME/prueba ]
then
	echo existe
	for i in $(find $PWD -name "*.docx")
	do
		mv $i $HOME/prueba
	done
else
	mkdir prueba
	echo lo cree
fi