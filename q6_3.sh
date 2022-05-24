#!/bin/bash

echo Enter num:
read num

j=1
i=2
flag=0

while [[ $j -le $num ]]
do
	while [[ $i -le $((j / 2)) ]]
	do
		if [[ $((j % i)) -eq 0 ]]
		then
			flag=1
		fi

	i=$((i + 1))
	done 
	if [ $flag -eq 1 ]
	then
		continue
	else
		echo $j
	fi
	j=$((j+1))
done
	
