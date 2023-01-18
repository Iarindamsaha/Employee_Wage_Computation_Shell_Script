#!/bin/bash

check=$((RANDOM%2))
wage_per_hour=20;
emp_hour=8;

if (( $check == 1 ))
then
	salary=$(($emp_hour*$wage_per_hour))
	echo " Employee is Present & Daily Salary = $salary "
else
	salary=0;
	echo " Employee is Absent & Daily Salary = $salary "
fi
