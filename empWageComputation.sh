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

totaleSalary=0
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

maxHrsInMonth=100

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

#Uc7


totalEmpHr=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
      $isFullTime)
         workHours=8
         ;;
      $isPartTime)
         workHours=4
         ;;
      *)
         workHours=0
         ;;
      esac
		echo $workHours
}
while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   totalWorkHours=$((workHours))
done
   totalSalary=$(($totalWorkHours*$empRatePerHr))

#Uc8

function getWorkingHours(){
	local $empCheck=$1
	case $empCheck in
      $isFullTime)
         workHours=8
         ;;
      $isPartTime)
         workHours=4
         ;;
      *)
         workHours=0
         ;;
      esac
      echo $workHours
}
function getEmWage(){
	local empHr=$1
	wage=$(($empHr*$empRatePerHr))
	echo $wage
}
while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   totalWorkHours=$(($totalWorkHours+$workHours))
	dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done
   totalSalary=$(($totalWorkHours*$empRatePerHr))
	echo ${dailyWage[@]}

#Uc9

declare -A dailyWage

function getWorkingHours(){
   local $empCheck=$1
   case $empCheck in
      $isFullTime)
         workHours=8
         ;;
      $isPartTime)
         workHours=4
         ;;
      *)
         workHours=0
         ;;
      esac
      echo $workHours
}
function getEmWage(){
   local empHr=$1
   wage=$(($empHr*$empRatePerHr))
   echo $wage
}
while [[ $totalWorkHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
   ((totalWorkingDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   totalWorkHours=$(($totalWorkHours+$workHours))
   day="Day"
	dailyWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done
   totalSalary=$(($totalWorkHours*$empRatePerHr))
   echo ${dailyWage[@]}
	echo ${!dailyWage[@]}
