#!/bin/bash

tail=0
head=1
headCount=0
tailCount=0
target=21

while (( $headCount != $target || $tailCount != $target ))
do
	flipCoinResult=$((RANDOM%2))
	if [[ $flipCoinResult == $tail ]]
	then
        	echo "Tail-$flipCoinResult Winner"
		((tailCount++))
	 	if [[ $tailCount == $target ]]
        	then
                	echo "Tail wins reached  $tailCount times"
        		break
        	fi
	elif [[ $flipCoinResult == $head ]]
	then
		echo "Head-$flipCoinResult Winner"
		((headCount++))
		if [[ $headCount == $target ]]
        	then
                	echo "Head wins reached  $headCount times"
        		break
        	fi
	else
		echo "Invalid Result"
	fi


	if [[ $headCount == $target || $tailCount == $target ]]
	then
		echo "Both are Tie reached head $headCount times and also reached tail-$$tailCount times"
	fi

done
if [[ $headCount < $tailCount ]]
then
        echo "Tail won by $(($tailCount - $headCount)) more times"
else
        echo "Head won by $(($headCount - $tailCount)) more times"
fi
echo "Tail has won $tailCount times"
echo "Head has won $headCount times"






