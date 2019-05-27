#! /bin/bash
NOW=$(date +%Y-%m-%d)
YEAR=$(date +%Y)
MONTH=$(date +%B)
sudo arp-scan -l | grep 70:ec:e4:2e:bf:90 && date +%H:%M >> /home/pi/control_horario/madre/$YEAR/registros/$MONTH/$NOW
