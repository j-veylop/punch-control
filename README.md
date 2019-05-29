# Punch Control

## What is this

Punch Control is a simple work hours tracker. It is designed for Raspbian on a Raspberry Pi with wireless connection.

## How does it work

Punch Control uses `arp-scan` to find devices connected to your wifi network, and associates their MAC addresses to the employees. It logs connected devices every minute and inserts the check-in and check-out times into a `.csv` file at the end of every day. The workflow is something along these lines:

1. Run `timelog_$user.sh` every minute to log times to a log file.
2. Run `work_hours_.sh` at a set time every night to append day, time of entry, time of exit and total work hours to the monthly `.csv` file.
3. Run `new_month` the first day of every month to create the `.csv` file where we will store the data in a readily readable format.
4. Run `new_year` the first day of every year to create the directories we will work in.

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
- [x] Make repo publishable 
