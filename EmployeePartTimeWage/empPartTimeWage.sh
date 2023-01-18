#!/bin/bash

check=$((RANDOM%3))
wage_per_hour=20;
emp_hour=8;
emp_part_hour=5;

if (( $check == 1 ))
then
        salary=$(($emp_hour*$wage_per_hour))
        echo " Employee is Present & Daily Salary = $salary "
elif (( $check == 2 ))
then
        salary=$(($emp_part_hour*$wage_per_hour))
        echo " Employee is Present But Part Time & Daily Salary = $salary "
else
        salary=0;
        echo " Employee is Absent & Daily Salary = $salary "
fi

