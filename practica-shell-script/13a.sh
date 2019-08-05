#!/bin/bash

for ((i=0; i <= 100; i++))
do
	echo $i
	echo "$(expr ${i} \* ${i})"
done