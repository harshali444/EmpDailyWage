#!/bin/bash -x

isPresent=1
empRatePerHr=20
empWorkingDays=20
empcheck=$((RANDOM%2))
isFullTime=1
isPartTime=2
if [ $isPresent -eq $empcheck ]
then
        echo "employee is present"
else
        echo "employee is absent"
fi

randomcheck=$((RANDOM%3))
case $randomcheck in
                $isFullTime) 
						empHrs=8
                        ;;
                $isPartTime) 
						empHrs=4
                        ;;
                *) 
						echo "employee is absent"
								;;
esac

DailyWage=$((empRatePerHr*empHrs))
echo $DailyWage
DailyWagePerMonth=$((empWorkingDays * (empRatePerHr * empHrs)))
echo $DailyWagePerMonth
