#!/bin/bash -x

isPresent=1
empRatePerHr=20
empcheck=$((RANDOM%2))
isFullTime=1
isPartTime=2
if [ $isPresent -eq $empcheck ]
then
        echo "employee is present"
else
        echo "employee is absent"
fi
randomcheck= $((RANDOM%3))

if [ $isFulltTime -eq $randomcheck ]
then
        empHrs=8
elif [ $isPartTime -eq $randomcheck ]
then
        empHrs=4
else
        empHrs=0
fi

DailyWage=$((empRatePerHr*empHrs))

echo $DailyWage
