#! /bin/bash
NOW=$(date +%Y-%m-%d)
YEAR=$(date +%Y)
MONTH=$(date +%B)
sudo arp-scan -l | grep f4:60:e2:bb:50:74 && date +%H:%M >> /home/pi/control_horario/juan/$YEAR/registros/$MONTH/$NOW
