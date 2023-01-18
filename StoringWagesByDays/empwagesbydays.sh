#!/bin/bash

declare -A Day_by_Day;
declare -A Total_Monthly;

wage_per_hour=20;
working_days=20;
Total_Salary=0;
max_hour=100;

TotalWorkingHr=0;
TotalWorkingDays=1;
totalEmpHr=0;

function work_hr()
{
        case $1 in
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
echo $empHr
}

while [[ $totalEmpHr -le $max_hour && $TotalWorkingDays -lt $working_days ]]
do
        empHr=$(work_hr $((RANDOM%3)));
        totalEmpHr=$(($totalEmprHr+$empHr));
        if (( $totalEmpHr > $max_hour ))
        then
                totalEmpHr=$(($totalEmpHr-$empHr));
                break;
        fi
        Daily_Salary=$(($empHr*$wage_per_hour));
        Day_by_Day["Day-$TotalWorkingDays"]=$Daily_Salary;
        Total_Salary=$(($Total_Salary+$Daily_Salary));
        Total_Monthly["Month-$TotalWorkingDays"]=$Total_Salary;
        ((TotalWorkingDays++))
done

for days in "${!Day_by_Day[@]}"
do
	echo " $days Salary: ${Day_by_Day[$days]} "
done

for mon in "${!Total_Monthly[@]}"
do
	echo " $mon Salary: ${Total_Monthly[$mon]} "
done
