#!/bin/bash
echo Enter the nth number:
read n

echo Enter option a/b/c: 
read option

case $option in
	a) sum=$(((($n*$n)*($n+1)*($n+1))/4-(3*$n)))
echo $sum ;;
	b) 
sum=0	
for i in $(seq 1 $n)
do
	x=$(( 1 + ( 3 * ( $i - 1 )))) 
	sum=$((sum+$x))
done

echo $sum ;;	

	c) sum=$(((($n*($n+1)*((2*$n)+1))/6)+(2 * $n))) 
echo $sum ;;

esac