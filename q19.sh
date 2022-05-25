#!/bin/bash
echo Enter number of terms:
read n

for i in $(seq 0 $((n-1)))
do
    echo Enter number $((i+1))
    read k
    arr[$i]=$k
done

echo "Original array is: ${arr[*]}";

flag=1;
for (( i = 0; i < $n-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $n-1-$i; j++ ))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done

echo "Array in sorted order: ${arr[*]}";