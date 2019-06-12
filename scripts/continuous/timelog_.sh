#! /bin/bash
now=$(date +%Y-%m-%d)
year=$(date +%Y)
month=$(date +%B)
sudo arp-scan -l | grep $mac_address && date +%H:%M >> ./.punch-control/$user/$year/registros/$month/$now
