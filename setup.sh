#! /bin/bash

declare -a NAME_EMPLOYEE
echo 'Number of employees'
read NUMBER_EMPLOYEES
echo 'Write each name of the employees, pressing enter after each one'
for i in {1..$NUMBER_EMPLOYEES}
do
read NAME
NAME_EMPLOYEE[$i]=NAME
echo $NAME_EMPLOYEE
done
