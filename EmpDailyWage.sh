#!/bin/bash -x

isPresent=1
empRatePerHr=20
empWorkingDays=20
TotalWorkingHrs=100
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
TotalWorkingHrs () {
				$n=1
				TotalWorkingHrs=100
}
DailyWage=$((empRatePerHr*empHrs))
echo $DailyWage
TotalWage=$((empWorkingDays * DailyWage))
echo $TotalWage
empWageWorkingHrs=$((TotalWorkingHrs*empWorkingDays))
echo $empWageWorkingHrs


declare -A Days

Days[Day1 $DailyWage]=$TotalWage
Days[Day2 $DailyWage]=$TotalWage
Days[Day3 $DailyWage]=$TotalWage
Days[Day4 $DailyWage]=$TotalWage
Days[Day5 $DailyWage]=$TotalWage
echo ${!Days[@]}
echo "total wage" ${TotalWage[@]}

