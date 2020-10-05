#!/bin/bash/ -x

#start

echo " Welcome to Employee Wage Computation Program on Master Branch "

#Uc1

isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

#Uc2

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

#Uc3

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))

#Uc4

isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in 
$isFullTime)
		empHrs=8
		;;
$isPartTime)
		empHrs=4
		;;
*)
		empHrs=0
		;;
esac

salary=$(($empHrs*$empRatePerHr))

#Uc5

isPartTime=1
isFullTime=2
totaleSalary=0
empRatePerHr=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays; day++))
do
	empCheck=$((RANDOM%3))
		case $empCheck in
		$isFullTime)
      	empHrs=8
      	;;
		$isPartTime)
      	empHrs=4
      	;;
		*)
      	empHrs=0
      	;;
		esac

	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done

#Uc6

isPartTime=1
isFullTime=2
totaleSalary=0
maxHrsInMonth=100
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
	empCheck=$((RANDOM%3))
      case $empCheck in
      $isFullTime)
         empHrs=8
         ;;
      $isPartTime)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
      esac

   totalSalary=$(($totalSalary+$salary))
done
	totalSalary=$(($totalEmpHr*$empRatePerHr))
