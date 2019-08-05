#!/bin/bash

num=(10 3 5 7 9 3 5 4)

cantImp=0
for i in ${num[*]}
do
	if [ $(expr ${i} % 2) -eq 0 ]
	then
		echo ${i}
	else
		let cantImp++
	fi
done