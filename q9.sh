#!/bin/bash
echo Enter the number:
read num

temp=0
num2=0
num3=$num

while [[ $num -gt 0 ]]
do
      temp=$(( $num % 10 ))
      num2=$(( $num2 * 10 + $temp ))
      num=$(( $num / 10 ))
done
echo "Reverse of $num3: $num2"

