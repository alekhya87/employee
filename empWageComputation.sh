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
