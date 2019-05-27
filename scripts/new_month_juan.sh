#! /bin/bash
YEAR=$(date +%Y)
MONTH=$(date +%B)
CSVNAME=$(date +%B_%Y)
mkdir -p /home/pi/control_horario/juan/$YEAR/registros/$MONTH
echo Día, Hora de entrada, Hora de salida, Jornada laboral >> /home/pi/control_horario/juan/$YEAR/tablas/juan_$CSVNAME.csv
