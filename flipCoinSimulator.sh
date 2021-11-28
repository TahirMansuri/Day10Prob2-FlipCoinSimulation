#!/bin/bash -x

echo "Welcome to Flip Coin Simulator Program";

#Variables
headCount=0;
tailCount=0;

#Fliping Coin Upto 10 Times
while [[ $headCount -ne 21 && $tailCount -ne 21 ]]
do
	flip=$((RANDOM%2));
	if (( $flip == 1 ))
	then
		((headCount++));
	else
		((tailCount++));
	fi
done

if (( $headCount==21 ))
then
	echo "Head Wins 21 Times!!!";
else
	echo "Tail Wins 21 Times!!!";
fi
