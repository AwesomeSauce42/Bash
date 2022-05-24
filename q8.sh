#!/bin/bash

echo Enter number:
read num

while [[ $num -gt 0 ]]
do
        let temp=$num%2
        if [[ $temp -eq 1 ]]
        then
                let count=$count+1
        fi
        let num=$num/2
done
echo $count