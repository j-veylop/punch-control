#! /bin/bash

DIA=$(date +%Y-%m-%d)
DIA_MES=$(date +%d)
YEAR=$(date +%Y)
MONTH=$(date +%B)
CSVNAME=$(date +%B_%Y)
ENTRADA=$(sed -n '1p' /home/pi/control_horario/padre/$YEAR/registros/$MONTH/$DIA)
SALIDA=$(sed -n '$p' /home/pi/control_horario/padre/$YEAR/registros/$MONTH/$DIA)
JORNADA=$(dateutils.ddiff -i '%H:%M' -f '%H horas y %M minutos' $ENTRADA $SALIDA)
echo $DIA_MES, $ENTRADA, $SALIDA, $JORNADA >> /home/pi/control_horario/padre/$YEAR/tablas/padre_$CSVNAME.csv
