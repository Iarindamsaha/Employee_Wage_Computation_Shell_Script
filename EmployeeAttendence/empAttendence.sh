#!/bin/bash

check=$((RANDOM%2))

if (( $check == 1 ))
then
	echo "The Employee is Present"
else
	echo "The Employee is Absent"
fi
