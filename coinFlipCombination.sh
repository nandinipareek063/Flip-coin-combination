#!/bin/bash

declare -A  dictionary
hhh=0
hht=0
hth=0
htt=0
ttt=0
tth=0
tht=0
thh=0
read -p "Enter the  no of times you want to flip a coin " num
for((i=1;i<=num;i++))
do
        no=$((RANDOM%4))
        if [ $no -eq 1 ]
        then
        echo "HHH"
        (( hhh  ++ ))
        value=HHH
        elif [ $no -eq 2 ]
        then
        echo "HHT"
        (( hht  ++ ))
        value=HHT
        elif [ $no -eq 3 ]
        then
        echo "HTH"
        (( hth  ++ ))
        value=HTH
        elif [ $no -eq 4 ]
        then
        echo "HTT"
        (( htt  ++ ))
        value=HTT
        elif [ $no -eq 5 ]
        then
        echo "TTT"
        (( ttt  ++ ))
        value=TTT
        elif [ $no -eq 6 ]
        then
        echo "TTH"
        (( tth  ++ ))
        value=TTH
        elif [ $no -eq 7 ]
        then
        echo "THT"
        (( tht  ++ ))
        value=THT
        else
        (( thh  ++ ))
        echo "THH"
        value=THH
        fi
	dict[$i]="$value"
done
echo "Dictionary : ${dict[@]}"
echo  "hhh: " $hhh
echo  "hht: " $hht
echo "hth :" $hth
echo  "htt: " $htt
echo  "ttt: " $ttt
echo  "tth: " $tth
echo "tht :" $tht
echo  "thh: " $thh

echo "percentage of HHH: " $((( hhh * 100 ) / num ))
echo "percentage of HHT: " $((( hht * 100 ) / num ))
echo "percentage of HTH: " $((( hth * 100 ) / num ))
echo "percentage of HTT: " $((( htt * 100 ) / num ))
echo "percentage of TTT: " $((( ttt * 100 ) / num ))
echo "percentage of TTH: " $((( tth * 100 ) / num ))
echo "percentage of THT: " $((( tht * 100 ) / num ))
echo "percentage of THH: " $((( thh * 100 ) / num ))


