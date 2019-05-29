# Punch Control

## What is this

Punch Control is a simple work hours tracker. It is designed for Raspbian on a Raspberry Pi with wireless connection.

## How does it work

Punch Control uses `arp-scan` to find devices connected to your wifi network, and associates their MAC addresses to the employees. It logs connected devices every minute and inserts the check-in and check-out times into a `.csv` file at the end of every day.

## Dependencies

* dateutils
* arp-scan
* python3
	
## To-do list

- [x] Basic functionality
- [ ] Split shift support
- [ ] Python automatic installer (In progress)
- [ ] Backup scheduler
- [ ] Fancy viewer
- [ ] Make repo public 
