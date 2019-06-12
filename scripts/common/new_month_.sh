#! /bin/bash
year=$(date +%Y)
month=$(date +%B)
month_year=$(date +%B_%Y)
mkdir -p ./.punch-control/$user/$year/registros/$month
echo Día, Hora de entrada, Hora de salida, Jornada laboral >> ./.punch-control/$user/$year/tablas/$(user)_$month_year.csv
