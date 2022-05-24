#!/bin/bash
echo Enter the number:
read num
while [[ $num -gt 0 ]]
do
      let temp=$num%10
      let sum=$sum+$temp
      let num=$num/10
done
echo "Sum of Digits: $sum"