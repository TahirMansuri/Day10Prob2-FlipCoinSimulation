#!/bin/bash -x

echo "Welcome to Flip Coin Simulator Program";

#Variables
headCount=0;
tailCount=1;

flip=$((RANDOM%2));

if (( $flip == $headCount ))
then
	echo "Head Wins!!!";
else
	echo "Tail Wins!!!";
fi
