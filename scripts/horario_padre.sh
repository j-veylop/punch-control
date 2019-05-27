#! /bin/bash
NOW=$(date +%Y-%m-%d)
YEAR=$(date +%Y)
MONTH=$(date +%B)
sudo arp-scan -l | grep 68:c4:4d:3e:f5:e3 && date +%H:%M >> /home/pi/control_horario/padre/$YEAR/registros/$MONTH/$NOW
