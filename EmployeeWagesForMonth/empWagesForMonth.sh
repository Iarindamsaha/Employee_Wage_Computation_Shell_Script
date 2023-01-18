#!/bin/bash -x

wage_per_hour=20;
working_days=20;
Total_Salary=0;

for (( day=1; day<=$working_days; day++ ))
do
	check=$((RANDOM%3))
	case $check in
        	1)
                	empHr=8;
                	;;
        	2)
                	empHr=5;
                	;;

        	*)
                	empHr=0;
                	;;
	esac
	Daily_Salary=$(($empHr*$wage_per_hour));
	Total_Salary=$(($Total_Salary+$Daily_Salary));
done

