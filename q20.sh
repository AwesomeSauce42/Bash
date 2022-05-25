#!/bin/bash

echo Enter number of terms for Array_1:
read n1

for i in $(seq 0 $((n1-1)))
do
    echo Enter number $((i+1))
    read k
    arr1[$i]=$k
done


echo Enter number of terms for Array_2:
read n2

for i in $(seq 0 $((n2-1)))
do
    echo Enter number $((i+1))
    read l
    arr2[$i]=$l
done

arr3+=(${arr1[*]} ${arr2[*]})
echo ${arr1[@]}
echo ${arr2[@]}
echo ${arr3[@]}

merge() {
    local first=2
    local second=$(( $1 + 2 ))
    for i in ${@:2}
    do
        if [[ $first -eq $(( $1 + 2 )) ]]
        then
            echo ${@:$second:1} ; ((second += 1))
        else
            if [[ $second -eq $(( ${#@} + 1 )) ]]
            then
                echo ${@:$first:1} ; ((first += 1))
            else
                if [[ ${@:$first:1} -lt ${@:$second:1} ]]
                then
                    echo ${@:$first:1} ; ((first += 1))
                else
                    echo ${@:$second:1} ; ((second += 1))
                fi
            fi
        fi
    done
}

mergesort() {
    if [[ $1 -ge 2 ]]
    then
        local med=$(( $1 / 2 ))
        local first=( $(mergesort $med ${@:2:$med}) )
        local second=( $(mergesort $(( $1 - $med )) ${@:$(( $med + 2 )):$(( $1 - $med ))}) )
        echo $(merge $med ${first[@]} ${second[@]})
    else
        echo $2
    fi
}

echo ${arr3[@]} ; echo $(mergesort 10 ${arr3[@]})
