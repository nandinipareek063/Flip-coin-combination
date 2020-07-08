#!/bin/bash
declare -A  dictionary
hh=0
tt=0
ht=0
th=0
read -p "Enter the  no of times you want to flip a coin " num
for((i=1;i<=num;i++))
do
        no=$((RANDOM%4))
        if [ $no -eq 1 ]
        then
        echo "HH"
        (( hh  ++ ))
        value=HH
        elif [ $no -eq 2 ]
        then
        echo "TT"
        (( tt  ++ ))
        value=TT
        elif [ $no -eq 3 ]
        then
        echo "HT"
        (( ht  ++ ))
        value=HT
        else
        (( th  ++ ))
        echo "TH"
        value=TH
        fi
        dict[$i]="$value"
done
echo "Dictionary : ${dict[@]}"
echo  "hh: " $hh
echo  "tt: " $tt
echo "ht :" $ht
echo  "th: " $th
echo "percentage of HH: " $((( hh * 100 ) / num ))
echo "percentage of TT: " $((( tt * 100 ) / num ))
echo "percentage of HT: " $((( ht * 100 ) / num ))
echo "percentage of TH: " $((( th * 100 ) / num ))


