#! /bin/bash
YEAR=$(date +%Y)
MONTH=$(date +%B)
CSVNAME=$(date +%B_%Y)
mkdir -p /home/pi/control_horario/padre/$YEAR/registros/$MONTH
echo Día, Hora de entrada, Hora de salida, Jornada laboral >> /home/pi/control_horario/padre/$YEAR/tablas/padre_$CSVNAME.csv
