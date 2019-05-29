import os

# We create a folder to save the scripts in.
#os.mkdir(".scripts")

# And another one to keep logs and tables.
#os.mkdir(".punch-control")

# Define variables.
employees = []
mac_address = []
name = ""

# Get number of employees.
num_employees = int(input("Enter number of employees: "))

print("Introduce the names of the employees")

# Get names of employees. We will later associate them with each MAC address.
for i in range(0, num_employees):
    name = input("")
    employees.append(name)

# Get MACs of employees. 
for i in range(0, num_employees):
    mac = input("Enter mac address for " +employees[i] +" " )
    mac_address.append(mac)
print(employees)
print(mac_address)


