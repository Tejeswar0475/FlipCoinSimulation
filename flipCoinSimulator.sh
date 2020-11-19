#!/bin/bash

tail=0
head=1

read -p "How many times you want to flip a coin:" flipCount
for (( i=0 ; i< $flipCount ; i++ ))
do
	flipCoinResult=$((RANDOM%2))
	if [[ $flipCoinResult == $tail ]]
	then
        	echo "Tail-$flipCoinResult Winner"
	elif [[ $flipCoinResult == $head ]]
	then
		echo "Head-$flipCoinResult Winner"
	else
		echo "Invalid Result"
	fi
done
