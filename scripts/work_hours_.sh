#! /bin/bash

full_day=$(date +%Y-%m-%d)
day_month=$(date +%d)
year=$(date +%Y)
month=$(date +%B)
month_year=$(date +%B_%Y)
checkin=$(sed -n '1p' ./.punch-control/$user/$year/registros/$month/$full_day)
checkout=$(sed -n '$p' ./.punch-control/$user/$year/registros/$month/$full_day)
jornada=$(dateutils.ddiff -i '%H:%M' -f '%H horas y %M minutos' $checkin $checkout)
echo $day_month, $checkin, $checkout, $jornada >> ./.punch-control/$user/$year/tablas/$user_$month_year.csv
