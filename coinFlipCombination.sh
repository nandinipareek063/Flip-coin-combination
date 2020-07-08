#!/bin/bash

declare -A  dict
heads=0
tails=0
read -p "Enter the  no of times you want to flip a coin " num
for((i=1;i<=num;i++))
do
        no=$((RANDOM%2))
        if [ $no -eq 1 ]
        then
        echo "H"
        (( heads ++ ))
        value=H
        else
        (( tails ++ ))
        echo "T"
        value=T
        fi
        dict[$i]="$value"
done
echo "Dictionary : ${dict[@]}"
echo "heads count" $heads
echo  "tails count" $tails
echo "percentage of heads: " $((( heads * 100 ) / num ))
echo "percentage of tails: " $((( tails * 100 ) / num ))

