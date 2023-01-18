#!/bin/bash -x

wage_per_hour=20;
working_days=20;
Total_Salary=0;
max_hour=100;

TotalWorkingHr=0;
TotalWorkingDays=1;
totalEmpHr=0;

while [[ $totalEmpHr -le $max_hour && $TotalWorkingDays -lt $working_days ]]
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
        totalEmpHr=$(($totalEmprHr+$empHr));
	if (( $totalEmpHr > $max_hour ))
	then
		totalEmpHr=$(($totalEmpHr-$empHr));
		break;
	fi
	Daily_Salary=$(($empHr*$wage_per_hour));
        Total_Salary=$(($Total_Salary+$Daily_Salary));
	((TotalWorkingDays++))
done
