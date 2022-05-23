#!/bin/bash
echo -n "enter value for n: "
read n
echo "The first $n prime numbers are:" 

i=1
m=2


while [[ $i -le $n ]]
do
	flag=0
	p=1
	while [[ $p -le $m ]]
	do
		if [[ $(($m%$p)) -eq 0 ]]
		then
			let flag=$((flag+1))

		fi
	let p=$p+1
	
	done

	if [[ $flag -eq 2 ]]
	then
		echo "$m"
		let i=$i+1
	fi
let m=$m+1
done
