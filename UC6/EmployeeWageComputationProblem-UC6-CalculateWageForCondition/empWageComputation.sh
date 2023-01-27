echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empHrs=0
totalSalary=0
totalWorkingHour=0;
empRatePerHr=20
numWorkingDays=20
day=1;
while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do

randomCheck=$((RANDOM%3));

case $randomCheck in $isFullTime)
		     empHrs=8;;
		     $isPartTime)
		     empHrs=4;;
		     *)
		     empHrs=0;;
esac

totalWorkingHour=$(($totalWorkingHour+$empHrs))

if [ $totalWorkingHour -gt 100 ]
then
totalWorkingHour=$(($totalWorkingHour - $empHrs));
break
fi
salary=$(($empRatePerHr*$empHrs))
totalSalary=$(($totalSalary+$salary))
((day++))
done

echo "Employee has earned $totalSalary $ in a month (Total Working Hour : $totalWorkingHour)"







