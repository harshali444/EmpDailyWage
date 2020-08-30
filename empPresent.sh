#!/bin/bash -x

isPresent=1

empcheck=$((RANDOM%2))

if [ $isPresent -eq $empcheck ]
then
        echo "employee is present"
else
        echo "employee is absent"
fi

