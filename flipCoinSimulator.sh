#!/bin/bash

tail=0
head=1
headCount=0
tailCount=0

read -p "How many times you want to flip a coin:" flipCount
for (( i=0 ; i< $flipCount ; i++ ))
do
	flipCoinResult=$((RANDOM%2))
	if [[ $flipCoinResult == $tail ]]
	then
        	echo "Tail-$flipCoinResult Winner"
		((tailCount++))
	elif [[ $flipCoinResult == $head ]]
	then
		echo "Head-$flipCoinResult Winner"
		((headCount++))
	else
		echo "Invalid Result"
	fi
done
echo "Tail has won $tailCount times"
echo "Head has won $headCount times"






