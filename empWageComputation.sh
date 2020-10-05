#!/bin/bash/ -x
echo " Welcome to Employee Wage Computation Program on Master Branch "
isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
   empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else
   salary=0
fi
