# Punch Control

## What is this

Punch Control is a simple work hours tracker. It is designed for Raspbian on a Raspberry Pi with wireless connection.

## Why are you doing this

The main reason is to learn some programming and git along some courses. As a secondary reason, the law changed recently in my home country so every worker must have their work hours tracked by their company, so this project aims to effortlessly comply without a big investment.

## How does it work

Punch Control uses `arp-scan` to find devices connected to your wifi network, and associates their MAC addresses to the employees. It logs connected devices every minute and inserts the check-in and check-out times into a `.csv` file at the end of every day. The workflow is something along these lines:

1. Run `timelog_$user.sh` every minute to log times to a log file.
2. Run `work_hours_$user.sh` at a set time every night to append day, time of entry, time of exit and total work hours to the monthly `.csv` file.
3. Run `new_month_$user.sh` the first day of every month to create the `.csv` file where we will store the data in a readily readable format.
4. Run `new_year_$user.sh` the first day of every year to create the directories we will work in.

## Crontabs
<details><summary><b>Our default crontab is, respectively</b></summary>
<p>

1. \*/1 * * * * *(every minute, any hour, any day of the month, any month, any day of the week)*

2. 0 22 * * * *(at 0 minutes, the 22nd hour, any day of the month, any month, any day of the week)*

3. 0 4 1 * * *(at 0 minutes, the 4th hour, the first day of the month, any month, any day of the week)*

4. 0 3 1 1 * *(at 0 minutes, the 3rd hour, the first day of the month, the first month, any day of the week)*

</p>
</details>


<details><summary><b>For a standard 9-5 timetable, if we allow for half an hour margin, we are going to need</b></summary>

<p>

1. 30-59 8 * * 1-5 *(every minute from 30 through 59, the 8th hour, any day of the month, any month, every day of the week from Monday through Friday)*

	\*/1 9-17 * * 1-5 *(every minute, every hour from 9 to 17, any day of the month, any month, every day of the week from Monday through Friday)*

	0-30 17 * * 1-5 *(every minute from 0 to 30, the 17th hour, any day of the month, any month, every day of the week from Monday through Friday)*

2. 0 22 * * * 1-5 *(at 0 minutes, the 22nd hour, any day of the month, any month, every day of the week from Monday through Friday)*

3. 0 4 1 * 1-5 *(at 0 minutes, the 4th hour, the first day of the month, any month, any day of the week)*

4. 0 3 1 1 * *(at 0 minutes, the 3rd hour, the first day of the month, the first month, any day of the week)*

</p>

</details>


<details><summary><b>For split shift, allowing half an hour margin in a 9-15.30 and 16.30-19.30 we are going to need</b></summary>

1. 30-59 8 * * 1-5 *(every minute from 30 through 59, the 8th hour, any day of the month, any month, every day of the week from Monday through Friday)*

	\*/1 9-14 * * 1-5 *(every minute, every hour from 9 to 14, any day of the month, any month, every day of the week from Monday through Friday)*

	0-50 15 * * 1-5 *(every minute from 0 through 50, the 15th hour, any day of the month, any month, every day of the week from Monday through Friday)*

</p>

</details>

## Dependencies

* dateutils
* arp-scan
* python3
	
## Why are you so verbose with docmuentation, comments and commits?

As I said, this is a learning process for me. The more verbose I am the easier it is for me to keep track of whatever the hell I'm doing at any time.

## To-do list

- [x] Basic functionality
- [ ] Split shift support (In progress)
- [ ] Python automatic installer (In progress)
- [ ] Backup scheduler
- [ ] Fancy viewer
- [x] Make repo publishable 

## License

This software is licensed under the [GNU AGPL v3.0](LICENSE.md)
