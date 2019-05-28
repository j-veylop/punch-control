import os

# We create a folder to save the scripts in
os.mkdir(".scripts")

# And another one to keep logs and tables
os.mkdir(".punch-control")

# Now we need the list of employees to track
employees = input("Enter a list of employees separated by spaces: ")
list = employees.split()

# Next we need the MAC addresses used to identify each employee
MACS = input("Enter the MAC addresses in order separated by spaces: ")
list = MACS.split()

# With this loop we generate the folders for each employee
for i in list:
    os.mkdir(".punch-control/"+i)


print(MACS)

# Next we create the scripts we 
