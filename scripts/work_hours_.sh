#! /bin/bash

dia=$(date +%Y-%m-%d)
dia_mes=$(date +%d)
year=$(date +%Y)
month=$(date +%B)
month_year=$(date +%B_%Y)
entrada=$(sed -n '1p' ./.punch-control/$user/$year/registros/$month/$dia)
salida=$(sed -n '$p' ./.punch-control/$user/$year/registros/$month/$dia)
jornada=$(dateutils.ddiff -i '%H:%M' -f '%H horas y %M minutos' $entrada $salida)
echo $dia_mes, $entrada, $salida, $jornada >> ./.punch-control/$user/$year/tablas/juan_$month_year.csv
