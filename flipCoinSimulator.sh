#!/bin/bash -x

echo "Welcome to Flip Coin Simulator Program";

#Variables
headCount=0;
tailCount=1;

#Fliping Coin Upto 10 Times
for (( i=1; i<=10; i++ ))
do
	flip=$((RANDOM%2));
	if (( $flip == $headCount ))
	then
		echo "Head Wins!!!";
	else
		echo "Tail Wins!!!";
	fi
done
